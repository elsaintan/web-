@extends('layouts.master')

@section('content')

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-1">
        <h1 class="h3 mb-0 text-gray-800">Surat Pernyataan Domisili</h1>
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
                        <input class="form-control" type="text" name="nama_pemesan" value="{{ $data->nama_pemesan }}" readonly>
                    </div>    
                    <hr/>
                    <h1 class="h3 mb-0 text-gray-800">Data Diri</h1>
                    <div class="row">
                    <div class="form-group col-md-6">
                        <label for="inputState">Nama Lengkap</label>
                        <input class="form-control" type="text" name="nama" value="{{ $data->nama }}">
                    </div> 
                        <div class="form-group col-md-6">
                        <label for="inputState">NIK</label>
                        <input class="form-control" type="text" name="nik" value="{{ $data->nik }}">
                    </div>     
                    <div class="form-group col-md-6">
                        <label for="inputState">Tempat lahir</label>
                        <input class="form-control" type="text" name="tmpt_lahir" value="{{ $data->tmpt_lahir }}">
                    </div>    
                    <div class="form-group col-md-6">
                        <label for="inputState">Tanggal Lahir</label>
                        <input class="form-control" type="date" name="tgl_lahir" value="{{ $data->tgl_lahir}}">
                    </div>         
                    <div class="form-group col-md-6">
                            <label for="inputState">Agama</label>
                            <select name="agama" class="form-control">
                                <option selected> {{ $data->agama }}</option>
                                <option value="Islam">Islam</option>
                                <option value="Kristen"> Kristen</option>
                                <option value="Katholik">Katholik</option>
                                <option value="Hindhu">Hindhu</option>
                                <option value="Budha">Budha</option>
                                <option value="Konghucu">Konghucu</option>
                                 @switch($data->agama)
                                    @case('Islam')
                                    <option value="Islam">Islam</option>   
                                        @break
                                    @case('Kristen')
                                    <option value="Kristen"> Kristen</option>
                                    @case('Katholik')
                                    <option value="Katholik">Katholik</option>
                                    @case('Hindhu')
                                    <option value="Hindhu">Hindhu</option>
                                    @case('Budha')
                                    <option value="Budha">Budha</option>
                                    @case('Konghucu')
                                    <option value="Konghucu">Konghucu</option>
                                        @break                               
                                @endswitch    
                            </select>
                        </div>  
                    <div class="form-group col-md-6">
                        <label for="inputState">Pekerjaan</label>
                        <input class="form-control" type="text" name="pekerjaan" value="{{ $data->pekerjaan }}">
                    </div>  
                    <div class="form-group col-md-6">
                        <label for="inputState">Jenis Kelamin</label>
                        <input class="form-control" type="text" name="jk" value="{{ $data->jk }}">
                    </div>  
                    <div class="form-group col-md-6">
                        <label for="inputState">Alamat KTP</label>
                        <input class="form-control" type="text" name="alamat" value="{{ $data->alamat }}">
                    </div>  
                    <div class="form-group col-md-6">
                        <label for="inputState">Alamat Sekarang</label>
                        <input class="form-control" type="text" name="alamat_baru" value="{{ $data->alamat_baru }}">
                    </div>
                    </div>

                    <div class="text-left mt-4 mb-4">
                        <button type="submit" class="btn btn-primary">Verifikasi</button>
                        <button type="button" class="btn btn-danger btn-md  ml-5" data-toggle="modal" data-target="#myModal">Tolak</button>
                    </div>
            </form>
        </div>
    </div>

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
  