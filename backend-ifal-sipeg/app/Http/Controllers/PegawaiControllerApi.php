<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Pegawai;

class PegawaiControllerApi extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return Pegawai::all();
    }

    public function store(Request $request)
    {
        return Pegawai::create($request->all());
    }

    public function show($id)
    {
        return Pegawai::findOrFail($id);
    }

    public function update(Request $request, $id)
    {
        $Pegawai = Pegawai::findOrFail($id);
        $Pegawai->update($request->all());

        return $Pegawai;
    }

    public function destroy($id)
    {
        $Pegawai = Pegawai::findOrFail($id);
        $Pegawai->delete();

        return 204;
    }
}
