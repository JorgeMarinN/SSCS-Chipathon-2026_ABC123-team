#!/usr/bin/env python3

import numpy as np
import matplotlib.pyplot as plt

# ------------------------------------------------------------
# Configuration
# ------------------------------------------------------------

FILENAME = "/foss/designs/SDC_techmigration_May2026/sim_data/SDC_CINsweep_v6p3_GF_PWR.txt"
VDD = 3.3  # Supply voltage [V]


# ------------------------------------------------------------
# Load SPICE simulation data
# ------------------------------------------------------------

data = np.loadtxt(FILENAME)

time = data[:, 0]       # Time [s]
current = data[:, 1]    # Current [A]

# Current consumption magnitude
current_magnitude = np.abs(current)


# ------------------------------------------------------------
# Calculate average current and power consumption
# ------------------------------------------------------------

# Time-weighted average current magnitude
average_current = np.trapezoid(current_magnitude, time) / (
    time[-1] - time[0]
)

# Average power consumption
average_power = VDD * average_current


# ------------------------------------------------------------
# Display results in terminal
# ------------------------------------------------------------

print("--------------------------------------------------")
print("SPICE Power Consumption Analysis")
print("--------------------------------------------------")
print(f"Supply voltage          : {VDD:.3f} V")
print(f"Average current magnitude: {average_current:.6e} A")
print(f"Average current magnitude: {average_current * 1e3:.3f} mA")
print(f"Average power consumption: {average_power:.6e} W")
print(f"Average power consumption: {average_power * 1e3:.3f} mW")
print("--------------------------------------------------")


# ------------------------------------------------------------
# Plot current versus time
# ------------------------------------------------------------

plt.figure(figsize=(10, 6))

plt.plot(time, current_magnitude)

plt.xlabel("Time [s]")
plt.ylabel("Current Magnitude [A]")
plt.title("Current Consumption vs Time")

plt.grid(True)
plt.tight_layout()

plt.show()