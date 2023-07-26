In each folder you will find several files. ffld_server parameters (.ffld files) and RESP
charges (.ac files) will serve as input to ffld2gmx.py tool which generates GROMACS parameters
in OPLS-AA format (.opls files). These last files, together with qmatoms.dat and topol.top
topology created by GROMACS will serve as input for gmx4evb.py tool to generate the topologies
(inside topologies/ folder) necessary for an EVB simulation.

qmatoms.dat files is structured as follows:

[atoms] directive contain the EVB atoms ('1' on the last column) as well as non-EVB atoms ('2'
on the last column) involved in torsions, LJ14 and Coulomb-14 interactions with the EVB atoms.
The columns contain:

#pdb index, atom types (RS), charges (RS), atom types (PS), charges (PS), dummy types, EVB or non-EVB (1 or 2)

[soft-core] directive contains the soft repulsion parameter for atoms involved in breaking or forming bonds and/or angles
The soft repulsion interaction between two atoms, say i and j, has the form: A_ij * exp(-beta_ij * r_ij), 
where A_ij = A_i * A_j and beta_ij = sqrt(beta_i * beta_j). The coumns contain:

#pdb index, A, beta

[bonds] directive will usually contain the Morse parameters for breaking or forming bonds.
A Morse potential has the following expression: D*[1-exp(-beta(r-r0)]**2.
The columns are:

#pdb index for atom i, pdb index for atom j, bond type (3 for Morse), r0 (RS), D (RS), beta (RS), r0 (PS), D (PS) beta (PS)

NOTE: for any other bond type, give the parameters as in GROMACS topology

[bcon] directive contains constraints between pairs of atoms. The constraints are gives as bonds of type 6 or 10
which does not generate exclusions. The format is the same as in GROMACS topology.

If you want to change any of the angles, torsions and impropers fro EVB atoms (passed through the .opls files), you
cand do that under the [angles], [torsions] or [impropers] directives following the same format as in GROMACS topology.

[soft-pairs] directive contain the soft repulsion potential defined for pairs of atoms. Any pair given here will substitute
the pair build from data from [soft-core] directive. The columns are as follow:

#pdb index for atom i, pdb index for atom j, 9, beta (RS), A (RS), beta (PS), A (PS)

NOTE: Soft repulsion potentials are passed to GROMACS as tabulated bonds of type 9 (so the 3rd column is always '9')
NOTE: RS is Reactant State and PS is Product State. (or state A and B as they are usually called in GROMACS)




