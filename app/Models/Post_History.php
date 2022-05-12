<?php

namespace App\Models;


class Post
{
    private static $blog = [
        [
            "title" => "Blog 1",
            "slug" => "judul-blog-1",
            "author" => "Janur",
            "body" => "lorem"
        ],
        [
            "title" => "Blog 2",
            "slug" => "judul-blog-2",
            "author" => "Janur 2",
            "body" => "lorem 2"
        ]
    ];

    public static function all()
    {
        return collect(self::$blog);
    }

    public static function find($slug)
    {
        $bblog = static::all();

        return $bblog->firstWhere('slug', $slug);
    }
}
