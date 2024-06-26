<?php

namespace App\Http\Controllers\Api\Admin;

use App\Http\Controllers\Controller;
use App\Http\Resources\FooterResource;
use App\Models\Footer;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class FooterController extends Controller
{
    public function index()
    {
        $footers = Footer::latest()->paginate(5);
        //return with Api Resource
        return new FooterResource(true, 'Data Footer', $footers);
    }
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'description' => 'required'
        ]);
        if ($validator->fails()) {
            return response()->json($validator->errors(), 422);
        }
        $footer = Footer::create([
            'name'      => $request->name,
            'description' => $request->description
        ]);
        return new FooterResource(true, 'Data Footer Berhasil Disimpan!', $footer);
}
public function show($id)
{
    $footer = Footer::find($id);
    if (!$footer) {
        return new FooterResource(false, 'Data Footer Tidak Ditemukan', null);
    }
    return new FooterResource(true, 'Detail Data Footer', $footer);
}
public function update(Request $request, $id)
    {
        $footer = Footer::find($id);
        if (!$footer) {
            return new FooterResource(false, 'Data Footer Tidak Ditemukan', null);
        }

        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'description' => 'required'
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors(), 422);
        }


        $footer->update([
            'name'      => $request->name,
            'description' => $request->description
        ]);

        return new FooterResource(true, 'Data Footer Berhasil Diupdate!', $footer);
    }

    public function destroy($id)
    {
        $footer = Footer::find($id);
        if (!$footer) {
            return new FooterResource(false, 'Data Footer Tidak Ditemukan', null);
        }

        $footer->delete();

        return new FooterResource(true, 'Data Footer Berhasil Dihapus!', null);
    }
}
