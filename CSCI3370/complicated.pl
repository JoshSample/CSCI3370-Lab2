# Josh Sample
# Lab 2
# CSCI 3370
use strict;
use warnings;

# Merge sort algorithm in Perl

# Defines subroutine
sub merge_sort {
    # copies list passed in
    my @x = @_;
    # Recursive base case, returns when sorted
    return @x if @x < 2;
    my $m = int @x / 2;
    # Recursive variables
    my @a = merge_sort(@x[0 .. $m - 1]);
    my @b = merge_sort(@x[$m .. $#x]);
    # For every element
    for (@x) {
        # : and ? are if else statements
        # These get shifted for merge
        $_ = !@a            ? shift @b
           : !@b            ? shift @a
           : $a[0] <= $b[0] ? shift @a
           :                  shift @b;
    }
    # return statement
    @x;
}
 
my @a = (4, 65, 2, -31, 0, 99, 83, 782, 1);
@a = merge_sort @a;
print "@a\n";