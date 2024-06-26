<?php

namespace App\Http\Controllers\Api\Admin;

use App\Http\Controllers\Controller;
use App\Http\Resources\HeaderResource;
use App\Models\Header;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class HeaderController extends Controller
{
    public function index()
    {
        $headers = Header::latest()->paginate(5);
        return new HeaderResource(true, 'Data Header', $headers);
    }
     public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'image' => 'required|image|mimes:jpeg,jpg,png|max:2000',
            'title' => 'required',
            'name' => 'required',
            'description' => 'required'
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors(), 422);
        }
        $image = $request->file('image');
        $image->storeAs('public/headers', $image->hashName());

        $header = Header::create([
            'image'    => $image->hashName(),
            'title'     => $request->title,
            'name'      => $request->name,
            'description' => $request->description
        ]);
        return new HeaderResource(true, 'Data Header Berhasil Disimpan!', $header);
}
public function show($id)
{
    $header = Header::find($id);
    if (!$header) {
        return new HeaderResource(false, 'Data Header Tidak Ditemukan', null);
    }
    return new HeaderResource(true, 'Detail Data Header', $header);
}
public function update(Request $request, $id)
{
    $header = Header::find($id);
    if (!$header) {
        return new HeaderResource(false, 'Data Header Tidak Ditemukan', null);
    }

    $validator = Validator::make($request->all(), [
        'image' => 'nullable|image|mimes:jpeg,jpg,png|max:2000',
        'title' => 'required',
        'name' => 'required',
        'description' => 'required'
    ]);

    if ($validator->fails()) {
        return response()->json($validator->errors(), 422);
    }

    if ($request->file('image')) {
        Storage::disk('local')->delete('public/headers/' . basename($header->image));
        $image = $request->file('image');
        $image->storeAs('public/headers/', $image->hashName());
        $header->image = $image->hashName();
    }

    $header->update([
        'title' => $request->title,
        'name' => $request->name,
        'description' => $request->description
    ]);

    return new HeaderResource(true, 'Data Header Berhasil Diupdate!', $header);
}


    public function destroy($id)
    {
        $header = Header::find($id);
        if (!$header) {
            return new HeaderResource(false, 'Data Header Tidak Ditemukan', null);
        }

        Storage::disk('local')->delete('public/headers/' . basename($header->image));
        $header->delete();

        return new HeaderResource(true, 'Data Header Berhasil Dihapus!', null);
    }
}

