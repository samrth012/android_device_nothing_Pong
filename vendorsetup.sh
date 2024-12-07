echo 'Starting vendorsetup processes needed for your device'

# Stuffs to rm -rf
rm -rf hardware/qcom-caf/sm8450/display
rm -rf packages/apps/ParanoidGlyph
rm -rf hardware/qcom-caf/sm8450/audio/pal
rm -rf hardware/qcom-caf/sm8450/audio/primary-hal


echo 'Cloning Vendor tree [1/7]'
# vendor/nothing/Pong
git lfs clone https://github.com/samrth012/vendor_nothing_Pong.git -b 15 vendor/nothing/Pong

echo 'DONE'

echo 'Cloning Kernel tree [2/7]'
# kernel/nothing/sm8475
git clone --depth=1 https://github.com/samrth012/kernel_nothing_sm8475-meteoric.git -b inline-2 kernel/nothing/sm8475 && cd kernel/nothing/sm8475 && git submodule init && git submodule update --remote && cd ../../..

echo 'DONE'

echo 'Cloning Display Hal [3/7]'
# hardware/qcom-caf/sm8450/display
git clone https://github.com/Pong-Development/hardware_qcom-caf_sm8450_display.git hardware/qcom-caf/sm8450/display

echo 'DONE'

echo 'Cloning PAGlyph Repo [4/7]'
# packages/apps/ParanoidGlyph
git clone https://github.com/Pong-Development/packages_apps_ParanoidGlyph.git packages/apps/ParanoidGlyph

echo 'DONE'

echo 'Cloning Dolby [5/7]'
# hardware/dolby
git clone https://github.com/Pong-Development/hardware_dolby.git hardware/dolby

echo 'Pick Sepolicy Commit [6/7]'
# device/qcom/sepolicy_vndr
cd device/qcom/sepolicy_vndr/sm8450
git fetch https://github.com/Nothing-phone-2-Development/android_device_qcom_sepolicy_vndr
git cherry-pick 7cd972ffc847631f0a892e4d13eb1def59982268
cd ../../../../

echo 'Cloning audio Hal [7/7]'

git clone https://github.com/Pong-Development/vendor_qcom_opensource_arpal-lx.git hardware/qcom-caf/sm8450/audio/pal
git clone https://github.com/Pong-Development/hardware_qcom_audio-ar.git hardware/qcom-caf/sm8450/audio/primary-hal

echo 'Done and Complete'
 
