# Josh Sample
# Lab 2
# CSCI 3370
use strict;
use warnings;

# Get variables
print "Input current temperature: ";
my $temp = readline STDIN;
print "Input RH %: ";
my $rhp = readline STDIN;

# Remove newline
chomp ($temp);

# Data validation on temp
if ($temp < -50 or $temp > 150) {
   print "\n Invalid temperature value.\n";
}
# Data validation on rhp
elsif ($rhp < 0 or $rhp >100){
   #Error message
   print "\n Invalid RHPercentage value.\n";
}
# Print
else {
   print "\nCurrent Temperature: $temp degrees\nRH%: $rhp\n";
}