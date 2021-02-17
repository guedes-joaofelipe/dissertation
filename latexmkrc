system("makeindex -s coppe.ist -o output.los output.syx");
system("makeindex -s coppe.ist -o output.lab output.abx");

add_cus_dep("syx", "los", 0 , "coppelos");
sub coppelos {
  system("makeindex -s coppe.ist -o $_[0].los $_[0].syx");
}
add_cus_dep("abx", "lab", 0 , "coppelab");
sub coppelab {
  system("makeindex -s coppe.ist -o $_[0].lab $_[0].abx");
}