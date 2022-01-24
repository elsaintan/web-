@extends('layouts.master')

@section('content')

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-1">
        <h1 class="h3 mb-0 text-gray-800">Verifikasi Surat Keterangan Tidak Mampu</h1>
    </div>

    <div class="row">
        <div class="col-md-12 card shadow mb-4">
            <form class="mt-3 mb-2" action="{{ route('send.verifikasi') }}" method="POST" enctype="multipart/form-data">
                @csrf
                    <input hidden value="{{ $data->data_id }}" name="id_data" >                 
                    <input hidden value="{{ $data->pengajuan_id }}" name="id_pengaju" >
                    <input hidden value="{{ $data->pesanan_id }}" name="id_pesanan" >
                    <input hidden value="{{ $data->halaman }}" name="kat" >                    
                    <div class="form-group col-md-8">
                        <label for="inputState">Nama Pemesan Surat</label>
                        <input class="form-control" type="text" name="nama_pemesan" value="{{ $data->nama_pemesan }}">
                    </div>    
                    <hr/>
                    <h1 class="h3 mb-0 text-gray-800">Data Diri</h1>
                    
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label for="inputState">Nama</label>
                            <input class="form-control" type="text" name="nama" value="{{ $data->nama }}">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputState">N I K</label>
                            <input class="form-control" type="text" name="nik" value="{{ $data->nik }}">
                        </div> 
                        <div class="form-group col-md-6">
                            <label for="inputState">Tempat lahir</label>
                            <input class="form-control" type="text" name="tempat_lahir" value="{{ $data->tempat_lahir }}">
                        </div>    
                        <div class="form-group col-md-6">
                            <label for="inputState">Tanggal Lahir</label>
                            <input class="form-control" type="date" name="tgl_lahir" value="{{ $data->tgl_lahir }}">
                        </div>      
                        <div class="form-group col-md-6">
                            <label for="inputState">Agama</label>
                            <select name="agama" class="form-control">
                                <option selected>-- Agama --</option>
                                @if ($data->agama == "islam")
                                    <option value="islam" selected>Islam</option>
                                    <option value="katholik">Katholik</option>
                                    <option value="kristen">Kristen</option>
                                    <option value="hindhu">Hindhu</option>
                                    <option value="budha">Buddha</option>
                                    <option value="konghucu">Konghucu</option>
                                @elseif ($data->agama == "katholik")
                                    <option value="islam">Islam</option>
                                    <option value="katholik" selected>Katholik</option>
                                    <option value="kristen">Kristen</option>
                                    <option value="hindhu">Hindhu</option>
                                    <option value="budha">Buddha</option>
                                    <option value="konghucu">Konghucu</option>
                                @elseif ($data->agama == "kristen")
                                    <option value="islam">Islam</option>
                                    <option value="katholik">Katholik</option>
                                    <option value="kristen" selected>Kristen</option>
                                    <option value="hindhu">Hindhu</option>
                                    <option value="budha">Buddha</option>
                                    <option value="konghucu">Konghucu</option>
                                @elseif ($data->agama == "hindhu")
                                    <option value="islam">Islam</option>
                                    <option value="katholik">Katholik</option>
                                    <option value="kristen">Kristen</option>
                                    <option value="hindhu" selected>Hindhu</option>
                                    <option value="budha">Buddha</option>
                                    <option value="konghucu">Konghucu</option>
                                @elseif ($data->agama == "budha")
                                    <option value="islam">Islam</option>
                                    <option value="katholik">Katholik</option>
                                    <option value="kristen">Kristen</option>
                                    <option value="hindhu">Hindhu</option>
                                    <option value="budha" selected>Buddha</option>
                                    <option value="konghucu">Konghucu</option>
                                @else
                                    <option value="islam">Islam</option>
                                    <option value="katholik">Katholik</option>
                                    <option value="kristen">Kristen</option>
                                    <option value="hindhu">Hindhu</option>
                                    <option value="budha">Buddha</option>
                                    <option value="konghucu" selected>Konghucu</option>
                                @endif
                            </select>
                        </div> 
                        <div class="form-group col-md-6">
                            <label for="inputState">Status Perkawinan</label>
                            <select name="status_kawin" class="form-control">
                                <option selected>-- Status --</option>
                                @if ($data->status_perkawinan == "kawin")
                                    <option value="kawin" selected>Kawin</option>
                                    <option value="belum kawin">Belum Kawin</option>
                                @else
                                    <option value="kawin">Kawin</option>
                                    <option value="belum kawin" selected>Belum Kawin</option>
                                @endif
                            </select>
                        </div>  
                        <div class="form-group col-md-6">
                            <label for="inputState">Pekerjaan</label>
                            <input class="form-control" type="text" name="pekerjaan" value="{{ $data->pekerjaan }}">
                        </div>  
                        <div class="form-group col-md-6">
                            <label for="inputState">Alamat</label>
                            <input class="form-control" type="text" name="alamat" value="{{ $data->alamat }}">
                        </div>  
                    </div> 
                    <h1 class="h3 mb-0 text-gray-800">Data Tanggungan</h1>
                    
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label for="inputState">Nama</label>
                            <input class="form-control" type="text" name="nama_t" value="{{ $data->nama_t }}">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputState">N I K</label>
                            <input class="form-control" type="text" name="nik_t" value="{{ $data->nik_t }}">
                        </div> 
                        <div class="form-group col-md-6">
                            <label for="inputState">Tempat lahir</label>
                            <input class="form-control" type="text" name="tempat_lahir_t" value="{{ $data->tempat_lahir_t }}">
                        </div>    
                        <div class="form-group col-md-6">
                            <label for="inputState">Tanggal Lahir</label>
                            <input class="form-control" type="date" name="tgl_lahir_t" value="{{ $data->tgl_lahir_t }}">
                        </div>      
                        <div class="form-group col-md-6">
                            <label for="inputState">Agama</label>
                            <select name="agama_t" class="form-control">
                                <option>-- Agama --</option>
                                @if ($data->agama_t == "islam")
                                    <option value="islam" selected>Islam</option>
                                    <option value="katholik">Katholik</option>
                                    <option value="kristen">Kristen</option>
                                    <option value="hindhu">Hindhu</option>
                                    <option value="budha">Buddha</option>
                                    <option value="konghucu">Konghucu</option>
                                @elseif ($data->agama_t == "katholik")
                                    <option value="islam">Islam</option>
                                    <option value="katholik" selected>Katholik</option>
                                    <option value="kristen">Kristen</option>
                                    <option value="hindhu">Hindhu</option>
                                    <option value="budha">Buddha</option>
                                    <option value="konghucu">Konghucu</option>
                                @elseif ($data->agama_t == "kristen")
                                    <option value="islam">Islam</option>
                                    <option value="katholik">Katholik</option>
                                    <option value="kristen" selected>Kristen</option>
                                    <option value="hindhu">Hindhu</option>
                                    <option value="budha">Buddha</option>
                                    <option value="konghucu">Konghucu</option>
                                @elseif ($data->agama_t == "hindhu")
                                    <option value="islam">Islam</option>
                                    <option value="katholik">Katholik</option>
                                    <option value="kristen">Kristen</option>
                                    <option value="hindhu" selected>Hindhu</option>
                                    <option value="budha">Buddha</option>
                                    <option value="konghucu">Konghucu</option>
                                @elseif ($data->agama_t == "budha")
                                    <option value="islam">Islam</option>
                                    <option value="katholik">Katholik</option>
                                    <option value="kristen">Kristen</option>
                                    <option value="hindhu">Hindhu</option>
                                    <option value="budha" selected>Buddha</option>
                                    <option value="konghucu">Konghucu</option>
                                @else
                                    <option value="islam">Islam</option>
                                    <option value="katholik">Katholik</option>
                                    <option value="kristen">Kristen</option>
                                    <option value="hindhu">Hindhu</option>
                                    <option value="budha">Buddha</option>
                                    <option value="konghucu" selected>Konghucu</option>
                                @endif
                            </select>
                        </div> 
                        <div class="form-group col-md-6">
                            <label for="inputState">Status Perkawinan</label>
                            <select name="status_kawin_t" class="form-control">
                                <option>-- Status --</option>
                                @if ($data->status_kawin_t == "kawin")
                                    <option value="kawin" selected>Kawin</option>
                                    <option value="belum kawin">Belum Kawin</option>
                                @else
                                    <option value="kawin">Kawin</option>
                                    <option value="belum kawin" selected>Belum Kawin</option>
                                @endif
                            </select>
                        </div>  
                        <div class="form-group col-md-6">
                            <label for="inputState">Pekerjaan</label>
                            <input class="form-control" type="text" name="pekerjaan_t" value="{{ $data->pekerjaan_t }}">
                        </div>  
                        <div class="form-group col-md-6">
                            <label for="inputState">Alamat</label>
                            <input class="form-control" type="text" name="alamat_t" value="{{ $data->alamat_t }}">
                        </div>  
                    </div>       
                    <div class="text-left mt-4 mb-4">
                        <button type="submit" class="btn btn-primary">Verifikasi</button>
                        <button type="button" class="btn btn-danger btn-md  ml-5" data-toggle="modal" data-target="#myModal">Tolak</button>
                    </div>
            </form>
        </div>
    </div>

    {{--  modal  --}}
    <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog">
        
        <!-- Modal content-->
        <div class="modal-content p-3">
            <form class="mt-1 mb-1 "  action="{{ route('tolak') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <h4 class="modal-title">Tolak Pesanan</h4>
                    <input hidden value="{{ $data->halaman }}" name="kat" >
                    <input hidden value="{{ $data->pesanan_id }}" name="idpesantolak" >
                    <div class="modal-body">
                    <input type="text" class="form-control" name="alasantolak" placeholder="tambahkan alasan" >
                    </div>
                    <div class="modal-footer">
                    <button type="submit" class="btn btn-sm btn-danger">Tolak</button>
                    <button type="button" class="btn btn-sm btn-warning" data-dismiss="modal">Close</button>
                    </div>  
            </form>
        </div>
        
        </div>
    </div>
@endsection

@section('js')

@endsection
  