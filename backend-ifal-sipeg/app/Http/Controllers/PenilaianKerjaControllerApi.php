<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\PenilaianKerja;

class PenilaianKerjaControllerApi extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return PenilaianKerja::all();
    }

    public function store(Request $request)
    {
        return PenilaianKerja::create($request->all());
    }

    public function show($id)
    {
        return PenilaianKerja::findOrFail($id);
    }

    public function update(Request $request, $id)
    {
        $PenilaianKerja = PenilaianKerja::findOrFail($id);
        $PenilaianKerja->update($request->all());

        return $PenilaianKerja;
    }

    public function destroy($id)
    {
        $PenilaianKerja = PenilaianKerja::findOrFail($id);
        $PenilaianKerja->delete();

        return 204;
    }
}
