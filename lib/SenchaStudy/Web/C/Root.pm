package  SenchaStudy::Web::C::Root;
use Chiffon::Core;
use Chiffon::Web::Controller;
use SenchaStudy::Container;

sub do_index {
    my ( $class, $c ) = @_;
    $c->stash->{body} = "Hello Chiffon World!";
}

1;

