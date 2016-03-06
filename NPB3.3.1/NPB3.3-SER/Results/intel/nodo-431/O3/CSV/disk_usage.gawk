BEGIN { FS=","; }
NR>=8 { print $7","$8 }
END { }
