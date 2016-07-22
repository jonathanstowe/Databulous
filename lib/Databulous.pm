use v6.c;

class Databulous {
    has $!header;
    has $!rows;

    class Column {
        has Str $.name is required;
    }

    class Header {
        has Column @.columns;
    }



    class Row {
    }
    
    multi submethod BUILD(:@data!, :@header!, Bool :$strict) {
        my Column @columns;
        for @header -> $header {
            @columns.append: do given $header {
                when Str {
                    Column.new(name => $header);
                }
                when Column {
                    $header;
                }
            }
        }

        $!header = Header.new(:@columns);
    }

}
# vim: expandtab shiftwidth=4 ft=perl6
