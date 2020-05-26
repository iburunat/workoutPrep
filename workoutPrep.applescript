# START SPOTIFY WORKOUT PLAYLIST
tell application "Spotify"
	set the sound volume to 80
	# demo playlist: place your Spotify playlist URI here
	play track "spotify:playlist:0dXgFGIRJ5HFz1JVT7bvNr"
end tell

# OPEN TABATATIMER.com ON CHROME
tell application "Google Chrome"
	activate
	open location "http://www.tabatatimer.com"
	set theTab to active tab of window 1
	
	repeat
		if (loading of theTab) is false then exit repeat
	end repeat
end tell

#  TODO: fix [sound on page not working despite being ON]
tell application "Google Chrome" to tell active tab of window 1
	execute javascript "document.getElementsByID('timerSound')[0].parentElement.click();"
end tell
# Delay count down, for a bit warming up
delay 60 

tell application "Google Chrome" to tell active tab of window 1
	execute javascript "document.getElementsByClassName('timerBigButton')[2].click();"
end tell

# OPEN FOLDER UP FRONT
tell application "Finder"
	activate
	open "Macintosh HD:Users:user:Dropbox:WorkOuts:" 
end tell
