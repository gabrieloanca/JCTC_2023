%nproc=8
%chk=glu_esp
#HF/6-31G* scrf=smd SCF=tight Test Pop=MK iop(6/33=2) iop(6/42=6)
# iop(6/50=1)

RESP charges

-1   1 
 N       1.759125    1.692871   -0.461486
 H       1.556470    1.496043   -1.439551
 C       1.496785    0.477802    0.311827
 H       1.504266    0.764195    1.373193
 C       0.191640   -0.245481   -0.002631
 H       0.193667   -0.531033   -1.059268
 H       0.149582   -1.170398    0.580254
 C      -1.038390    0.605375    0.297205
 H      -1.046708    0.906990    1.347431
 H      -1.011825    1.518078   -0.309037
 C      -2.351140   -0.113633   -0.029062
 O      -2.420346   -0.707783   -1.136351
 O      -3.274421   -0.050806    0.821309
 C       2.697033   -0.426642    0.171925
 O       2.644909   -1.632131    0.099501
 H       1.095598    2.407910   -0.181261
 H       3.668368    0.099347    0.147389

g09.gesp

g09.gesp


