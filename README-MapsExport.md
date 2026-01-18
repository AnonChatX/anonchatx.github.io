# AnonChatX Maps Exporter

**Offline map tile exporter — fully client-side, no servers, no tracking.**

AnonChatX Maps Exporter lets you select a geographic area, choose zoom levels,
and export map tiles as a ZIP file **entirely in your browser**.

No accounts.  
No uploads.  
No background network calls before user consent.

---

## ✨ Features

- 🗺️ Interactive map area selection (what you see is what gets exported)
- 🔍 Multiple zoom presets or custom zoom ranges
- 🌍 Selectable map tile sources (loaded only after user choice)
- 📦 ZIP export compatible with offline map tools
- ⏸️ Pause / resume / cancel export
- 🔐 Fully client-side (JSZip + Fetch)
- 📱 Works on desktop and mobile browsers

---

## 🔐 Privacy & Safety

This tool is designed to **avoid accidental data leaks**:

- No map tiles are loaded until the user selects a map source
- No telemetry, analytics, or fingerprinting
- All downloads happen directly between your browser and the tile provider
- Exported data never leaves your device

---

## 🗺️ Supported Tile Sources

Built-in presets include:

- OpenStreetMap (standard)
- CARTO Dark Matter (dark mode basemap)

You can also define a **custom tile URL**.

> ⚠️ Tile providers have usage policies.  
> For large exports, **use your own tile server or API key**.

---

## 📦 Output Format

Exports a ZIP with the following structure:
AnonMapsCache/
├── //.png
└── export.amd

`export.amd` contains metadata:
- bounding box
- zoom levels
- tile source
- export timestamp

---

## 🛠️ Tech Stack

- React + TypeScript
- Leaflet / react-leaflet
- JSZip
- FileSaver.js

---

## 📄 License

This project is licensed under **GNU GPL v3 or later**.

See [`LICENSE.md`](./LICENSE.md) for full terms.

---

## 🤝 Contributing

Security-aware contributions are welcome.

- Keep changes focused
- Avoid adding unnecessary dependencies
- Assume users may operate under hostile network conditions

---

## ⚠️ Disclaimer

This tool is provided **as-is**.
You are responsible for complying with map tile provider terms and local laws.