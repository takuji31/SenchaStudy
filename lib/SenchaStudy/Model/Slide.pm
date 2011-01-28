package  SenchaStudy::Model::Slide;
use strict;
use warnings;
use utf8;
use Data::Section::Simple;
use JSON::XS;
use Text::Xatena;
use Text::Xslate::Util;

sub new {
    my $class = shift;
    my $data  = Data::Section::Simple->new($class)->get_data_section;
    my $keys  = [ sort( keys %$data ) ];
    bless { data => $data, keys => $keys, pos => 0 }, $class;
}

sub get {
    my ( $self, $key ) = @_;
    return $self->{data}->{$key};
}

sub get_all {
    my $self = shift;
    my $pos  = $self->{pos};
    my $txn  = Text::Xatena->new;
    my @data = map {
        my $s = $self->{data}->{$_} || '';
        $s = $txn->format($s);
        $s =~ s/\n//g;
        $s = Text::Xslate::Util::mark_raw($s);
        $s;
    } @{ $self->{keys} };
    return \@data;
}

1;
__DATA__
@@ 0
*SenchaTouch
@@ 1
test1
@@ 2
test2
@@ 99
