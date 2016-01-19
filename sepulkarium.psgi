use strict;
use warnings;

use Sepulkarium;

my $app = Sepulkarium->apply_default_middlewares(Sepulkarium->psgi_app);
$app;

