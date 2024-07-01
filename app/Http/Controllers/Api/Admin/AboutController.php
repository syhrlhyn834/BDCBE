<?php

namespace App\Http\Controllers\Api\Admin;

use App\Http\Controllers\Controller;
use App\Http\Resources\AboutResource;
use App\Models\About;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class AboutController extends Controller
{
    public function index()
    {
        $abouts = About::latest()->paginate(5);
        return new AboutResource(true, 'Data About', $abouts);
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'description' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json(['success' => false, 'message' => $validator->errors()], 422);
        }

        $about = About::create([
            'description' => $request->description
        ]);

        return new AboutResource(true, 'Data About Berhasil Disimpan!', $about);
    }

    public function show($id)
    {
        $about = About::find($id);
        if (!$about) {
            return new AboutResource(false, 'Data About Tidak Ditemukan', null);
        }
        return new AboutResource(true, 'Detail Data About', $about);
    }

    public function update(Request $request, $id)
    {
        $about = About::find($id);
        if (!$about) {
            return new AboutResource(false, 'Data About Tidak Ditemukan', null);
        }

        $validator = Validator::make($request->all(), [
            'description' => 'required'
        ]);

        if ($validator->fails()) {
            return response()->json(['success' => false, 'message' => $validator->errors()], 422);
        }

        $about->update([
            'description' => $request->description
        ]);

        return new AboutResource(true, 'Data About Berhasil Diupdate!', $about);
    }

    public function destroy($id)
    {
        $about = About::find($id);
        if (!$about) {
            return new AboutResource(false, 'Data About Tidak Ditemukan', null);
        }

        $about->delete();

        return new AboutResource(true, 'Data About Berhasil Dihapus!', null);
    }
}
