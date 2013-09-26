my $base=$ARGV[0];
if (!-d $base){
    die "Usage: $0 INSTALL_BASE_DIR\n";
}

my @alldeflib=glob("deflib/*.def");
open Out, ">>Makefile" or die;
print Out "\n";
print Out "install: out/make_parser.pl ", join(' ', @alldeflib), "\n";
print Out "\tinstall -m 0755 out/make_parser.pl $base/bin\n";
print Out "\tmkdir -p $base/lib/MyDef/DefParser\n";
foreach my $lib (@alldeflib){
    print Out "\tinstall -m 0744 $lib $base/lib/MyDef/DefParser\n";
}

print Out "\n";
print Out ".PHONY: install\n";
