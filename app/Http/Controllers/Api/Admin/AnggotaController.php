<?php

namespace App\Http\Controllers\Api\Admin;

use App\Models\Anggota;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;
use App\Http\Resources\AnggotaResource;
use Illuminate\Support\Facades\Validator;

class AnggotaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //get anggota
        $anggotas = Anggota::when(request()->q, function($anggotas) {
            $anggotas = $anggotas->where('name', 'like', '%'. request()->q . '%');
        })->latest()->paginate(5);

        //return with Api Resource
        return new AnggotaResource(true, 'List Data Anggota', $anggotas);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'image'    => 'nullable|image|mimes:jpeg,jpg,png|max:2000',
            'name'     => 'required|unique:anggotas',
            'posisi' => 'required',
            'umur'     => 'nullable|numeric',
            'alamat'   => 'nullable',
            'description' => 'nullable'
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors(), 422);
        }

        //upload image
        $image = $request->file('image');
        $image->storeAs('public/anggotas', $image->hashName());

        //create anggota
        $anggota = Anggota::create([
            'image'=> $image->hashName(),
            'name' => $request->name,
            'slug' => Str::slug($request->name, '-'),
            'posisi' => $request->posisi,
            'umur' => $request->umur,
            'alamat' => $request->alamat,
            'description' => $request->description
        ]);

        if($anggota) {
            //return success with Api Resource
            return new AnggotaResource(true, 'Data Anggota Berhasil Disimpan!', $anggota);
        }

        //return failed with Api Resource
        return new AnggotaResource(false, 'Data Anggota Gagal Disimpan!', null);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $anggota = Anggota::whereId($id)->first();

        if($anggota) {
            //return success with Api Resource
            return new AnggotaResource(true, 'Detail Data Anggota!', $anggota);
        }

        //return failed with Api Resource
        return new AnggotaResource(false, 'Detail Data Anggota Tidak DItemukan!', null);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Anggota $anggota)
    {
        $validator = Validator::make($request->all(), [
            'name'     => 'required|unique:anggotas,name,'.$anggota->id,
            'posisi'   => 'required',
            'umur'     => 'nullable|numeric',
            'alamat'   => 'nullable',
            'description' => 'nullable'
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors(), 422);
        }

        //check image update
        if ($request->file('image')) {

            //remove old image
            Storage::disk('local')->delete('public/anggotas/'.basename($anggota->image));

            //upload new image
            $image = $request->file('image');
            $image->storeAs('public/anggotas', $image->hashName());

            //update anggota with new image
            $anggota->update([
                'image'=> $image->hashName(),
                'name' => $request->name,
                'slug' => Str::slug($request->name, '-'),
                'posisi' => $request->posisi,
                'umur' => $request->umur,
                'alamat' => $request->alamat,
                'description' => $request->description

            ]);

        }

        //update anggota without image
        $anggota->update([
            'name' => $request->name,
                'slug' => Str::slug($request->name, '-'),
                'posisi' => $request->posisi,
                'umur' => $request->umur,
                'alamat' => $request->alamat,
                'description' => $request->description
        ]);

        if($anggota) {
            //return success with Api Resource
            return new AnggotaResource(true, 'Data Anggota Berhasil Diupdate!', $anggota);
        }

        //return failed with Api Resource
        return new AnggotaResource(false, 'Data Anggota Gagal Diupdate!', null);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Anggota $anggota)
    {
        //remove image
        Storage::disk('local')->delete('public/anggotas/'.basename($anggota->image));

        if($anggota->delete()) {
            //return success with Api Resource
            return new AnggotaResource(true, 'Data Anggota Berhasil Dihapus!', null);
        }

        //return failed with Api Resource
        return new AnggotaResource(false, 'Data Anggota Gagal Dihapus!', null);
    }
}
