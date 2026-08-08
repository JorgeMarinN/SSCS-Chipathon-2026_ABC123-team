import pandas as pd
import numpy as np
import matplotlib
matplotlib.use('TkAgg')
from matplotlib import pyplot as plt

# Load
df = pd.read_fwf('/foss/designs/SSCS-Chipathon-2026_ABC123-team/sim_data/data_OSC_CSWEEP.txt')
df.to_csv('/foss/designs/SSCS-Chipathon-2026_ABC123-team/sim_data/data_OSC_CSWEEP.csv', index=False)
data = pd.read_csv('/foss/designs/SSCS-Chipathon-2026_ABC123-team/sim_data/data_OSC_CSWEEP.csv').values
num_rows, num_cols = data.shape
print(num_rows, num_cols)

# Build column index pairs for (x,y): columns 0/1, 2/3, ...
num_pairs_in_data = (num_cols // 2)
sw = list(range(0, 2*num_pairs_in_data, 2))

# allocate result (periods)
period = np.full(num_pairs_in_data, np.nan, dtype=float)
thres = 1.65

for j, i in enumerate(sw):
    x = data[:, i]
    y = data[:, i+1]

    # drop NaNs in lockstep
    mask = ~pd.isnull(x) & ~pd.isnull(y)
    x = x[mask].astype(float)
    y = y[mask].astype(float)

    # crossings to estimate periods
    kk2 = np.diff(y > thres, prepend=False)
    kk3 = np.argwhere(kk2)[::2, 0]

    if kk3.size >= 2:
        dt = x[kk3[-1]] - x[kk3[0]]
        if dt != 0:
            # average cycle period = total time / number of cycles
            period[j] = dt / kk3.shape[0]

# X axis: start at 0, step 0.5, as many points as computed
#C_TEST = 0.5 * np.arange(len(period))

# Plot period
plt.figure()
plt.plot(np.arange(8.00, 8.3, 0.01), period, marker='o')
plt.xlabel("C_Test [pF]")
plt.ylabel("Cycle Period [s]")
plt.title("Cycle Period vs C_Test")
plt.grid(True)
plt.show()

# Plot frequency

frequency = 1 / period

plt.figure()
plt.plot(np.arange(8.00, 8.30, 0.01), frequency/1e6, marker='o')
plt.xlabel("C_Test [pF]")
plt.ylabel("Frequency [MHz]")
plt.title("Frequency vs C_Test")
plt.grid(True)
plt.show()

