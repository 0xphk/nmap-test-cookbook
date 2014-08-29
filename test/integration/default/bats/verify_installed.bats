# test/integration/default/bats/verify_installed.bats

@test "nmap is installed and in the path" {
  which nmap
}

@test "nmap output file exists" {
  cat /var/www/nmap/index.html | grep "nmap" # this could be a more complex test
}