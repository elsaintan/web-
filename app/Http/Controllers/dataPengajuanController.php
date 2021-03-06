<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Validator;
use App\DataPengajuan;
use App\KategoriSurat;
use App\Pesanan;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;
use Svg\Tag\Rect;

class dataPengajuanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(KategoriSurat $id)
    {
        // $id = KategoriSurat::find($request->id_kategori);
        
        $pengajuan = DataPengajuan::where('kategori_surat_id', $id)->orderBy('created_at', 'DESC')->get();
        //dd($pengajuan);
        $title = KategoriSurat::find($id);
        return view('admin.dashboard.listkategori', compact('pengajuan', 'title'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $kategori = KategoriSurat::get();
        return view('admin.pengajuan.create', compact('kategori'));
        //
        $pesanan = Pesanan::get();
    }

    public function pilihSurat(Request $request)
    {
        $kategori = $request['id_kategori'];
        switch ($kategori) {
            case ('1'):
                return view('admin.pengajuan.kelahiranForm',compact('kategori'));
              break;
            case ('2'):
                return view('admin.pengajuan.kematianForm',compact('kategori'));
              break;
            case ('3'):
                return view('admin.pengajuan.umumForm',compact('kategori'));
              break;
            case ('4'):
                return view('admin.pengajuan.suratPernyataanDomisili',compact('kategori'));
              break;
            case ('5'):
                return view('admin.pengajuan.formPermohonanPindahWNI',compact('kategori'));
              break;
            case ('6'):
                return view('admin.pengajuan.datangForm',compact('kategori'));
              break;
            case ('7'):
                return view('admin.pengajuan.formKettidakmampu',compact('kategori'));
              break;
          }
        
        
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function uploadImage(Request $request)
    {

        $kk = time().'_'.'kk'.$request->file('kk')->getClientOriginalName();
        $filePath = $request->file('kk')->storeAs('uploads', $kk, 'public');

        //$request->file('kk')->store('public/kelahiran');
        //$request->file('kartu')->store('public/kelahiran');

        dd($filePath);
    }

    public function store(Request $request)
    {  
        $kat = $request['kategori'];
        $kategori = KategoriSurat::find($kat);
        switch ($kat) {
            //kelahiran
            case ('1'):
               // $no_surat = '472.11';
               $fileName1 = time().'_'.'kk'.$request->no_kk.'.'.$request->file('kk')->getClientOriginalExtension();
               $kk = $request->file('kk')->storeAs('kelahiran', $fileName1, 'public');

               $fileName2 = time().'_'.'superrtrw'.$request->file('superrt')->getClientOriginalName();
               $suket_rtrw = $request->file('superrt')->storeAs('kelahiran', $fileName2, 'public');

               $fileName3 = time().'_'.'suketkelahiran'.$request->file('suketkelahiran')->getClientOriginalName();
               $suketlahir = $request->file('suketkelahiran')->storeAs('kelahiran', $fileName3, 'public');

               $fileName4 = time().'_'.'ktpibu'.$request->ibu_nik.'.'.$request->file('ktpibu')->getClientOriginalExtension();
               $ktpibu = $request->file('ktpibu')->storeAs('kelahiran', $fileName4, 'public');

               $fileName5 = time().'_'.'ktpayah'.$request->ayah_nik.'.'.$request->file('ktpayah')->getClientOriginalExtension();
               $ktpayah = $request->file('ktpayah')->storeAs('kelahiran', $fileName5, 'public');

               $fileName6 = time().'_'.'ktpsaksi1'.$request->saksi1_nik.'.'.$request->file('ktpsaksi1')->getClientOriginalExtension();
               $ktpsaksi1 = $request->file('ktpsaksi1')->storeAs('kelahiran', $fileName6, 'public');

               $fileName7 = time().'_'.'ktpsaksi2'.$request->saksi2_nik.'.'.$request->file('ktpsaksi2')->getClientOriginalExtension();
               $ktpsaksi2 = $request->file('ktpsaksi2')->storeAs('kelahiran', $fileName7, 'public');

               $fileName8 = time().'_'.'suratnikah'.$request->file('kk')->getClientOriginalName();
               $suratnikah = $request->file('suratnikah')->storeAs('kelahiran', $fileName8, 'public');

                $data = DB::table('data_kelahiran') 
                            ->insert([
                              'no_kk' => $request['no_kk'],
                              'nama_kk' => $request['nm_kk'],
                              'foto_kk' => $kk,
                              'surat_keterangan_rtrw' => $suket_rtrw,
                              'surat_ket_kelahiran' => $suketlahir, 
                              'ktp_ibu' => $ktpibu,
                              'ktp_ayah' => $ktpayah,
                              'ktp_saksi1' => $ktpsaksi1,
                              'ktp_saksi2' => $ktpsaksi2,
                              'surat_nikah' => $suratnikah,
                              'nik' => $request['nik'],
                              'nama' => $request['nama_bayi'],
                              'jk' => $request['jk'],
                              'tmpt_lahiran' => $request['tmpt_lahiran'],
                              'tmpt_lahir' => $request['tmpt_lahir'],
                              'hari_lahir'=> $request['hari_lahir'],
                              'jam_lahir'=>$request['jam_lahir'],
                              'tgl_lahir' => $request['tgl_lahir'],
                              'jenis_kelahiran' => $request['jns_lahiran'],
                              'kelahiran_ke' => $request['kelahiran_ke'],
                              'penolong_lahir' => $request['pnlg_kelahiran'],
                              'berat' => $request['berat'],
                              'panjang' => $request['panjang'],
                              'ibu_nik' => $request['ibu_nik'],
                              'ibu_nama' => $request['ibu_nm'],
                              'ibu_tmpt_lahir' => $request['ibu_tmpt_lahir'],
                              'ibu_tgl_lahir' => $request['ibu_tgl_lahir'],
                              'ibu_pekerjaan' => $request['ibu_pekerjaan'],
                              'ibu_alamat' => $request['ibu_almt'],
                              'ibu_kewarganegaraan' => $request['ibu_warganegara'],
                              'ibu_tgl_kawin' => $request['ibu_tgl_kawin'],
                              'ayah_nik' => $request['ayah_nik'],
                              'ayah_nama' => $request['ayah_nm'],
                              'ayah_tmpt_lahir' => $request['ayah_tmpt_lahir'],
                              'ayah_tgl_lahir' => $request['ayah_tgl_lahir'],
                              'ayah_pekerjaan' => $request['ayah_pekerjaan'],
                              'ayah_alamat' => $request['ayah_almt'],
                              'ayah_kewarganegaraan' => $request['ayah_warganegara'],
                              'pelapor_nik' => $request['pelapor_nik'],
                              'pelapor_nama' => $request['pelapor_nm'],
                              'pelapor_tmp_lahir' => $request['pelapor_tmpt_lahir'],
                              'pelapor_tgl_lahir' => $request['pelapor_tgl_lahir'],
                              'pelapor_kerja' => $request['pelapor_pekerjaan'],
                              'pelapor_umur' => $request['pelapor_umur'],
                              'pelapor_alamat' => $request['pelapor_almt'],
                              'tgl_lapor' => $request['tgl_lapor'],
                              'saksi_nik' => $request['saksi1_nik'],
                              'saksi_nama' => $request['saksi1_nm'],
                              'saksi_umur' => $request['saksi1_umur'],
                              'saksi_alamat' => $request['saksi1_almt'],
                              'saksi_2_nik' => $request['saksi2_nik'],
                              'saksi_2_nama' => $request['saksi2_nm'],
                              'saksi_2_umur' => $request['saksi2_umur'],
                              'saksi_2_alamat' => $request['saksi2_almt'],                              
                            ]);
                      $cek_id = DB::table('data_kelahiran')
                                  ->orderBy('id','desc')
                                  ->first();
              break;
            //kematian
            case ('2'):

             // $no_surat = '472.11';
             $fileName2 = time().'_'.'super'.'.'.$request->file('super')->getClientOriginalExtension();
             $super = $request->file('super')->storeAs('kematian', $fileName2, 'public');

             $fileName3 = time().'_'.'suket'.'.'.$request->file('suket')->getClientOriginalExtension();
             $suket = $request->file('suket')->storeAs('kematian', $fileName3, 'public');

             $fileName4 = time().'_'.'ktpmeninggal'.'.'.$request->file('ktpmeninggal')->getClientOriginalExtension();
             $ktp = $request->file('ktpmeninggal')->storeAs('kematian', $fileName4, 'public');

             $fileName5 = time().'_'.'kk'.'.'.$request->file('kk')->getClientOriginalExtension();
             $kk = $request->file('kk')->storeAs('kematian', $fileName5, 'public');

             $fileName6 = time().'_'.'ktpsaksi1'.$request->saksi1_nik.'.'.$request->file('ktpsaksi1')->getClientOriginalExtension();
             $ktpsaksi1 = $request->file('ktpsaksi1')->storeAs('kematian', $fileName6, 'public');

             $fileName7 = time().'_'.'ktpsaksi2'.$request->saksi2_nik.'.'.$request->file('ktpsaksi2')->getClientOriginalExtension();
             $ktpsaksi2 = $request->file('ktpsaksi2')->storeAs('kematian', $fileName7, 'public');
             
              $data = DB::table('data_kematian') 
                      ->insert([
                        'no_kk' => $request['no_kk'],
                        'nama_kk' => $request['nm_kk'],
                        'nik' => $request['nik'],
                        'super' => $super,
                        'suket' => $suket,
                        'ktp' => $ktp,
                        'kk' => $kk,
                        'ktp_saksi1' => $ktpsaksi1,
                        'ktp_saksi2' => $ktpsaksi2,
                        'nama' => $request['nama'],
                        'jk' => $request['jk'],
                        'tmpt_lahir' => $request['tmpt_lahir'],
                        'hari_meninggal'=>$request['hari_meninggal'],
                        'tgl_lahir' => $request['tgl_lahir'],
                        'umur'=>$request['umur'],
                        'agama' => $request['agama'],
                        'pekerjaan' => $request['pekerjaan'],
                        'alamat' => $request['alamat'],
                        'anak_ke' => $request['anak_ke'],
                        'meninggal_tgl' => $request['meninggal_tgl'],
                        'tmpt_meninggal' => $request['tmpt_meninggal'],
                        'jam_meninggal'=>$request['jam_meninggal'],
                        'sebab' => $request['sebab'],
                        'tmpt_kematian' => $request['tmpt_kematian'],
                        'menerangkan' => $request['menerangkan'],
                        'ibu_nik'=>$request['ibu_nik'],
                        'ibu_nama' => $request['ibu_nama'],
                        'ibu_tmpt_lahir' => $request['ibu_tmpt_lahir'],
                        'ibu_tgl_lahir' => $request['ibu_tgl_lahir'],
                        'ibu_pekerjaan' => $request['ibu_pekerjaan'],
                        'ibu_alamat' => $request['ibu_alamat'],
                        'ibu_kewarganegaraan' => $request['ibu_kewarganegaraan'],
                        'ayah_nik' => $request['ayah_nik'],
                        'ayah_nama' => $request['ayah_nama'],
                        'ayah_tmpt_lahir' => $request['ayah_tmpt_lahir'],
                        'ayah_tgl_lahir' => $request['ayah_tgl_lahir'],
                        'ayah_pekerjaan' => $request['ayah_pekerjaan'],
                        'ayah_alamat' => $request['ayah_alamat'],
                        'ayah_kewarganegaraan' => $request['ayah_kewarganegaraan'],
                        'pelapor_nik' => $request['pelapor_nik'],
                        'pelapor_nama' => $request['pelapor_nama'],
                        'pelapor_tmp_lahir' => $request['pelapor_tmpt_lahir'],
                        'pelapor_tgl_lahir' => $request['pelapor_tgl_lahir'],
                        'pelapor_kerja' => $request['pelapor_pekerjaan'],
                        'pelapor_umur' => $request['pelapor_umur'],
                        'pelapor_alamat' => $request['pelapor_alamat'],
                        'tgl_lapor' => $request['tgl_lapor'],
                        'saksi1_nik' => $request['saksi1_nik'],
                        'saksi1_nama' => $request['saksi1_nama'],
                        'saksi1_umur' => $request['saksi1_umur'],
                        'saksi1_alamat' => $request['saksi1_alamat'],  
                        'saksi2_nik' => $request['saksi2_nik'],
                        'saksi2_nama' => $request['saksi2_nama'],
                        'saksi2_umur' => $request['saksi2_umur'],
                        'saksi2_alamat' => $request['saksi2_alamat'],                              
                      ]);
              $cek_id = DB::table('data_kematian')
                          ->orderBy('id','desc')
                          ->first();
              break;
            //pengantar umum
            case ('3'):
                            //$no_surat = '472.11';

              $data = DB::table('data_pengantar_umum') 
                        ->insert([
                          'nik' => $request['nik'],
                          'nama' => $request['nama'],
                          'jk' => $request['jk'],
                          'tempat_lahir' => $request['tmpt_lahir'],
                          'tgl_lahir' => $request['tgl_lahir'],
                          'agama' => $request['agama'],
                          'pekerjaan' => $request['pekerjaan'],
                          'status_kawin' => $request['status_kawin'],
                          'alamat' => $request['alamat'],
                          'tujuan' => $request['tujuan'],
                          'keperluan' => $request['keperluan'],                              
                        ]);    
                  $cek_id = DB::table('data_pengantar_umum')
                              ->orderBy('id','desc')
                              ->first();
              break;
            //pernyataan domisili
            case ('4'):
                //$no_surat = '472.11';
                $data = DB::table('data_pernyataan_dom') 
                            ->insert([
                              'nik' => $request['nik'],
                              'nama' => $request['nama'],
                              'tmpt_lahir' => $request['tmpt_lahir'],
                              'tgl_lahir' => $request['tgl_lahir'],
                              'alamat' => $request['alamat'],
                              'agama' => $request['agama'],
                              'pekerjaan' => $request['pekerjaan'],
                              'jk' => $request['jk'],
                              'alamat_baru' => $request['alamat_baru'],                        
                            ]);                               
                  $cek_id = DB::table('data_pernyataan_dom')
                              ->orderBy('id','desc')
                              ->first();
                  break;
            //permohonan pindah
            case ('5'):
              //dd($request->all());
                         //   $no_surat = '472.11';
              $db = DB::table('data_permohonan_pindah') 
                        ->insert([
                          'no_kk' => $request['no_kk'],
                          'nama_kk' => $request['nama_kk'],
                          'alamat' => $request['alamat'],
                          'desa' => $request['desa'],
                          'kecamatan' => $request['kecamatan'],
                          'kab' => $request['kab'],
                          'provinsi' => $request['provinsi'],
                          'kodepos' => $request['kodepos'],
                          'nik_pemohon' => $request['nik_pemohon'],
                          'tempat_lahir' => $request['tempat_lahir'],
                          'tgl_lahir' => $request['tgl_lahir'],
                          'nama' => $request['nama'],
                          'alasan_pindah' => $request['alasan_pindah'],
                          'tujuan_desa'=>$request['tujuan_desa'],
                          'tujuan_kecamatan'=>$request['tujuan_kecamatan'],
                          'tujuan_alamat_pindah' => $request['tujuan_alamat_pindah'],
                          'tujuan_kab' => $request['tujuan_kab'],
                          'tujuan_prov' => $request['tujuan_prov'], 
                          'tujuan_kodepos' => $request['tujuan_kodepos'], 
                          'jenis_pindah' => $request['jenis_pindah'],
                          'status_kk' => $request['status_kk'],  
                          'status_no_kk_pindah' => $request['status_no_kk_pindah'],                              
                        ]);    
              $cek_id = DB::table('data_permohonan_pindah')
                          ->orderBy('id','desc')
                          ->first();
              $data = $request['data'];
              $jml = count($request->data['nik']);
              for ($i = 0; $i < $jml; $i++) {
                $keluarga = DB::table('keluarga_pindah') 
                        ->insert([
                          'nik' => $data['nik'][$i],
                          'nama' => $data['nama_kel'][$i],
                          'masa_berlaku' => $data['masa'][$i],  
                          'shdk' => $data['shdk'][$i],
                          'id_perm_pindah' => $cek_id->id,                            
                        ]); 
              }  
              break;
            //pindah datang
            case ('6'):
                           // $no_surat = '472.11';

                  $db = DB::table('data_surat_pindah_datang') 
                          ->insert([
                            'no_kk' => $request['no_kk'],
                            'nama_kk' => $request['nama_kk'],
                            'alamat' => $request['alamat'],
                            'desa' => $request['desa'],
                            'kecamatan' => $request['kecamatan'],
                            'kabupaten' => $request['kabupaten'],
                            'provinsi' => $request['provinsi'],
                            'kodepos' => $request['kodepos'],
                            'nik_pemohon' => $request['nik_pemohon'],
                            'tmpt_lahir' => $request['tmpt_lahir'],
                            'tgl_datang' => $request['tgl_datang'],

                            'tgl_lahir' => $request['tgl_lahir'],
                            'nama' => $request['nama'],
                            'tujuan_kk' => $request['tujuan_kk'],
                            'tujuan_no_kk' => $request['tujuan_no_kk'],
                            'tujuan_nama_kk' => $request['tujuan_nama_kk'],
                            'tujuan_alamat' => $request['tujuan_alamat'],
                            'tujuan_desa' => $request['tujuan_desa'],
                            'tujuan_kecamatan' => $request['tujuan_kecamatan'],
                            'tujuan_kabupaten' => $request['tujuan_kabupaten'],
                            'tujuan_provinsi' => $request['tujuan_provinsi'], 
                            'tujuan_kodepos' => $request['tujuan_kodepos'],                               
                          ]);    
                  $cek_id = DB::table('data_surat_pindah_datang')
                              ->orderBy('id','desc')
                              ->first();
                  $data = $request['data'];
                  $jml = count($request->data['nik']);
                  for ($i = 0; $i < $jml; $i++) {
                    $keluarga = DB::table('keluarga_datang') 
                            ->insert([
                              'nik' => $data['nik'][$i],
                              'nama' => $data['nama_kel'][$i],
                              'masa_berlaku' => $data['masa'][$i],  
                              'shdk' => $data['shdk'][$i],
                              'id_perm_pindah' => $cek_id->id,                            
                            ]); 
                  } 
              break;
            //surat keterangan tidak mampu
            case ('7'):
              //$no_surat = '472.11';
              $data = DB::table('data_ket_tidakmampu') 
                            ->insert([
                              'nama' => $request['nama'],
                              'nik' => $request['nik'],
                              'tempat_lahir' => $request['tempat_lahir'],
                              'tgl_lahir' => $request['tgl_lahir'],
                              'agama' => $request['agama'],
                              'status_perkawinan' =>$request['status_kawin'],
                              'pekerjaan' => $request['pekerjaan'],
                              'alamat' => $request['alamat'],
                              'nama_t' => $request['nama_t'],
                              'nik_t' => $request['nik_t'],
                              'tempat_lahir_t' =>$request['tempat_lahir_t'],
                              'tgl_lahir_t' => $request['tgl_lahir_t'],
                              'agama_t' => $request['agama_t'],
                              'status_kawin_t' =>$request['status_kawin_t'],
                              'pekerjaan_t' => $request['pekerjaan_t'],
                              'alamat_t' => $request['alamat_t'],                              
                            ]); 
                          
                  $cek_id = DB::table('data_ket_tidakmampu')
                              ->orderBy('id','desc')
                              ->first();
                  break;
          }

        $pengajuan = DataPengajuan::create([
                'data'=> $cek_id->id,
                'kategori_surat_id'=>$kat,
                'jenis_kelamin'=> 'pria',
                'status_perkawinan'=>'kawin',
                'agama'=>'islam',
                'nama_pemesan'=> $request['nama_pemesan'],////
                    
        ]);
        
        //$kode= $kategori->kode_surat;
        //$ids= $kategori->id;
        //dd($kode);
        $pesanan = Pesanan::create([
            'data_pengajuan_id' => $pengajuan->id,
            // 'nomer_surat' => $no_surat.'/'.$pengajuan->id,
            // $kode.'/ '.'Kec.Ngemplak'. '/'. $ids.' /' . tgl_romawi(Carbon::now()->format('m')).'/'. Carbon::now()->format('Y'),
            'tanggal_pesan' => now(),
        ]);
        return redirect('/Administrator/list-kategori/'.$kat);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //dd($request->all());

        $request->validate(['nama'=>'required|string']);//////
        $pengajuan= DataPengajuan::find($id);

        $kategori = $pengajuan->kategori;
        //dd(collect(json_decode($kategori->data_template)));
        $data = json_decode($kategori->data_template,true);
        //dd($request->all());
        $vali = collect($data['nama'])->combine($data['type'])->toJson();
        //dd($validate);
        $val =Validator::make($request->all(),json_decode($vali,true));
        //dd($val);
        $val->validate();

        // dd($request->all());

        //dd($pengajuan);
        $pengajuan->update([
                'data'=>json_encode(collect($data['nama'])->combine($request->only($data['nama']))),
                //'kategori_surat_id'=>$request->id_kategori,
                'jenis_kelamin'=> 'pria',
                'status_perkawinan'=>'kawin',
                'agama'=>'islam',
                'nama_pemesan'=> $request->nama,////
                    
        ]);
        // $idpesan = $request->id_pesanan;
        // $idpengaju = $request->id_pengaju;
        // dd('berhasil');
        $pengajuan->pesanan->update([
            'tanggal_verifikasi' => now(),
            'status' => 1,     
        ]);


        // $pesanan = Pesanan::create([
        //     'data_pengajuan_id' => $pengajuan->id,
        //     'nomer_surat' => Str::random(3) . '-' . time(),
        //     'tanggal_pesan' => now(),
        // ]);
        return redirect(route('home.index'));

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function updatelahir(Request $request, $id){
      $pengajuan = DataPengajuan::find($id);

    }
}
