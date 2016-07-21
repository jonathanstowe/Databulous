use v6.c;

class Databulous {
    has $!header;
    has $!rows;

    multi submethod BUILD(:@data!, :@header!, Bool :$strict) {
    }

    class Header {
    }

    class Row {
    }


}
# vim: expandtab shiftwidth=4 ft=perl6
