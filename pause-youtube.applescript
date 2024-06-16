#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Pause YouTube
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🤖

tell application "Google Chrome"
   repeat with w in windows
      repeat with t in tabs of w
             if URL of t contains "youtube.com" then
                execute t javascript "
                        var video = document.querySelector('video');
                        if (video.paused) {
                           video.play();
                        } else {
                          video.pause();
                        }"
                return
             end if
      end repeat
   end repeat
end tell
