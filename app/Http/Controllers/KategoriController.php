<?php

namespace App\Http\Controllers;

use App\Models\Kategori;
use Illuminate\Http\Request;
use RealRashid\SweetAlert\Facades\Alert;

class KategoriController extends Controller
{
    public function kategoribukuAdmin() {
        confirmDelete('Hapus Data', 'Apakah Anda Yakin Menghapus Data ?');
        return view('admin.kategori', ['data' => Kategori::getAll()]);
    }

    public function tambahkategoribukuAdmin(Request $request) {
        $this->validate($request, [
            'nama'      => 'required|unique:kategoris,nama|min:3'
        ]);

        if (Kategori::create($request->all())) {
            Alert::success('Berhasil', 'Data Berhasil Ditambah!');
            return redirect()->back();
        }
    }

    public function editkategoribukuAdmin(Request $request, $id) {
        $this->validate($request, [
            'nama'      => 'required|unique:kategoris,nama|min:3'
        ]);

        if (Kategori::find($id)->update($request->all())) {
            Alert::success('Berhasil', 'Data Berhasil Diupdate!');
            return redirect()->back();
        }
    }

    public function hapuskategoribukuAdmin($id) {
        if (Kategori::find($id)->delete()) {
            Alert::success('Berhasil', 'Data Berhasil Dihapus!');
            return redirect()->back();
        }
    }
}
