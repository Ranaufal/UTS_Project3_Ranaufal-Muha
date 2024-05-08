<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Absensi;

class AbsensiControllerApi extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return Absensi::all();
    }

    public function store(Request $request)
    {
        return Absensi::create($request->all());
    }

    public function show($id)
    {
        return Absensi::findOrFail($id);
    }

    public function update(Request $request, $id)
    {
        $Absensi = Absensi::findOrFail($id);
        $Absensi->update($request->all());

        return $Absensi;
    }

    public function destroy($id)
    {
        $Absensi = Absensi::findOrFail($id);
        $Absensi->delete();

        return 204;
    }
}
