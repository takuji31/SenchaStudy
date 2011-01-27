use Chiffon::Core;
use SenchaStudy::Container;
use Path::Class;

my $home = container('home');
return +{
    common => {
        app_name => 'sencha_study',
        view => {
            'Chiffon::View::Xslate' => +{
                path   => $home->file('assets/template')->stringify,
                cache     => 1,
                cache_dir => '/tmp/sencha_study',
                syntax    => 'Kolon',
                type      => 'html',
                suffix    => '.html',
            },
        },
        datasource => +{
            master => +{
                dsn => 'dbi:mysql:sencha_study;user=root',
            },
        },
        hostname => +{
        },
        plugins => +{
        },
    },
    dev     => {
        datasource => +{
            master => +{
                dsn => 'dbi:mysql:sencha_study;user=root',
            },
        },
    },
    production => {
        datasource => +{
            master => +{
                dsn => 'dbi:mysql:sencha_study;user=root',
            },
        },
    },
};


