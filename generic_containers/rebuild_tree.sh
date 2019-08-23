#!/bin/bash

# cleanup old local images:

rm -f centos7_hpc-base.sif
rm -f centos7_hpc_foss-2019a.sif
rm -f centos7_hpc_foss-2019a_gsl.sif

# rebuild:

sudo /opt/singularity/3.2.1/bin/singularity build centos7_hpc-base.sif centos7_hpc-base.def
singularity sign centos7_hpc-base.sif
singularity push centos7_hpc-base.sif library://jose_d/default/centos7_hpc_base 

sudo /opt/singularity/3.2.1/bin/singularity build centos7_hpc_foss-2019a.sif centos7_hpc_foss-2019a.def
singularity sign centos7_hpc_foss-2019a.sif
singularity push ./centos7_hpc_foss-2019a.sif library://jose_d/default/centos7_hpc_foss-2019a

sudo /opt/singularity/3.2.1/bin/singularity build centos7_hpc_foss-2019a_gsl.sif centos7_hpc_foss-2019a_gsl.def
singularity sign centos7_hpc_foss-2019a_gsl.sif
singularity push ./centos7_hpc_foss-2019a_gsl.sif library://jose_d/default/centos7_hpc_foss-2019a_gsl


#  sudo /opt/singularity/3.2.1/bin/singularity build centos7_hpc_foss-2019a_gsl_Python-3.7.2.sif centos7_hpc_foss-2019a_gsl_Python-3.7.2.def


