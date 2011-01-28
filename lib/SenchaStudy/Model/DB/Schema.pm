package  SenchaStudy::Model::DB::Schema;
use strict;
use warnings;
use utf8;
use DBIx::Skinny::Schema;

install_table conversation => schema {
    pk 'id';
    columns qw/id body/;
};

install_utf8_columns qw/body/;

1;
