# Install-Mjpg-Streamer
Has an ant build task that automatically installs mjpg-streamer onto a roborio.

In order to use, set up eclipse for FRC (because it depends on wpilib build scripts to connect to roborio)
Next, run the ant build file.

It will install mjpeg-streamer-roborio in the root directory of the roborio.

To run the server, run run_one.sh inside the directory on the roborio.

For a complete installation or other scripts, use the scripts in the auto-init-scripts directory.

Thanks to:
Mike Anderson for setting up the mjpeg-streamer to run on the roboRIO in the first place:
http://www.chiefdelphi.com/forums/showthread.php?t=135737

Also, Dustin Spicuzza for writing the auto init scripts:
https://gist.github.com/virtuald/c8835244759e53314211
