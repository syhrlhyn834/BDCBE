<?php

namespace App\Http\Controllers\Api\Web;

use App\Http\Controllers\Controller;
use App\Http\Resources\FooterResource;
use App\Models\Footer;

class FooterController extends Controller
{
    public function index()
    {
        $footers = Footer::latest()->get();

        //return with Api Resource
        return new FooterResource(true, 'List Data Footer', $footers);
    }
}
