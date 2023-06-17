#!/usr/bin/perl

use strict;
use warnings;

$ENV{'ORACLE_HOME'} = '/usr/lib/oracle/21/client64';
$ENV{'ORACLE_SID'} = 'csdbora';

# Get the submitted form data from the environment variable
my $query_string = $ENV{'QUERY_STRING'};
my %params = map { split(/=/, $_) } split(/&/, $query_string);

# Get the values submitted by the form
my $e_name = $params{'empname'};
my $e_sal = $params{'salary'};

my $search_val1;
my $search_val2;
if(defined($e_name))
{
    $search_val1='name';
    $search_val2=$e_name;
}
else
{
    $search_val1='salary';
    $search_val2=$e_sal;
}

print "Content-type: text/html\n\n";

print <<END_HTML;
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Question-2</title>
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css'
          integrity='sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T' crossorigin='anonymous'>
    <script src='https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js'></script>
    <style>
      body {
        font-family: verdona;
        background-color: aqua;
        margin-left: 25%;
        margin-right: 25%;
      }

      .form-group {
        margin-bottom: 20px;
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

<form action="ques2.cgi" method="GET">

<input type="radio" name="val" value="name" onclick="showDiv()"> Search by Employee name<br>
<input type="radio" name="val" value="salary" onclick="showDiv()"> Search by Salary<br>

<div id="using_name">
    <br>
    <h3>Enter the Employee full name or part of the name:</h3>

        <input type="text" id="empname" value="" class="form-control" style="width:250px" name="empname">
        <br>
        <input type="submit" class="btn btn-primary" value="Search" id="name">

</div>

<div id="using_salary" style="display:none">
    <br>
    <h4>Enter the Employee salary:</h4>
        <input type="number" id="salary" value="" class="form-control" style="width:250px" name="salary">
        <br>
        <input type="submit" style="margin-top: 30px; width: 100px"; class="btn btn-primary" value="Submit" id="salary">
</div>
  </form>
<script>
        function showDiv() {
            var selectedValue = document.querySelector('input[name="val"]:checked').value;

            if (selectedValue === 'name') {
                document.getElementById('using_name').style.display = 'block';
                document.getElementById('using_salary').style.display = 'none';
            } else if (selectedValue === 'salary') {
                document.getElementById('using_salary').style.display = 'block';
                document.getElementById('using_name').style.display = 'none';
            } else {
                document.getElementById('using_name').style.display = 'none';
                document.getElementById('using_salary').style.display = 'none';
            }
        }
    </script>
</body>

</html>

EOF

# Generate the response

if ($e_name) {
    my $command = '/home/jrm512/public_html/demo/proc/unix-version/c++/sample3';
    my $output = `$command $search_val1 $search_val2`;
    my @rows = split /\n/, $output;
    if (@rows) {
        print "<h4>Displaying results for Employee Name Search - $e_name</h4>";
        print "<table>\n<tr><th>Employee Name</th><th>Department Name</th><th>Salary</th><th>Commission</th></tr>\n";
        for my $row (@rows) {
            my ($name, $dept, $salary, $commission) = split /,/, $row;
            print "<tr><td>$name</td><td>$dept</td><td>\$$salary</td><td>\$$commission</td></tr>\n";
        }
        print "</table>\n";
    } else {
        print "<p>No results found for Employee Name Search - $e_name</p>";
    }
} elsif ($e_sal) {
    my $command = '/home/jrm512/public_html/demo/proc/unix-version/c++/sample3';
    my $output = `$command $search_val1 $search_val2`;
    my @cols = split /\n/, $output;
    if (@cols) {
        print "<h4>Displaying results for Employee Salary Search - $e_sal</h4>";
        print "<table>\n<tr><th>Employee Name</th><th>Department Name</th><th>Salary</th></tr>\n";

        print "<tbody>";
        for (my $i = 0; $i < scalar(@cols); $i++) {
            my @data = split(/,/, @cols[$i]);
            print "<tr style='border: 1px solid #ddd;'>";
            print "<td style='padding: 8px; border: 1px solid #ddd;'>@data[0]</td>";
            print "<td style='padding: 8px; border: 1px solid #ddd;'>@data[1]</td>";
            print "<td style='padding: 8px; border: 1px solid #ddd;'>@data[2]</td>";
            print "</tr>";
        }
        print "</tbody>";
        print "</table>";
    }
    else {
        print "<p>No results found for Employee Salary Search - $e_sal</p>";
    }
} else {
    print "<p>Please select and submit the required data.</p>";
}
print "</body></html>";