#!/bin/bash

# Set the URL of the raw text file containing the list of URLs
URL_FILE="https://pastebin.com/raw/S7VK9m00"

# Open Firefox for each URL in the file and scroll down slowly on each page
while read -r URL; do
    # Open Firefox and load the current URL
    firefox "$URL" &

    # Wait for Firefox to fully load the page
    sleep 5

    # Scroll down the page slowly
    for i in {1..10}
    do
        xdotool search --onlyvisible --class "Firefox" key Down
        sleep 0.5
    done

    # Close Firefox window
    xdotool search --onlyvisible --class "Firefox" windowkill
done < <(curl -s "$URL_FILE")
