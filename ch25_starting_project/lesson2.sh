#!/usr/bin/env bash

# this is a program to output system information page

TITLE="System Information Report For $HOSTNAME"
CURRENT_TIME="$(date +"%x %r %Z")"
TIMESTAMP="Generated $CURRENT_TIME, by $USER"


 # <<- is different from <<
report_uptime(){
  cat <<- _EOF_
    <h2>System Uptime</h2>
    <pre>$(uptime)</pre>
_EOF_
  return
}

report_disk_space(){
  cat <<- _EOF_
    <h2>Disk space utiliztion</h2>
    <pre>$(df -h)</pre>
_EOF_
  return
}

report_home_space(){
  cat <<- _EOF_
    <h2>Home space utiliztion</h2>
    <pre>$(du -sh /home/*)</pre>
_EOF_
  return 
}

cat << _EOF_
      <html>
        <head>
            <title>$TITLE</title>
        </head>
        <body>
            <h1>$TITLE</h1>
            <p>$TIMESTAMP</p>
            $(report_uptime)
            $(report_disk_space)
        </body>
      </html>
_EOF_

