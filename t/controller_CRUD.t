use strict;
use warnings;
use Test::More;


use Catalyst::Test 'Sepulkarium';
use Sepulkarium::Controller::CRUD;

ok( request('/crud')->is_success, 'Request should succeed' );
done_testing();
