# Minecraft Advancement Tracker

A web-based tracker for Minecraft Java Edition advancements. Track your progress, see what's missing, and check off criteria as you complete them!

## Features

- 📊 **Track all 124 advancements** across all 5 tabs (Minecraft, Nether, The End, Adventure, Husbandry)
- 👥 **Multi-player support** - Switch between different players
- ✅ **Missing criteria lists** - See exactly what biomes, mobs, foods, etc. you still need
- 🖱️ **Click to mark done** - Click criteria items to hide them as you complete them
- 🎨 **Dark theme** - Easy on the eyes for long sessions
- 📱 **Responsive** - Works on desktop and mobile

## Setup for GitHub Pages (Recommended)

Host this tracker online so all players on your server can use it!

### Step 1: Create a GitHub Repository

1. Go to [github.com](https://github.com) and sign in (or create an account)
2. Click the **+** icon → **New repository**
3. Name it something like `minecraft-tracker`
4. Make it **Public**
5. Click **Create repository**

### Step 2: Upload Files

Upload these files to your repository:
```
minecraft-tracker/
├── index.html              ← Main tracker file
├── minecraft_advancements.json
├── player/
│   ├── David.json          ← Player advancement files
│   ├── Lawrence.json
│   └── (add more players)
└── README.md
```

### Step 3: Enable GitHub Pages

1. Go to your repository → **Settings** → **Pages**
2. Under "Source", select **Deploy from a branch**
3. Select **main** branch and **/ (root)** folder
4. Click **Save**
5. Wait a minute, then your site will be at: `https://yourusername.github.io/minecraft-tracker/`

### Step 4: Configure the Tracker

Edit `index.html` and update these lines near the top of the `<script>` section:

```javascript
// Base URL for your GitHub Pages site (include trailing slash)
const BASE_URL = 'https://yourusername.github.io/minecraft-tracker/';

// List of player names (these should match filenames in player/ folder)
const PLAYERS = ['David', 'Lawrence', 'Steve'];
```

### Step 5: Add Player Data

1. Get player advancement JSON files from your server:
   - Location: `world/advancements/[player-uuid].json`
   - Use FTP (FileZilla) to download them
2. Rename files to player names (e.g., `David.json`)
3. Upload to the `player/` folder in your repository

## Updating Player Data

When you want to update everyone's progress:

1. Download the latest advancement files from your server via FTP
2. Rename them to player names
3. Upload/replace files in the `player/` folder on GitHub
4. Commit and push the changes
5. Players will see updated data when they refresh!

## Local Usage

If you just want to use it locally:

1. Open `minecraft-advancement-tracker.html` directly in your browser
2. Use the file picker to select player JSON files from the `player/` folder

## Adding New Players

1. Add their JSON file to the `player/` folder
2. Add their name to the `PLAYERS` array in `index.html`:
   ```javascript
   const PLAYERS = ['David', 'Lawrence', 'NewPlayer'];
   ```
3. Commit and push

## Server Integration

The tracker fetches player data from the `player/` folder via HTTP. For automatic updates, you could:

- Set up a script to periodically sync files from your Minecraft server to GitHub
- Use GitHub Actions for automated deployments
- Host on your own web server with direct file access

## Credits

Advancement data based on [Minecraft Wiki](https://minecraft.wiki/w/Advancement).

---

Made with ⛏️ for Minecraft players
