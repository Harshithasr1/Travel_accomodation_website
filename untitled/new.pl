#!/usr/bin/perl

use strict;
use warnings;

# Set environment variables
$ENV{'ORACLE_HOME'} = '/usr/lib/oracle/21/client64';
$ENV{'ORACLE_SID'} = 'csdbora';

# Get the submitted form data from the environment variable
my $query_string = $ENV{'QUERY_STRING'};
my %params;
foreach my $pair (split /&/, $query_string) {
    my ($name, $value) = split /=/, $pair;
    $params{$name} = $value;
}

# Determine the search type and search term
my ($search_type, $search_term);
if (defined $params{'empname'}) {
    $search_type = 'n';
    $search_term = $params{'empname'};
} elsif (defined $params{'salary'}) {
    $search_type = 's';
    $search_term = $params{'salary'};
}

# Generate the response
print "Content-type: text/html\n\n";
print <<END_HTML;
<html>
<head>
    <title>Question-2</title>
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css'
          integrity='sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T' crossorigin='anonymous'>
    <script src='https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js'></script>
    <style>
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

<h3>Assignment-2</h3>
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
END_HTML

if (defined $search_type) {
    # Run the database query and display the results
    my $command = '/home/jrm512/public_html/demo/proc/unix-version/c++/sample3';
    my $output = `$command $search_type $search_term`;
    my @rows = split /\n/, $output;

    if (@rows) {
        my ($search_label, $search_value) = $search_type eq 'n'
            ? ('Employee Name', $search_term) : ('Employee Salary', '$' . $search_term);

        print "<h4>Displaying results for '$search_label' Search - $search_value</h4>";
        print "<table>\n<tr><th>Employee Name</th><th>Department Name</th><th>Salary</th><th>Commission</th></tr>\n";
        for my $row (@rows) {
            my ($name, $dept, $salary, $commission) = split /,/, $row;
            print "<tr><td>$name</td><td>$dept</td><td>\$$salary</td><td>\$$commission</td></tr>\n";
        }
        print "</table>\n";
    }
    elsif(@rows){
        my ($search_label, $search_value) = $search_type eq 's'
            ? ('Employee Name', $search_term) : ('Employee Salary', '$' . $search_term);

        print "<h4>Displaying results for '$search_label' Search - $search_value</h4>";
        print "<table>\n<tr><th>Employee Name</th><th>Department Name</th><th>Salary</th></tr>\n";
        for my $row (@rows) {
            my ($name, $dept, $salary) = split /,/, $row;
            print "<tr><td>$name</td><td>$dept</td><td>\$$salary</td></tr>\n";
        }
        print "</table>\n";
    }
    else {
        print "<p>No results found for '$search_type' search type of: $search_term</p>";
    }
} else {
    print "<p>No data submitted.</p>";
}

