%chk=3ov_gesp
#HF/6-31G* scrf=smd SCF=tight Test Pop=MK iop(6/33=2) iop(6/42=6)
# iop(6/50=1)

calc RESP charges

-1   1
    O     1.250310    0.276263   -1.263769     
    C     1.529149    0.111179   -0.065632     
    O     2.597935    0.414128    0.485865     
    C     0.473275   -0.539209    0.840972     
    C    -0.844795   -0.782557    0.145335     
    O    -1.012943   -1.782959   -0.508087     
    C    -1.955566    0.225746    0.321151     
    H     0.867381   -1.496870    1.163786     
    H     0.345689    0.081863    1.719202     
    H    -2.219689    0.217752    1.376319     
    H    -2.813414   -0.125554   -0.239018     
    C    -1.590803    1.653614   -0.096914     
    H    -2.438649    2.307196    0.075621     
    H    -1.338066    1.702319   -1.149740     
    H    -0.753236    2.041187    0.472291     

g09.gesp

g09.gesp


