#!/usr/bin/env perl

use 5.010;
use Cwd;
use File::Find::Rule;
use File::Basename qw(basename);
use Data::Dump;

my $currentDir = getcwd;
my @fullPath = File::Find::Rule->file->name('*.pyc')->in($path);

print Dumper @fullPath;


# my @unneededFiles = glob("*~ *# *pyc");
# my $unneededFiles = @unneededFiles;
#
# if ($unneededFiles > 0) {
#     foreach my $file (@unneededFiles) {
#         unlink $file || warn "Could not unlink $file: $!";
#     }
# } else {
#     say "INFO: No extensions removed."
# }
