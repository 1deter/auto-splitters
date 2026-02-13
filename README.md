# Auto Splitters
A collection of LiveSplit auto splitters I've worked on.
*Note: Manual installation is not necessary if I've already pushed the game to LiveSplit. To check, follow the automatic installation instructions below.*

## Automatic Installation Guide

**Prerequisite**: Ensure you have LiveSplit installed, you can find the download page [here](https://livesplit.org/downloads/).
   - After installing LiveSplit, navigate to your `LiveSplit_X.Y.Z\` folder and run `LiveSplit.exe`
   - Once the timer appears, **right click** it and click `Edit Splits...`
   - Type in the game name in the top bar, and select it from the dropdown
   - The auto splitter should appear below automatically! Click `Activate` to enable it, and `Settings` to configure it
   - *Note: If the auto splitter isn't showing, ensure you typed the game name correctly - if it's still not showing, the game might not be added to LiveSplit's auto splitter repository yet. In that case, refer to the manual installation below.*

## Manual Installation Guide

**Prerequisite**: Ensure **LiveSplit** is completely **CLOSED** before starting.

1. **Download & Extract**:
   - Download the repo [here](https://github.com/1deter/auto-splitters/archive/refs/heads/main.zip).
   - Right click the zip -> **Extract All**.
   - Open `auto-splitters-main\Game Name\`.
2. **Move Files**:
   - Select the `Components\` and `Auto Splitter\` folders inside of `auto-splitters-main\Game Name\`.
   - Cut (Ctrl + X) and paste (Ctrl + V) them directly into your **LiveSplit installation folder** (usually called `LiveSplit_X.Y.Z\`).
   - *Note: If asked to replace/merge files, click **Yes**.*
3. **Add to Layout**:
   - Open LiveSplit.
   - Right-click the timer -> **Edit Layout**.
   - Click the **(+)** button -> **Control** -> **Scriptable Auto Splitter**.
4. **Load Script**:
   - Double-click the newly added **Scriptable Auto Splitter** in the layout list.
   - Click **Browse** next to "Script Path".
   - Navigate to your **LiveSplit folder** -> open `LiveSplit_X.Y.Z\Auto Splitter\` -> and select `Game Name.asl`.
   - *Note: If you don't have the `Auto Splitter\` folder inside of `LiveSplit_X.Y.Z\`, ensure you followed Step 2 correctly.*

## Usage & Feature Guides

- You can find more details inside of each respective game's folder, e.g. for **The Forest**: `The Forest\README.md`.
