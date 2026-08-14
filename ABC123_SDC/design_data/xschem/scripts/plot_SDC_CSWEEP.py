#https://stackoverflow.com/questions/46614526/how-to-import-a-csv-file-into-a-data-array
import pandas as pd
import numpy as np
from matplotlib import pyplot as plt


df=pd.read_fwf('/foss/designs/SSCS-Chipathon-2026_ABC123-team/sim_data/data_SDC_CSWEEP.txt')
df.to_csv('/foss/designs/SSCS-Chipathon-2026_ABC123-team/sim_data/data_SDC_CSWEEP.csv', index=False)
data = pd.read_csv("/foss/designs/SSCS-Chipathon-2026_ABC123-team/sim_data/data_SDC_CSWEEP.csv").values
num_rows, num_cols = data.shape
print(num_rows)
print(num_cols)
thres  = 0.2
sw = [0,2,4,6,8,10,12,14,16,18,20,22,24,26,28,30]
DOUT=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]

for i in sw:
	x = data[:,i]
	arrx = np.array(x)
	y = data[:,i+1]
	arry = np.array(y)
	
	filter_arr = []


	for element in arrx:

	  #if element > 1e-6:
	  if element > 12e-6:
	    filter_arr.append(True)
	  else:
	    filter_arr.append(False)

	newarrx = arrx[filter_arr]
	newarry = arry[filter_arr]
	newarry[newarry>thres] = 100
	newarry[newarry<=thres] = 0
	j = int(i/2)
	DOUT[j] = np.mean(newarry)


#	x=x[~pd.isnull(x)]
#	y=y[~pd.isnull(y)]
#	kk2=np.diff(y > thres, prepend=False)
#	kk3=np.argwhere(kk2)[::2,0]
#	lgt=kk3.shape
#	j = int(i/2)
#	frq[j]=lgt[0]/(x[kk3[-1]]-x[kk3[0]])
#	print(lgt[0]/(x[kk3[-1]]-x[kk3[0]]))


	plt.plot(newarrx*10e6,newarry)
	plt.xlabel("Time [us]")
	plt.ylabel("DOUT_CLOAD[%]")
	plt.show()
	
print(DOUT)

#np.savetxt("DATA_CINsweep_v6p3.csv", DOUT, delimiter=",")

# plot points not lines
#plt.plot(np.arange(8.00, 8.3, 0.02), DOUT, linestyle="", marker="o")
plt.plot(np.arange(2.2, 5, 0.2), DOUT[2:], linestyle="", marker="o")
plt.xlabel("C_Test [pF]")
plt.ylabel("DOUT_AVG_CLOAD[%]")
plt.show()
