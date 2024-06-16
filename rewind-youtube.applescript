#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Rewind YouTube
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🤖

tell application "Google Chrome"
   repeat with w in windows
      repeat with t in tabs of w
             if URL of t contains "youtube.com" then
                execute t javascript "document.querySelector('video').currentTime -= 10;"
                return
             end if
      end repeat
   end repeat
end tell
