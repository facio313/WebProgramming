<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>미음소프트</title>
  <script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
  

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../adminlte3/plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bootstrap 4 -->
  <link rel="stylesheet" href="../adminlte3/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="../adminlte3/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="../adminlte3/plugins/jqvmap/jqvmap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../adminlte3/dist/css/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="../adminlte3/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="../adminlte3/plugins/daterangepicker/daterangepicker.css">
  <!-- summernote -->
  <link rel="stylesheet" href="../adminlte3/plugins/summernote/summernote-bs4.min.css">
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

  <!-- Preloader -->
  <div class="preloader flex-column justify-content-center align-items-center">
    <img class="animation__shake" src="../adminlte3/dist/img/AdminLTELogo.png" alt="AdminLTELogo" height="60" width="60">
  </div>

  <!-- ------------------------------Navbar(header.jsp) 시작------------------------------ -->
	<!-- 액션태그 -->
	<jsp:include page="/frm/header.jsp" />
  <!-- ------------------------------/.navbar 끝------------------------------ -->

  <!-- Main Sidebar Container -->
	<jsp:include page="/frm/aside.jsp" />
  <!-- /.sidebar -->

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">게시판</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Dashboard v1</li>
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
<div class="col-12">
<div class="card">
<div class="card-header">
<h3 class="card-title">DataTable with minimal features &amp; hover style</h3>
</div>

<div class="card-body">
<div id="example2_wrapper" class="dataTables_wrapper dt-bootstrap4"><div class="row"><div class="col-sm-12 col-md-6"></div><div class="col-sm-12 col-md-6"></div></div><div class="row"><div class="col-sm-12"><table id="example2" class="table table-bordered table-hover dataTable dtr-inline" aria-describedby="example2_info">
<thead>
<tr><th class="sorting sorting_asc" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending">Rendering engine</th><th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="Browser: activate to sort column ascending">Browser</th><th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending">Platform(s)</th><th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="Engine version: activate to sort column ascending">Engine version</th><th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending">CSS grade</th></tr>
</thead>
<tbody>
<tr class="odd">
<td class="dtr-control sorting_1" tabindex="0">Gecko</td>
<td>Firefox 1.0</td>
<td>Win 98+ / OSX.2+</td>
<td>1.7</td>
<td>A</td>
</tr><tr class="even">
<td class="dtr-control sorting_1" tabindex="0">Gecko</td>
<td>Firefox 1.5</td>
<td>Win 98+ / OSX.2+</td>
<td>1.8</td>
<td>A</td>
</tr><tr class="odd">
<td class="dtr-control sorting_1" tabindex="0">Gecko</td>
<td>Firefox 2.0</td>
<td>Win 98+ / OSX.2+</td>
<td>1.8</td>
<td>A</td>
</tr><tr class="even">
<td class="dtr-control sorting_1" tabindex="0">Gecko</td>
<td>Firefox 3.0</td>
<td>Win 2k+ / OSX.3+</td>
<td>1.9</td>
<td>A</td>
</tr><tr class="odd">
<td class="sorting_1 dtr-control">Gecko</td>
<td>Camino 1.0</td>
<td>OSX.2+</td>
<td>1.8</td>
<td>A</td>
</tr><tr class="even">
<td class="sorting_1 dtr-control">Gecko</td>
<td>Camino 1.5</td>
<td>OSX.3+</td>
<td>1.8</td>
<td>A</td>
</tr><tr class="odd">
<td class="sorting_1 dtr-control">Gecko</td>
<td>Netscape 7.2</td>
<td>Win 95+ / Mac OS 8.6-9.2</td>
<td>1.7</td>
<td>A</td>
</tr><tr class="even">
<td class="sorting_1 dtr-control">Gecko</td>
<td>Netscape Browser 8</td>
<td>Win 98SE+</td>
<td>1.7</td>
<td>A</td>
</tr><tr class="odd">
<td class="sorting_1 dtr-control">Gecko</td>
<td>Netscape Navigator 9</td>
<td>Win 98+ / OSX.2+</td>
<td>1.8</td>
<td>A</td>
</tr><tr class="even">
<td class="sorting_1 dtr-control">Gecko</td>
<td>Mozilla 1.0</td>
<td>Win 95+ / OSX.1+</td>
<td>1</td>
<td>A</td>
</tr></tbody>
<tfoot>
<tr><th rowspan="1" colspan="1">Rendering engine</th><th rowspan="1" colspan="1">Browser</th><th rowspan="1" colspan="1">Platform(s)</th><th rowspan="1" colspan="1">Engine version</th><th rowspan="1" colspan="1">CSS grade</th></tr>
</tfoot>
</table></div></div><div class="row"><div class="col-sm-12 col-md-5"><div class="dataTables_info" id="example2_info" role="status" aria-live="polite">Showing 1 to 10 of 57 entries</div></div><div class="col-sm-12 col-md-7"><div class="dataTables_paginate paging_simple_numbers" id="example2_paginate"><ul class="pagination"><li class="paginate_button page-item previous disabled" id="example2_previous"><a href="#" aria-controls="example2" data-dt-idx="0" tabindex="0" class="page-link">Previous</a></li><li class="paginate_button page-item active"><a href="#" aria-controls="example2" data-dt-idx="1" tabindex="0" class="page-link">1</a></li><li class="paginate_button page-item "><a href="#" aria-controls="example2" data-dt-idx="2" tabindex="0" class="page-link">2</a></li><li class="paginate_button page-item "><a href="#" aria-controls="example2" data-dt-idx="3" tabindex="0" class="page-link">3</a></li><li class="paginate_button page-item "><a href="#" aria-controls="example2" data-dt-idx="4" tabindex="0" class="page-link">4</a></li><li class="paginate_button page-item "><a href="#" aria-controls="example2" data-dt-idx="5" tabindex="0" class="page-link">5</a></li><li class="paginate_button page-item "><a href="#" aria-controls="example2" data-dt-idx="6" tabindex="0" class="page-link">6</a></li><li class="paginate_button page-item next" id="example2_next"><a href="#" aria-controls="example2" data-dt-idx="7" tabindex="0" class="page-link">Next</a></li></ul></div></div></div></div>
</div>

</div>

<div class="card">
<div class="card-header">
<h3 class="card-title">DataTable with default features</h3>
</div>

<div class="card-body">
<div id="example1_wrapper" class="dataTables_wrapper dt-bootstrap4"><div class="row"><div class="col-sm-12 col-md-6"><div class="dt-buttons btn-group flex-wrap">               <button class="btn btn-secondary buttons-copy buttons-html5" tabindex="0" aria-controls="example1" type="button"><span>Copy</span></button> <button class="btn btn-secondary buttons-csv buttons-html5" tabindex="0" aria-controls="example1" type="button"><span>CSV</span></button> <button class="btn btn-secondary buttons-excel buttons-html5" tabindex="0" aria-controls="example1" type="button"><span>Excel</span></button> <button class="btn btn-secondary buttons-pdf buttons-html5" tabindex="0" aria-controls="example1" type="button"><span>PDF</span></button> <button class="btn btn-secondary buttons-print" tabindex="0" aria-controls="example1" type="button"><span>Print</span></button> <div class="btn-group"><button class="btn btn-secondary buttons-collection dropdown-toggle buttons-colvis" tabindex="0" aria-controls="example1" type="button" aria-haspopup="true"><span>Column visibility</span><span class="dt-down-arrow"></span></button></div> </div></div><div class="col-sm-12 col-md-6"><div id="example1_filter" class="dataTables_filter"><label>Search:<input type="search" class="form-control form-control-sm" placeholder="" aria-controls="example1"></label></div></div></div><div class="row"><div class="col-sm-12"><table id="example1" class="table table-bordered table-striped dataTable dtr-inline" aria-describedby="example1_info">
<thead>
<tr><th class="sorting sorting_asc" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending">Rendering engine</th><th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Browser: activate to sort column ascending">Browser</th><th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending">Platform(s)</th><th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Engine version: activate to sort column ascending">Engine version</th><th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending">CSS grade</th></tr>
</thead>
<tbody>
<tr class="odd">
<td class="dtr-control sorting_1" tabindex="0">Gecko</td>
<td>Firefox 1.0</td>
<td>Win 98+ / OSX.2+</td>
<td>1.7</td>
<td>A</td>
</tr><tr class="even">
<td class="dtr-control sorting_1" tabindex="0">Gecko</td>
<td>Firefox 1.5</td>
<td>Win 98+ / OSX.2+</td>
<td>1.8</td>
<td>A</td>
</tr><tr class="odd">
<td class="dtr-control sorting_1" tabindex="0">Gecko</td>
<td>Firefox 2.0</td>
<td>Win 98+ / OSX.2+</td>
<td>1.8</td>
<td>A</td>
</tr><tr class="even">
<td class="dtr-control sorting_1" tabindex="0">Gecko</td>
<td>Firefox 3.0</td>
<td>Win 2k+ / OSX.3+</td>
<td>1.9</td>
<td>A</td>
</tr><tr class="odd">
<td class="sorting_1 dtr-control">Gecko</td>
<td>Camino 1.0</td>
<td>OSX.2+</td>
<td>1.8</td>
<td>A</td>
</tr><tr class="even">
<td class="sorting_1 dtr-control">Gecko</td>
<td>Camino 1.5</td>
<td>OSX.3+</td>
<td>1.8</td>
<td>A</td>
</tr><tr class="odd">
<td class="sorting_1 dtr-control">Gecko</td>
<td>Netscape 7.2</td>
<td>Win 95+ / Mac OS 8.6-9.2</td>
<td>1.7</td>
<td>A</td>
</tr><tr class="even">
<td class="sorting_1 dtr-control">Gecko</td>
<td>Netscape Browser 8</td>
<td>Win 98SE+</td>
<td>1.7</td>
<td>A</td>
</tr><tr class="odd">
<td class="sorting_1 dtr-control">Gecko</td>
<td>Netscape Navigator 9</td>
<td>Win 98+ / OSX.2+</td>
<td>1.8</td>
<td>A</td>
</tr><tr class="even">
<td class="sorting_1 dtr-control">Gecko</td>
<td>Mozilla 1.0</td>
<td>Win 95+ / OSX.1+</td>
<td>1</td>
<td>A</td>
</tr></tbody>
<tfoot>
<tr><th rowspan="1" colspan="1">Rendering engine</th><th rowspan="1" colspan="1">Browser</th><th rowspan="1" colspan="1">Platform(s)</th><th rowspan="1" colspan="1">Engine version</th><th rowspan="1" colspan="1">CSS grade</th></tr>
</tfoot>
</table></div></div><div class="row"><div class="col-sm-12 col-md-5"><div class="dataTables_info" id="example1_info" role="status" aria-live="polite">Showing 1 to 10 of 57 entries</div></div><div class="col-sm-12 col-md-7"><div class="dataTables_paginate paging_simple_numbers" id="example1_paginate"><ul class="pagination"><li class="paginate_button page-item previous disabled" id="example1_previous"><a href="#" aria-controls="example1" data-dt-idx="0" tabindex="0" class="page-link">Previous</a></li><li class="paginate_button page-item active"><a href="#" aria-controls="example1" data-dt-idx="1" tabindex="0" class="page-link">1</a></li><li class="paginate_button page-item "><a href="#" aria-controls="example1" data-dt-idx="2" tabindex="0" class="page-link">2</a></li><li class="paginate_button page-item "><a href="#" aria-controls="example1" data-dt-idx="3" tabindex="0" class="page-link">3</a></li><li class="paginate_button page-item "><a href="#" aria-controls="example1" data-dt-idx="4" tabindex="0" class="page-link">4</a></li><li class="paginate_button page-item "><a href="#" aria-controls="example1" data-dt-idx="5" tabindex="0" class="page-link">5</a></li><li class="paginate_button page-item "><a href="#" aria-controls="example1" data-dt-idx="6" tabindex="0" class="page-link">6</a></li><li class="paginate_button page-item next" id="example1_next"><a href="#" aria-controls="example1" data-dt-idx="7" tabindex="0" class="page-link">Next</a></li></ul></div></div></div></div>
</div>
</div>
</div>
</div>
</div>
</section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  
  <!-- bottom -->
	<jsp:include page="/frm/bottom.jsp" />
  <!-- /bottom -->

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="../adminlte3/plugins/jquery/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="../adminlte3/plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="../adminlte3/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- ChartJS -->
<script src="../adminlte3/plugins/chart.js/Chart.min.js"></script>
<!-- Sparkline -->
<script src="../adminlte3/plugins/sparklines/sparkline.js"></script>
<!-- JQVMap -->
<script src="../adminlte3/plugins/jqvmap/jquery.vmap.min.js"></script>
<script src="../adminlte3/plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
<!-- jQuery Knob Chart -->
<script src="../adminlte3/plugins/jquery-knob/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="../adminlte3/plugins/moment/moment.min.js"></script>
<script src="../adminlte3/plugins/daterangepicker/daterangepicker.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="../adminlte3/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Summernote -->
<script src="../adminlte3/plugins/summernote/summernote-bs4.min.js"></script>
<!-- overlayScrollbars -->
<script src="../adminlte3/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="../adminlte3/dist/js/adminlte.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../adminlte3/dist/js/demo.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="../adminlte3/dist/js/pages/dashboard.js"></script>
</body>
</html>
