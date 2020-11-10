<!-- Resources -->
<style>
#chartdiv {
  width: 100%;
  height: 500px;
}
</style>
<script src="https://cdn.amcharts.com/lib/4/core.js"></script>
<script src="https://cdn.amcharts.com/lib/4/charts.js"></script>
<script src="https://cdn.amcharts.com/lib/4/themes/animated.js"></script>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">Dashboard</h1></i>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Dashboard</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->
<?php
$this->db->join('master_periode','peserta_periode.id_periode=master_periode.id');
$this->db->select('COUNT(*) AS jumlah_peserta,SUM(CASE WHEN peserta_periode.kelulusan="lulus" THEN 1 ELSE 0 END) AS peserta_lulus,SUM(CASE WHEN peserta_periode.kelulusan="tidak lulus" THEN 1 ELSE 0 END) AS peserta_tidak_lulus,SUM(CASE WHEN peserta_periode.status_ujian="belum ujian" AND master_periode.periode_sampai < "'.date('Y-m-d').'" THEN 1 ELSE 0 END) AS peserta_tidak_mengikuti_ujian');
  $peserta = $this->mymodel->selectDataone('peserta_periode',null);
  // print_r($peserta);
?>
    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <!-- Info boxes -->
        <div class="row">
          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box">
              <span class="info-box-icon bg-info elevation-1"><i class="fas fa-users"></i></span>
            
              <div class="info-box-content">
                <span class="info-box-text">Peserta</span>
                <span class="info-box-number">
                  <?=$peserta['jumlah_peserta']?>
                  <small>orang</small>
                </span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box mb-3">
              <span class="info-box-icon bg-success elevation-1"><i class="fas fa-clipboard-check"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Peserta Lulus</span>
                <span class="info-box-number">
                    <?=$peserta['peserta_lulus']?>
                    <small>orang</small>
                </span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->

          <!-- fix for small devices only -->
          <div class="clearfix hidden-md-up"></div>

          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box mb-3">
              <span class="info-box-icon bg-danger elevation-1"><i class="fas fa-times-circle"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Peserta Tidak Lulus</span>
                <span class="info-box-number"><?=$peserta['peserta_tidak_lulus']?> <small>orang</small></span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box mb-3">
              <span class="info-box-icon bg-warning elevation-1"><i class="fas fa-exclamation-circle"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Peserta yang tidak <br> mengikuti</span>
                <span class="info-box-number"><?=$peserta['peserta_tidak_mengikuti_ujian']?> <small>orang</small></span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->

        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header">
                <h5 class="card-title">Report Data</h5>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                  <div class="btn-group">
                    <button type="button" class="btn btn-tool dropdown-toggle" data-toggle="dropdown">
                      <i class="fas fa-wrench"></i>
                    </button>
                    <div class="dropdown-menu dropdown-menu-right" role="menu">
                      <a href="#" class="dropdown-item">Action</a>
                      <a href="#" class="dropdown-item">Another action</a>
                      <a href="#" class="dropdown-item">Something else here</a>
                      <a class="dropdown-divider"></a>
                      <a href="#" class="dropdown-item">Separated link</a>
                    </div>
                  </div>
                  <button type="button" class="btn btn-tool" data-card-widget="remove">
                    <i class="fas fa-times"></i>
                  </button>
                </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body" id="loading-chart"> 
                <h4>Loading Chart...</h4>
                <div class="progress">
                  <div class="progress-bar progress-chart progress-bar-striped progress-bar-animated" style="width:0%">0%</div>
                </div>
              </div>
              <div class="card-body" style="display: none" id="report-chart">
                <div class="row">
                  <div class="col-md-8">
                    <p class="text-center">
                      <strong>Rekap Status Peserta Pada 3 Periode Terakhir</strong>
                    </p>

                    <div class="chart">
                      <!-- Sales Chart Canvas -->
                      <div id="chartdiv"> 
                      </div>
                      <script>
                        var jsonChart = [];
                        var offset = 0;
                        var limit = 3;
                        var jumlah_peserta = 0;
                        var peserta_lulus = 0;
                        var peserta_tidak_lulus = 0;
                        var peserta_tidak_mengikuti_ujian = 0;
                        $(document).ready(function(){
                            loadJsonChart();
                        });
                        function loadJsonChart(){
                           if(offset == limit){
                            // console.log(jsonChart);
                            setRekapPersen();
                            loadChart();
                                $('#loading-chart').css('display','none');
                                $('#report-chart').css('display','block');
                            }
                            else{
                              $.ajax({
                                url : '<?=base_url()?>mmi/admin/dashboard/getPerPeriode/'+offset,
                                success : function(jsons){
                                  if(jsons == 'empty'){
                                    offset = limit;
                                      // var persentase = offset / limit * 100;
                                    $('.progress-chart').css('width','100%');
                                    $('.progress-chart').html('100%');
                                    loadJsonChart();
                                  }
                                  else{
                                      var jsondata = JSON.parse(jsons);
                                      jumlah_peserta += parseInt(jsondata.jumlah_peserta);
                                      peserta_lulus += parseInt(jsondata.peserta_lulus);
                                      peserta_tidak_lulus += parseInt(jsondata.peserta_tidak_lulus);
                                      peserta_tidak_mengikuti_ujian += parseInt(jsondata.peserta_tidak_mengikuti_ujian);
                                      jsonChart[offset] = jsondata;
                                    offset++;
                                    var persentase = offset / limit * 100;
                                    $('.progress-chart').css('width',persentase+'%');
                                    $('.progress-chart').html(persentase.toFixed()+'%');
                                    loadJsonChart();
                                  }
                                },
                                error : function(){
                                  loadJsonChart();
                                }
                              });
                            }
                        }
                        
                        function loadChart(){
am4core.ready(function() {

// Themes begin
am4core.useTheme(am4themes_animated);
// Themes end



var chart = am4core.create('chartdiv', am4charts.XYChart)
chart.colors.step = 2;

chart.legend = new am4charts.Legend()
chart.legend.position = 'top'
chart.legend.paddingBottom = 20
chart.legend.labels.template.maxWidth = 95

var xAxis = chart.xAxes.push(new am4charts.CategoryAxis())
xAxis.dataFields.category = 'category'
xAxis.renderer.cellStartLocation = 0.1
xAxis.renderer.cellEndLocation = 0.9
xAxis.renderer.grid.template.location = 0;

var yAxis = chart.yAxes.push(new am4charts.ValueAxis());
yAxis.min = 0;

function createSeries(value, name,color='red') {
    var series = chart.series.push(new am4charts.ColumnSeries())
    // series.columns.template.stroke = am4core.color("#ff0000"); 
    series.columns.template.fill = am4core.color(color);
    series.columns.template.tooltipText = name+' : {valueY}';
    series.dataFields.valueY = value
    series.dataFields.categoryX = 'category'
    series.name = name

    series.events.on("hidden", arrangeColumns);
    series.events.on("shown", arrangeColumns);

    var bullet = series.bullets.push(new am4charts.LabelBullet())
    bullet.interactionsEnabled = false
    bullet.dy = 20;
    bullet.label.text = '{valueY}'
    bullet.label.fill = am4core.color('#ffffff')

    return series;
}

chart.data = jsonChart;


createSeries('jumlah_peserta', 'Jumlah Peserta','#17a2b8');
createSeries('peserta_lulus', 'Peserta Lulus','#28a745');
createSeries('peserta_tidak_lulus', 'Peserta Tidak Lulus','#dc3545');
createSeries('peserta_tidak_mengikuti_ujian', 'Peserta Tidak Mengikuti Ujian','#ffc107');

function arrangeColumns() {

    var series = chart.series.getIndex(0);

    var w = 1 - xAxis.renderer.cellStartLocation - (1 - xAxis.renderer.cellEndLocation);
    if (series.dataItems.length > 1) {
        var x0 = xAxis.getX(series.dataItems.getIndex(0), "categoryX");
        var x1 = xAxis.getX(series.dataItems.getIndex(1), "categoryX");
        var delta = ((x1 - x0) / chart.series.length) * w;
        if (am4core.isNumber(delta)) {
            var middle = chart.series.length / 2;

            var newIndex = 0;
            chart.series.each(function(series) {
                if (!series.isHidden && !series.isHiding) {
                    series.dummyData = newIndex;
                    newIndex++;
                }
                else {
                    series.dummyData = chart.series.indexOf(series);
                }
            })
            var visibleCount = newIndex;
            var newMiddle = visibleCount / 2;

            chart.series.each(function(series) {
                var trueIndex = chart.series.indexOf(series);
                var newIndex = series.dummyData;

                var dx = (newIndex - trueIndex + middle - newMiddle) * delta

                series.animate({ property: "dx", to: dx }, series.interpolationDuration, series.interpolationEasing);
                series.bulletsContainer.animate({ property: "dx", to: dx }, series.interpolationDuration, series.interpolationEasing);
            })
        }
    }
}

});
}
function setRekapPersen(){
  // alert(peserta_lulus);
                          $('.progress-jumlah-peserta').find('.float-right').html('<b>'+jumlah_peserta+'</b>/'+jumlah_peserta);
                          $('.progress-jumlah-peserta').find('.progress-bar').css('width',(jumlah_peserta / jumlah_peserta * 100)+'%');

                          $('.progress-peserta-lulus').find('.float-right').html('<b>'+peserta_lulus+'</b>/'+jumlah_peserta);
                          $('.progress-peserta-lulus').find('.progress-bar').css('width',(peserta_lulus / jumlah_peserta * 100)+'%');

                          $('.progress-peserta-tidak-lulus').find('.float-right').html('<b>'+peserta_tidak_lulus+'</b>/'+jumlah_peserta);
                          $('.progress-peserta-tidak-lulus').find('.progress-bar').css('width',(peserta_tidak_lulus / jumlah_peserta * 100)+'%');

                          $('.progress-peserta-tidak-mengikuti-ujian').find('.float-right').html('<b>'+peserta_tidak_mengikuti_ujian+'</b>/'+jumlah_peserta);
                          $('.progress-peserta-tidak-mengikuti-ujian').find('.progress-bar').css('width',(peserta_tidak_mengikuti_ujian / jumlah_peserta * 100)+'%');
                        } 
  // end am4core.ready()
</script>
                    </div>
                    <!-- /.chart-responsive -->
                  </div>
                  <!-- /.col -->
                  <div class="col-md-4">
                    <p class="text-center">
                      <strong>Data Semua Peserta</strong>
                    </p>

                    <div class="progress-group progress-jumlah-peserta">
                      Peserta
                      <span class="float-right"><b>100</b>/100</span>
                      <div class="progress progress-sm">
                        <div class="progress-bar bg-primary" style="width: 100%"></div>
                      </div>
                    </div>
                    <!-- /.progress-group -->

                    <div class="progress-group progress-peserta-lulus">
                      Peserta Lulus
                      <span class="float-right"><b>70</b>/100</span>
                      <div class="progress progress-sm">
                        <div class="progress-bar bg-success" style="width: 70%"></div>
                      </div>
                    </div>

                    <!-- /.progress-group -->
                    <div class="progress-group progress-peserta-tidak-lulus">
                      <span class="progress-text">Peserta Tidak Lulus</span>
                      <span class="float-right"><b>30</b>/100</span>
                      <div class="progress progress-sm">
                        <div class="progress-bar bg-danger" style="width: 30%"></div>
                      </div>
                    </div>

                    <!-- /.progress-group -->
                    <div class="progress-group progress-peserta-tidak-mengikuti-ujian">
                      Peserta yang tidak mengikuti
                      <span class="float-right"><b>10</b>/100</span>
                      <div class="progress progress-sm">
                        <div class="progress-bar bg-warning" style="width: 10%"></div>
                      </div>
                    </div>
                    <!-- /.progress-group -->
                  </div>
                  <!-- /.col -->
                </div>
                <!-- /.row -->
              </div>
              <!-- ./card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->

      </div><!--/. container-fluid -->
    </section>
    <!-- /.content -->
  </div>