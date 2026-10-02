# Team Crashless: Lane-Independent ADAS & Dual-Band V2X Architecture for Unstructured Roads 🚗📡

![MATLAB](https://img.shields.io/badge/MATLAB-R2023b%2B-orange)
![Simulink](https://img.shields.io/badge/Simulink-Automated%20Driving-blue)
![ANSYS HFSS](https://img.shields.io/badge/ANSYS-HFSS%20v18-red)
![License](https://img.shields.io/badge/License-MIT-green)

Official repository for **Team Crashless**. An autonomous driving architecture designed to navigate unstructured, lane-less Indian roads by fusing Camera, 3D LiDAR, and Radar data with a non-line-of-sight (NLOS) V2X communication layer.

---

## 📽️ Project Video Demo
[![YouTube Demo Video](https://img.youtube.com/vi/YOUR_YOUTUBE_VIDEO_ID/maxresdefault.jpg)](https://www.youtube.com/watch?v=YOUR_YOUTUBE_VIDEO_ID)
*Click the image above to watch our full technical demonstration on YouTube.*

---

## 🌟 Key Features & Innovations

1. **Lane-Independent Perception:** Replaces traditional lane-line detection with dynamic **Free-Space Occupancy Grids** generated in MATLAB using sensor fusion (Camera, LiDAR, Radar).
2. **Extended V2X Perception Horizon:** Integrated custom **dual-band microstrip patch antenna** designed in ANSYS HFSS operating at **4.56 GHz (C-Band)** and **5.66 GHz (V2X Band)** with >95% radiation efficiency.
3. **Sub-20ms Path Replanning:** Closed-loop 7-step decision engine in Simulink Stateflow executing trajectory updates with **sub-20ms latency**.
4. **Tested Scenarios:** Evaluated across 5 unstructured edge-case environments in MathWorks RoadRunner (e.g., dynamic cattle crossing, unmarked village intersections, dense market cut-ins).

---

## 📊 Performance Metrics

| Metric | Target / Achieved |
| :--- | :--- |
| **Collision-Free Rate (CFR)** | **100%** (Across 5 scenarios) |
| **Minimum Safe Clearance** | **2.10 meters** |
| **Replanning Latency** | **< 20 ms** |
| **Minimum Time-to-Collision (TTC)** | **0.428 seconds** (Evasive action triggered) |
| **Antenna Radiation Efficiency** | **> 95%** (at 5.66 GHz V2X) |

---

## 🛠️ Software & Hardware Toolchain

* **MATLAB & Simulink:** Sensor Fusion and Tracking Toolbox, Automated Driving Toolbox, Stateflow, Vehicle Dynamics Blockset.
* **MathWorks RoadRunner:** 3D Unstructured Indian Road scenario generation.
* **ANSYS HFSS:** Microstrip Patch Antenna geometry modeling, E-field distribution, and $S_{11}$ Return Loss analysis.

---

## 🚀 How to Run the Simulation

### Prerequisites
* MATLAB R2023b or newer with:
  * Automated Driving Toolbox
  * Sensor Fusion and Tracking Toolbox
  * ROS / V2X Toolbox
* ANSYS HFSS (for antenna simulation files)

### Execution Steps
1. Clone the repository:
   ```bash
   git clone [https://github.com/ashikarathore5/Team-Crashless-Autonomous-V2X.git](https://github.com/ashikarathore5/Team-Crashless-Autonomous-V2X.git)
