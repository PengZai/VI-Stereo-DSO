#!/bin/bash
#usage: python xxx.py file_name
project_dire="/root/vi-stereo-dso"
#dataname="MH_02_easy"
#dataname="MH_03_medium"
#dataname="MH_04_difficult"
#dataname="MH_05_difficult"
#dataname="V2_03_difficult"
#dataname="V1_03_difficult"
    # run dso
     ./build/bin/dso_dataset \
 	  files0=/root/datasets2/BotanicGarden/1018-00/1018_00_img10hz600p/left_gray \
	  files1=/root/datasets2/BotanicGarden/1018-00/1018_00_img10hz600p/right_gray \
 	  calib0=${project_dire}/calib/botanic_garden/cam0.txt \
	  calib1=${project_dire}/calib/botanic_garden/cam1.txt \
	  T_stereo=${project_dire}/calib/botanic_garden/T_C0C1.txt \
	  imu_info=${project_dire}/calib/botanic_garden/IMU_info.txt \
	  groundtruth=/root/datasets2/BotanicGarden/1018-00/1018_00_img10hz600p/gt/gt_data.csv \
	  imudata="/root/datasets2/BotanicGarden/1018-00/1018_00_img10hz600p/Xsens/imu_data.csv "\
	  pic_timestamp=/root/datasets2/BotanicGarden/1018-00/1018_00_img10hz600p/_dalsa_gray_left_image_raw_pic_timestamps.csv \
	  pic_timestamp1=/root/datasets2/BotanicGarden/1018-00/1018_00_img10hz600p/_dalsa_gray_right_image_raw_pic_timestamps.csv \
 	  preset=0 mode=1 \
	  quiet=1 nomt=1 \
          savefile_tail=nt_1018_00_img10hz600p\
     	  use_stereo=1\
	  imu_weight=6 imu_weight_tracker=0.6 stereo_weight=0.5


