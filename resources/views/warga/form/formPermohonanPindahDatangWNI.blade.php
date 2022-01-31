@extends('layouts.master')

@section('content')

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-1">
        <h1 class="h3 mb-0 text-gray-800">Surat Keterangan Tidak Mampu</h1>
    </div>

    <div class="row">
        <div class="col-md-12 card shadow mb-4">
            <form class="mt-3 mb-2" action="{{ route('warga.pengajuan.store') }}" method="POST" enctype="multipart/form-data">
                @csrf                    
                    <input hidden value="{{ $kategori }}" name="kategori" >
                    <div class="form-group col-md-8">
                        <label for="inputState">Nama Pemesan Surat</label>
                        <input class="form-control" type="text" name="nama_pemesan" required>
                    </div>    
                    <hr/>
                    <h1 class="h3 mb-0 text-gray-800">Data Diri</h1>
                    
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label for="inputState">Nama</label>
                            <input class="form-control" type="text" name="nama" >
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputState">N I K</label>
                            <input class="form-control" type="text" name="nik" >
                        </div> 
                        <div class="form-group col-md-6">
                            <label for="inputState">Tempat lahir</label>
                            <input class="form-control" type="text" name="tempat_lahir" >
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
                            <label for="inputState">Status Perkawinan</label>
                            <select name="status_kawin" class="form-control">
                                <option selected>-- Status --</option>
                                <option value="kawin">Kawin</option>
                                <option value="belum kawin">Belum Kawin</option>
                            </select>
                        </div>  
                        <div class="form-group col-md-6">
                            <label for="inputState">Pekerjaan</label>
                            <input class="form-control" type="text" name="pekerjaan" >
                        </div>  
                        <div class="form-group col-md-6">
                            <label for="inputState">Alamat</label>
                            <input class="form-control" type="text" name="alamat" >
                        </div>  
                    </div> 
                    <h1 class="h3 mb-0 text-gray-800">Data Tanggungan</h1>
                    
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label for="inputState">Nama</label>
                            <input class="form-control" type="text" name="nama_t" >
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputState">N I K</label>
                            <input class="form-control" type="text" name="nik_t" >
                        </div> 
                        <div class="form-group col-md-6">
                            <label for="inputState">Tempat lahir</label>
                            <input class="form-control" type="text" name="tempat_lahir_t" >
                        </div>    
                        <div class="form-group col-md-6">
                            <label for="inputState">Tanggal Lahir</label>
                            <input class="form-control" type="date" name="tgl_lahir_t" >
                        </div>      
                        <div class="form-group col-md-6">
                            <label for="inputState">Agama</label>
                            <select name="agama_t" class="form-control">
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
                            <label for="inputState">Status Perkawinan</label>
                            <select name="status_kawin_t" class="form-control">
                                <option selected>-- Status --</option>
                                <option value="kawin">Kawin</option>
                                <option value="belum kawin">Belum Kawin</option>
                            </select>
                        </div>  
                        <div class="form-group col-md-6">
                            <label for="inputState">Pekerjaan</label>
                            <input class="form-control" type="text" name="pekerjaan_t" >
                        </div>  
                        <div class="form-group col-md-6">
                            <label for="inputState">Alamat</label>
                            <input class="form-control" type="text" name="alamat_t" >
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

<script>
        $(document).ready(function(){
            let dataWrap= $("#input-wrap");
            $("#tambah button").click(function(){
                let a = $("<div>")
                    .addClass("form-group row input-wrapwrap ")
                    .append([
                        $("<div>").addClass("row col-auto").css("flex",1)
                            .append([
                                $("<div>")
                                    .addClass("col-md-3")
                                    .append([
                                        $("<label>").html("NIK"),
                                        $("<input>").attr({
                                            "type":"text",
                                            "class":"form-control",
                                            "name": "data[nik][]"
                                        })    
                                    ]),
                                $("<div>")
                                    .addClass("col-md-3")
                                    .append([
                                        $("<label>").html("Nama"),
                                        $("<input>").attr({
                                            "type":"text",
                                            "class":"form-control",
                                            "name": "data[nama_kel][]"
                                        })    
                                    ]),
                                $("<div>")
                                    .addClass("col-md-3")
                                    .append([
                                        $("<label>").html("Masa Berlaku KTP"),
                                        $("<input>").attr({
                                            "type":"text",
                                            "class":"form-control",
                                            "name": "data[masa][]"
                                        })    
                                    ]),
                                $("<div>")
                                    .addClass("col-md-3")
                                    .append([
                                        $("<label>").html("SHDK"),
                                        $("<input>").attr({
                                            "type":"text",
                                            "class":"form-control",
                                            "name": "data[shdk][]"
                                        })    
                                    ]),                           
                            ]),
                            $("<div>").addClass(" col-md-auto")
                            .append([
                                $("<div>")
                                    .addClass("form-gorup row")
                                    .append([
                                        $("<label>").html("hapus").css("opacity",0),
                                        $("<button>").attr({
                                            "class":"form-control btn btn-danger hapus",
                                        }).html("x")
                                    ])

                            ])
                    ])
                dataWrap.append(a);
            })
            
            $('#input-wrap').on('click','.hapus',function(){
                $(this).closest('.input-wrapwrap').remove()
            })
        });
    </script>
@endsection
  