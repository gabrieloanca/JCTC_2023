%nproc=8
%chk=glh_esp
#HF/6-31G* scrf=smd SCF=tight Test Pop=MK iop(6/33=2) iop(6/42=6)
# iop(6/50=1)

RESP charges

0   1 
N       1.825236    1.751765    0.018690
H       1.604259    1.869275   -0.967632
C       1.532838    0.371749    0.399227
H       1.555235    0.325959    1.496848
C       0.206438   -0.197814   -0.095248
H       0.196969   -0.179358   -1.190300
H       0.127377   -1.242261    0.217395
C      -0.984979    0.602093    0.444947
H      -0.978092    0.581687    1.538873
H      -0.943247    1.636595    0.106336
C      -2.277757    0.017193   -0.050686
O      -2.962773    0.500988   -0.918994
O      -2.660362   -1.148478    0.502995
C       2.697703   -0.488191   -0.031031
O       2.594483   -1.605487   -0.478786
H       1.202990    2.375364    0.522500
H       3.687905   -0.017628    0.100424
H      -2.046295   -1.418344    1.199749

g09.gesp

g09.gesp


