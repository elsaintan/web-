<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <style>
   
    table.kop {
    font-family: Arial, Helvetica, sans-serif;
    }
    </style>
</head>
<body>
    <center><img src ="https://blogger.googleusercontent.com/img/a/AVvXsEhAAgtniMFDQ6-e7outJlLxdzOGwlwzeXmi_P2w-7Fzk-vdMAoc9Nj9EjcT6UOJQewpmabLd5ERpXzfOSOqq-omGaR9Xepw-7ZuDWIpFvPC9r0YC4Td74j-1xFwROAnaDUzUShENUuAJfeSfHVrBkXOXV3pTpOSGZBA-_w5xrYRthURuTQFMrfDwDV0vw=w621-h145" style="width:800px;height:150px"></center>

     
       <!-- <table border="" align="center " style="margin-top: -20px ;margin_left:50px; margin-right:50px;margin-bottom:10px" >
            <tr style="padding-bottom: 0px">
                <td style="margin-right: 20px"> <img src="https://1.bp.blogspot.com/-9QN4hDujIgY/VzRwd4x7tBI/AAAAAAAAA0k/alfSqysJjpwf0qexK4WrbXBpOAk9VUcSgCLcB/s1600/logo%2Bslmn34.jpg" alt="" width="100" height="120"></td>
                <td style="margin-top: 0;margin-bottom:0px; margin-left:30px;padding-left:20px;padding-bottom:0px:">
                    <table class="kop" align="center" style="margin-bottom: 0">
                        <tr>
                            <td> <font size="2">PEMERINTAH KABUPATEN SLEMAN</font> </td>

                        </tr>
                    </table>
                    <table align="center" class="kop" style="margin-top:-5;margin-bottom:0">
                        <tr>
                            <td> <font size="3" >KAPANEWON NGAGLIK</font> </td>
                            
                        </tr>
                    </table>
                    <table class="kop" align="center" style="margin-top:-5px ">
                        <tr>
                            <td> <font size="4"> <b>PEMERINTAH KALURAHAN SINDUHARJO</b> </font></td>
                        </tr>
                    </table>
                    <table align="center" style="margin-top: -5px">
                        <tr>
                            <td > <img src="https://blogger.googleusercontent.com/img/a/AVvXsEgl-MoyUkiIB3niN46SocXGWYKsPfIZ0oi2qdvRgy--UHeBXE0zWliFR2c_Zuecgd5gZvRcoPYGIxXSU8io1gIAJtO5ATv-J5idSvqzPGMV-hidGiYbOjhsolABpSWotvQVAREg_hOfgfwWFfxK65604ZgZP6C-hlMotHIKWPBMJx97yOoprWbDoRQ2FQ=s1022" alt="" width="300" height="30"></td>
                        </tr>
                    </table>
                    <table align="center" style="margin-bottom: 0; margin-top:-5px">
                        <tr>
                            <td> <font size="1" >Jalan Kaliurang Km.10,5, Gentan Sinduharjo, Ngaglik, Sleman, 55581</font> </td>
                            
                        </tr>
                                          
                    </table>
                    <table align="center" style="margin-top: -5px;margon-bottom:0">
                        <tr>
                            <td> <font size="1" >Telepon (0274) 882723,</font> </td>                       
                        </tr>
                        <tr>
                            <td> <font size="1" > Laman: sinduharjo.slemankab.go.id,</font></td>
                            <td> <font size="1" > Surel: kalurahansinduharjo@gmail.com</font></td>
                        </tr>
                    </table>
                    <table align="center" style="margin-top: -5px;margon-bottom:0">
                        
                    </table>
                    
                </td>
            </tr> 
       </table> 
        

        <hr style="border: solid 1px;margin-top: -8;">
        <hr style="border: solid 2px;margin-top: -5px;">-->

        <table align="center" style=" margin-top:20px">
            <tr align="center">
                <td>
                        <b><font size="2">SURAT KETERANGAN </font> </b> 
                </td>
            </tr>
            <tr align="center"><td>Nomor: ...../ UM / ...../202..</td></tr>
        </table>
    
    <table style="margin-top: 10px;margin-bottom:10px">
        <tr style=""> 
            <td>Saya, yang bertanda tangan di bawah ini:</td> 
        </tr>
    </table>
    <table>
        <tr>
            <td> </td>
            <td> </td>
            <td> </td>
            <td> </td>
            <td> </td>
            <td style="width: 150px">a. nama</td>
            <td>: </td>
        </tr>
        <tr>
            <td> </td>
            <td> </td>
            <td> </td>
            <td> </td>
            <td> </td>
            <td style="width: 150px">b. jabatan</td>
            <td>: </td>
        </tr>
    </table>
    <table style="margin-top:10px;margin-bottom:10px">
        <tr>
            <td style="">dengan ini menerangkan bahwa:</td>
        </tr>
    </table>
    <table>
        <tr>
            <td> </td>
            <td> </td>
            <td> </td>
            <td> </td>
            <td> </td>
            <td style="width: 150px" >a. nama</td>
            <td> : {{ $pengajuan->nama }}</td>
        </tr>
        <tr>
            <td> </td>
            <td> </td>
            <td> </td>
            <td> </td>
            <td> </td>
            <td style="width: 150px">b. NIK</td>
            <td>:  {{ $pengajuan->nik }}</td>
        </tr>
        <tr>
            <td> </td>
            <td> </td>
            <td> </td>
            <td> </td>
            <td> </td>
            <td style="width: 150px">c. tempat,tgl. lahir</td>
            <td>: {{ $pengajuan->tempat_lahir }} /  {{ \Carbon\Carbon::parse($pengajuan->tgl_lahir)->format('d-m-Y')}} </td>
        </tr>
        <tr>
            <td> </td>
            <td> </td>
            <td> </td>
            <td> </td>
            <td> </td>
            <td style="width: 150px">d. jenis kelamin</td>
            <td>: {{ $pengajuan->jk }}</td>
        </tr>
        <tr>
            <td> </td>
            <td> </td>
            <td> </td>
            <td> </td>
            <td> </td>
            <td style="width: 150px">e. agama</td>
            <td>: {{ $pengajuan->agama }}</td>
        </tr>
        <tr>
            <td> </td>
            <td> </td>
            <td> </td>
            <td> </td>
            <td> </td>
            <td style="width: 150px">f. status perkawinan</td>
            <td>: {{ $pengajuan->status_kawin }}</td>
        </tr>
        <tr>
            <td> </td>
            <td> </td>
            <td> </td>
            <td> </td>
            <td> </td>
            <td style="width: 150px">g. pekerjaan</td>
            <td>: {{ $pengajuan->pekerjaan }}</td>
        </tr>
        <tr>
            <td> </td>
            <td> </td>
            <td> </td>
            <td> </td>
            <td> </td>
            <td style="width: 150px">h. alamat</td>
            <td>: {{ $pengajuan->alamat }}</td>
        </tr>
        <tr>
            <td> </td>
            <td> </td>
            <td> </td>
            <td> </td>
            <td> </td>
            <td style="width: 150px">i. tujuan ke</td>
            <td>: {{ $pengajuan->tujuan }}</td>
        </tr>
        <tr>
            <td> </td>
            <td> </td>
            <td> </td>
            <td> </td>
            <td> </td>
            <td style="width: 150px">j. keterangan</td>
            <td>: {{ $pengajuan->keperluan }}</td>
        </tr>
        
    </table>
    <table style="margin-top:30px">
        <tr>
            <td>Demikian Surat Keterangan ini dibuat untuk dipergunakan seperlunya.</td>      
        </tr>
    </table>
   
    <table align="right" border="" style=" margin-top:30px;padding-top:0px; ">
        <tr>
            <td height=""> Sinduharjo,{{ tgl_indo(Carbon\Carbon::parse(now())->format('Y-m-d')) }} </td>
        </tr>
         <tr style="">
            <td>a.n. Lurah Sinduharjo,</td>
            <td></td>
        </tr>
        
    </table> 
</body>
</html>