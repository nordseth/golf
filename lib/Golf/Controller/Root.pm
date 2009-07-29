package Golf::Controller::Root;

use strict;
use warnings;
use base 'Catalyst::Controller';

#
# Sets the actions in this controller to be registered with no prefix
# so they function identically to actions created in MyApp.pm
#
__PACKAGE__->config->{namespace} = '';

=head1 NAME

Golf::Controller::Root - Root Controller for Golf

=head1 DESCRIPTION

[enter your description here]

=head1 METHODS

=cut

=head2 default

=cut
sub begin : Private {
    my ( $self, $c ) = @_;
    
    $c->assets->include('static/css/base.css');
    $c->assets->include('static/js/jquery.js');
    $c->assets->include('static/js/jquery-ui.js');
    $c->assets->include('static/js/jquery.tablesorter.min.js');
    $c->assets->include('static/themes/blue/style.css');
    $c->assets->include('static/themes/smoothness/jquery-ui-1.7.1.custom.css');
    $c->assets->include('static/js/onload.js');
    
}
sub index : Private {
    my ( $self, $c ) = @_;

}

=head2 end

Attempt to render a view, if needed.

=cut 

sub end : ActionClass('RenderView') {}

=head1 AUTHOR

Andreas Marienborg

=head1 LICENSE

This library is free software, you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
