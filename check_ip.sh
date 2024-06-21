#!/bin/bash

# Überprüfe, ob die IP-Adresse über Tor geleitet wird
tor_check=$(curl -s https://check.torproject.org/ | grep -q "Congratulations" && echo "Yes" || echo "No")

# Ausgabe von "Tor: Yes" oder "Tor: No" je nach Ergebnis der Überprüfung
echo "Tor: $tor_check"
