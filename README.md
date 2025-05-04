# 🚨 Roblox Anti-Cheat Starter

Protect your Roblox game from speed hackers with this clean and lightweight anti-cheat system.  
It’s simple, powerful, and built to be the foundation for more advanced exploit detection systems.

---

## ✨ Features
- 🚷 **Speed Hack Detection** – Instantly flags and kicks players moving faster than allowed
- ⚙️ **Easy Configuration** – Just edit a single line to tweak speed limits
- 🧱 **Modular Design** – Add more checks like fly/no-clip detection with ease
- 🧠 **Beginner Friendly** – Great for learning Roblox security basics

---

## 🛠️ Quick Setup Guide

> 🔧 Takes less than 1 minute to install!

1. 🧩 Drag `AntiCheatScript.lua` into `ServerScriptService` in **Roblox Studio**
2. 📏 Set your preferred speed limit (default = `60` studs/second):
   ```lua
   local SPEED_LIMIT = 60
