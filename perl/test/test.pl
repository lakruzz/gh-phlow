#!/usr/bin/perl -w

# assume these two lines are in all subsequent examples
use strict;

use File::Basename;
use lib dirname(__FILE__).'/..';
require 'git-phlow';

use Test::More;

my $branch = `git phlow defaultbranch`;
chomp($branch);
is ($branch, 'master', 'checking branch');

done_testing();

sub setup(){

}

sub tear_down(){}
