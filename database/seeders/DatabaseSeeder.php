<?php

namespace Database\Seeders;

use App\Models\Category;
use App\Models\User;
use App\Models\Post;
use Illuminate\Database\Seeder;



class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        User::factory(3)->create();

        User::create([
            'name' => 'Janur',
            'username' => 'janur',
            'email' => 'janur@gmail.com',
            'password' => bcrypt('123345')
        ]);

        Category::create([
            'name' => 'Web Programming',
            'slug' => 'web-programming'
        ]);

        Category::create([
            'name' => 'Web Design',
            'slug' => 'web-design'
        ]);

        Category::create([
            'name' => 'personal',
            'slug' => 'personal'
        ]);

        // Post::create([
        //     'title' => 'Judul Pertama',
        //     'slug' => 'judul-pertama',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Distinctio, maxime odio aspernatur tempora iusto fugit sit quam consequatur exercitationem ipsa aperiam, atque quo maiores nobis dolorum iste eligendi nam nemo!',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Kedua',
        //     'slug' => 'judul-kedua',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Distinctio, maxime odio aspernatur tempora iusto fugit sit quam consequatur exercitationem ipsa aperiam, atque quo maiores nobis dolorum iste eligendi nam nemo!',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Ketiga',
        //     'slug' => 'judul-ketiga',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Distinctio, maxime odio aspernatur tempora iusto fugit sit quam consequatur exercitationem ipsa aperiam, atque quo maiores nobis dolorum iste eligendi nam nemo!',
        //     'category_id' => 2,
        //     'user_id' => 1
        // ]);

        Post::factory(20)->create();
    }
}
