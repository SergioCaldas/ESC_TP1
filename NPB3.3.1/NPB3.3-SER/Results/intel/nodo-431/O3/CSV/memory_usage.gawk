BEGIN { FS=","; }
NR>=8 { print $9","$12 }
END { }
