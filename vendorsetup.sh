echo 'Starting vendorsetup processes needed for your device'

# Stuffs to rm -rf
rm -rf kernel/nothing/sm8475
rm -rf hardware/qcom-caf/sm8450/display
rm -rf device/qcom/sepolicy_vndr/sm8450
rm -rf packages/apps/ParanoidGlyph

echo 'Cloning Vendor tree [1/5]'
# vendor/nothing/Pong
git clone https://gitlab.com/RealYasin/vendor_nothing_pong.git vendor/nothing/Pong

echo 'DONE'

echo 'Cloning Kernel tree [2/5]'
# kernel/nothing/sm8475
git clone --depth=1 https://github.com/HELLBOY017/kernel_nothing_sm8475.git -b inline kernel/nothing/sm8475 && cd kernel/nothing/sm8475 && git submodule init && git submodule update --remote && cd ../../..

echo 'DONE'

echo 'Cloning Display Hal [3/5]'
# hardware/qcom-caf/sm8450/display
git clone --depth=1 https://github.com/Nothing-phone-2-Development/android_hardware_qcom_display.git hardware/qcom-caf/sm8450/display

echo 'DONE'

echo 'Cloning sepolicy_vndr [4/5]'
# device/qcom/sepolicy_vndr/sm8450
git clone https://github.com/PongxViolet/device_qcom_sepolicy_vndr.git device/qcom/sepolicy_vndr/sm8450

echo 'DONE'

echo 'Cloning PAGlyph Repo [5/5]'
# packages/apps/ParanoidGlyph
git clone https://github.com/ProjectGhostOS/android_packages_apps_ParanoidGlyph.git packages/apps/ParanoidGlyph

echo 'Done and Completed'
