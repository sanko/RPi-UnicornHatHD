# NAME

RPi::UnicornHatHD - It's new $module

# SYNOPSIS

    use RPi::UnicornHatHD;

# DESCRIPTION

Pimoroni's Unicorn HAT HD crams 256 RGB LEDs, in a 16x16 matrix, onto a single HAT. Use it for scrolling news or stock quotes. Mount it somewhere as a mood light. Build a binary clock. Uh. I don't know, you'll think of something.

# METHODS

Use these to make pretty pictures.

## `new()`

        $display = RPi::UnicornHatHD->new();

Creates a new object representing your Unicorn Hat HD. Obviously.

## `brightness($b)`

        $display->brightness(.25); # For tinkering at 1a

Set the display brightness between `0.0` and `1.0`. The default is `0.5`.

## `clear()`

        $display->clear;

Clears the display matrix.

This does not clear the display; it simply resets the 'canvas' for you.

## `get_pixel($x, $y)`

        my ($r, $g, $b) = $display->get_pixel(10, 15);

Returns the color this pixel will display.

## `off()`

        $display->off;

Clears the display matrix and immediately updates the Unicorn Hat HD.

This turns off all the pixels.

## `rotation($r)`

        $display->rotation(180);

Set the display rotation in degrees. Actual rotation will be snapped to the
nearest 90 degrees.

## `set_all($r, $g, $b)`

        $display->set_all(0xFF, 0, 0);
        $display->set_all('#FF0000');

Turns the entire display a single color.

Either...

        $r = Amount of red from 0 to 255
        $g = Amount of green from 0 to 255
        $b = Amount of blue from 0 to 255

...or...

        $h = Hex triplet from #000000 to #FFFFFF

## `set_pixel($x, $y, $r, $g, $b)`

        for my $x (1..10) {
                $display->set_pixel($x, 10, 1, 1, 1);
        }
        $display->set_pixel(0, 0, '#FFF000');

Set a single pixel to RGB color.

        $x = Horizontal position from 0 to 15
        $y = Vertical position from 0 to 15

...and either...

        $r = Amount of red from 0 to 255
        $g = Amount of green from 0 to 255
        $b = Amount of blue from 0 to 255

...or...

        $h = Hex triplet from #000000 to #FFFFFF

## `show()`

        $display->show;

Outputs the contents of the matrix buffer to your Unicorn HAT HD.

# SEE ALSO

- Buy one: http://shop.pimoroni.com/products/unicorn-hat-hd
- GPIO Pinout: http://pinout.xyz/pinout/unicorn\_hat\_hd
- Github: https://github.com/sanko/RPi-UnicornHatHD

# LICENSE

Copyright (C) Sanko Robinson.

This library is free software; you can redistribute it and/or modify
it under the terms of the Artistic License 2.

# AUTHOR

Sanko Robinson <sanko@cpan.org>
