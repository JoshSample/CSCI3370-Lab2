# Josh Sample
# Lab 2
# CSCI 3370
use strict;
use warnings;

# Creating list of liked and disliked foods
my @likefoods = ("Hamburgers", "Apples", "Cookies", "Spaghetti", "Fried Rice", "Peanut Butter");
my @dislikefoods = ("Ketchup", "Turkey", "Celery", "Cilantro", "Candy Corn", "Mayonnaise");

# Print first 3 elements out of favorites
my $len = @likefoods;
for (my $b = 0; $b < $len / 2; $b = $b + 1) {
    print "$likefoods[$b]";
    if ($likefoods[$b] eq "Hamburgers") {
        print ": They have good flavor, and are a comfort food.\n";
    } elsif ($likefoods[$b] eq "Apples") {
        print ": My favorite fruit, I love the flavor\n";
    } else {
        print ": I have a massive sweet tooth and cookies are my favorite sweet\n";
    }
}

# Move last element of array to first
my $temp = $dislikefoods[$len-1];
for (my $b = $len-1; $b > 0; $b = $b - 1) {
    $dislikefoods[$b] = $dislikefoods[$b-1];
}
$dislikefoods[0] = $temp;

# Printing out first and last elements of each array
print "First and last elements of 1st array: ";
print "$likefoods[0], ";
print "$likefoods[$len-1]\n";
print "First and last elements of 2nd array: ";
print "$dislikefoods[0], ";
print "$dislikefoods[$len-1]\n";

# Getting user input for disliked food and append it
print "Enter a food you dislike. ";
my $extrafood = readline STDIN;
chomp($extrafood);
push (@dislikefoods, $extrafood);
print "Last 2 elements of disliked food array: ";
print "$dislikefoods[-1], ";
print "$dislikefoods[-2]";