cat - | tail -n +25 | head -n -17 | sed "s/《[^》]*》//g"
