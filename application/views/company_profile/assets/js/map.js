$('#maphome').css({'height':'300px', 'margin-left':'0%'});
// Mymap :: declaration
// Render Main Map
var map = L.map('maphome').setView([-6.225714, 106.850357], 10);

L.tileLayer(
	"https://mt1.google.com/vt/lyrs=r&x={x}&y={y}&z={z}",
	{
    	minZoom: 3,
        maxZoom: 16,
        id: "google.street",
        type: "base",
        name: "GoogleMap"
    }
).addTo(map);

var listLoc=[
  //Update List below
  //Sumatera
  [37 , [4.322659, 96.393396],'ACEH'],
  [118, [3.289566, 98.431170],'SUMUT'],
  [34 , [1.316477, 101.566632],'RIAU'],
  [37 , [-0.978816, 100.707336],'SUMBAR'],
  [30 , [-1.622790, 103.622916],'JAMBI'],
  [65 , [-2.834050, 103.927816],'SUMSEL'],
  [5  , [-3.801021, 102.279514],'BENGKULU'],
  [116, [-5.169586, 105.435241],'LAMPUNG'],

  //Batam
  [2  , [1.119222, 104.041467],'BATAM'],

  //Belitung
  [4  , [-2.891589, 107.669699],'BELITUNG'],

  //Jawa
  [86 , [-6.575623, 105.876808],'BANTEN'],
  [34 , [-6.194915, 106.841869],'JAKARTA'],
  [481 ,[-6.970145, 107.467166],'JABAR'],
  [313 ,[-7.340356, 110.209999],'JATENG'],
  [20 , [-7.803759, 110.374501],'JOGJAKARTA'],
  [490 ,[-7.202045, 112.299419],'JATIM'],

  //Bali
  [7 ,  [-8.302170, 115.085126],'BALI'],

  //Kalimantan
  [16 , [0.131259, 110.602281],'KALBAR'],
  [3  , [-1.185544, 113.705037],'KALTENG'],
  // [12 , [-0.789243, 113.921617],''],
  [13 , [-3.141213, 115.668351],'KALSEL'],
  [5  , [0.638088, 117.099813],'KALTIM'],
  [1  , [3.371749, 117.495320],'KALUT'],

  //NTB
  [85 , [-8.346703, 117.821487],'NTB'],

  //NTT
  [44 , [-8.680884, 120.813553],'NTT'],

  //Sulawesi
  [48 , [-4.903993, 119.730447],'SULSEL'],
  [12 , [-2.2097944,118.1688982],'SULBAR'],
  [14 , [-4.226864, 122.192188],'SULTENGG'],
  [17 , [-0.194503, 119.855116],'SULTENG'],
  [12 , [0.788961, 121.977093],'GORONTALO'],
  [17 , [1.414275, 124.801722],'SULUT'],

  //Ternate/Maluku Utara
  [1  , [0.775814, 127.351898],'TERNATE'],

  //Maluku
  [6  , [-3.194061, 128.466800],'MALUKU'],

  //Papua
  //Sorong
  [2  , [-1.068695, 131.546449],'SORONG'],
  //Jayapura
  [3  , [-2.600606, 140.670885],'JAYAPURA']
];

var sebaran={
  ACEH : [
      ['KABUPATEN ACEH BARAT',  1],
      ['KABUPATEN ACEH BARAT DAYA', 2],
      ['KABUPATEN ACEH BESAR',  4],
      ['KABUPATEN ACEH SELATAN',  3],
      ['KABUPATEN ACEH TAMIANG',  2],
      ['KABUPATEN ACEH TENGAH', 4],
      ['KABUPATEN ACEH TIMUR',  3],
      ['KABUPATEN ACEH UTARA',  7],
      ['KABUPATEN BENER MERIAH',  1],
      ['KABUPATEN BIREUEN', 2],
      ['KABUPATEN NAGAN RAYA',  2],
      ['KABUPATEN PIDIE', 2],
      ['KABUPATEN PIDIE JAYA',  1],
      ['KOTA BANDA ACEH', 1],
      ['KOTA LANGSA', 1],
      ['KOTA LHOKSEUMAWE',  1]
  ],
  BATAM : [['KOTA BATAM',2]],
  BELITUNG : [
      ['KABUPATEN BANGKA',2],
      ['KABUPATEN BELITUNG',1],
      ['KOTA PANGKAL PINANG',1]
  ],
  BALI : [
      ['KABUPATEN BULELENG', 4],
      ['KABUPATEN KARANGASEM', 3]
  ],
  BANTEN : [
      ['KABUPATEN LEBAK',13],
      ['KABUPATEN PANDEGLANG',14],
      ['KABUPATEN SERANG',10],
      ['KABUPATEN TANGERANG',31],
      ['KOTA CILEGON',2],
      ['KOTA SERANG',4],
      ['KOTA TANGERANG',8],
      ['KOTA TANGERANG SELATAN',4]
  ],
  BENGKULU : [
      ['KABUPATEN BENGKULU UTARA',1],
      ['KABUPATEN KEPAHIANG',1],
      ['KOTA BENGKULU',3]
  ],
  JOGJAKARTA : [
      ['KABUPATEN BANTUL',8],
      ['KABUPATEN GUNUNG KIDUL',4],
      ['KABUPATEN KULON PROGO',3],
      ['KABUPATEN SLEMAN',4],
      ['KOTA YOGYAKARTA',1]
  ],
  JAKARTA : [
      ['KOTA JAKARTA BARAT',8],
      ['KOTA JAKARTA PUSAT',4],
      ['KOTA JAKARTA SELATAN',4],
      ['KOTA JAKARTA TIMUR',10],
      ['KOTA JAKARTA UTARA',8]
  ],
  GORONTALO : [
      ['KABUPATEN BOALEMO',2],
      ['KABUPATEN BONE BOLANGO',1],
      ['KABUPATEN GORONTALO',5],
      ['KABUPATEN GORONTALO UTARA',1],
      ['KABUPATEN PAHUWATO',1],
      ['KOTA GORONTALO',2]
  ],
  JAMBI : [
      ['KABUPATEN BATANG HARI',2],
      ['KABUPATEN BUNGO',2],
      ['KABUPATEN KERINCI',2],
      ['KABUPATEN MERANGIN',3],
      ['KABUPATEN MUARO JAMBI',3],
      ['KABUPATEN SAROLANGUN',1],
      ['KABUPATEN TANJUNG JABUNG BARAT',3],
      ['KABUPATEN TANJUNG JABUNG TIMUR',3],
      ['KABUPATEN TEBO',3],
      ['KOTA JAMBI',8]
  ],
  JABAR : [
      ['KABUPATEN BANDUNG',33],
      ['KABUPATEN BANDUNG BARAT',17],
      ['KABUPATEN BEKASI',21],
      ['KABUPATEN BOGOR',44],
      ['KABUPATEN CIAMIS',21],
      ['KABUPATEN CIANJUR',33],
      ['KABUPATEN CIREBON',27],
      ['KABUPATEN GARUT',40],
      ['KABUPATEN INDRAMAYU',29],
      ['KABUPATEN KARAWANG',26],
      ['KABUPATEN KUNINGAN',7],
      ['KABUPATEN MAJALENGKA',24],
      ['KABUPATEN PANGANDARAN',5],
      ['KABUPATEN PURWAKARTA',8],
      ['KABUPATEN SUBANG',14],
      ['KABUPATEN SUKABUMI',22],
      ['KABUPATEN SUMEDANG',13],
      ['KABUPATEN TASIKMALAYA',33],
      ['KOTA BANDUNG',15],
      ['KOTA BANJAR',2],
      ['KOTA BEKASI',10],
      ['KOTA BOGOR',8],
      ['KOTA CIMAHI',3],
      ['KOTA CIREBON',4],
      ['KOTA DEPOK',8],
      ['KOTA SUKABUMI',3],
      ['KOTA TASIKMALAYA',11]
  ],
  JATENG : [
      ['KABUPATEN BANJARNEGARA',9],
      ['KABUPATEN BANYUMAS',17],
      ['KABUPATEN BATANG',6],
      ['KABUPATEN BLORA',9],
      ['KABUPATEN BOYOLALI',8],
      ['KABUPATEN BREBES',20],
      ['KABUPATEN CILACAP',18],
      ['KABUPATEN DEMAK',13],
      ['KABUPATEN GROBOGAN',13],
      ['KABUPATEN JEPARA',17],
      ['KABUPATEN KARANGANYAR',4],
      ['KABUPATEN KEBUMEN',7],
      ['KABUPATEN KENDAL',6],
      ['KABUPATEN KLATEN',14],
      ['KABUPATEN KUDUS',6],
      ['KABUPATEN MAGELANG',12],
      ['KABUPATEN PATI',15],
      ['KABUPATEN PEKALONGAN',9],
      ['KABUPATEN PEMALANG',13],
      ['KABUPATEN PURBALINGGA',10],
      ['KABUPATEN PURWOREJO',6],
      ['KABUPATEN REMBANG',7],
      ['KABUPATEN SEMARANG',5],
      ['KABUPATEN SRAGEN',9],
      ['KABUPATEN SUKOHARJO',7],
      ['KABUPATEN TEGAL',18],
      ['KABUPATEN TEMANGGUNG',5],
      ['KABUPATEN WONOGIRI',7],
      ['KABUPATEN WONOSOBO',7],
      ['KOTA PEKALONGAN',5],
      ['KOTA SEMARANG',6],
      ['KOTA SURAKARTA',3],
      ['KOTA TEGAL',2]
  ],
  JATIM : [
      ['KABUPATEN BANGKALAN',14],
      ['KABUPATEN BANYUWANGI',24],
      ['KABUPATEN BLITAR',12],
      ['KABUPATEN BOJONEGORO',17],
      ['KABUPATEN BONDOWOSO',21],
      ['KABUPATEN GRESIK',16],
      ['KABUPATEN JEMBER',35],
      ['KABUPATEN JOMBANG',16],
      ['KABUPATEN KEDIRI',20],
      ['KABUPATEN LAMONGAN',14],
      ['KABUPATEN LUMAJANG',14],
      ['KABUPATEN MADIUN',7],
      ['KABUPATEN MAGETAN',6],
      ['KABUPATEN MALANG',31],
      ['KABUPATEN MOJOKERTO',9],
      ['KABUPATEN NGANJUK',17],
      ['KABUPATEN NGAWI',10],
      ['KABUPATEN PACITAN',8],
      ['KABUPATEN PAMEKASAN',12],
      ['KABUPATEN PASURUAN',18],
      ['KABUPATEN PONOROGO',15],
      ['KABUPATEN PROBOLINGGO',22],
      ['KABUPATEN SAMPANG',9],
      ['KABUPATEN SIDOARJO',18],
      ['KABUPATEN SITUBONDO',17],
      ['KABUPATEN SUMENEP',16],
      ['KABUPATEN TRENGGALEK',7],
      ['KABUPATEN TUBAN',15],
      ['KABUPATEN TULUNGAGUNG',12],
      ['KOTA BATU',2],
      ['KOTA KEDIRI',3],
      ['KOTA MADIUN',1],
      ['KOTA MALANG',5],
      ['KOTA MOJOKERTO',3],
      ['KOTA PASURUAN',3],
      ['KOTA PROBOLINGGO',2],
      ['KOTA SURABAYA',19]
  ],
  KALBAR : [
      ['KABUPATEN KUBU RAYA',3],
      ['KABUPATEN LANDAK',2],
      ['KABUPATEN MEMPAWAH',2],
      ['KABUPATEN SAMBAS',2],
      ['KABUPATEN SANGGAU',1],
      ['KOTA PONTIANAK',4],
      ['KOTA SINGKAWANG',2]
  ],
  KALSEL : [
      ['KABUPATEN BANJAR',1],
      ['KABUPATEN HULU SUNGAI SELATAN',2],
      ['KABUPATEN HULU SUNGAI TENGAH',2],
      ['KABUPATEN HULU SUNGAI UTARA',2],
      ['KOTA BANJAR BARU',1],
      ['KOTA BANJARMASIN',5]
  ],
  KALTENG : [
      ['KABUPATEN KAPUAS',1  ],
      ['KABUPATEN PULANG PISAU',1  ],
      ['KOTA PALANGKA RAYA',1  ]
  ],
  KALTIM : [
      ['KABUPATEN KUTAI KARTANEGARA',2  ],
      ['KOTA BALIKPAPAN',2  ],
      ['KOTA SAMARINDA',1  ]
  ],
  KALUT : [['KOTA TARAKAN',1]],
  LAMPUNG : [
      ['KABUPATEN LAMPUNG BARAT',2  ],
      ['KABUPATEN LAMPUNG SELATAN',21  ],
      ['KABUPATEN LAMPUNG TENGAH',17  ],
      ['KABUPATEN LAMPUNG TIMUR',16  ],
      ['KABUPATEN LAMPUNG UTARA',11  ],
      ['KABUPATEN PESAWARAN',10  ],
      ['KABUPATEN PESISIR BARAT',2  ],
      ['KABUPATEN PRINGSEWU',5  ],
      ['KABUPATEN TANGGAMUS',5  ],
      ['KABUPATEN TULANG BAWANG BARAT',1  ],
      ['KABUPATEN WAY KANAN',5  ],
      ['KOTA BANDAR LAMPUNG',21  ]
  ],
  MALUKU : [
      ['KABUPATEN MALUKU TENGAH',2  ],
      ['KABUPATEN SERAM BAGIAN BARAT',1  ],
      ['KOTA AMBON',3  ]
  ],
  TERNATE : [['KOTA TERNATE',1]],
  NTB : [
      ['KABUPATEN BIMA',8  ],
      ['KABUPATEN DOMPU',4  ],
      ['KABUPATEN LOMBOK BARAT',14  ],
      ['KABUPATEN LOMBOK TENGAH',18  ],
      ['KABUPATEN LOMBOK TIMUR',22  ],
      ['KABUPATEN LOMBOK UTARA',5  ],
      ['KABUPATEN SUMBAWA',5  ],
      ['KABUPATEN SUMBAWA BARAT',1  ],
      ['KOTA BIMA',2  ],
      ['KOTA MATARAM',6  ]
  ],
  NTT : [
      ['KABUPATEN BELU',3  ],
      ['KABUPATEN ENDE',3  ],
      ['KABUPATEN KUPANG',2  ],
      ['KABUPATEN MALAKA',2  ],
      ['KABUPATEN MANGGARAI',5  ],
      ['KABUPATEN MANGGARAI BARAT',2  ],
      ['KABUPATEN MANGGARAI TIMUR',5  ],
      ['KABUPATEN NAGEKEO',1  ],
      ['KABUPATEN NGADA',3  ],
      ['KABUPATEN SIKKA',4  ],
      ['KABUPATEN SUMBA BARAT',1  ],
      ['KABUPATEN SUMBA BARAT DAYA',2  ],
      ['KABUPATEN SUMBA TIMUR',2  ],
      ['KABUPATEN TIMOR TENGAH SELATAN',4  ],
      ['KABUPATEN TIMOR TENGAH UTARA',3  ],
      ['KOTA KUPANG',2  ]
  ],
  JAYAPURA : [
      ['KABUPATEN JAYAPURA',1  ],
      ['KOTA JAYAPURA',2  ]
  ],
  SORONG : [
      ['KABUPATEN SORONG',1  ],
      ['KOTA SORONG',1  ]
  ],
  RIAU : [
      ['KABUPATEN BENGKALIS',2  ],
      ['KABUPATEN INDRAGIRI HILIR',2  ],
      ['KABUPATEN INDRAGIRI HULU',2  ],
      ['KABUPATEN KAMPAR',6  ],
      ['KABUPATEN KUANTAN SINGINGI',2  ],
      ['KABUPATEN Pelalawan',3  ],
      ['KABUPATEN ROKAN HILIR',5  ],
      ['KABUPATEN ROKAN HULU',4  ],
      ['KABUPATEN SIAK',2  ],
      ['KOTA DUMAI',1  ],
      ['KOTA PEKANBARU',5  ]
  ],
  SULBAR : [
      ['KABUPATEN MAJENE',2  ],
      ['KABUPATEN MAMASA',1  ],
      ['KABUPATEN MAMUJU',2  ],
      ['KABUPATEN MAMUJU TENGAH',2  ],
      ['KABUPATEN MAMUJU UTARA',1  ],
      ['KABUPATEN POLEWALI MANDAR',4  ]
  ],
  SULSEL : [
      ['KABUPATEN BANTAENG',2  ],
      ['KABUPATEN BARRU',1  ],
      ['KABUPATEN BONE',6  ],
      ['KABUPATEN BULUKUMBA',3  ],
      ['KABUPATEN GOWA',6  ],
      ['KABUPATEN JENEPONTO',3  ],
      ['KABUPATEN LUWU',4  ],
      ['KABUPATEN LUWU TIMUR',3  ],
      ['KABUPATEN LUWU UTARA',1  ],
      ['KABUPATEN MAROS',2  ],
      ['KABUPATEN PANGKAJENE DAN KEPULAUAN',2  ],
      ['KABUPATEN PINRANG',2  ],
      ['KABUPATEN SIDENRENG RAPPANG',1  ],
      ['KABUPATEN SOPPENG',1  ],
      ['KABUPATEN TAKALAR',3  ],
      ['KOTA MAKASSAR',6  ],
      ['KOTA PALOPO',1  ],
      ['KOTA PAREPARE',1  ]
  ],
  SULTENG : [
      ['KABUPATEN DONGGALA',4  ],
      ['KABUPATEN PARIGI MOUTONG',5  ],
      ['KABUPATEN POSO',3  ],
      ['KABUPATEN SIGI',2  ],
      ['KABUPATEN TOLI-TOLI',1  ],
      ['KOTA PALU',2  ]
  ],
  SULTENGG : [
      ['KABUPATEN BOMBANA',1  ],
      ['KABUPATEN BUTON',1  ],
      ['KABUPATEN KOLAKA',2  ],
      ['KABUPATEN KONAWE',3  ],
      ['KABUPATEN KONAWE SELATAN',3  ],
      ['KOTA BAUBAU',2  ],
      ['KOTA KENDARI',2  ]
  ],
  SULUT : [
      ['KABUPATEN BOLAANG MONGONDOW',1  ],
      ['KABUPATEN BOLAANG MONGONDOW TIMUR',1  ],
      ['KABUPATEN KOTA BITUNG',1  ],
      ['KABUPATEN MINAHASA',1  ],
      ['KABUPATEN MINAHASA SELATAN',2  ],
      ['KABUPATEN MINAHASA UTARA',3  ],
      ['KOTA KOTAMOBAGU',2  ],
      ['KOTA MANADO',2  ],
      ['KOTA MENADO',2  ],
      ['KOTA TOMOHON',2  ]
  ],
  SUMBAR : [
      ['KABUPATEN AGAM',4  ],
      ['KABUPATEN DHARMASRAYA',2  ],
      ['KABUPATEN LIMA PULUH KOTA',2  ],
      ['KABUPATEN PADANG PARIAMAN',2  ],
      ['KABUPATEN PASAMAN',1  ],
      ['KABUPATEN PASAMAN BARAT',4  ],
      ['KABUPATEN PESISIR SELATAN',7  ],
      ['KABUPATEN SIJUNJUNG',1  ],
      ['KABUPATEN SOLOK',3  ],
      ['KABUPATEN SOLOK SELATAN',2  ],
      ['KABUPATEN TANAH DATAR',1  ],
      ['KOTA PADANG',5  ],
      ['KOTA PADANG PANJANG',1  ],
      ['KOTA PAYAKUMBUH',2  ]
  ],
  SUMSEL : [
      ['KABUPATEN BANYU ASIN',10  ],
      ['KABUPATEN EMPAT LAWANG',1  ],
      ['KABUPATEN KOMERING ILIR',1  ],
      ['KABUPATEN LAHAT',1  ],
      ['KABUPATEN MUARA ENIM',6  ],
      ['KABUPATEN MUSI BANYUASIN',6  ],
      ['KABUPATEN MUSI RAWAS',6  ],
      ['KABUPATEN Musi Rawas Utara',2  ],
      ['KABUPATEN OGAN ILIR',4  ],
      ['KABUPATEN OGAN KOMERING ILIR',4  ],
      ['KABUPATEN OGAN KOMERING ULU',1  ],
      ['KABUPATEN OGAN KOMERING ULU TIMUR',1  ],
      ['KABUPATEN PAGAR ALAM',1  ],
      ['KABUPATEN PENUKAL ABAB LEMATANG ILIR',3  ],
      ['KOTA PALEMBANG',16  ],
      ['KOTA PRABUMULIH',2  ]
  ],
  SUMUT : [
      ['KABUPATEN ASAHAN',7  ],
      ['KABUPATEN BATU BARA',7  ],
      ['KABUPATEN DAIRI',2  ],
      ['KABUPATEN DELI SERDANG',21  ],
      ['KABUPATEN HUMBANG HASUNDUTAN',1  ],
      ['KABUPATEN KARO',2  ],
      ['KABUPATEN LABUHAN BATU',2  ],
      ['KABUPATEN LABUHAN BATU SELATAN',1  ],
      ['KABUPATEN LABUHAN BATU UTARA',3  ],
      ['KABUPATEN LANGKAT',17  ],
      ['KABUPATEN MANDAILING NATAL',2  ],
      ['KABUPATEN PADANG LAWAS',2  ],
      ['KABUPATEN PADANG LAWAS UTARA',1  ],
      ['KABUPATEN SERDANG BEDAGAI',6  ],
      ['KABUPATEN SIMALUNGUN',6  ],
      ['KABUPATEN TAPANULI SELATAN',2  ],
      ['KABUPATEN TAPANULI TENGAH',3  ],
      ['KABUPATEN TAPANULI UTARA',3  ],
      ['KOTA BINJAI',4  ],
      ['KOTA MEDAN',17  ],
      ['KOTA PADANGSIDIMPUAN',1  ],
      ['KOTA PEMATANG SIANTAR',2  ],
      ['KOTA TANJUNG BALAI',4  ],
      ['KOTA TEBING TINGGI',2  ]
  ]
};
// console.log(listLoc);

function genPopUp(prov){
  var content;
  var opendiv='<div class="row"><div class="container-fluid"><div class="col-md-12">';
  var opentable='<table class="table table-responsive table-bordered table-striped" style="font-size:10px;">';
  var closetable='</table>';
  var closediv='</div></div></div>';
  var length=sebaran[prov].length;
  var divider=Math.ceil(length/10);
  var col=12/divider;

  content=opendiv;

  // for(var j=1;j<=divider;j++){
  //   var subdiv='';
  //   var closeSubdiv='';
  //   var ij=j*10;
  //   if(ij>length)
  //     ij=length;
  //   if(col!=12){
  //     subdiv='<div class="col-md-'+col+'">';
  //     closeSubdiv='</div>';
  //   }
  //   content+=subdiv;
  //   content+=opentable;
  //   for(var i=((j-1)*10);i<ij;i++){
  //     content+='<tr><td style="text-align:left;">'+sebaran[prov][i][0]+'</td>';
  //     content+='<td style="text-align:right;">'+sebaran[prov][i][1]+'</td></tr>';
  //   }
  //   content+=closetable;
  //   content+=closeSubdiv;
  // }

  content+=opentable;
  for(var i=0;i<length;i++){
      content+='<tr><td style="text-align:left;">'+sebaran[prov][i][0]+'</td>';
      content+='<td style="text-align:right;">'+sebaran[prov][i][1]+'</td></tr>';
  }
  content+=closetable;
  content+=closediv;

  return content;
}


var newbound=[];

for(var i=0;i<listLoc.length;i++){
  // console.log(listLoc[i]);
  options = {
    isAlphaNumericIcon: true,
    text: listLoc[i][0],
    iconShape: 'marker',
    borderColor: '#00ABDC',
    textColor: '#00ABDC',
  };

  
  // var popup = L.responsivePopup().setContent(genPopUp(listLoc[i][2]));

  var customOptions ={
    maxWidth: 750,
    maxHeight: 250
  }

  popup=new L.popup().setContent(genPopUp(listLoc[i][2]));

  newbound.push(listLoc[i][1]);


  L.marker(listLoc[i][1], {
    icon: L.BeautifyIcon.icon(options),
    draggable: false
  }).bindPopup(popup,customOptions).addTo(map);
}

map.invalidateSize();
map.fitBounds(newbound);
