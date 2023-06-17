#!/usr/bin/perl

use strict;
use warnings;

# Set environment variables for Oracle
$ENV{'ORACLE_HOME'} = '/usr/lib/oracle/21/client64';
$ENV{'ORACLE_SID'} = 'csdbora';

# Get the submitted form data from the environment variable
my $query_string = $ENV{'QUERY_STRING'};
my %params = map { split(/=/, $_) } split(/&/, $query_string);

# Get the values submitted by the form
my $name = $params{'empname'};
my $salary = $params{'salary'};

# Determine the search type and value
my ($search_type, $search_value);
if ($name) {
    $search_type = 'n';
    $search_value = $name;
} elsif ($salary) {
    $search_type = 's';
    $search_value = $salary;
}

# Generate the response
print "Content-type: text/html\n\n";
print <<EOF;
<html>
<head>
    <meta charset="utf-8">
    <title>Question-2</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src='https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js'></script>
    <style>
        body {
            margin: 30px;
        }
        .form-group {
            margin-bottom: 20px;
        }
        table, th, td {
            border: 1px solid black;
        }
        .hidden {
            display: none;
        }
    </style>
</head>
<body>
<h3>Assignment-2</h3>
<input type="radio" name="val" value="name" onclick="showDiv()"> Find by Employee name<br>
<input type="radio" name="val" value="salary" onclick="showDiv()"> Find by Salary<br>


<div id="using_name">
    <br>
    <h6>Enter the Employee full name or part of the name:</h6>
    <form action="ques2.cgi" method="GET">
        <input type="text" id="empname" value="" class="form-control" style="width:250px" name="empname">
        <br>
        <input type="submit" class="btn btn-primary" value="Submit" id="name">
    </form>
</div>
<div id="using_salary">
    <br>
    <h6>Enter the Employee salary:</h6>

    <form action="ques2.cgi" method="GET">
        <input type="number" id="salary" value="" class="form-control" style="width:250px" name="salary">
        <br>
        <input type="submit" class="btn btn-primary" value="Submit" id="salary">
</div>


</form>
<script>
      function showDiv() {
        var selectedValue = document.querySelector('input[name="val"]:checked').value;
        if (selectedValue === 'name') {
          document.getElementById('using_name').style.display = 'block';
        } else {
          document.getElementById('using_name').style.display = 'none';
        }
        if (selectedValue === 'salary') {
          document.getElementById('using_salary').style.display = 'block';
        } else {
          document.getElementById('using_salary').style.display = 'none';
        }

      }
    </script>
</body>
</html>
EOF

if ($search_value) {
    my $command = '/home/jrm512/public_html/demo/proc/unix-version/c++/sample3';
    my $output = `$command $search_type $search_value`;
    my @rows = split(/\n/, $output);
    my @header = split(/,/, shift(@rows));
    if ($search_type eq 'n') {
        print "<h4>Displaying results for Employee Name Search - $search_value</h4>";
        print "<table><tr><th>Employee Name</th><th>Department Name</th><th>Salary</th><th>Commission</th>";
        foreach my $col (@header) {
            print "<th>$col</th>";
        }
        print "</tr></table>";

        foreach my $row (@rows) {
            my @fields = split(/,/, $row);
            print "<tr>";
            foreach my $field (@fields) {
                print "<td>$field</td>";
            }
            print "</tr>";
        }
        print "</table>";
    } elsif ($search_type eq 's') {
        print "<h4>Displaying results for Employee Salary Search - $search_value</h4>";
        print "<table><tr><th>Employee Name</th><th>Department Name</th><th>Salary</th>";
        for (my $i = 0; $i < 3; $i++) {
            print "<th>@header[$i]</th>";
        }
        print "</tr></table>";

        foreach my $row (@rows) {
            my ($name, $dept, $salary) = split(/,/, $row);
            print "<tr>";
            print "<td>$name</td>";
            print "<td>$dept</td>";
            print "<td>$salary</td>";
            print "</tr>";
        }
        print "</table>";
    }
} else {
    print "<p>No data submitted.</p>";
}

