c NPROCS = 2 CLASS = C
c  
c  
c  This file is generated automatically by the setparams utility.
c  It sets the number of processors and the class of the NPB
c  in this directory. Do not modify it by hand.
c  
        character class
        parameter (class ='C')
        integer m, npm
        parameter (m=32, npm=2)
        logical  convertdouble
        parameter (convertdouble = .false.)
        character*11 compiletime
        parameter (compiletime='24 Feb 2016')
        character*5 npbversion
        parameter (npbversion='3.3.1')
        character*7 cs1
        parameter (cs1='mpifort')
        character*9 cs2
        parameter (cs2='$(MPIF77)')
        character*22 cs3
        parameter (cs3='-L/usr/local/lib -lmpi')
        character*20 cs4
        parameter (cs4='-I/usr/local/include')
        character*3 cs5
        parameter (cs5='-O0')
        character*3 cs6
        parameter (cs6='-O0')
        character*6 cs7
        parameter (cs7='randi8')