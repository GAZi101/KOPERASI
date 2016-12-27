<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>KOPERASI</title>

    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/assets/css/half-slider.css" rel="stylesheet">

</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="${pageContext.request.contextPath}/">KOPERASI</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="${pageContext.request.contextPath}/barang">Barang</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/supplier">Supplier</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Half Page Image Background Carousel Header -->
    <header id="myCarousel" class="carousel slide">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for Slides -->
        <div class="carousel-inner">
            <div class="item active">
                <!-- Set the first background image using inline CSS below. -->
                <div class="fill" style="background-image:url('http://placehold.it/1900x1080&text=Slide One');"></div>
                <div class="carousel-caption">
                    <h2>Punya barang dagangan.</h2>
                </div>
            </div>
            <div class="item">
                <!-- Set the second background image using inline CSS below. -->
                <div class="fill" style="background-image:url('http://placehold.it/1900x1080&text=Slide Two');"></div>
                <div class="carousel-caption">
                    <h2>Invest diKoperasi</h2>
                </div>
            </div>
            <div class="item">
                <!-- Set the third background image using inline CSS below. -->
                <div class="fill" style="background-image:url('http://placehold.it/1900x1080&text=Slide Three');"></div>
                <div class="carousel-caption">
                    <h2>Dapatkan untung dari dagangan anda</h2>
                </div>
            </div>
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="icon-prev"></span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="icon-next"></span>
        </a>

    </header>

    <!-- Page Content -->
            <div class="container" style="padding-top: 60px;">
                        <form class="form-horizontal" id="form1" method="POST" action="${pageContext.request.contextPath}/simpan-supplier">
                <fieldset>

                    <legend>Supplier</legend>

                    <div class="form-group">
                        <label class="col-md-4 control-label" for="textinput">NIPS </label>  
                        <div class="col-md-4">
                            <input id="nama" name="nips" placeholder="NIPS" class="form-control input-md" type="text">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="textinput">Nama </label>  
                        <div class="col-md-4">
                            <input id="nama" name="nama" placeholder="Nama" class="form-control input-md" type="text">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="alamat">Alamat</label>  
                        <div class="col-md-4">
                            <input id="nama" name="alamat" placeholder="Alamat" class="form-control input-md" type="text">
                            </txtarea>
                            
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="radio">Jenkel</label>  
                        <div class="col-md-4">
                            <input name="jenkel" type="radio" value="laki-laki">Laki-Laki
                            <input name="jenkel" type="radio" value="perempuan">Perempuan
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="textinput">Tanggal Lahir</label>  
                        <div class="col-md-4">
                            <input id="nama" name="tgllahir" placeholder="Tanggal Lahir" class="form-control input-md" type="date">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="rowselect">Agama</label>  
                        <div class="col-md-4">
                            <select name="agama">
                                        <option value="-">PILIH-AGAMA</option>
                                        <option value="Islam">Islam</option>
                                        <option value="Katolik">Katolik</option>
                                        <option value="Protestan">Protestan</option>
                                        <option value="Budha">Budha</option>
                                        <option value="Hindu">Hindu</option>
                                        <option value="Konghuchu">Konghuchu</option>
                                    </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="rowselect">Telp</label>  
                        <div class="col-md-4">
                            <input id="nama" name="telp" placeholder="No Telp/HP" class="form-control input-md" type="text">
                        </div>
                    </div>
                        <div class="form-group">
                        <label class="col-md-4 control-label" for="singlebutton"></label>
                        <div class="col-md-4">
                            <button id="simpan" type="submit" name="simpan" class="btn btn-primary">Simpan</button>
                        </div>
                    </div>

                </fieldset>
            </form>
        </div>
        <!-- End of Container -->
        
        <div class="container">
            <table class="table table-hover table-striped">
                <thead>
                    <tr>
                        <th>NIPS</th>
                        <th>Nama</th>
                        <th>alamat</th>
                        <th>Jenkel</th>
                        <th>Tanggal lahir</th>
                        <th>Agama</th>
                        <th>No. Telp</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${ListSupplier}" var="supplier">
                        <tr>
                            <td>${supplier.nips}</td>
                            <td>${supplier.nama}</td>
                            <td>${supplier.alamat}</td>
                            <td>${supplier.jenkel}</td>
                            <td>${supplier.tgllahir}</td>
                            <td>${supplier.agama}</td>
                            <td>${supplier.telp}</td>
                            <td><a href='${pageContext.request.contextPath}/delete-supplier?nips="+${supplier.nips}+"'/>hapus</a></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; koperasikita.com</p>
                </div>
            </div>
            <!-- /.row -->
        </footer>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="${pageContext.request.contextPath}/assets/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>

    <!-- Script to Activate the Carousel -->
    <script>
    $('.carousel').carousel({
        interval: 5000 //changes the speed
    })
    </script>

</body>

</html>
