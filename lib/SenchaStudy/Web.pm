package  SenchaStudy::Web;
use Chiffon::Core;
use Chiffon::View::Xslate;
use SenchaStudy::Web::Context;
use SenchaStudy::Web::Request;
use SenchaStudy::Web::Response;
use SenchaStudy::Web::Dispatcher;
use SenchaStudy::Container;
use parent qw/ Chiffon::Web /;

__PACKAGE__->used_modules({
    container  => 'SenchaStudy::Container',
    context    => 'SenchaStudy::Web::Context',
    request    => 'SenchaStudy::Web::Request',
    response   => 'SenchaStudy::Web::Response',
    dispatcher => 'SenchaStudy::Web::Dispatcher',
    view       => 'Chiffon::View::Xslate',
});

1;

