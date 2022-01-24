@extends('layouts.master')

@section('content')

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-1">
        <h1 class="h3 mb-0 text-gray-800">Surat Pernyataan Domisili</h1>
    </div>

    <div class="row">
        <div class="col-md-12 card shadow mb-4">
            <form class="mt-3 mb-2" action="{{ route('pengajuan.store') }}" method="POST" enctype="multipart/form-data">
                @csrf                    
                    <input hidden value="{{ $kategori }}" name="kategori" >
                    <div class="form-group col-md-8">
                        <label for="inputState">Nama Pemesan Surat</label>
                        <input class="form-control" type="text" name="nama_pemesan" >
                    </div>    
                    <hr/>
                    <h1 class="h3 mb-0 text-gray-800">Data Diri</h1>
                    <div class="row">
                    <div class="form-group col-md-6">
                        <label for="inputState">Nama Lengkap</label>
                        <input class="form-control" type="text" name="nama" >
                    </div> 
                        <div class="form-group col-md-6">
                        <label for="inputState">NIK</label>
                        <input class="form-control" type="text" name="nik" >
                    </div>     
                    <div class="form-group col-md-6">
                        <label for="inputState">Tempat lahir</label>
                        <input class="form-control" type="text" name="tmpt_lahir" >
                    </div>    
                    <div class="form-group col-md-6">
                        <label for="inputState">Tanggal Lahir</label>
                        <input class="form-control" type="date" name="tgl_lahir" >
                    </div>         
                    <div class="form-group col-md-6">
                            <label for="inputState">Agama</label>
                            <select name="agama" class="form-control">
                                <option selected>-- Agama --</option>
                                <option value="islam">Islam</option>
                                <option value="katholik">Katholik</option>
                                <option value="kristen">Kristen</option>
                                <option value="hindhu">Hindhu</option>
                                <option value="budha">Buddha</option>
                                <option value="budha">Konghucu</option>
                            </select>
                        </div>  
                    <div class="form-group col-md-6">
                        <label for="inputState">Pekerjaan</label>
                        <input class="form-control" type="text" name="pekerjaan" >
                    </div>  
                    <div class="form-group col-md-6">
                        <label for="inputState">Jenis Kelamin</label>
                        <input class="form-control" type="text" name="jk" >
                    </div>  
                    <div class="form-group col-md-6">
                        <label for="inputState">Alamat KTP</label>
                        <input class="form-control" type="text" name="alamat" >
                    </div>  
                    <div class="form-group col-md-6">
                        <label for="inputState">Alamat Sekarang</label>
                        <input class="form-control" type="text" name="alamat_baru" >
                    </div>
                    </div>

                    <div class="text-left mt-4 mb-4">
                        <button type="submit" class="btn btn-primary">Simpan</button>
                    </div>
            </form>
        </div>
    </div>
@endsection

@section('js')

@endsection
  