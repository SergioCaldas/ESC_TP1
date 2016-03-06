BEGIN { FS=","; }
NR>=8 { print $1","$2","$3","$4","$5}
END { }
