@extends('layouts.master')

@section('content')

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-1">
        <h1 class="h3 mb-0 text-gray-800">Tambah Data Pengajuan warga</h1>
    </div>

    <div class="row">
        <div class="col-md-12 card shadow mb-4">
            <form class="mt-3 mb-2" action="{{ route('form-surat') }}" method="POST" enctype="multipart/form-data">
                @csrf
                    <div class="form-group col-md-8">
                        <label for="inputState">Pilih Kategori Surat</label>
                        <select name="id_kategori" id="inputKategori" class="form-control">
                            <option selected>-- Pilih Kategori --</option>
                            @foreach ($kategori as $item)
                                <option class="text-capitalize" value="{{ $item->id }}">{{ $item->nama }}</option>
                            @endforeach
                        </select>
                    </div>
                    
                    {{-- <div class="form-group col-md-8">
                        <label for="inputState">Nama Pemesan Surat</label>
                        <input class="form-control" type="text" name="nama" >
                    
                    </div> --}}             
                    <div class="text-left mt-4 mb-4">
                        <button type="submit" class="btn btn-primary">Lanjut</button>
                    </div>
            </form>
        </div>
    </div>
@endsection

@section('js')

@endsection
  