package  SenchaStudy::Container;
use Chiffon::Core;
use Chiffon::Container -base;
use SenchaStudy::Model::DB;

register 'db' => sub {
    my $self = shift;
    my $conf = $self->get('conf');
    SenchaStudy::Model::DB->new($conf->{datasource}->{master});
};

1;

