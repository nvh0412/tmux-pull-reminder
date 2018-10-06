#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

color_buying_pressure_default="#[fg=green]"
color_selling_pressure_default="#[fg=red]"

print_pull_reminders() {
  reponse=$(curl $GITHUB_API_URL)
  echo ${reponse} | jq '.[0]'
}

main() {
  print_pull_reminders
}

main
