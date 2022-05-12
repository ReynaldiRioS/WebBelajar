<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;

    // protected $fillable = ['title', 'excerpt', 'body'];

    protected $guarded = ['id'];

    protected $with = ['category', 'author'];

    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    public function author()
    {
        return $this->belongsTo(User::class, 'user_id');
    }

    public function scopeFilter($query, array $filters)
    {
        // ?? = Coalescing (The null coalescing operator (??) has been added as syntactic sugar for the common case of needing to use a ternary in conjunction with isset(). It returns its first operand if it exists and is not null; otherwise it returns its second operand.)

        // untuk menangani pencarian di all blog
        $query->when($filters['search'] ?? false, function($query, $search) // jika false maka akan berhenti, jika true maka jalankan functionnya
        {
            return $query->where('title', 'like', '%' . $search. '%')->orWhere('body', 'like', '%' . $search. '%');
        });

        // untuk menangani pencarian didalam kategori
        $query->when($filters['category'] ?? false, function($query, $category)
        {
            return $query->whereHas('category', function($query) use ($category)
            {
                $query->where('slug', $category);
            });
        });

        // untuk menangani pencarian didalam author
        $query->when($filters['author'] ?? false, function($query, $author)
        {
            return $query->whereHas('author', function($query) use ($author)
            {
                $query->where('username', $author);
            });
        });
    }

    public function getRouteKeyName()
    {
        return 'slug';
    }
}
