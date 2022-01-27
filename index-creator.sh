#!/usr/bin/env bash
root=$1
echo "<!DOCTYPE html>"
echo "<html>"
echo "<head>"
echo "    <meta name='view' content='width=device-width, initial-scale=1'>"
echo "    <style>"
echo "         .logo {"
echo "         max-width: 700px;"
echo "         margin: auto;"
echo "         text-align: center;"
echo "         margin-bottom: 50px;"
echo "         }"
echo "         .content {"
echo "         max-width: 700px;"
echo "         margin: auto;"
echo "         text-align: center;"
echo "         margin-bottom: 50px;"
echo "         }"
echo "         body {"
echo "         font-family: 'Lato', sans-serif;"
echo "         }"
echo "         /* Fixed sidenav, full height */"
echo "         .nav {"
echo "         white-space: nowrap;"
echo "         overflow:hidden;"
echo "         text-overflow: ellipsis;"
echo "         margin: auto;"
echo "         margin-left: 250px;"
echo "         overflow-x: hidden;"
echo "         padding-top: 20px;"
echo "         column-count: 3;"
echo "         row-height: px"
echo "         display: grid;"
echo "         grid-template-columns: auto auto auto auto;"
echo "         grid-gap: 10px;"
echo "         padding: 10px;"
echo "         }"
echo "      </style>"
echo "</head>"
echo "<body>"
echo "<div class='logo'>"
echo "    <img src='https://mosip.github.io/mosip-helm/mosip_logo.png'>"
echo "    <h2 style='font-family:verdana;'>MOSIP API Documentation</h2>"
echo "</div>"
echo "<div class='content'>"
echo "    <p1>API Documentation for release $root</p1>"
echo "</div>"
echo "<div class='nav'>"
for file in $(ls $root/); do
  parentpath=${file#*/}
  filename=${file##*/}
  fname=${filename%-openapi*}
  name=$(echo $fname | tr "-" " ")
  if [[ "$filename" == "$root.html" ]]; then
    continue
  fi
  echo "        <div><a href=\"$parentpath\">$name</a></div>"
done
echo "</div>"
echo "</body>"
echo "</html>"