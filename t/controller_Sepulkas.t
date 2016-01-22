use strict;
use warnings;
use Test::More;


use Catalyst::Test 'Sepulkarium';
use Sepulkarium::Controller::Sepulkas;

ok( request('/sepulkas')->is_success, 'Request should succeed' );
done_testing();
