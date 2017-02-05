# paracrack
A short script to brute force IOS parental controls passcode (which nobody ever remembers)


# Step 1: 

  * Back up the device locally, using itunes.
  
# Step 2: 
  * Use a tool such as iBackupViewer to extract /System/Library/Preferences/com.apple.restrictionspassword.plist
  
# Step 3:

  * Look at that plist file, you need the RestrictionsPasswordKey and salt. They look like this:
  
      * key: e2gdr1sXWoan2YATKA3+GcuwCag=
      * salt: /Y/SkQ==
      
# Step 4:
  * run the script, passing the key and salt on the commandline:
  
  
    `ruby ./paracrack.rb e2gdr1sXWoan2YATKA3+GcuwCag= /Y/SkQ==`
    
    
# Step 5:
  There is no step 5. This should only take a few seconds.  If it doesn't find a key, you entered either the key or the salt inaccurately.
