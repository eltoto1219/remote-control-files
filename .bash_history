kreset
python3 /home/antonio/projects/drowsiness/check_video_lengths.py
reset
python3 /home/antonio/projects/drowsiness/check_video_lengths.py
cd projects/drowsiness/
ls
clear
ls
clear
ls
vim json/event_descriptions_v3.json 
clear
ssh sf
clear
ls
ls -lt
vim check_video_lengths.py 
ssh sf
clear
ssh sf
reset
python3 /home/antonio/projects/drowsiness/check_video_lengths.py
reset
python3 /home/antonio/projects/drowsiness/check_video_lengths.py
reset
python3 /home/antonio/projects/drowsiness/check_video_lengths.py
reset
python3 /home/antonio/projects/drowsiness/check_video_lengths.py
cd projects/drowsiness/
cat open_json.py 
ssh sf
scp sf:~/cogvideo/first_frames.zip ./
reset
python3 /home/antonio/projects/drowsiness/generate_random_captions.py
reset
python3 /home/antonio/projects/drowsiness/generate_random_captions.py
clear
cd projects/drowsiness/
ls
clear
ls
clear
ls
clear
ls
ls -lt
cp recaption_add_suggestings.py generate_random_captions.py
vim generate_random_captions.py 
clear
ls
unzip first_frames.zip 
open first_frames.zip 
open first_frames
clear
ls
clear
ls
clear
ls
clear
ls
clear
ls
clear
ls
clear
ls
cd projects/drowsiness/
cd json/
ls
scp event_descriptions_v3.json sf:~/drowsy
reset
python3 /home/antonio/projects/drowsiness/open_json.py
source venv/bin/activate
reset
python3 /home/antonio/projects/drowsiness/open_json.py
cd videos
reset
python3 /home/antonio/projects/drowsiness/open_json.py
reset
python3 /home/antonio/projects/drowsiness/open_json.py
open videos/smoking/013eba07-b4d0-4c33-86c3-755f9cfe6324.mp4 
open videos/smoking/4b7f666d-8cfe-4921-aac5-de58cca0560b.mp4 
cd
cd Downloads/
ls
ls -lt 
mv 3049021378.mp4 ~/projects/drowsiness/drowsy_recalled_video_30fps.mp4
mv 3047987595.mp4 ~/projects/drowsiness/non_drowsy_recalled_video_30fps.mp4
cd
cd projects/
cd drowsiness/
ls
ffmpeg -i non_drowsy_recalled_video_30fps.mp4 -filter:v fps=30 non_drowsy_recalled_video.mp4 
ffmpeg -i non_drowsy_recalled_video_30fps.mp4 -filter:v fps=2 non_drowsy_recalled_video.mp4 
ffmpeg -i drowsy_recalled_video_30fps.mp4 -filter:v fps=2 drowsy_recalled_video.mp4 
open drowsy_recalled_video.mp4 
scp drowsy_recalled_video.mp4 sf:/home/antonio/drowsy
scp non_drowsy_recalled_video.mp4 sf:/home/antonio/drowsy
open drowsy_recalled_video.mp4 
open non_drowsy_recalled_video.mp4 
scp sf:~/drowsy/bar_plot.png ./
open bar_plot.png 
scp sf:~/drowsy/bar_plot.png ./
open bar_plot.png 
ssh sf
ls
cd dro
cd projects/drowsiness/
ls
mkdir cogvideo_eval_videos
cd cogvideo_eval_videos/
ls
scp sf:/home/antonio/cogvideo/finetrainers/wandb/latest-run/files/media/videos/* ./
open ./
scp sf:/home/antonio/cogvideo/saved_models/cogvideox-lora__optimizer_adamw__steps_1200__lr-schedule_cosine_with_restarts__learning-rate_1e-4/*.mp4 ./
open ./
ls
cd ../
mkdir saved_videos_v1
cd saved_videos_v1/
ls
scp -r sf:~/cogvideo/saved_videos_v1/* ./
ls
cd seed_42/
ls
cd frames_9/
ls
open ./
cd ../../
scp -r sf:~/cogvideo/saved_videos_v1/* ./
ls
cd seed_42/
ls
cd frames_16/
ls
open ./
cd ../
scp -r sf:~/cogvideo/saved_videos_v1/* ./
ls
cd seed_42/
ls
cd frames_25/
ls
open im_0_right_hand_back_hand_lap.mp4 
cd ../../
scp -r sf:~/cogvideo/saved_videos_v1/* ./
open ./
vim ~/notes.txt 
cd ../
rg 0a4c8f1c-e246-4946-83f8-4813dbf6c755_0.jpg"
rg :0a4c8f1c-e246-4946-83f8-4813dbf6c755_0.jpg"
rg "0a4c8f1c-e246-4946-83f8-4813dbf6c755_0.jpg"
ls
ls | grep json
vim open_json.py 
cd
cat ~/notes.txt 
cd projects/drowsiness/
ls
vim json/event_descriptions_v3.json 
vim notes.txt 
ssh sf
ls
cd code/
ls
cd KeepTruckin/
ls
cd kt/
kt aws-okta-login
cd
cd projects/drowsiness/
ls
mkdir drowsy_recalled_videos
mkdir non_drowsy_recalled_videos
mv non_drowsy_recalled_video_30fps.mp4 non_drowsy_recalled_videos
mv drowsy_recalled_video_30fps.mp4 drowsy_recalled_videos_high_fps/
mv non_drowsy_recalled_videos/non_drowsy_recalled_video_30fps.mp4 non_drowsy_recalled_videos_high_fps/
mv drowsy_recalled_video.mp4 drowsy_recalled_videos
mv non_drowsy_recalled_video.mp4 non_drowsy_recalled_videos
clear
ls
cd recalled_videos_high_fps/
ls
cd
vim notes.txt 
ssh sf
vim notes.txt 
cat notes.txt 
cd projects/drowsiness/
mkdir drowsy_recalled_videos_high_fps
mkdir non_drowsy_recalled_videos_high_fps
mv ~/Downloads/3048970159.mp4 non_drowsy_recalled_videos_high_fps/
mv ~/Downloads/3048975559.mp4 non_drowsy_recalled_video_high_fps
ls
mkdir recalled_videos_high_fps
cd
ls
find ./ -n "code"
find ./ -name "code"
./aws-okta-login.sh 
cd ktmr-installer/
ls
cd ../
rm -r ktmr-installer/
rm -rf ktmr-installer/
sudo rm -rf ktmr-installer/
clear
ls
clear
ls
mv ~/Downloads/ktmr-installer.tgz ./
tar -xvf ktmr-installer.tgz 
cd ktmr-installer/
ls
./install.sh 
scp s3://keep-truckin-cam-init-preview/test_frame_annotation/driver_facing/drowsiness_collision_recalled_videos/batch4_2024-12-23_to_2025-01-30/* ./
aws s3 cp s3://keep-truckin-cam-init-preview/test_frame_annotation/driver_facing/drowsiness_collision_recalled_videos/batch4_2024-12-23_to_2025-01-30/* ./
aws s3 cp s3://keep-truckin-cam-init-preview/test_frame_annotation/driver_facing/drowsiness_collision_recalled_videos/batch4_2024-12-23_to_2025-01-30/ ./ --recursive
cd projects/drowsiness/
ls
vim drowsy.txt
vim drowsy.txt 
vim ~/.bash_history 
cp split_videos.sh slow_fps.sh
vim slow_fps.sh 
cd non_drowsy_recalled_videos_high_fps/
ls
mv non_drowsy_recalled_video_30fps.mp4 ../
cd ../
./slow_fps.sh 
ls non_drowsy_recalled_videos
ls non_drowsy_recalled_videos | wc -l
cd projects/
cd drowsiness/
ls
cd recalled_videos_high_fps/
ls
open 
open ./
open 3047982652.mp4
rm 3047982652.mp4
open 3047993105.mp4
cp 3047993105.mp4 ../non_drowsy_recalled_video_high_fps 
mv 3047993105.mp4 ../non_drowsy_recalled_video_high_fps 
open 3047987595.mp4
rm 3047987595.mp4
open 3048301124.mp4
mv 3048301124.mp4 ../non_drowsy_recalled_video_high_fps 
ld
ls
open 3048310578.mp4
mv 3048310578.mp4 ../non_drowsy_recalled_video_high_fps 
open 3048310967.mp4 
mv 3048310967.mp4 ../non_drowsy_recalled_video_high_fps 
open 3048314963.mp4
mv 3048314963.mp4 ../drowsy_recalled_videos_high_fps/
open 3048347196.mp4
rm 3048347196.mp4
open 3048356762.mp4
mv 3048356762.mp4 ../drowsy_recalled_videos_high_fps/
open 3048363686.mp4 
mv 3048363686.mp4 ../non_drowsy_recalled_video_high_fps 
ls ../non_drowsy_recalled_video_high_fps | wc -l
cd ../
cd non_drowsy_recalled_videos_high_fps/
ls
cd ../
vim temp.txt 
vim temp2.txt 
vim temp3.txt
vim temp4.txt
find ./ -name "3048310578.mp4"
cd recalled_videos_high_fps/
ls
cd ../
ls
cd recalled_videos_high_fps/
ls
clear
ls
open 3048367994.mp4
rm 3048367994.mp4
open 3048372682.mp4
cp 3048372682.mp4 ../non_drowsy_recalled_video_high_fps 
ls ../non_drowsy_recalled_video_high_fps 
ls ../non_drowsy_recalled_video_high_fps/
ls ../non_drowsy_recalled_video_high_fps /
ls ../non_drowsy_recalled_video_high_fps 
cd ../
cd non_drowsy_recalled_videos
ls
cd ../
cd non_drowsy_recalled_videos_high_fps/
ls
cd ../
ls non_drowsy_recalled_videos_high_fps/
ls non_drowsy_recalled_video_high_fps
open non_drowsy_recalled_video_high_fps 
rm non_drowsy_recalled_video_high_fps 
cd ../
cd drowsiness/
cd recalled_videos_high_fps/
ls ../non_drowsy_recalled_videos_high_fps/
ls
open 3048372682.mp4
cp 3048372682.mp4 ../non_drowsy_recalled_videos_high_fps/
ls ../non_drowsy_recalled_videos_high_fps/
rm 3048372682.mp4
open 3048375307.mp4
cp 3048375307.mp4 ../non_drowsy_recalled_videos_high_fps/
rm 3048375307.mp4
open 3048533939.mp4
rm 3048533939.mp4
open 3048559295.mp4
rm 3048559295.mp4
open 3048770944.mp4
rm 3048770944.mp4
open 3048828581.mp4
cp 3048828581.mp4 ../non_drowsy_recalled_videos_high_fps/
rm 3048828581.mp4
open 3048851728.mp4
cp 3048851728.mp4 ../non_drowsy_recalled_videos_high_fps/
rm 3048851728.mp4
open 3048875764.mp4
cp 3048875764.mp4 ../non_drowsy_recalled_videos_high_fps/
rm 3048875764.mp4
open 3048875765.mp4
rm 3048875765.mp4
open 3048887555.mp4
rm 3048887555.mp4
open 3048896282.mp4
rm 3048896282.mp4
open 3048966523.mp4
cp 3048966523.mp4 ../non_drowsy_recalled_videos_high_fps/
rm 3048966523.mp4
open 3048970159.mp4
cp 3048970159.mp4 ../non_drowsy_recalled_videos_high_fps/
rm 3048970159.mp4
ls
open 3048975559.mp4
cp 3048975559.mp4 ../non_drowsy_recalled_videos_high_fps/
rm 3048975559.mp4
open 3049002564.mp4
rm 3049002564.mp4
open 3049002565.mp4
rm 3049002565.mp4
open 3049006813.mp4
cp 3049006813.mp4 ../non_drowsy_recalled_videos_high_fps/
rm 3049006813.mp4
open 3049006815.mp4
rm 3049006815.mp4
open 3049014456.mp4
cp 3049014456.mp4 ../drowsy_recalled_videos_high_fps/
ls ../drowsy_recalled_videos_high_fps/
clear
ls
open 3049014456.mp4
rm 3049014456.mp4
open 3049017245.mp4
cp 3049017245.mp4 ../drowsy_recalled_videos_high_fps/
rm 3049017245.mp4
open 3049021378.mp4
rm 3049021378.mp4
open 3049021743.mp4
rm 3049021743.mp4
open 3049021744.mp4
rm 3049021744.mp4
open 3049032492.mp4
cp 3049032492.mp4 ../non_drowsy_recalled_videos_high_fps/
rm 3049032492.mp4
open 3049196654.mp4
mv 3049196654.mp4 ../non_drowsy_recalled_videos_high_fps/
ls ../non_drowsy_recalled_videos_high_fps/ | grep 3049196654.mp4
open 3049197933.mp4
mv 3049197933.mp4 ../non_drowsy_recalled_videos_high_fps/
open 3049197935.mp4
rm 3049197935.mp4
open 3049211425.mp4
rm 3049211425.mp4
open 3049211771.mp4
mv 3049211771.mp4 ../
clear
ls
open 3049268039.mp4
mv 3049268039.mp4 ../non_drowsy_recalled_videos_high_fps/
open 3049272391.mp4
mv 3049272391.mp4 ../non_drowsy_recalled_videos_high_fps/
clear
ls
open 3049272393.mp4
cp 3049272393.mp4 ../non_drowsy_recalled_videos_high_fps/
rm 3049272393.mp4
open 3049281126.mp4
rm 3049281126.mp4
open 3049282966.mp4
mv 3049282966.mp4 ../drowsy_recalled_videos_high_fps/
open 3049309757.mp4
rm 3049309757.mp4
open 3049493735.mp4
mv 3049493735.mp4 ../non_drowsy_recalled_videos_high_fps/
open 3049493740.mp4
rm 3049493740.mp4
open 3049524806.mp4
mv 3049524806.mp4 ../non_drowsy_recalled_videos_high_fps/
open 3049614041.mp4
rm 3049614041.mp4
open 3049618599.mp4
mv 3049618599.mp4 ../drowsy_recalled_videos_high_fps/
open 3049619378.mp4
rm 3049619378.mp4
open 3049652154.mp4
rm 3049652154.mp4
open 3049654031.mp4
mv 3049654031.mp4 ../drowsy_recalled_videos_high_fps/
open 3049654630.mp4
rm 3049654630.mp4
open 3049654634.mp4
rm 3049654634.mp4
clear
ls
open 3049674179.mp4
mdkidr ../half_drowsy
mkdir ../half_drowsy
mv 3049674179.mp4 ../half_drowsy/
open 3049817021.mp4
rm 3049817021.mp4
open 3049848583.mp4
rm 3049848583.mp4
open 3049869720.mp4
mv 3049869720.mp4 ../half_drowsy/
open 3049925268.mp4
rm 3049925268.mp4
open 3049925657.mp4
mv 3049925657.mp4 ../half_drowsy/
open 3050177784.mp4
rm 3050177784.mp4
open 3050177785.mp4
rm 3050177785.mp4
open 3050178354.mp4
mv 3050178354.mp4 ../non_drowsy_recalled_videos_high_fps/
open 3050238102.mp4
mv 3050238102.mp4 ../half_drowsy/
open 3050265387.mp4
mv 3050265387.mp4 ../non_drowsy_recalled_videos_high_fps/
open 3050272320.mp4
open 3050272321.mp4
mv 3050272321.mp4 ../non_drowsy_recalled_videos_high_fps/
open 3050272551.mp4
rm 3050272551.mp4
open 3050273552.mp4
rm 3050273552.mp4
clearf
clear
ls
open 3050272320.mp4
mv 3050272320.mp4 ../half_drowsy/
rm ../non_drowsy_recalled_videos_high_fps/3050272321.mp4
open 3050355750.mp4
mv 3050355750.mp4 ../half_drowsy/
open 3050474788.mp4
mv 3050474788.mp4 ../non_drowsy_recalled_videos_high_fps/
open 3050528034.mp4
rm [200~3050528034.mp4
rm 3050528034.mp4
open 3050528035.mp4
rm 3050528035.mp4
open 3050528242.mp4
mv 3050528242.mp4 ../drowsy_recalled_videos_high_fps/
open 3050573183.mp4
mv 3050573183.mp4 ../non_drowsy_recalled_videos_high_fps/
ls ../drowsy_recalled_videos_high_fps/ 
ls ../drowsy_recalled_videos_high_fps/  | wc -l
clear
ls
open 3050660153.mp4
mv 3050660153.mp4 ../non_drowsy_recalled_videos_high_fps/
open 3050660154.mp4
rm 3050660154.mp4
vim 3050667880.mp4
open 3050667880.mp4
rm 3050667880.mp4
open 3050709859.mp4
mv 3050709859.mp4 ../non_drowsy_recalled_videos_high_fps/
open 3050709861.mp4
rm 3050709861.mp4
open 3050714132.mp4
rm 3050714132.mp4
open 3050714133.mp4
rm 3050714133.mp4
open 3050952223.mp4
rm 3050952223.mp4
open 3051100365.mp4
mv 3051100365.mp4 ../non_drowsy_recalled_videos_high_fps/
open 3051101197.mp4
mv 3051101197.mp4 ../non_drowsy_recalled_videos_high_fps/
open 3051107536.mp4
mv 3051107536.mp4 ../non_drowsy_recalled_videos_high_fps/
open 3051130340.mp4
rm 3051130340.mp4
open 3051200383.mp4
mv 3051200383.mp4 ../half_drowsy/
open 3051227612.mp4
mv 3051227612.mp4 ../non_drowsy_recalled_videos_high_fps/
open 3051227624.mp4
rm 3051227624.mp4
open 3051227625.mp4
rm 3051227625.mp4
open 3051228099.mp4
mv 3051228099.mp4 ../drowsy_recalled_videos_high_fps/
cd projects/
cd drowsiness/
ls
cd recalled_videos_high_fps/
ls
ls | wc -l
cd ../
ls
find ./*.mp4
find ./ -name "*.mp4
find ./ -name "*.mp4"
cd ../
ls
cd ../
ls
cd code/
cd KeepTruckin/
cd kt/
kt aws-okta-login
cd
vim .bash_history 
cat .bash_history 
cd projects/
cd drowsiness/
ls
cd recalled_videos_high_fps/
ls
aws s3 cp s3://keep-truckin-cam-init-preview/test_frame_annotation/driver_facing/drowsiness_collision_recalled_videos/batch4_2024-12-23_to_2025-01-30/ ./ --recursive
ls
ipython analysis.ipynb 
clear
ls
cd projects/
ls
cd drowsiness/
ls
vim split_videos.sh 
vim slow_fps.sh 
./slow_fps.sh 
clear
ls
zip -r non_drowsy_recalled_videos.zip non_drowsy_recalled_videos/
zip -r drowsy_recalled_videos.zip drowsy_recalled_videos/
scp drowsy_recalled_videos.zip sf:~/drowsy
scp non_drowsy_recalled_videos.zip sf:~/drowsy
clear
ls
open non_drowsy_recalled_videos/3049006813.mp4
vim notes.txt 
cd projects/
cd drowsiness/
ls
mkdir recalled_video_json
scp sf:~/drowsy/json/* recalled_video_json
scp -r sf:~/drowsy/json/* recalled_video_json
cd recalled_video
cd recalled_video_json/
ls
cd drowsy/
ls
cd ../
ls
mkdir non_drowsy
mv *.json non_drowsy
ls
cd ../
scp sf:~/drowy/run_recalled_video.py ./
scp sf:~/drowsy/recalled_video_analysis.py
scp sf:~/drowsy/recalled_video_analysis.py ./
vim recalled_video_analysis.py 
ssh sf
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis.py
source venv/bin/activate
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis.py
pip install matplotlib
python3 /home/antonio/projects/drowsiness/recalled_video_analysis.py
pip install scikit-learn
python3 /home/antonio/projects/drowsiness/recalled_video_analysis.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis.py
cd videos
vim no_event/d4ace23f-e031-445a-b2b1-333a39d33f3e.mp4 
cd videos
open no_event/d4ace23f-e031-445a-b2b1-333a39d33f3e.mp4 
open distraction/4e7ce34e-3442-4507-a1ca-a744e9ef520b.mp4 
open mobile_usage/0e445e72-5081-4176-a0f0-7f2f88544b27.mp4 
rg ./ a93122d-4623-4024-bcca-4a4c90ad5859
rg a93122d-4623-4024-bcca-4a4c90ad5859
open mobile_usage/9a93122d-4623-4024-bcca-4a4c90ad5859.mp4 
open mobile_usage/f1edc628-6899-4d54-a107-914ecddc1f0d.mp4 
open eyes_closed/9e8b9c31-56e6-4e45-9b9f-a4144d4dcd4c.mp4 
open eyes_closed/50308105-6092-4567-9e0a-9168b6664006.mp4 
rg 933ea51d-d5bd-481f-bd0c-bf175546de68
find ./ -name 933ea51d-d5bd-481f-bd0c-bf175546de68
find ./ -name 933ea51d-d5bd-481f-bd0c-bf175546de68*
open eyes_closed/933ea51d-d5bd-481f-bd0c-bf175546de68.mp4 
clear
33ea51d-d5bd-481f-bd0c-bf175546de6ear
clear
ls
open eyes_closed/933ea51d-d5bd-481f-bd0c-bf175546de68.mp4 
open stretching/mp4-driver_facing-5916b9bd-c79c-4714-949a-ce8d86b43ad9.mp4 
open eyes_closed/9e8b9c31-56e6-4e45-9b9f-a4144d4dcd4c.mp4 
open no_event/49021832-2312-4539-9c83-752a58103d3c.mp4 
open mobile_usage/36fc0760-7c9f-4035-bc29-ec44b0a02750.mp4 
find ./ -name f4be864d-9a92-4c48-9aae-e61639018a5a
find ./ -name f4be864d-9a92-4c48-9aae-e61639018a5a*
open eyes_closed/f4be864d-9a92-4c48-9aae-e61639018a5a.mp4 
open eyes_closed/beaf3c2d-1f06-4851-b0f1-550c3a379408.mp4 
open eyes_closed/a7d09c06-4620-4015-b316-2b24fb90ad46.mp4 
open eyes_closed/50308105-6092-4567-9e0a-9168b6664006.mp4 
cd projects/
clear
ls
cd drowsiness/
ls
cat json/event_descriptions_v3.json | grep "remains still"
cat json/event_descriptions_v3.json | grep "minimal movement"
vim json/event_descriptions_v3.json 
clear
ls
clear
ls
clear
ls
clear
ls
clear
ls
clear
ls
clear
ls
clear
ls
clear
ls
clear
ls
clear
ls
clear
ls
clear
ls
clear
cat json/event_descriptions_v3.json | grep "squinting"
clear
cd videos
find ./ -name 15cc173c-2c16-482d-b3df-df4aec8e200e*
open smoking/15cc173c-2c16-482d-b3df-df4aec8e200e.mp4 
open smoking/0142433c-f61a-4527-b295-fa0a3189817b.mp4 
open smoking/6280af46-c9c4-4578-b298-2b76fbd28072.mp4 
find ./ -name  45a7e10e-2e6e-4428-ae6f-bb5d31b4d41d
find ./ -name  45a7e10e-2e6e-4428-ae6f-bb5d31b4d41d*
open no_event/45a7e10e-2e6e-4428-ae6f-bb5d31b4d41d.mp4 
open no_event/04ebc750-7f29-475c-8e6c-7166a8409942.mp4 
open no_event/66e80b13-0075-4509-a19e-154bba828e7d.mp4 
open no_event/4fbc251f-c404-4e65-bead-385e3775d43c.mp4 
open distraction/2f6a7e09-7db5-4e14-934e-d37717f39e2d.mp4 
open mobile_usage/36fc0760-7c9f-4035-bc29-ec44b0a02750.mp4 
open eyes_closed/54a6f961-af42-4050-862a-a05d9b26e86c.mp4 
open eyes_closed/555c0f07-90a0-4712-9b2e-903d0bea584e.mp4 
open eyes_closed/db36d74b-4ed5-4412-87fb-0f4826a1d45b.mp4 
open eyes_closed/1dade47a-aca6-4f26-90af-0b30e6eec62d.mp4 
open eyes_closed/d68ddf36-b13e-4068-a419-6e1cb59d461f.mp4 
open eyes_closed/0e507e17-005d-4a41-8a48-4e08983e270b.mp4 
open eyes_closed/3859db1b-016c-402f-9873-0f0c01c4ae16.mp4 
find ./ -name f4be864d-9a92-4c48-9aae-e61639018a5a*
open eyes_closed/f4be864d-9a92-4c48-9aae-e61639018a5a.mp4 
open eyes_closed/bd36ef11-4fe2-4225-b427-4074e00cb149.mp4 
open eyes_closed/10100b38-8248-4f34-b9ad-2763ff1da85f.mp4 
clkear
clear
open eyes_closed/3f956633-0cf4-4d49-a455-d457eda05a5a.mp4 
open eyes_closed/a99f0a50-318a-437f-877f-9c3b00a6c541.mp4 
open eyes_closed/a821a05a-2c3e-4425-ab3b-3a77f0bf4610.mp4 
open eyes_closed/f6ae405b-c452-4279-b826-9221054f9d2a.mp4 
open eyes_closed/c0a45665-935d-4119-800d-a65cf523de4b.mp4 
open eyes_closed/48d21346-3f1a-4f70-aa8f-682a2073232c.mp4 
open eyes_closed/fecf2911-8398-4236-a1a2-6c7699afad4c.mp4 
open eyes_closed/e635fc5b-6ad8-4247-8b3c-0f4cbecbbb21.mp4 
open eyes_closed/92dd6828-21de-4012-a061-166855af2463.mp4 
open eyes_closed/b04c666d-a243-440a-b9de-761f2dcb2c65.mp4 
open eyes_closed/191f1556-3d77-4d4d-a7ea-5d05baedb349.mp4 
open yawning/1d19b81d-8749-4269-b165-f55adaf0ee76.mp4 
open yawning/ca9a3b59-8304-4114-b8ad-520c906efc46.mp4 
open yawning/3337987b-3249-4e2b-9eba-404f4aea0a70.mp4 
open yawning/b0473224-73ac-4420-8ffe-3b135c7eef75.mp4 
open yawning/7f8e3235-e31c-444d-aeb8-b026aa90a713.mp4 
open eye_rubbing/mp4-driver_facing-755f0a68-a7d1-4a44-8f4d-4f144cab3669.mp4 
reset
python3 /home/antonio/projects/drowsiness/count_frames.py
reset
python3 /home/antonio/projects/drowsiness/open_json.py
source venv/bin/activate
reset
python3 /home/antonio/projects/drowsiness/open_json.py
reset
python3 /home/antonio/projects/drowsiness/open_json.py
cd projects/
cd drowsiness/
ls
vim json/event_descriptions_v3.json 
clear
ls
clear
ls
clear
ls
clear
ls
clear
ls
vim open_json.py 
reset
python3 /home/antonio/projects/drowsiness/sort_by_filesize.py
reset
python3 /home/antonio/projects/drowsiness/sort_by_filesize.py
reset
python3 /home/antonio/projects/drowsiness/sort_by_filesize.py
clear
reset
python3 /home/antonio/projects/drowsiness/sort_by_filesize.py
reset
python3 /home/antonio/projects/drowsiness/condense_event_descriptions.py
reset
python3 /home/antonio/projects/drowsiness/condense_event_descriptions.py
reset
python3 /home/antonio/projects/drowsiness/condense_event_descriptions.py
reset
python3 /home/antonio/projects/drowsiness/condense_event_descriptions.py
reset
python3 /home/antonio/projects/drowsiness/condense_event_descriptions.py
reset
python3 /home/antonio/projects/drowsiness/condense_event_descriptions.py
reset
python3 /home/antonio/projects/drowsiness/temp4.py
scp json/filename2numframes.json sf:~/drowsy
reset
python3 /home/antonio/projects/drowsiness/temp5.py
reset
python3 /home/antonio/projects/drowsiness/temp5.py
reset
python3 /home/antonio/projects/drowsiness/temp5.py
reset
python3 /home/antonio/projects/drowsiness/temp5.py
reset
python3 /home/antonio/projects/drowsiness/temp5.py
reset
python3 /home/antonio/projects/drowsiness/temp5.py
reset
python3 /home/antonio/projects/drowsiness/temp5.py
reset
python3 /home/antonio/projects/drowsiness/temp5.py
ls
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis_v2.py
source venv/bin/activate
python3 /home/antonio/projects/drowsiness/recalled_video_analysis_v2.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis_v2.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis_v2.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis_v2.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis_v2.py
c;ear
clear
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis_v2.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis_v2.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis_v2.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis_v2.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis_v2.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis_v2.py
kreset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis_v2.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis_v2.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis_v2.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis_v2.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis_v2.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis_v2.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis.py
open ./recalled_video_json/drowsy/3049282966.json
open ./drowsy_recalled_videos/3049282966.mp4
python3 /home/antonio/projects/drowsiness/recalled_video_analysis.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis.py
ssh sf
cd video
cd videos
cd eyes_closed/
open db36d74b-4ed5-4412-87fb-0f4826a1d45b.mp4 
open 3a089701-a353-4946-b920-430de6451f57.mp4 
open 152ad62a-3463-4160-a11c-705031364849.mp4 
open e3205c41-8d4a-475c-8a1b-1107923d0428.mp4 
open d68ddf36-b13e-4068-a419-6e1cb59d461f.mp4 
open 70f6517c-5125-483f-a4af-b90993ee131c.mp4 
open 0e507e17-005d-4a41-8a48-4e08983e270b.mp4 
open bc4b6774-b30c-4c42-8fd1-ee29efa15879.mp4 
open db5fcd74-89f4-4e38-967b-0408cb05130d.mp4 
open f675c44b-5ae1-4e02-8fa7-305fa8c7cb17.mp4 
open ba368575-5443-492f-a770-38472e8da956.mp4 
open 370fe42c-f86a-4a7f-abc9-9f18a2a5dc42.mp4 
open 80e41b42-0bb5-4d38-9afa-aa7836f9cc6f.mp4 
open 7d7ecb54-7fbf-4f23-8cd0-cd445e01c811.mp4 
open f4be864d-9a92-4c48-9aae-e61639018a5a.mp4 
open d8fa041f-2ef5-494f-8a9a-fe434bb9f679.mp4 
open 6f2fe651-a9c1-4c71-85de-fa2172cf0d78.mp4 
open 9e8b9c31-56e6-4e45-9b9f-a4144d4dcd4c.mp4 
open e0db014f-1808-4507-93da-7c352dff5a67.mp4 
open beea2801-a054-4e6d-8ebf-4a7fdad6f619.mp4 
open e3102b3c-4c85-4500-b49e-e04871789668.mp4 
open beaf3c2d-1f06-4851-b0f1-550c3a379408.mp4 
open 58f2ec7f-fe57-4e54-ad36-ea4e84dd2c50.mp4 
open a99f0a50-318a-437f-877f-9c3b00a6c541.mp4 
open 03b3d66f-f7a5-4720-a42f-5318a58da12c.mp4 
open f073c75f-4bf4-4d45-bd29-4f176c425745.mp4 
open c634bf67-e22c-405c-8a96-d66a165a480d.mp4 
open 5560ee06-2a23-494a-aa46-9628d6087253.mp4 
open a7d09c06-4620-4015-b316-2b24fb90ad46.mp4 
open 48d21346-3f1a-4f70-aa8f-682a2073232c.mp4 
open fecf2911-8398-4236-a1a2-6c7699afad4c.mp4 
open 50308105-6092-4567-9e0a-9168b6664006.mp4 
open d5d0a750-18e3-4f60-8247-664a132b8138.mp4 
open 0749d143-0161-487e-9808-134723dc9b19.,
open 0749d143-0161-487e-9808-134723dc9b19.mp4 
open fa1a550e-178b-4137-8467-a63e8f9bb16b.mp4 
open 6c140927-3dad-452d-ba58-6d29aad0aa5b.mp4 
open 2a150c7d-5ff2-4e06-bdb5-771ff7b6223f.mp4 
open 67696b32-d683-443c-8d66-494711893b22.mp4 
open 9894e21d-1a7c-4232-b087-9a174b2d8f57.mp4 
open e635fc5b-6ad8-4247-8b3c-0f4cbecbbb21.mp4 
open 440a2579-053d-4652-ad61-134b19449543.mp4 
open 92dd6828-21de-4012-a061-166855af2463.mp4 
open 2b472850-865c-4571-8118-931c3f9b741d.mp4 
open 4b3b4a43-6bee-4e3f-9715-98508ea58860.mp4 
open 22fdd954-a5f2-4626-bb3b-803723dc223e.mp4 
open 26c1101c-e165-4829-849c-e34b3274f32c.mp4 
open b917f869-cfa9-412b-817b-6e58c980226c.mp4 
open dcc16f06-31c6-4c47-ac1d-886df495a42f.mp4 
open b04c666d-a243-440a-b9de-761f2dcb2c65.mp4 
open 1be79464-ce36-4d4b-8fe9-8809bf662c1c.mp4 
open 191f1556-3d77-4d4d-a7ea-5d05baedb349.mp4 
open 8d881178-cd79-4736-a060-c8036fe6c644.mp4 
open d246187c-c15d-4601-a5b0-ab3fce260a37.
find ../ -name d246187c-c15d-4601-a5b0-ab3fce260a37*
open ../yawning/d246187c-c15d-4601-a5b0-ab3fce260a37.mp4 
cd ../yawning/
open 72e6b600-8b44-4924-8759-8b38cef4391b.mp4 
open 6073314e-2e35-432a-9a0d-ba6e325bb326.mp4 
open 65068c4d-c40b-4472-985c-304aabc4e52a.mp4 
open 9cd35254-918e-476b-9454-867a1e720e1f.mp4 
cd ../
cd stretching/
open mp4-driver_facing-73b3db18-3b1f-4b4d-b338-254f403b4847.mp4 
open mp4-driver_facing-942c6a25-d7c4-4035-9d51-b907207d9144.mp4 
open mp4-driver_facing-b188251a-3284-4434-9790-201bb60a3815.mp4 
open mp4-driver_facing-1458633f-2239-40e8-b713-9c4e1a9ea2a0.mp4 
open mp4-driver_facing-db1b8631-7f31-47d4-a7c1-a32970c03b06.mp4 
open mp4-driver_facing-d9ad9b92-da9f-4c12-9c4f-2ff77b15ed10.mp4 
open mp4-driver_facing-b0427b70-7c31-4362-ab3c-587b4f5d5e02.mp4 
open mp4-driver_facing-81baed2a-f02f-403b-9acd-189d755c277f.mp4 
open mp4-driver_facing-1bfcd19d-af40-4b8b-b7ff-f603c35840c6.mp4 
open mp4-driver_facing-135e1c5c-e756-4328-8c1e-9d0b473a4d02.mp4 
cd ../
cd eye_rubbing/
open mp4-driver_facing-081a227c-8a93-4b4e-bcac-f205a3670c0f.mp4 
open mp4-driver_facing-7893ea30-5542-4708-847b-2a0277ab861b.mp4 
open mp4-driver_facing-97907203-24fa-4e56-ae2f-cf2cb6976e31.mp4 
open mp4-driver_facing-d2741d40-5bbd-45a0-aa2a-1f5fdc864f8b.mp4 
open mp4-driver_facing-e7cff027-8fa6-4075-b8e9-a62f66931075.mp4 
open mp4-driver_facing-0946c394-8bbb-441e-ad97-56b1cc174c0f.mp4 
open mp4-driver_facing-e0c18101-6f77-4c5d-8ab8-c84084411d25.mp4 
open mp4-driver_facing-cf86dc6a-9639-424a-8965-2d33b241be3c.mp4 
open mp4-driver_facing-f52e1c6c-4613-4826-b548-4f0a10cb1874.mp4 
open mp4-driver_facing-f51d6c6d-c583-48e4-8290-b9c9c74945d0.mp4 
open mp4-driver_facing-bcbcd60f-aca4-491f-a13f-3f05c6688e4f.mp4 
open mp4-driver_facing-d2c5cb44-ba43-4235-bc0e-0754583fd966.mp4 
cd ../
open no_event/854e1661-cb71-463a-af60-ad6bf3ed251b.
open smoking/854e1661-cb71-463a-af60-ad6bf3ed251b.mp4 
open 18d9b707-4742-4d72-abe9-372792667b3f.
open smoking/18d9b707-4742-4d72-abe9-372792667b3f.mp4 
open 54063874-530d-4a75-9286-425d232dbc00.
open smoking/54063874-530d-4a75-9286-425d232dbc00.mp4 
open smoking/304e176d-fceb-477d-b356-bf200ab0a104.mp4 
open no_event/47bc7c79-9f50-425c-ba5e-3412b1ef1260.mp4 
open no_event/49021832-2312-4539-9c83-752a58103d3c.mp4 
open no_event/95550277-86de-461d-a48f-fd0d5927205e.mp4 
open no_event/04c2b963-00c8-4422-9f15-0c39e7723556.mp4 
open no_event/e6e7b27c-37d7-477c-abf8-cd2d08bcd678.mp4 
open no_event/4fbc251f-c404-4e65-bead-385e3775d43c.mp4 
open mobile_usage/453a1131-d091-487b-be5a-c47b7bcef634.mp4 
open 3a089701-a353-4946-b920-430de6451f57.
open yawning/3a089701-a353-4946-b920-430de6451f57.
find ./ -name 3a089701-a353-4946-b920-430de6451f57*
open eyes_closed/3a089701-a353-4946-b920-430de6451f57.mp4 
find ./ -name 70f6517c-5125-483f-a4af-b90993ee131c*
open eyes_closed/70f6517c-5125-483f-a4af-b90993ee131c.mp4 
open eyes_closed/370fe42c-f86a-4a7f-abc9-9f18a2a5dc42.mp4 
open eyes_closed/7d7ecb54-7fbf-4f23-8cd0-cd445e01c811.mp4 
open eyes_closed/10100b38-8248-4f34-b9ad-2763ff1da85f.mp4 
open eyes_closed/6f2fe651-a9c1-4c71-85de-fa2172cf0d78.mp4 
open eyes_closed/bbeab46a-b70e-4b7c-8c20-c3468fb85426.mp4 
open eyes_closed/34f68329-b4ba-462a-8631-dd66d3b3274a.mp4 
open eyes_closed/beea2801-a054-4e6d-8ebf-4a7fdad6f619.mp4 
open eyes_closed/58f2ec7f-fe57-4e54-ad36-ea4e84dd2c50.mp4 
open eyes_closed/360e6671-d975-4211-84a3-0d7d5a7be173.mp4 
open eyes_closed/a821a05a-2c3e-4425-ab3b-3a77f0bf4610.mp4 
open eyes_closed/c0a45665-935d-4119-800d-a65cf523de4b.mp4 
open eyes_closed/5560ee06-2a23-494a-aa46-9628d6087253.mp4 
open eyes_closed/fecf2911-8398-4236-a1a2-6c7699afad4c.mp4 
open eyes_closed/d49e042d-bfb0-4368-b2da-391ee8b8910b.mp4 
open eyes_closed/0749d143-0161-487e-9808-134723dc9b19.mp4 
open eyes_closed/fa1a550e-178b-4137-8467-a63e8f9bb16b.mp4 
open eyes_closed/
open eyes_closed/8199d97c-8dc2-4911-a527-587680c29134.mp4 
open eyes_closed/e635fc5b-6ad8-4247-8b3c-0f4cbecbbb21.mp4 
open eyes_closed/440a2579-053d-4652-ad61-134b19449543.mp4 
open eyes_closed/22fdd954-a5f2-4626-bb3b-803723dc223e.mp4 
open eyes_closed/b917f869-cfa9-412b-817b-6e58c980226c.mp4 
open eyes_closed/dcc16f06-31c6-4c47-ac1d-886df495a42f.mp4 
open eyes_closed/b04c666d-a243-440a-b9de-761f2dcb2c65.mp4 
open yawning/4c8df61b-e04b-453a-b2b6-6c7995516d7a.mp4 
open yawning/72e6b600-8b44-4924-8759-8b38cef4391b.mp4 
open yawning/43c5047a-d20f-4243-b48d-17099c638b41.mp4 
open yawning/62244870-e0ac-4431-8b53-d50dff6da511.mp4 
open yawning/4f44194f-fb93-4c57-b7e2-5a224ac8d434.mp4 
open yawning/5b48c170-8923-4d54-a602-a404bd4a463c.mp4 
open yawning/f1297a25-038c-4223-98cd-ae096093772b.mp4 
open yawning/1d19b81d-8749-4269-b165-f55adaf0ee76.mp4 
open yawning/bf2a7f27-7215-4902-9458-0c52a643cb33.mp4 
open yawning/14969f25-626b-444c-b069-990d5e97805b.mp4 
open yawning/7a0c0e6a-99f1-4737-acab-047e30ea9234.mp4 
open yawning/6e2d5b24-d34a-400c-802c-cf043b244539.mp4 
open yawning/19cd8f02-eef9-496e-bd54-d4491fd9ff3d.mp4 
open yawning/228ff130-85d5-452e-b3b2-914619ae8c0a.mp4 
open yawning/27da961f-db7d-4922-b455-f22220396b09.mp4 
open yawning/2dcbda60-12e0-4668-8b1b-4d1994311448.mp4 
open yawning/d6b33541-7568-4c38-acc3-7a087d825629.mp4 
open yawning/54eee935-6c57-4d38-9aa0-006ae46dc74f.mp4 
open yawning/45343b04-ed25-445f-bf6e-7f0cf7188f05.mp4 
open yawning/df1dc21e-b465-4a2b-8a1c-2560bdb3305f.mp4 
open yawning/9c377f38-06e7-4e1c-bb3b-f2373fe91b26.mp4 
open yawning/7f8e3235-e31c-444d-aeb8-b026aa90a713.mp4 
open yawning/mp4-driver_facing-b188251a-3284-4434-9790-201bb60a3815.
open stretching/mp4-driver_facing-b188251a-3284-4434-9790-201bb60a3815.mp4 
open stretching/mp4-driver_facing-012c8829-b6ba-4292-8937-5e0203ed2920.mp4 
open stretching/mp4-driver_facing-81baed2a-f02f-403b-9acd-189d755c277f.mp4 
open stretching/mp4-driver_facing-081a227c-8a93-4b4e-bcac-f205a3670c0f.
open eye_rubbing/mp4-driver_facing-081a227c-8a93-4b4e-bcac-f205a3670c0f.mp4 
open eye_rubbing/mp4-driver_facing-e7cff027-8fa6-4075-b8e9-a62f66931075.mp4 
open yawning/c87f157e-4351-4c24-87e1-9954258c8a28.mp4 
open yawning/6e2d5b24-d34a-400c-802c-cf043b244539.mp4 
open yawning/27da961f-db7d-4922-b455-f22220396b09.mp4 
open smoking/68625776-28b3-4169-98db-e92d0c3e9e5d.mp4 
find ./ -name 3a089701-a353-4946-b920-430de6451f57*
open eyes_closed/3a089701-a353-4946-b920-430de6451f57.mp4 
open eyes_closed/bc4b6774-b30c-4c42-8fd1-ee29efa15879.mp4 
open eyes_closed/db5fcd74-89f4-4e38-967b-0408cb05130d.mp4 
find ./ -name 0f043056-b5ce-4447-929a-516c98f50f33*
open eyes_closed/0f043056-b5ce-4447-929a-516c98f50f33.mp4 
open yawning/9cd35254-918e-476b-9454-867a1e720e1f.mp4 
open yawning/f2796668-ffd3-403b-94be-e35f91e7b160.mp4 
open stretching/mp4-driver_facing-db1b8631-7f31-47d4-a7c1-a32970c03b06.mp4 
open stretching/mp4-driver_facing-81baed2a-f02f-403b-9acd-189d755c277f.mp4 
open stretching/mp4-driver_facing-b812fd4d-3edd-4329-9c42-9b39c700e650.
open eye_rubbing/mp4-driver_facing-b812fd4d-3edd-4329-9c42-9b39c700e650.mp4 
open eye_rubbing/mp4-driver_facing-da2a8eae-1390-4c1b-9cd6-62503ff1bca8.mp4 
open eye_rubbing/mp4-driver_facing-25efc34d-9e41-44b1-8cd7-f83cc0ebcb4b.mp4 
open eye_rubbing/mp4-driver_facing-3a2fc658-6d12-4a2d-a615-5c38fc013300.mp4 
open eye_rubbing/mp4-driver_facing-12f27e4b-d237-4f0e-833b-0571fa7cff23.mp4 
open eye_rubbing/mp4-driver_facing-3ead8d74-5d0f-4814-afc8-643f9fd0ee21.mp4 
find ./ -name 4659d95e-d973-4423-be0c-3d1e0005df4c
find ./ -name 4659d95e-d973-4423-be0c-3d1e0005df4c*
open eyes_closed/4659d95e-d973-4423-be0c-3d1e0005df4c.mp4 
open eyes_closed/bbeab46a-b70e-4b7c-8c20-c3468fb85426.mp4 
open yawning/882adf73-510a-446d-ae29-a43a3402770a.mp4 
open eye_rubbing/mp4-driver_facing-7893ea30-5542-4708-847b-2a0277ab861b.mp4 
open eye_rubbing/mp4-driver_facing-f51d6c6d-c583-48e4-8290-b9c9c74945d0.mp4 
reset
python3 /home/antonio/projects/drowsiness/open_json.py
source ../venv/bin/activate
cd ../
reset
python3 /home/antonio/projects/drowsiness/open_json.py
cd eyes_closed/
cd ../
find ./ -name 15cc173c-2c16-482d-b3df-df4aec8e200e*
cd videos
open smoking/15cc173c-2c16-482d-b3df-df4aec8e200e.mp4 
open no_event/45a7e10e-2e6e-4428-ae6f-bb5d31b4d41d.mp4 
open no_event/4fbc251f-c404-4e65-bead-385e3775d43c.mp4 
open mobile_usage/36fc0760-7c9f-4035-bc29-ec44b0a02750.mp4 
find ./ -name 10c3277e-7f14-4561-8c8f-5f283b19f507*
open eyes_closed/10c3277e-7f14-4561-8c8f-5f283b19f507.mp4 
open eyes_closed/e721fc5c-9aa1-4168-9ba8-601f3df70640.mp4 
open eyes_closed/3a826853-f59d-4354-b7f5-9e20bd558514.mp4 
open eyes_closed/54a6f961-af42-4050-862a-a05d9b26e86c.mp4 
open eyes_closed/555c0f07-90a0-4712-9b2e-903d0bea584e.mp4 
open eyes_closed/bc4b6774-b30c-4c42-8fd1-ee29efa15879.mp4 
open eyes_closed/db5fcd74-89f4-4e38-967b-0408cb05130d.mp4 
open eyes_closed/f675c44b-5ae1-4e02-8fa7-305fa8c7cb17.mp4 
open eyes_closed/370fe42c-f86a-4a7f-abc9-9f18a2a5dc42.mp4 
reset
python3 /home/antonio/projects/drowsiness/json/event_descriptions_v3.json
open eyes_closed/80e41b42-0bb5-4d38-9afa-aa7836f9cc6f.mp4 
open eyes_closed/7d7ecb54-7fbf-4f23-8cd0-cd445e01c811.mp4 
open eyes_closed/d8fa041f-2ef5-494f-8a9a-fe434bb9f679.mp4 
open eyes_closed/bd36ef11-4fe2-4225-b427-4074e00cb149.mp4 
open eyes_closed/6f2fe651-a9c1-4c71-85de-fa2172cf0d78.mp4 
open eyes_closed/9e8b9c31-56e6-4e45-9b9f-a4144d4dcd4c.mp4 
open eyes_closed/e0db014f-1808-4507-93da-7c352dff5a67.mp4 
open eyes_closed/34f68329-b4ba-462a-8631-dd66d3b3274a.mp4 
open eyes_closed/beea2801-a054-4e6d-8ebf-4a7fdad6f619.mp4 
open eyes_closed/beaf3c2d-1f06-4851-b0f1-550c3a379408.mp4 
open eyes_closed/a99f0a50-318a-437f-877f-9c3b00a6c541.mp4 
open eyes_closed/f073c75f-4bf4-4d45-bd29-4f176c425745.mp4 
open eyes_closed/4364091e-1dbe-4b06-ad85-9d493037ed72.mp4 
open eyes_closed/d49e042d-bfb0-4368-b2da-391ee8b8910b.mp4 
open eyes_closed/0749d143-0161-487e-9808-134723dc9b19.mp4 
open eyes_closed/8199d97c-8dc2-4911-a527-587680c29134.mp4 
open eyes_closed/6c140927-3dad-452d-ba58-6d29aad0aa5b.mp4 
open eyes_closed/67696b32-d683-443c-8d66-494711893b22.mp4 
open eyes_closed/440a2579-053d-4652-ad61-134b19449543.mp4 
open eyes_closed/92dd6828-21de-4012-a061-166855af2463.mp4 
open eyes_closed/2b472850-865c-4571-8118-931c3f9b741d.mp4 
open eyes_closed/4b3b4a43-6bee-4e3f-9715-98508ea58860.mp4 
open eyes_closed/26c1101c-e165-4829-849c-e34b3274f32c.mp4 
open eyes_closed/1be79464-ce36-4d4b-8fe9-8809bf662c1c.mp4 
open eyes_closed/191f1556-3d77-4d4d-a7ea-5d05baedb349.mp4 
open eyes_closed/8d881178-cd79-4736-a060-c8036fe6c644.mp4 
open eyes_closed/72e6b600-8b44-4924-8759-8b38cef4391b.
open yawning/72e6b600-8b44-4924-8759-8b38cef4391b.mp4 
open yawning/6073314e-2e35-432a-9a0d-ba6e325bb326.mp4 
open yawning/2250ad11-a8af-4f05-8e32-091a414ff039.mp4 
open yawning/da0952a-e18d-4314-9dd7-17572c58f17b.
open yawning/2da0952a-e18d-4314-9dd7-17572c58f17b.mp4 
open eyes_closed/62244870-e0ac-4431-8b53-d50dff6da511.
open yawning/62244870-e0ac-4431-8b53-d50dff6da511.mp4 
open yawning/1d19b81d-8749-4269-b165-f55adaf0ee76.mp4 
open yawning/9cd35254-918e-476b-9454-867a1e720e1f.mp4 
open yawning/f0af1d1b-0451-4a2a-a897-f30107aed032.mp4 
open yawning/bf2a7f27-7215-4902-9458-0c52a643cb33.mp4 
open yawning/8ad29223-fc59-425a-a752-c665f5ab336f.mp4 
open yawning/19cd8f02-eef9-496e-bd54-d4491fd9ff3d.mp4 
open yawning/40b45316-2f74-4f62-83d3-fa0e09e08b01.mp4 
open yawning/7bddc42f-4a91-4639-b2bb-dd56f9e15158.mp4 
open yawning/9433d551-1443-4613-b81b-274fbbb3d051.mp4 
open yawning/27da961f-db7d-4922-b455-f22220396b09.mp4 
open yawning/9dc0aa77-280a-434a-aeb7-c34d671b5e51.mp4 
open yawning/c990b762-d791-497d-90a2-5712a09b0706.mp4 
open yawning/52633628-fb01-410f-b887-5e44c674d014.mp4 
reset
python3 /home/antonio/projects/drowsiness/open_json.py
cd ../
reset
python3 /home/antonio/projects/drowsiness/open_json.py
cd video
cd videos
clear
open yawning/54eee935-6c57-4d38-9aa0-006ae46dc74f.mp4 
open yawning/7f8e3235-e31c-444d-aeb8-b026aa90a713.mp4 
open eye_rubbing/mp4-driver_facing-7893ea30-5542-4708-847b-2a0277ab861b.mp4 
open eye_rubbing/mp4-driver_facing-97907203-24fa-4e56-ae2f-cf2cb6976e31.mp4 
open eye_rubbing/mp4-driver_facing-f51d6c6d-c583-48e4-8290-b9c9c74945d0.mp4 
ipython
reset
python3 /home/antonio/projects/drowsiness/condense_event_descriptions.py
reset
python3 /home/antonio/projects/drowsiness/condense_event_descriptions.py
reset
python3 /home/antonio/projects/drowsiness/condense_event_descriptions.py
scp json/event_descriptions_v5.json sf:~/drowsy
reset
python3 /home/antonio/projects/drowsiness/condense_event_descriptions.py
scp json/event_descriptions_v5.json sf:~/drowsy
python3 /home/antonio/projects/drowsiness/condense_event_descriptions.py
cd ../
open smoking/15cc173c-2c16-482d-b3df-df4aec8e200e.mp4 
open 9d1b7eda-179b-4813-99f3-6f37539e8007.
open smoking/9d1b7eda-179b-4813-99f3-6f37539e8007.mp4 
open smoking/6280af46-c9c4-4578-b298-2b76fbd28072.mp4 
open no_event/45a7e10e-2e6e-4428-ae6f-bb5d31b4d41d.mp4 
open no_event/560af428-8c44-4951-b27b-011232fcf507.mp4 
open no_event/11f6cb29-2a8f-4c74-bed9-7d6bad3bfb4a.mp4 
open no_event/04ebc750-7f29-475c-8e6c-7166a8409942.mp4 
open no_event/66e80b13-0075-4509-a19e-154bba828e7d.mp4 
open no_event/4fbc251f-c404-4e65-bead-385e3775d43c.mp4 
open no_event/10c3277e-7f14-4561-8c8f-5f283b19f507.
open mobile_usage/10c3277e-7f14-4561-8c8f-5f283b19f507.
open eyes_closed/10c3277e-7f14-4561-8c8f-5f283b19f507.mp4 
open eyes_closed/aec7ee28-27cd-4e22-95db-641b95c2df5d.mp4 
open eyes_closed/4659d95e-d973-4423-be0c-3d1e0005df4c.mp4 
open eyes_closed/137dda0b-1dd0-4465-98f8-567dad2ef532.mp4 
open eyes_closed/4c671c55-0df8-4b02-859b-3c5a2eb00215.mp4 
open eyes_closed/e721fc5c-9aa1-4168-9ba8-601f3df70640.mp4 
open eyes_closed/3a826853-f59d-4354-b7f5-9e20bd558514.mp4 
open eyes_closed/34e0ae1f-a804-4a64-a11a-1c3c9c40ea26.mp4 
open eyes_closed/569d6118-ad5d-4a3e-8db1-d91af553fa5.
find ./ -name 569d6118-ad5d-4a3e-8db1-d91af553fa5*
open eyes_closed/569d6118-ad5d-4a3e-8db1-d91af553fa51.mp4 
vim notes.txt 
cd projects/
cd drowsiness/
ls
cp json/event_descriptions_v3.json json/event_descriptions_v3_backup.json
vim json/event_descriptions_v3.json 
clear
ls
vim condense_event_descriptions.py 
cd
cd /data/
cd events/
cd eval_videos/
find ./ -name *2933be4e-fee6-4b56-b32d-753844c7113b*
open seatbelt/2933be4e-fee6-4b56-b32d-753844c7113b.mp4 
cdf
cd
clear
ssh sf
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis_v2.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis_v2.py
ls recalled_video_json/non_drowsy_v3/
ls
cd recalled_video_json/
ls
cd drowsy_v3/
ls
cd ../
cd non_drowsy_v3/
ls
rm -r drowsy*
rm -r non_drowsy*
rm recalled.zip 
ls
cd ../../
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis_v2.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis_v2.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis_v2.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis_v2.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis_v2.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis_v2.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis_v2.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis_v2.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis_v2.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis_v2.py
reset
python3 /home/antonio/projects/drowsiness/recalled_video_analysis_v2.py
clear
ls
ls ~/../
cd ../
cd antonio.ENQVnyP7/
ls
rm -rf *
sudo rm -rf *
ls
cd ../
rmdir antonio.ENQVnyP7/
sudo rmdir antonio.ENQVnyP7/
cd antonio.ENQVnyP7/
ls -al
rm -Rf *
ls -al
sudo rm -rf .*
ls -al
cd ../
rmdir antonio.ENQVnyP7/
sudo rmdir antonio.ENQVnyP7/
clear
ls
cd antonio/
clear
ls
clear
ls
clear
ls
clear
ls
clear
ls
clear
ls
clear
ls
clear
ls
clear
ls
clear
ls
clear
ls
clear
ls
clear
ls
clear
ls
clear
ls
clear
ls
clear
ls
clear
ls
clear
ls
cd projects/
ls
cd drowsiness/
ls
cd videos
ls
mkdir sleeping
cd sleeping/
scp sf:/data/users/sarim/data/cogvideox_dataset/cropped_dozing/* ./
cd ../../
vim count_frames.py
cd videos
mv sleeping sleeping_long
mkdir sleeping
cd ../
vim slow_fps.sh 
./slow_fps.sh 
cd videos
cd sleeping
ls
open ./
cd ../../
vim sort_by_filesize.py
clear
ls
clear
ls
vim condense_event_descriptions.py
ls
cd videos
ls | grep sleep
rm -r sleeping_long/
cd ../
zip -r sleeping.zip videos/sleeping/*
scp sleeping.zip sf:~/drowsy
scp json/event_descriptions_v5.json sf:~/drowsy
python condense_event_descriptions.py 
rg /filename2numframes.json
vim temp4.py 
ls
mv /data/events/eval_videos ./
cd eval_videos/
ls
cd /
cd /data/
ls
cd events/
ls
cd eval_videos/
ls
cd seatbelt/
open f1384d2b-2355-4903-a932-e4084a048812.mp4 
open e4714651-879d-494e-a063-16e6bf14ec95.mp4 
open d626fc50-db28-4019-a7a0-9c7f5f49c17d.mp4 
open ce5d7622-1980-4732-8aa0-48494fc27714.mp4 
open c9b68132-bf82-4f10-8a02-633a392c9353.mp4 
open c2dbbb7a-9d16-4418-bec7-200ff75e2f48.mp4 
open b11ce11a-2b4a-4d64-b71a-40538daf5d3a.mp4 
open a2bd2d0f-4d30-4609-b4b2-f8420076242b.mp4 
open 9d207727-dcad-416a-a843-12210e2b6b38.mp4 
open 925de138-3a11-414e-8de0-32514f42d220.mp4 
open 8db6cc64-00b7-4619-9eea-fd70f4d6f423.mp4 
open 851b3c31-96dd-481b-84e1-7a1cd0ff3c0c.mp4 
open 80f1c903-554c-401e-8ce2-be7c63e0b545.mp4 
open 645ad761-304b-4b21-8613-4e179a47210c.mp4 
open 518bff20-99ad-4a48-9da6-ba35fe2c9801.mp4 
open 429bd259-b445-4e55-b2e1-03112c3e222b.mp4 
open 34ab771e-e40c-4e45-b325-714e7421ad6d.mp4 
open 30141c0f-e546-4996-90dc-b810e9418442.mp4 
open 2d23e742-ecdc-4d48-8258-df4fd1724d2a.mp4 
open 2933be4e-fee6-4b56-b32d-753844c7113b.mp4 
open 2389f055-cf68-456b-9ffa-a878ce7c020e.mp4 
open 15329564-accf-490c-8115-e67d6b37803f.mp4 
open 12ddda70-3443-4037-b5d3-e954102ca111.mp4 
open 08dd44c5-45fa-4bc3-8562-9000dcaad94d.mp4 
open 00efb31d-91bf-4b37-a63e-b95223ecc22e.mp4 
open f4ddd406-7aec-4637-8030-3c6c6dcc1d12.mp4 
open ecae4f56-935d-4142-8179-9a56179d515e
open ecae4f56-935d-4142-8179-9a56179d515e.mp4 
open e98a725d-4ee7-4258-b772-a016c35f904a.mp4 
open d92fcea1-379b-4220-9a2d-f2b4c31daa0e.mp4 
open ceb4bb64-101e-4a27-85d1-224c51f3f766.mp4 
open bffd4c42-1928-4263-85b7-ac2958f06401.mp4 
open b0e88147-7180-4700-96f0-1e7a04a0fa4d.mp4 
open a9fcfa5d-f14e-497e-8f48-250adc6ee505.mp4 
open a25fd45a-4e70-427e-8aff-5271ab979571.mp4 
open 99aac826-97aa-4e0c-9d7c-d56d75b76b41.mp4 
open b0e88147-7180-4700-96f0-1e7a04a0fa4d.mp4 
open a9fcfa5d-f14e-497e-8f48-250adc6ee505.mp4 
open a25fd45a-4e70-427e-8aff-5271ab979571.mp4 
open 99aac826-97aa-4e0c-9d7c-d56d75b76b41.mp4 
open 9533a119-2b0a-4415-8d3a-124587d89b13.mp4 
open 85499352-1dd0-413e-a5bd-7e6220174b6a.mp4 
open 645ad761-304b-4b21-8613-4e179a47210c.mp4 
open 518bff20-99ad-4a48-9da6-ba35fe2c9801.mp4 
open 429bd259-b445-4e55-b2e1-03112c3e222b.mp4 
open 27aa521d-e3fc-431b-a31a-bb272ea46f32.mp4 
open 205f0c3b-f119-4515-8f64-ce04d1dd6e17.mp4 
open 1caa280e-0af7-4c78-9ad1-a108e4e00400.mp4 
open 0f209961-d38a-4913-af5a-910bf2f9177c.mp4 
open 03dff77d-f400-4f2d-aa40-4e700cf6f03b.mp4 
open 0065564d-19fd-4941-a62b-4737fcdf2a2b.mp4 
open 9dc8420d-8f67-434c-ba48-8d7fb336ae08.mp4 
open 6d877d67-fadd-4766-9f54-834a7d554544.mp4 
open 288c5a08-ab6b-4412-9d56-0601e0e4b215.mp4 
open 2227903b-b071-4b08-9d9f-ce2d6e417d6e.mp4 
open 0f122958-d890-4c61-a147-a427e7aeda28.mp4 
find ./ -name 1af48c66-8bff-4630-907d-87323247cb48*
find ../ -name 1af48c66-8bff-4630-907d-87323247cb48*
open ../eyes_closed/1af48c66-8bff-4630-907d-87323247cb48.mp4 
cd ../../
clear
ls
cd
cd projects/
cd drowsiness/
ls
cd non_drowsy_recalled_videos
cd ../
open non_drowsy_recalled_videos/3049006813.mp4
open ./non_drowsy_recalled_videos/3050709859.mp4
scp sf:~/drowsy/matrix_original.png ./
open matrix_original.png 
vim open_json.py 
ls -lt
vim temp4.py 
vim condense_event_descriptions.py 
vim temp5.py
scp sf:~/drowsy/matrix_original.png ./
open matrix_original.png 
clear
ls
clear
ls
clear
ls
clear
ls
clear
ls
clear
ls
clear
ls
clear
ls
clear
ls
clear
ls
clear
ls
clear
ls
clear
ls
clear
ls
clear
ls
clear
ls
clear
ls
clear
ls
clear
ls
clear
ls
clear
ls
clear
ls
clear
ls
clear
ls
clear
ls
clear
ls
clear
ls
clear
ls
clear
ls
clear
ls
clear
ls
clear
ls
clear
ls
clear
ls
clear
ls
vim recalled_video_analysis.py 
cp recalled_video_analysis.py recalled_video_analysis_v2.py
scp sf:~/drowsy/recalled.zip ./
scp sf:~/drowsy/json/recalled.zip ./
mv recalled.zip recalled_video_json/
cd recalled_video_json
ls
unzip recalled.zip 
cd non_drowsy_v2/
ls
ls | wc -l
cd ../
clear
ls
cd ../
vim recalled_video_analysis_v2.py 
python recalled_video_analysis.py 
source venv/bin/activate
vim recalled_video_analysis.py 
source venv/bin/activate
python recalled_video_analysis.py 
cd videos
ls
cd eyes_closed/
ls
open ./
vim ../../json/event_descriptions_v3.json 
clear
cd /
cd /data/events/eval_videos
cd seatbelt/
open 3bef71dc-db6c-4078-9476-3c74b9839c80.mp4 
open bd76005b-69bd-4226-b781-286689bddf47.mp4 
open c5501a5c-c25f-4d30-9032-ac03af862727.mp4 
open 628b4441-416f-457e-b580-4e5cd3b04f43.mp4 
open 698c8a70-1324-4c2b-8364-3507022d041a.mp4 
open 3050455c-5620-4010-af6d-31682f67ce12.mp4 
open a8c7183e-c89f-4a52-822f-aa317d73f201.mp4 
open 981fbb6c-b4c1-4b38-a102-583110668b33.mp4 
open 8162ba0e-6c99-4215-851c-9d15f880ff51.mp4 
open 48d55646-9c2f-4ab6-a56d-13b817e10402.mp4 
cd ../
cd eyes_closed/
open b4886176-2ec0-461a-9c59-0f29a8a9ae7d.mp4 
cd
cd projects/drowsiness/
vim stats.txt
open non_drowsy_recalled_videos/3049006813.mp4 
open drowsy_recalled_videos/3049014456.mp4 
open non_drowsy_recalled_videos/3050709859.mp4 
open drowsy_recalled_videos/3051228099.mp4 
mv drowsy_recalled_videos/3051228099.mp4 non_drowsy_recalled_videos
open drowsy_recalled_videos/3049017245.mp4 
open non_drowsy_recalled_videos/3049006813.mp4 
cd non_drowsy_recalled_videos
ls -lt'
ls -lt
cd ../
cd drowsy_recalled_videos
open 3049282966.mp4 
cd ../
mkdir train_with
cp drowsy_recalled_videos/3049282966.mp4 train_with/
cd non_drowsy_recalled_videos
ls
open 3048372682.mp4 
vim ~/.bash_history 
open 3050709859.mp4 
open 3049006813.mp4 
cp 3048372682.mp4 ../train_with/
cd ../
cd drowsy_recalled_videos
open 3048314963.mp4 
cp 3048314963.mp4 ../train_with/
open 3048356762.mp4 
cp 3048356762.mp4 ../train_with/
cd ../
cd non_drowsy_recalled_videos
open 3050660153.mp4 
cp 3050660153.mp4 ../train_with/
open 3050573183.mp4 
vim ~/notes.txt 
cd ../
cd drowsy_recalled_videos
open 3049618599.mp4 
mv 3049618599.mp4 ../non_drowsy_recalled_videos
scp sf:~/drowsy/json/recalled.zip ../recalled_video_json/
cd ../
cd recalled_video_json/
unzip recalled.zip 
cd ../
vim recalled_video_analysis.py 
vim recalled_video_analysis_v2.py 
reset
python3 /home/antonio/times.py
reset
python3 /home/antonio/times.py
reset
python3 /home/antonio/times.py
reset
python3 /home/antonio/times.py
reset
python3 /home/antonio/times.py
reset
python3 /home/antonio/times.py
reset
python3 /home/antonio/times.py
reset
python3 /home/antonio/times.py
reset
python3 /home/antonio/times.py
reset
python3 /home/antonio/times.txt
python3 /home/antonio/times.py
reset
python3 /home/antonio/times.txt
python3 /home/antonio/times.py
reset
python3 /home/antonio/times.py
reset
python3 /home/antonio/times.py
reset
python3 /home/antonio/times.py
python times.py 
vim times.txt 
clear
ssh sf
clear
ssh sf
vim times.txt
vim times.py
ssh sf
cd projects/
cd drowsiness/
ls
zip -r videos.zip vidoes/*
zip -r videos.zip videos/*
rm videos.zip 
rg train_local_videos
vim temp5.py
reset
python3 /home/antonio/projects/drowsiness/temp5.py
reset
python3 /home/antonio/projects/drowsiness/temp5.py
reset
python3 /home/antonio/projects/drowsiness/temp5.py
ls | grep interpolated
ipython
ls videos/cropped_eyes_closed/ | wc -l
ls videos/cropped_rubbing_eyes/ | wc -l
ls videos/cropped_dozing/ | wc -l
ls videos/cropped_stretching/ | wc -l
ls -lt | grep .py
tmux a
open cropped_dozing/mp4-driver_facing-131a5d77-4245-4840-bdb3-0a51672c8f3e.mp4 
mv cropped_eyes_closed/ cropped_eyes_closed_fast
mv cropped_stretching cropped_stretching_fast
mv cropped_rubbing_eyes cropped_rubbing_eyes_fast
mv cropped_dozing cropped_dozing_fast
mkdir cropped_eyes_closed
mkdir cropped_stretching
mkdir cropped_rubbing_eyes
mkdir cropped_dozing
./slow_fps.sh 
ls
ls | grep cropped
ls cropped_eyes_closed
./slow_fps.sh 
mv cropped_eyes_closed videos
mv cropped_stretching videos
mv cropped_dozing videos
mv cropped_rubbing_eyes videos
source venv/bin/activate
reset
python3 /home/antonio/projects/drowsiness/caption_sarims_data.py
reset
python3 /home/antonio/projects/drowsiness/caption_sarims_data.py
reset
python3 /home/antonio/projects/drowsiness/caption_sarims_data.py
reset
python3 /home/antonio/projects/drowsiness/caption_sarims_data.py
reset
python3 /home/antonio/projects/drowsiness/caption_sarims_data.py
reset
python3 /home/antonio/projects/drowsiness/caption_sarims_data.py
w;reset
python3 /home/antonio/projects/drowsiness/format_train_data.py
reset
python3 /home/antonio/projects/drowsiness/interpolate_frames.py
reset
python3 /home/antonio/projects/drowsiness/format_train_data.py
reset
python3 /home/antonio/projects/drowsiness/interpolate_frames.py
zip -r interpolated_videos.zip interpolated_videos/*
zip -r interpolated_videos.zip videos_interpolated/
cat train_remote_videos_v2.txt 
scp train_remote_videos_v2.txt sf:~/cogvideo
scp prompts_v2.txt sf:~/cogvideo
scp interpolated_videos.zip  sf:~/cogvideo
vim notes.txt 
df -h
clear
du -hd1
du -hd1 | grep GB
du -hd1 | grep G
cd ktmr-installer/
du -hd1 | grep G
ls
rm *.mp4
du -hd1 | grep G
clear
du -hd1 | grep G
du 
cd ../
du -hd1 | grep G
rm -rf ./snpe2.18/
cd Downloads/
ls
du -hd1 | grep G
du -h | grep G
rm *.tar.gz
rm *.mp4
ls
du -hd1
cd ../
cd projects/
clear
du -hd1
rm -rf hackathon_2022/
cd comfyui/
du -hd1
rm -r venv
cd models_backup/
ls
rm -rf *
cd ../
rmdir models_backup/
clear
ls
cd ComfyUI/
ls
du -hd1
cd model
cd models/
ls
du -hd1
du -hd1 | grep G
cd CogVideo/
ls
cd CogVideoX-5b
ls
cd transformer/
lks
ls
rm &
rm *
cd ../
ls
cd vae/
du -hd1
cd ../
cd CogVideoX-5b-I2V/
ls
cd transformer/
ls
rm *
clear
cd ../
cd diffus
ls
cd diffusion_models/
lks
ls
df -hd1
du -hd1
cd ../
rm -rf diffusion_models/
clear
ls
cd ../
df -hd1
du -hd1
cd ../
cd pro
cd
cd projects/
cd drowsiness/
ls
du -hd1
du -hd1 | grep G
mkdir recalled_videos
vim slow_fps.sh 
./slow_fps.sh 
clear
ls
mv recalled_videos_high_fps/ /data/
df -h
du -hd1 | grep G
mv train_with/ /data/
mv half_drowsy/ /data/
mv drowsy_recalled_videos /data/
mv non_drowsy_recalled_video /data/
mv non_drowsy_recalled_videos /data/
mv pre_sleep/ /data/
cd video
cd videos
ls
ls eye_rubbing/ | wc -l
ls ../eyes_rubbing/ | wc -l
cd ../
clear
du -hd1
du -hd1 | grep G
mv eyes_rubbing/ /data/
mv stretching/ /data/
mv drowsy_recalled_videos_high_fps/ /data/
mv non_drowsy_recalled_videos_high_fps/ /data/
clear
du -hd1 | grep G
ls
rm *.zip
rm cropped_*
rm -rf cropped_*
clear
ls
rm *.mp4
clear
ls
cd videos_untrimmed/
ls
cd ../
mv videos_untrimmed/ /data/
mv eval_videos/ /data/
clear
ls
cd distraction/
ls
cd ../
mv distraction /data/
clear
ls
mv eyes_closed /data/
mv seatbelt /data/
mv smoking /data/
mv yawning /data/
mv videos_interpolated/ /data/
clear
ls
cd recalled_video
rm drowsy /data/
mv drowsy /data/
cd drowsy
ls
clear
cd ../
cd drowsy_gz/
ls
cd ../
rm -rf drowsy_gz
rmdir drowsy
clear
ls
mv mobile_usage/ /data/
ls frames/
rm -rf frames/
clear
ls
cd
du -hd1
df
df -h
mkdir -p ~/keyring-backup
cp ~/.local/share/keyrings/* ~/keyring-backup/
rm ~/.local/share/keyrings/*
ls
sudo whoami
ls
rm Access-Your-Private-Data.desktop 
ls -al
ls -l $HOME
rm README.txt 
grep ecryptfs /etc/pam.d/*
sudo vim /etc/pam.d/common-auth
vim
sudo vim /etc/pam.d/common-auth
vim /etc/pam.d/common-auth
sudo nano /etc/pam.d/common-auth
sudo nano /etc/pam.d/common-password
sudo nano /etc/pam.d/common-session
sudo whoami
grep ecryptfs /etc/pam.d/*
sudo nano /etc/pam.d/common-session.bak
sudo nano /etc/pam.d/common-session-noninteractive
ecryptfs-unwrap-passphrase
sudo whoami
rm .cache/nvim/luac/%2f*
cat files.txt 
vim 
rm .cache/nvim/luac/%2f*
rm .local/state/nvim/undo/*
rm Downloads/assets240910/*
rm /home/antonio/projects/comfyui/ComfyUI/input/17848-369562003-abstract geometric artwork, organic, ((ech_gen)), die cut, gradient, logo, ((half tone)), earth tones, GUI, Bauhaus, Ani Albers,.png"
rm "/home/antonio/projects/comfyui/ComfyUI/input/17848-369562003-abstract geometric artwork, organic, ((ech_gen)), die cut, gradient, logo, ((half tone)), earth tones, GUI, Bauhaus, Ani Albers,.png"
rm projects/trashcan_generation/llama3_images/*
rm projects/trashcan_generation/sd2_images*
rm projects/trashcan_generation/sd2_images/*
rm projects/trashcan_generation/sd5_temp/*
rm projects/trashcan_generation/sd_temp5/*
scp -r  antoniomendoza@192.168.1.41:~/saved_videos_v2/* saved_videos_v2/
open saved_videos_v2/seed_42/frames_16/im_0_er_right_hand_back_hand_lap.mp4 
scp -r  antoniomendoza@192.168.1.41:~/saved_videos_v2/* saved_videos_v2/
cd saved_videos_v2/
ls
cd seed_42/
ls
open frames_16/
cd 
mkdir saved_videos_v3
scp -r  antoniomendoza@192.168.1.41:~/saved_videos_v3/* saved_videos_v3/
open saved_videos_v3/seed_42/frames_16/
cd saved_videos_v2
ls
rm *.mp4
cd 
scp -r  antoniomendoza@192.168.1.41:~/saved_videos_v2/* saved_videos_v2/
open saved_videos_v2
scp -r  antoniomendoza@192.168.1.41:~/saved_videos_v2/* saved_videos_v2/
open saved_videos_v2/
ssh antoniomendoza@192.168.1.41
vim ~/.ssh/config 
mkdir saved_videos_v2
scp -r antonio:~/saved_videos_v2 saved_videos_v2/
ssh antonio
vim ~/.ssh/config 
scp antoniomendoza@192.168.1.41
scp antoniomendoza@192.168.1.41:~/saved_videos_v2 saved_videos_v2/
scp -r antoniomendoza@192.168.1.41:~/saved_videos_v2/* saved_videos_v2/
cd saved_videos_v2/
ls
cd seed_42/
ls
cd frames_16/
ls
open im_0_er_right_hand_back_hand_lap.mp4 
cd .../
cd ../
ls
cd ../
ls
open ./
ls
scp antoniomendoza@192.168.1.41
ssh antoniomendoza@192.168.1.41
