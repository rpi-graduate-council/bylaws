my $common_latexmkrc = './union-docs-common/.latexmkrc';

do $common_latexmkrc
  or die "Could not load $common_latexmkrc: $@ $!";
