<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Kelas;

class KelasController extends Controller
{
    public function index() {
        $kelass = Kelas::paginate(5); 
        return view('kelas.index', compact('kelass'));
    }

    public function create()
    {
        return view('kelas.create'); 
    }

    public function store(Request $request)
    {
        // Validasi data
        $request->validate([
            'nama_kelas' => 'required|string|max:255|',  // unik berdasarkan nama_kelas
            'kompetensi_keahlian' => 'required|string|max:255',
        ]);

        // Simpan data ke database
        Kelas::create([
            'nama_kelas' => $request->nama_kelas,
            'kompetensi_keahlian' => $request->kompetensi_keahlian,
        ]);

        return redirect()->route('kelas.index')->with('success', 'Kelas berhasil ditambahkan!');
    }

    public function edit(string $id)
    {
        $kelas = Kelas::find($id);
        return view('kelas.edit', ['kelas' => $kelas]);
    }

    public function destroy(string $id)
    {
        $kelas = Kelas::find($id);

        try {
            $kelas->delete();
        } catch (Exception $e) {
            return redirect()->back()->with('error', 'kelas Gagal dihapus');
        }
        return redirect()->back()->with('success', 'kelas Berhasil dihapus');
    }
    
    public function update(Request $request,  string $id)
    {   
        $request->validate([
            'nama_kelas' => ['required', 'string', 'unique:kelas,nama_kelas,' . $id],
            'kompetensi_keahlian' => 'required|string|max:255',
        ]);
        try{
            $kelas = Kelas::findOrFail($id);
            
            $kelas->update([
                'nama_kelas' => $request->nama_kelas,
                'kompetensi_keahlian' => $request->kompetensi_keahlian,
            ]);
        
        } catch (Exception $e) {      
                return redirect()->route('kelas.index')->with('error', 'Kelas tidak ditemukan');
                
            }
    return redirect()->route('kelas.index')->with('success', 'Kelas berhasil diupdate');
        }
}