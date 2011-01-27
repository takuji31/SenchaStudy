use SenchaStudy::Web;
use SenchaStudy::Container;
use Plack::Builder;

my $home = container('home');
builder {
    enable 'ReverseProxy';
    enable 'Static',
        path => qr{^/(sencha/|img/|js/|css/|favicon\.ico)},
        root => $home->file('assets/htdocs')->stringify;
    enable 'StackTrace';
    enable 'Session';
    SenchaStudy::Web->app;
};

