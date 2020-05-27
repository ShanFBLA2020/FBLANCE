<!-- 
	Program/Web Page name	: app.php
	Function		: This page is to view all the application functionality and is read only
	Modification History	: 
		May 27, 2020 : Initial Development
-->
<?php
// Include config file
require_once "config.php";
?>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../../../favicon.ico">

    <title>CASP - View application functionality</title>

    <!-- Bootstrap core CSS -->
    <link href="bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="dashboard.css" rel="stylesheet">
  </head>

  <body>
    <nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0">
      <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">CSAP.ORG</a>
      <input class="form-control form-control-dark w-100" type="text" placeholder="Search" aria-label="Search">
      <ul class="navbar-nav px-3">
        <li class="nav-item text-nowrap">
          <a class="nav-link" href="../logout/index.php">Sign out</a>
        </li>
      </ul>
    </nav>

<?php include "content1.html" ?>

<main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">

<h2><i class="fas fa-trophy"></i>Application Overview and Functionality</h2>
<h6>
Its an application to track hours for the Community Service Awards program for chapter members. The program include following:
<ul>
<li>Track student name, student number, and grade in school with ability to enter/view/edit.</li>
<li>Track the total of community service hours per student with ability to enter/view/edit.</li>
<li>Track the Community Service Award program category per student with the ability to enter/view/edit.</li>
<li>Generate or print weekly/monthly report to show total number of community service hours per student.</li>
<li>Generate or print weekly/monthly report to show Community Service Award program categories and total hours.</li>
<li>Data stored persistently. Storage is in a relational database MySQL</li>
<li>Data validation happening for all data entry section highlighting error messages wherever it is possible</li>
<li>Responsive webpage using bootstrap framework providing great use experience both Mobile and Non Mobile devices</li>
<li>Easy maintenance using web interface for all the Student, Service Award and Award Criteria</li>
<li>Login management functionalities including User Registration, Login and Logout pages </li>
<li>Database Management using phpMyAdmin with easy interfaces to add, modify and delete functionalities across database/tables</li>
<li>Custimizable reporting - use JavaScript framework easily handle multiple parameters including line and other chart functionality</li>
<li>Template exist for all web page development helping use to quickly scale up in case of a need</li>
<li>Light weight - Page load quickly and performance is well managed with simple coding and light weight icons</li>
<li>Documentation - All pages are well documented for each maintenance</li>
<li>FAQs - Availability of frequently asked questions to quickly setup during first time use</li>
<li>Security - All tools and database can scale for enterprise level utilization based on quality of hosting services</li>
<li>Cloud Deployment - Application is compatible for any cloud deployment</li>
</ul>
</br>
</ul>
</h6>
</main>

   

      </div>
    </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="jquery-slim.min.js"><\/script>')</script>
    <script src="popper.min.js"></script>
    <script src="bootstrap.min.js"></script>

    <!-- Icons -->
    <script src="https://unpkg.com/feather-icons/dist/feather.min.js"></script>
    <script>
      feather.replace()
    </script>


    <!-- Graphs -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.min.js"></script>
  </body>
</html>
