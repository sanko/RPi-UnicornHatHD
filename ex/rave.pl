use strict;
use warnings;
use RPi::UnicornHatHD;

# Example taken from synopsis

my $display = RPi::UnicornHatHD->new();

while(1) {
    $display->set_all(sprintf '#%06X', int rand(hex 'FFFFFF'));
    for (0..100) {
        $display->brightness($_ /100);
        $display->show();
    }
    for (reverse 0..100) {
        $display->brightness($_ /100);
        $display->show();
    }
}