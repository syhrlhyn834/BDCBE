<?php

namespace App\Http\Controllers\Api\Admin;

use App\Http\Controllers\Controller;
use App\Models\Anggota;
use App\Models\Blog;
use App\Models\Category;
use App\Models\User;

class DashboardController extends Controller
{
    /**
     * index
     *
     * @return void
     */
    public function index()
    {
        $blogs      = Blog::count();
        $categories = Category::count();
        $users      = User::count();
        $anggotas    = Anggota::count();

        return response()->json([
            'success' => true,
            'message' => 'List Count Data Table',
            'data' => [
                'blogs'      => $blogs,
                'categories' => $categories,
                'users'      => $users,
                'anggotas'      => $anggotas
            ],
        ], 200);
    }
}
