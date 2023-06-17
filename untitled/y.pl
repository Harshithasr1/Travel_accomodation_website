#!/usr/bin/perl

use strict;
use warnings;

# Set environment variables for Oracle client
$ENV{'ORACLE_HOME'} = '/usr/lib/oracle/21/client64';
$ENV{'ORACLE_SID'} = 'csdbora';

# Get form data from environment variable
my $query_string = $ENV{'QUERY_STRING'};
my %params;
foreach my $pair (split /&/, $query_string) {
    my ($name, $value) = split /=/, $pair;
    $params{$name} = $value;
}

# Extract form values
my $empName = $params{'empname'};
my $salary = $params{'salary'};

my $argValue1;
my $argValue2;
if(defined($empName))
{
    $argValue1='name';
    $argValue2=$empName;
}
else
{
    $argValue1='salary';
    $argValue2=$salary;
}

# Generate HTML response
print "Content-type: text/html\n\n";

print <<END_HTML;
<html>
<head>
    <title>Question-2</title>
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css'
          integrity='sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T' crossorigin='anonymous'>
    <script src='https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js'></script>
    <style>
	body {
        font-family: verdona;
        margin-left: 25%;
        margin-right: 25%;
      }
        table {
            border-collapse: collapse;
            margin-top: 20px;
            margin-bottom: 20px;
        }
        th, td {
            border: 1px solid black;
            padding: 5px;
            text-align: center;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>

<h1> Assignment-2</h1>
<h2>Search Employee details</h2>

<input type="radio" name="val" value="name" onclick="showDiv()"> Search by Employee name<br>
<input type="radio" name="val" value="salary" onclick="showDiv()"> Search by Salary<br>

<div id="using_name">
    <br>
    <h6>Enter the Employee full name or part of the name:</h6>
<form action="ques2.cgi" method="GET">
        <input type="text" id="empname" value="" class="form-control" style="width:250px" name="empname">
        <br>
        <input type="submit" class="btn btn-primary" value="Search" id="name">
   </form>
</div>
<div id="using_salary">
    <br>
    <h6>Enter the Employee salary:</h6>
       <form action="ques2.cgi" method="GET">
	<input type="number" id="salary" value="" class="form-control" style="width:250px" name="salary">
        <br>
        <input type="submit" class="btn btn-primary" value="Search" id="salary">
</form>
</div>

<script>
      function showDiv() {
        var selectedValue = document.querySelector('input[name="val"]:checked').value;

        if (selectedValue === 'name') {
                document.getElementById('using_name').style.display = 'block';
                document.getElementById('using_salary').style.display = 'none';
            }
	else if (selectedValue === 'salary') {
                document.getElementById('using_salary').style.display = 'block';
                document.getElementById('using_name').style.display = 'none';
            }
	else {
                document.getElementById('using_name').style.display = 'none';
                document.getElementById('using_salary').style.display = 'none';
            }
      }
    </script>
</body>
</html>
END_HTML

if ($empName) {
    my $command = '/home/jrm512/public_html/demo/proc/unix-version/c++/sample3';
    my $d = `$command $argValue1 $argValue2`;
    if ($d) {
        my @array = split(/,/, $d);
        print "<h4>Displaying results for Employee Name Search - $empName</h4>";
        print "<table style='border-collapse: collapse; width: 100%;'>";
        print "<thead>";
        print "<tr style='background-color: #f2f2f2;'>";
        print "<th style='padding: 8px; border: 1px solid #ddd;'>Employee Name</th>";
        print "<th style='padding: 8px; border: 1px solid #ddd;'>Department Name</th>";
        print "<th style='padding: 8px; border: 1px solid #ddd;'>Salary</th>";
        print "<th style='padding: 8px; border: 1px solid #ddd;'>Commission</th>";
        print "</tr>";
        print "</thead>";
        print "<tbody>";
        for (my $i = 0; $i < scalar(@array); $i += 4) {
            my $v1 = @array[$i];
            my $v2 = @array[$i+1];
            my $v3 = @array[$i+2];
            my $v4 = @array[$i+3];
            print "<tr style='border: 1px solid #ddd;'>";
            print "<td style='padding: 8px; border: 1px solid #ddd;'>$v1</td>";
            print "<td style='padding: 8px; border: 1px solid #ddd;'>$v2</td>";
            print "<td style='padding: 8px; border: 1px solid #ddd;'>$v3</td>";
            print "<td style='padding: 8px; border: 1px solid #ddd;'>$v4</td>";
            print "</tr>";
        }
        print "</tbody>";
        print "</table>";

    } else {
        print "<p>No results found for Employee Name Search - $empName</p>";
    }
}
elsif ($salary) {
    my $command = '/home/jrm512/public_html/demo/proc/unix-version/c++/sample3';
    my $d = `$command $argValue1 $argValue2`;
    if ($d) {
        my @array2 = split(/\n/, $d);
        print "<h4 style='margin-top: 20px;'>Displaying results for Employee Salary Search - $salary</h4>";
        print "<table style='border-collapse: collapse; width: 100%;'>";
        print "<thead>";
        print "<tr style='background-color: #f2f2f2;'>";
        print "<th style='padding: 8px; border: 1px solid #ddd;'>Employee Name</th>";
        print "<th style='padding: 8px; border: 1px solid #ddd;'>Department Name</th>";
        print "<th style='padding: 8px; border: 1px solid #ddd;'>Salary</th>";
        print "</tr>";
        print "</thead>";
        print "<tbody>";
        for (my $i = 0; $i < scalar(@array2); $i++) {
            my @array3 = split(/,/, @array2[$i]);
            print "<tr style='border: 1px solid #ddd;'>";
            print "<td style='padding: 8px; border: 1px solid #ddd;'>@array3[0]</td>";
            print "<td style='padding: 8px; border: 1px solid #ddd;'>@array3[1]</td>";
            print "<td style='padding: 8px; border: 1px solid #ddd;'>@array3[2]</td>";
            print "</tr>";
        }
        print "</tbody>";
        print "</table>";
    }
    else {
        print "<p>No results found for Employee Salary Search - $salary</p>";
    }
} else {
    print "<p>Please select and submit the required data.</p>";
}