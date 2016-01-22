use strict;
use warnings;
use Test::More;


use Catalyst::Test 'Sepulkarium';
use Sepulkarium::Controller::Sepulkariums;

ok( request('/sepulkariums')->is_success, 'Request should succeed' );
done_testing();
