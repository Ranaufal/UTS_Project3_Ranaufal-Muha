<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Cuti;

class CutiControllerApi extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return Cuti::all();
    }

    public function store(Request $request)
    {
        return Cuti::create($request->all());
    }

    public function show($id)
    {
        return Cuti::findOrFail($id);
    }

    public function update(Request $request, $id)
    {
        $Cuti = Cuti::findOrFail($id);
        $Cuti->update($request->all());

        return $Cuti;
    }

    public function destroy($id)
    {
        $Cuti = Cuti::findOrFail($id);
        $Cuti->delete();

        return 204;
    }
}
