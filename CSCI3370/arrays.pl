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