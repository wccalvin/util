#!/usr/bin/env perl

use strict;
use warnings;
use 5.010;
use Cwd;

my $currentDir = getcwd;
chdir $currentDir;
my @unneededFiles = glob("*~ *# *pyc");
my $unneededFiles = @unneededFiles;

if ($unneededFiles > 0) {
    foreach my $file (@unneededFiles) {
        unlink $file || warn "Could not unlink $file: $!";
    }
} else {
    say "INFO: No extensions removed."
}

