# The Forest Auto Splitter & ASL Var Viewer

## Installation Guide

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

---

## Current Features & Usage

### Start & Reset Triggers
* **Velocity Start**: Automatically starts the timer when player velocity > 0.05 (movement detected).
* **Plane Meal Start**: Option to auto-start upon interacting with the plane meal.
* **Auto Reset**: Automatically resets the timer when quitting to the main menu.

### Splitting Logic

#### Passengers & Clothing
* **Passenger Splits**: Split based on the raw count of passengers found.
  * *Configuration:* Select specific passenger counts to split on.
* **Clothing Splits**: Split when specific clothing items (e.g., Bathrobe) are equipped.

#### Items & Inventory
* **Item Pickup Splits**: Triggers when an item **enters your inventory** (not just held).
  * *Multi-trigger:* Can be set to split every time the item amount changes.
* **Inventory Tracking**: Track specific item amounts in real-time.

#### World & Progression
* **Cave Splits**:
  * **Triggers**: Option to split on Enter, Exit, or Both.
  * *Note:* Underwater caves 1-3 correspond to Blueprint caves.
* **Endgame Splits** (Hopefully will make them separate soon):
  * Vault Door
  * Finding Timmy (Artifact)
  * Approaching Megan
  * Putting Megan in Artifact
  * Gold Keycard (Automatic Door)
  * Gold Keycard (Red Elevator)
  * Game End

### Variable Viewer (Inventory item tracker | Speedometer | Found passengers counter | Load counter)
To use these features, add the **ASL Var Viewer** component to your layout.
   - In the Layout Editor, click **(+)** -> **Information** -> **ASL Var Viewer**.
   - *If you do not see "ASL Var Viewer", you did not copy the `Components` folder correctly in Step 2., or you did not restart your LiveSplit after installation*

| Feature | Description | Setup Path |
| :--- | :--- | :--- |
| **Speedometer** | Displays accurate Horizontal or Overall speed. | `Variables` -> `horizontalSpeed` or `overallSpeed` |
| **Passenger Counter** | Shows live count of found passengers. | `Current State` -> `foundPassengers` |
| **Item Counter** | Tracks quantity of a specific Item ID. | `Variables` -> Type the `itemId` you want to track |
| **Load Counter** | Tracks loading zones; useful for restart timing. | Same as speed setup (Updates only when timer runs) |

---

### Troubleshooting & Notes
* **"Only part of a ReadProcessMemory..." Error**: This is normal in Event Viewer while LiveSplit waits for the game to launch.
* **"The handle is invalid" Error**: This is another normal error in Event Viewer as the game exits/relaunches.
* **Inventory Counts**: Item counts may not reset immediately upon exiting to the menu but will correct themselves once you restart the timer.
