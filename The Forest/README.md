# Current Features & Usage

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
   - *If you do not see "ASL Var Viewer", you did not copy the `Components\` folder correctly in Step 2 of the installation guide, or you did not restart your LiveSplit after installation*.

| Feature | Description | Setup Path |
| :--- | :--- | :--- |
| **Speedometer** | Displays an accurate Horizontal or Overall speedometer. | `Variables` -> `horizontalSpeed` or `overallSpeed` |
| **Passenger Counter** | Tracks count of found passengers. | `Current State` -> `foundPassengers` |
| **Item Counter** | Tracks inventory quantity of a specific Item ID. | `Variables` -> Type the `itemId` you want to track |
| **Load Counter** | Tracks savegame load count, useful for knowing when to restart (game has a memory leak). | `Current State` -> `loadCounter` |

---

### Troubleshooting & Notes
* **"Only part of a ReadProcessMemory..." Error**: This is normal in Event Viewer while LiveSplit waits for the game to launch.
* **"The handle is invalid" Error**: This is another normal error in Event Viewer as the game exits/relaunches.
* **Variable Counters**: Counts will not reset immediately upon exiting to the menu, but will correct themselves once you restart the timer.

*For any issues please contact `d.eter` on Discord, or reach out to [The Forest Series Speedrunning Community](https://discord.gg/kCVSq5nXRE)*
