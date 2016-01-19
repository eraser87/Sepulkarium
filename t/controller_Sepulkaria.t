use strict;
use warnings;
use Test::More;


use Catalyst::Test 'Sepulkarium';
use Sepulkarium::Controller::Sepulkaria;

ok( request('/sepulkaria')->is_success, 'Request should succeed' );
done_testing();
