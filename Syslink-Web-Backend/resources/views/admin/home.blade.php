<?php 
  $connect = mysqli_connect("localhost","root","","makubmaka_db");
  $query = "
SELECT h.id as id, e.username as empid , e.name as name, e.surname as surname, h.check_time as time, h.action as action, l.name as location,h.description as description
FROM attendance_histories h INNER JOIN employees e ON h.employee_id = e.id
                            INNER JOIN locations l ON h.location_id = l.id";

  $result = mysqli_query($connect,$query);

  if (!$result ?? '') {
    printf("Error: %s\n", mysqli_error($connect));
    exit();
}
?>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>SyslinkTech | ข้อมูลการเข้า-ออก</title>
  <link rel="stylesheet" href="../plugins/ekko-lightbox/ekko-lightbox.css">
  <link rel="icon" href="../../dist/img/SyslinkLogo.png" type="image/x-icon">
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../../plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- DataTables -->
  <link rel="stylesheet" href="../../plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
  <link rel="stylesheet" href="../../plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../../dist/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>

<body class="hold-transition sidebar-mini">
  <div class="wrapper">
    <!-- Navbar -->
    <nav class="main-header navbar navbar-expand navbar-white navbar-light">
      <!-- Left navbar links -->
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
        </li>
        <li class="nav-item d-none d-sm-inline-block">
          <a href="../home" class="nav-link">หน้าแรก</a>
        </li>
        <li class="nav-item d-none d-sm-inline-block">
          <a href="#" class="nav-link">ติดต่อเรา</a>
        </li>
      </ul>



      <!-- Right navbar links -->
      <ul class="navbar-nav ml-auto">

      </ul>
    </nav>
    <!-- /.navbar -->

    <!-- Main Sidebar Container -->
    <aside class="main-sidebar sidebar-dark-primary elevation-4">
      <!-- Brand Logo -->
      @include('layouts.logo_header')

      <!-- Sidebar -->
      <div class="sidebar">
        <!-- Sidebar user (optional) -->
        @include('layouts.profile_header')


        <!-- Sidebar Menu -->
        <nav class="mt-2">
          <ul class="nav nav-pills nav-sidebar flex-column nav-child-indent" data-widget="treeview" role="menu"
            data-accordion="false">
            <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->

            <li class="nav-item has-treeview menu-open">
              <a href="#" class="nav-link active bg-danger">
                <i class="fas fa-users "></i>
                <p>
                  ข้อมูลพนักงาน
                  <i class="fas fa-angle-left right"></i>
                </p>
              </a>
              <ul class="nav nav-treeview ">
                <li class="nav-item">
                  <a href="/home" class="nav-link active">
                    <i class="fas fa-table"></i>
                    <p>ข้อมูลการเข้า-ออก</p>
                  </a>
                </li>
                {{-- <li class="nav-item">
                <a href="../tables/data.html" class="nav-link">
                  <i class="nav-icon fas fa-plane"></i>
                  <p>ข้อมูลการลา</p>
                </a>
              </li> --}}

              </ul>
            </li>
            <li class="nav-item has-treeview menu-open">
              <a href="#" class="nav-link active bg-danger">
                <i class="fas fa-cog"></i>
                <p>
                  การจัดการ
                  <i class="fas fa-angle-left right"></i>
                </p>
              </a>
              <ul class="nav nav-treeview">
                <li class="nav-item">
                  <a href="edit/users" class="nav-link">
                    <i class="fas fa-user-edit"></i>
                    <p>จัดการพนักงาน</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="edit/admins" class="nav-link">
                    <i class="fas fa-user-cog"></i>
                    <p>จัดการผู้ดูแล</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="edit/locations" class="nav-link">
                    <i class="fas fa-map-marked-alt"></i>
                    <p>จัดการสถานที่</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="../edit/roles" class="nav-link">
                    <i class="fas fa-address-card"></i>
                    <p>จัดการตำแหน่ง</p>
                  </a>
                </li>
              </ul>
            </li>

            <li class="nav-item">
              <a href=" {{ route('logout') }}" onclick="event.preventDefault();
                          document.getElementById('logout-form').submit();" class="nav-link">
                <i class="fas fa-sign-out-alt text-danger"></i>
                <p class="text-danger">ออกจากระบบ</p>
                <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                  @csrf
                </form>
              </a>
            </li>
          </ul>


        </nav>
        <!-- /.sidebar-menu -->
      </div>
      <!-- /.sidebar -->
    </aside>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <h1>ตารางข้อมูลเวลา เข้า - ออก</h1>
            </div>
          </div>
        </div><!-- /.container-fluid -->
      </section>

      <!-- Main content -->
      <section class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-12">

              <div class="card">

                <!-- /.card-header -->
                <div class="card-body">
                  <table id="attendancetable" class="table table-bordered table-striped nowrap">
                    <thead>
                      <tr>

                        <th></th>
                        <th>ลำดับ</th>
                        <th>รหัสพนักงาน</th>
                        <th>ชื่อ</th>
                        <th>นามสกุล</th>
                        <th>วันที่ / เวลา</th>
                        <th>โปรเจค</th>
                        <th>ประเภท</th>
                        <th>รูป</th>
                        <th>หมายเหตุ</th>


                      </tr>
                    </thead>
                    <tbody>
                      <?php 
                      if(mysqli_num_rows($result)>0){

                        while ($row = mysqli_fetch_array($result)) {
                          echo '
                          <tr>


                            <td></td>
                            <td>'.$row["id"].'</td>
                            <td>'.$row["empid"].'</td>
                            <td>'.$row["name"].'</td>
                            <td>'.$row["surname"].'</td>
                            <td>'.$row["time"].'</td> 
                            <td>'.$row["location"].'</td>
                            <td>'.$row["action"].'</td>
                            <td><a href="https://filmdaily.co/wp-content/uploads/2020/05/coughing-cat-meme-lede.jpg" data-toggle="lightbox" data-title="โปรเจค : '.$row["location"].'">
                              <i class="fas fa-archive"></i>
                                </a>
                            </td>
                            <td style="max-width: 100px"><span style=" text-overflow: ellipsis; break-word: break-word ; display: block;  overflow: hidden">'.$row["description"].'</span></td>

                          </tr>
                            ';
                        }
                      }

                      ?>
                    </tbody>

                  </table>
                </div>
                <!-- /.card-body -->
              </div>
              <!-- /.card -->
            </div>
            <!-- /.col -->
          </div>
          <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
      </section>
      <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->


    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
      <!-- Control sidebar content goes here -->
    </aside>
    <!-- /.control-sidebar -->
  </div>
  <!-- ./wrapper -->

  <!-- jQuery -->
  <script src="../../plugins/jquery/jquery.min.js"></script>
  <!-- Bootstrap 4 -->
  <script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- DataTables -->
  <script src="../../plugins/datatables/jquery.dataTables.min.js"></script>
  <script src="../../plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
  <script src="../../plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
  <script src="../../plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
  <!-- AdminLTE App -->
  <script src="../../dist/js/adminlte.min.js"></script>
  <!-- AdminLTE for demo purposes -->
  <script src="../../dist/js/demo.js"></script>
  <!-- page script -->
  <script src="../plugins/ekko-lightbox/ekko-lightbox.min.js"></script>
  <script src="../plugins/filterizr/jquery.filterizr.min.js"></script>
  <script>
    $(document).ready(function () {  
      $("#attendancetable").DataTable({
        responsive: {
            details: {
                type: 'column',
                target: 0,
            }
        },
        order: [ 1, 'asc' ],
        columnDefs: [
        {
          className: 'control',
            orderable: false,
            targets:   0,
        },
        {
           targets: 1,
           className: 'text-center'
        },
      
        {
          targets: 7,
          className: 'text-center'
        },
        {
          targets: 8,
          className: 'text-center'
        }],
      "info": false,
      language: {
        emptyTable: "ไม่พบข้อมูล",
        lengthMenu: "แสดงข้อมูล  _MENU_  รายการ",
        paginate: {
            first:    '«',
            previous: '‹',
            next:     '›',
            last:     '»'
        },
        aria: {
            paginate: {
                first:    'หน้าแรก',
                previous: 'ย้อนกลับ',
                next:     'ถัดไป',
                last:     'หน้าสุดท้าย'
            }
        }
      },
      autoWidth: false,
      oLanguage: {
        sSearch: "ค้นหา : ",
        sLengthMenu: "แสดง _MENU_ แถว",
    },
    });
  });
$(document).on('click', '[data-toggle="lightbox"]', function(event) {
      event.preventDefault();
      $(this).ekkoLightbox({
        alwaysShowClose: true
      });
    });

  
   
  
  </script>
</body>

</html>