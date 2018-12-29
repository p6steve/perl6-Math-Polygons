#!/usr/bin/env perl6

use lib '../lib';
use Math::Polygons;
use Math::Polygons::Drawing;

my $rectangle = Rectangle.new( 
    origin => Point.new(20, 20),
    width => 120, 
    height => 80 
);

my $square = Square.new( 
    origin => Point.new(160, 20),
    side => 100 
);

my \A = Point.new(20, 260);
my \B = Point.new(30, 160);
my \C = Point.new(120, 145);
my \D = Point.new(125, 250);
my $quadrilateral = Quadrilateral.new(
    A, B, C, D, 
);

my $apex = Point.new(x => 200, y => 160),
my $triangle = Triangle.new( apex => $apex, side => 100 );

my $drawing = Drawing.new( elements => [ 
    $quadrilateral,
    $rectangle, 
    $square, 
    $triangle,
]);
$drawing.serialize.say;
