<!doctype html>

<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="">
<!--<![endif]-->

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Laravel CRUD</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="#">
    <meta name="author" content="#">

    <link rel="apple-touch-icon" href="#">
    <style>
        body {
            padding-top: 50px;
            padding-bottom: 20px;
        }
    </style>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

    <! -- WE ASSUME YOU ARE USING A main.css FOR CSS CUSTOMIZATION -->
    <!-- link rel="stylesheet" href="./css/main.css"> -->
    <! -- DOWNLOAD LAST VERSION IN http://modernizr.com/ -->
    <!-- script src="//cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"></script> -->
    
    <script>
        
        function deleteAlert(){
            return confirm('Are you sure to delete?');
        }
     
    </script>
    
</head>

<body>

    <!--[if IE]>
        <script src="https://cdn.jsdelivr.net/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://cdn.jsdelivr.net/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Start coding here -->
    
    <div class="container">
    
    <div class="navbar">
	<a class="navbar-brand" href="{{ URL::to('/') }}">Laravel CRUD</a>
	<ul class="nav navbar-nav">
		<li class="active">
			<a href="{{ URL::to('/') }}">Insert</a>
		</li>
		<li>
			<a href="{{ URL::to('/view') }}">View</a>
		</li>
	</ul>
</div>