<?php

namespace App\Http\Controllers\Api\Web;

use App\Http\Controllers\Controller;
use App\Http\Resources\AboutResource;
use App\Models\About;
use Illuminate\Http\Request;

class AboutController extends Controller
{
      /**
     * index
     *
     * @return void
     */
    public function index()
    {
        $abouts = About::latest()->get();

        //return with Api Resource
        return new AboutResource(true, 'List Data About', $abouts);
    }
    public function storeImageAbout(Request $request)
    {
        //upload new image
        $image = $request->file('upload');
        $image->storeAs('public/about_images', $image->hashName());

        return response()->json([
            'url' => asset('storage/about_images/'.$image->hashName())
        ]);
    }

}
