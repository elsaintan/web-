<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <style>
   
    body{
    font-family: Arial, Helvetica, sans-serif;
    }
    </style>
    
</head>
<body>
        <!-- <hr style="border: solid 1px;margin-top: -8;">
        <hr style="border: solid 2px;margin-top: -5px;"> -->


        <table align="center" style="margin-top: 30px">
            <tr>
                <td>
                    <center>
                        <b><u>SURAT PERNYATAAN</u></b>    
                    </center>
        </table>
    
    <table class="isi" style="margin-top:25px">
            <tr>
                <td>Saya yang bertanda tangan di bawah ini:</td>
            </tr>
        </table>
    <table class="isi" style="margin-top:15px" >
    <tr>
            <td style="">a.Nama</td>
            <td colspan="" id="data">: {{ $pengajuan->nama }}</td>
        </tr>
        <tr>
            <td style="width: 220px">b.NIK</td>
            <td id="data">: {{ $pengajuan->nik }}</td>
        </tr>
        
         <tr>
            <td style="" >c.Tempat, tgl.Lahir</td>
            <td id="data">: {{ $pengajuan->tmpt_lahir }},  {{ tgl_indo(Carbon\Carbon::parse($pengajuan->tgl_lahir)->format('Y-m-d'))}}  </td>
            
        </tr>
         <tr>
            <td>d.Agama</td>
            <td>: {{ $pengajuan->agama }}</td>
        </tr>
        <tr>
            <td>e.Pekerjaan</td>
            <td>: {{ $pengajuan->pekerjaan }}</td>
        </tr>
        <tr>
            <td>f.Jenis Kelamin</td>
            <td>: {{ $pengajuan->jk }}</td>
        </tr>
        <tr>
            <td>g.Alamat KTP </td>
            <td>: {{ $pengajuan->alamat }}</td>
        </tr>
    </table>
    <table class="isi" style="margin-top:20px">
        <tr>
            <td>Menyatakan bahwa sampai saat dikeluarkannya Surat pernyataan ini saya benar-benar berdomisili tempat tinggal di </td>  
            <td>{{ $pengajuan->alamat_baru }}</td>
        </tr>
    </table>
    </table>
    <table class="isi" style="margin-top:10px ">
        <br>
        <tr>
            <td style >Demikian Surat Pernyataan Domisili ini dibuat dengan sebenarnya dan apabila ternyata tidak benar saya sanggup mempertanggung jawabkan baik secara langsung maupun dihadapan pejabat yang berwenang</td>
        </tr>
        </br>
</table>
    <table class="isi" align="left" border="" style=" margin-top:30px;padding-top:0px; ">
    <tr><td height=""></td></tr>
    <tr style="text-align:CENTER">
        <td> Mengetahui:</td>
    </tr>
    <tr style="">
        <td>Nomor:</td>
    </tr>
    <tr style="">
        <td>Tanggal: {{ tgl_indo(Carbon\Carbon::parse(now())->format('Y-m-d')) }}</td>
    </tr>
    <tr >
    <td>Lurah Sinduharjo</td>
    </tr>
    <tr>
    <td style="margin-top:20px; height:150px">................................</td>
    </tr>
    </table>
    
   <table class="isi" align="right" border="" style="margin_left:400px ">
    <tr><td height=""></td></tr>
    <tr style="text-align:center">
        <td>Sinduharjo, {{ tgl_indo(Carbon\Carbon::parse(now())->format('Y-m-d')) }}</td>
    </tr>
    <tr style="text-align:center">
        <td>Yang menerangkan/menyatakan</td>
    </tr>
    <tr style="text-align:center">
        <td style="font-size:9px; height:100px"> Materai 10.000</td>
    </tr>
    <tr align="center">
        <td>................................</td>
    </tr>
</table>

</table>
</body>
</html>