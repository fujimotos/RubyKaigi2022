sub ltsv {
    my ($line) =  @_;
    my %data;
    chomp($line);
    foreach (split("\t", $line))
    {
        my $i = index($_, ":");
        $data{substr($_, 0, $i)} = substr($_, $i+1);
    }
    \%data;
}

while ($line = <STDIN>) {
    $record = ltsv($line);
}

foreach (keys %{$record}) {
    print $_, " ", $record->{$_}, "\n"
}
