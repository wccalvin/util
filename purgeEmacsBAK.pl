#!/usr/bin/env perl

use strict;
use warnings;
use 5.010;
use Cwd;

my $currentDir = getcwd;
chdir $currentDir;
my @unneededFiles = glob("*~ *#");

foreach my $file (@unneededFiles) {
    system("rm -rf $file");
}