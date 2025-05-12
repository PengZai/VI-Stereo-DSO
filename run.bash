#!/bin/bash
#usage: python xxx.py file_name
dataname="MH_01_easy"
project_dire="/root/vi-stereo-dso"
#dataname="MH_02_easy"
#dataname="MH_03_medium"
#dataname="MH_04_difficult"
#dataname="MH_05_difficult"
#dataname="V2_03_difficult"
#dataname="V1_03_difficult"
    # run dso
     ./build/bin/dso_dataset \
 	  files0=/root/datasets/Euroc_MAV/euroc-spark/${dataname}/mav0/cam0/data \
	  files1=/root/datasets/Euroc_MAV/euroc-spark/${dataname}/mav0/cam1/data \
 	  calib0=${project_dire}/calib/euroc/cam0.txt \
	  calib1=${project_dire}/calib/euroc/cam1.txt \
	  T_stereo=${project_dire}/calib/euroc/T_C0C1.txt \
	  imu_info=${project_dire}/calib/euroc/IMU_info.txt \
	  groundtruth=/root/datasets/Euroc_MAV/euroc-spark/${dataname}/mav0/state_groundtruth_estimate0/data.csv \
	  imudata=/root/datasets/Euroc_MAV/euroc-spark/${dataname}/mav0/imu0/data.csv \
	  pic_timestamp=/root/datasets/Euroc_MAV/euroc-spark/${dataname}/mav0/cam0/data.csv \
	  pic_timestamp1=/root/datasets/Euroc_MAV/euroc-spark/${dataname}/mav0/cam1/data.csv \
 	  preset=0 mode=1 \
	  quiet=1 nomt=1 \
          savefile_tail=nt_${dataname}\
     	  use_stereo=1\
	  imu_weight=6 imu_weight_tracker=0.6 stereo_weight=0.5


