package  SenchaStudy::Web::C::Root;
use Chiffon::Core;
use Chiffon::Web::Controller;
use SenchaStudy::Container;
use SenchaStudy::Model::Slide;

sub do_index {
    my ( $class, $c ) = @_;
}

sub do_slide {
    my ( $class, $c ) = @_;
}

sub do_test{
    my ( $class, $c ) = @_;
    my $con = container('db')->search(
        'conversation',
        {},
        {
            order_by => { id => 'asc' }
        },
    );
    $c->stash->{iter} = $con;
}

sub do_slide_list {
    my ( $class, $c ) = @_;
    $c->stash->{data} = SenchaStudy::Model::Slide->new;
    $c->view->render($c);
    $c->res->headers(['Content-Type' => 'text/javascript']);
    detach;
}

1;

