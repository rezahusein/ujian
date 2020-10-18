
<link rel="stylesheet" href="<?= base_url('MMI-assets/')?>plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet" href="<?= base_url('MMI-assets/')?>plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
<style>
.table-striped tbody tr:nth-of-type(odd) {
    background-color: #6d7ae00f !important;
}
</style>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">Soal Ujian</h1> 
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Soal Ujian</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
            <div class="col">
                <div class="card">
                    <div class="card-header">
                        <div class="row">
                            <div class="col-md-6">
                                <h5>Periode Ujian : </h5>
                                <div class="periode-filter ml-2">
                                    <select name="" id="" class="form-control w-35">
                                        <option value="">22 Jan - 23 Jan 2020</option>
                                    </select>
                                </div> 
                            </div>

                            <div class="col-md-6">   
                                <div class="btn-create float-right">
                                    <a href="" class="btn btn-success btn-sm">
                                    <i class="fas fa-plus"></i> Tambah Periode Ujian
                                    </a>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                    
                    <div class="card-body">
                        <table class="table table-striped table-hover table-bordered table-responsive d-table" id="tbsoalujian">
                            <thead>
                                <tr>
                                    <th style="width: 5%;">No</th>
                                    <th>Periode</th>
                                    <th>Jumlah Soal</th>
                                    <th>Nilai Standard</th>
                                    <th>Waktu</th>
                                    <th>Status</th>
                                    <th>Action</th>

                                </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="text-center">1</td>
                                        <td>22 Jan - 23 Jan 2020</td>
                                        <td>40 Soal</td>
                                        <td>75</td>
                                        <td>60 Menit</td>
                                        <td><span class="badge badge-success">Enable</span></td>
                                        <td>
                                            <a href="" class="btn btn-sm btn-primary"
                                            data-toggle="tooltip" data-placement="top" title="Preview Soal Ujian">
                                                <i class="fas fa-eye"></i>
                                            </a>
                                            <a href="" class="btn btn-sm btn-success"
                                            data-toggle="tooltip" data-placement="top" title="Edit Data Ujian">
                                                <i class="fas fa-clipboard"></i>
                                            </a>
                                            <a href="" class="btn btn-sm btn-danger"
                                            data-toggle="tooltip" data-placement="top" title="Nonaktif Ujian">
                                                <i class="fas fa-ban"></i>
                                            </a>
                                        </td>
                                    </tr>
                                </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

      </div><!--/. container-fluid -->
    </section>
    <!-- /.content -->
  </div>
