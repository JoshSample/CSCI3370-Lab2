# Josh Sample
# Lab 2
# CSCI 3370
use strict;
use warnings;

# Get first name
print "What is your first name? ";
my $fname = readline STDIN;

# Get last name
print "What is your last name? ";
my $lname = readline STDIN;

# Get home town
print "Where is your home town? ";
my $town = readline STDIN;

# Get temperature
print "What's the current temperature? ";
my $temp = readline STDIN;

# Print inputs
chomp($fname);
print "\nYour first name: ", $fname, "\n";
print "Your last name: ", $lname;
print "Your home town: ", $town;
print "The temperature: ", $temp;