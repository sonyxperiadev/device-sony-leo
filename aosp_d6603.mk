# Copyright (C) 2014 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

SONY_LEO_ROOTDIR := device/sony/leo/rootdir

TARGET_KERNEL_CONFIG := aosp_shinano_leo_defconfig

$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony.mk)
$(call inherit-product, device/sony/shinano/device.mk)
$(call inherit-product, vendor/sony/leo/leo-vendor.mk)
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)
$(call inherit-product, hardware/broadcom/wlan/bcmdhd/config/config-bcm.mk)
$(call inherit-product-if-exists, prebuilts/chromium/webview_prebuilt.mk)
$(call inherit-product-if-exists, vendor/google/products/gms.mk)

DEVICE_PACKAGE_OVERLAYS += \
    device/sony/leo/overlay

PRODUCT_COPY_FILES += \
    $(SONY_LEO_ROOTDIR)/system/etc/BCM4339.hcd:system/etc/firmware/BCM43xx.hcd \
    $(SONY_LEO_ROOTDIR)/system/etc/wifi/bcmdhd.cal:system/etc/wifi/bcmdhd.cal \
    $(SONY_LEO_ROOTDIR)/system/etc/sensors_calib.conf:system/etc/sensors_calib.conf \
    $(SONY_LEO_ROOTDIR)/system/etc/sensor_def_qcomdev.conf:system/etc/sensor_def_qcomdev.conf \
    $(SONY_LEO_ROOTDIR)/system/etc/thermanager.xml:system/etc/thermanager.xml \
    $(SONY_LEO_ROOTDIR)/system/etc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    $(SONY_LEO_ROOTDIR)/system/etc/libnfc-nxp.conf:system/etc/libnfc-nxp.conf \
    $(SONY_LEO_ROOTDIR)/system/etc/mixer_paths.xml:system/etc/mixer_paths.xml

PRODUCT_COPY_FILES += \
    $(SONY_LEO_ROOTDIR)/system/etc/tfa98xx/coldboot.patch:/system/etc/tfa98xx/coldboot.patch \
    $(SONY_LEO_ROOTDIR)/system/etc/tfa98xx/TFA9890.patch:/system/etc/tfa98xx/TFA9890.patch \
    $(SONY_LEO_ROOTDIR)/system/etc/tfa98xx/TFA9890_top.config:/system/etc/tfa98xx/TFA9890_top.config \
    $(SONY_LEO_ROOTDIR)/system/etc/tfa98xx/TFA9890_btm.config:/system/etc/tfa98xx/TFA9890_btm.config \
    $(SONY_LEO_ROOTDIR)/system/etc/tfa98xx/btm.speaker:/system/etc/tfa98xx/btm.speaker \
    $(SONY_LEO_ROOTDIR)/system/etc/tfa98xx/top.speaker:/system/etc/tfa98xx/top.speaker \
    $(SONY_LEO_ROOTDIR)/system/etc/tfa98xx/HiFiSpeaker_top.preset:/system/etc/tfa98xx/HiFiSpeaker_top.preset \
    $(SONY_LEO_ROOTDIR)/system/etc/tfa98xx/HiFiSpeaker_btm.preset:/system/etc/tfa98xx/HiFiSpeaker_btm.preset \
    $(SONY_LEO_ROOTDIR)/system/etc/tfa98xx/HiFiSpeakerRing_top.preset:/system/etc/tfa98xx/HiFiSpeakerRing_top.preset \
    $(SONY_LEO_ROOTDIR)/system/etc/tfa98xx/HiFiSpeakerRing_btm.preset:/system/etc/tfa98xx/HiFiSpeakerRing_btm.preset \
    $(SONY_LEO_ROOTDIR)/system/etc/tfa98xx/HiFiSpeakerSforce_top.preset:/system/etc/tfa98xx/HiFiSpeakerSforce_top.preset \
    $(SONY_LEO_ROOTDIR)/system/etc/tfa98xx/HiFiSpeakerSforce_btm.preset:/system/etc/tfa98xx/HiFiSpeakerSforce_btm.preset \
    $(SONY_LEO_ROOTDIR)/system/etc/tfa98xx/VoiceCallSpeaker_top.preset:/system/etc/tfa98xx/VoiceCallSpeaker_top.preset \
    $(SONY_LEO_ROOTDIR)/system/etc/tfa98xx/VoiceCallSpeaker_btm.preset:/system/etc/tfa98xx/VoiceCallSpeaker_btm.preset \
    $(SONY_LEO_ROOTDIR)/system/etc/tfa98xx/FMSpeaker_top.preset:/system/etc/tfa98xx/FMSpeaker_top.preset \
    $(SONY_LEO_ROOTDIR)/system/etc/tfa98xx/FMSpeaker_btm.preset:/system/etc/tfa98xx/FMSpeaker_btm.preset \
    $(SONY_LEO_ROOTDIR)/system/etc/tfa98xx/HiFiSpeaker_top.eq:/system/etc/tfa98xx/HiFiSpeaker_top.eq \
    $(SONY_LEO_ROOTDIR)/system/etc/tfa98xx/HiFiSpeaker_btm.eq:/system/etc/tfa98xx/HiFiSpeaker_btm.eq \
    $(SONY_LEO_ROOTDIR)/system/etc/tfa98xx/HiFiSpeakerRing_top.eq:/system/etc/tfa98xx/HiFiSpeakerRing_top.eq \
    $(SONY_LEO_ROOTDIR)/system/etc/tfa98xx/HiFiSpeakerRing_btm.eq:/system/etc/tfa98xx/HiFiSpeakerRing_btm.eq \
    $(SONY_LEO_ROOTDIR)/system/etc/tfa98xx/HiFiSpeakerSforce_top.eq:/system/etc/tfa98xx/HiFiSpeakerSforce_top.eq \
    $(SONY_LEO_ROOTDIR)/system/etc/tfa98xx/HiFiSpeakerSforce_btm.eq:/system/etc/tfa98xx/HiFiSpeakerSforce_btm.eq \
    $(SONY_LEO_ROOTDIR)/system/etc/tfa98xx/VoiceCallSpeaker_top.eq:/system/etc/tfa98xx/VoiceCallSpeaker_top.eq \
    $(SONY_LEO_ROOTDIR)/system/etc/tfa98xx/VoiceCallSpeaker_btm.eq:/system/etc/tfa98xx/VoiceCallSpeaker_btm.eq \
    $(SONY_LEO_ROOTDIR)/system/etc/tfa98xx/FMSpeaker_top.eq:/system/etc/tfa98xx/FMSpeaker_top.eq \
    $(SONY_LEO_ROOTDIR)/system/etc/tfa98xx/FMSpeaker_btm.eq:/system/etc/tfa98xx/FMSpeaker_btm.eq \
    $(SONY_LEO_ROOTDIR)/system/etc/tfa98xx/TFA9890_Receiver.config:/system/etc/tfa98xx/TFA9890_Receiver.config \
    $(SONY_LEO_ROOTDIR)/system/etc/tfa98xx/VoiceCallEarpice_top.preset:/system/etc/tfa98xx/VoiceCallEarpice_top.preset \
    $(SONY_LEO_ROOTDIR)/system/etc/tfa98xx/VoiceCallEarpice_top.eq:/system/etc/tfa98xx/VoiceCallEarpice_top.eq

PRODUCT_NAME := aosp_d6603
PRODUCT_DEVICE := leo
PRODUCT_MODEL := Xperia Z3 (AOSP)
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony

PRODUCT_AAPT_CONFIG := large
PRODUCT_AAPT_PREBUILT_DPI := xxhdpi xhdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=480 \
    ro.usb.pid_suffix=1BA
