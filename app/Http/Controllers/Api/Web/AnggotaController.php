<?php

namespace App\Http\Controllers\Api\Web;

use App\Http\Controllers\Controller;
use App\Http\Resources\AnggotaResource;
use App\Models\Anggota;

class AnggotaController extends Controller
{
    /**
     * index
     *
     * @return void
     */
    public function index()
    {
        $anggotas = Anggota::latest()->paginate(10);

        //return with Api Resource
        return new AnggotaResource(true, 'List Data Anggota', $anggotas);
    }

    /**
     * show
     *
     * @param  mixed $slug
     * @return void
     */
     /**
     * show
     *
     * @param  mixed $slug
     * @return void
     */
    public function show($slug)
    {
        $anggota = Anggota::where('slug', $slug)->first();

        if($anggota) {
            //return with Api Resource
            return new AnggotaResource(true, 'Detail Data Anggota', $anggota);
        }

        //return with Api Resource
        return new AnggotaResource(false, 'Data Anggota Tidak Ditemukan!', null);
    }
}
