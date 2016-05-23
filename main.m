% This is the file you need to run. We will calibrate the cameras, 
% calibrate the stereo system and then run the reconstruction code.
base_folder = './Data_Jan2016/';
image_folder = 'dataset/dataset1';

step = 100;
start = 3;
final = 49;

% doing Calibration
calibration

% calculating F matrix
F = stereoParams.FundamentalMatrix;

eyeRecons(F, start, final, base_folder, image_folder, 'ply00.ply', step, stereoParams);

disp('reconstruction over, please check the PLY file');