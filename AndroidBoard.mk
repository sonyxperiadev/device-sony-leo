#
# Copyright (C) 2011 The Android Open-Source Project
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
#
DEVICE := leo
DEVICE_PATH :=device/sony/$(DEVICE)
# default use prebuilt kernel
# to build kernel from source coment next 2 lines
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/kernel
DTB_PATH:= $(DEVICE_PATH)/dtbs/

# if prebuilt kernel is not defined build kernel from source
ifeq ($(TARGET_PREBUILT_KERNEL),)
KERNEL_DEFCONFIG := aosp_shinano_$(DEVICE)_defconfig
KERNEL_DIR := kernel
-include $(TOP)/$(KERNEL_DIR)/AndroidKernel.mk
DTB_PATH:= $(KERNEL_OUT)/arch/arm/boot
endif

# device.mk doesn't know about us, and we can't PRODUCT_COPY_FILES here.
# So cp will do.
.PHONY: $(PRODUCT_OUT)/kernel
$(PRODUCT_OUT)/kernel: $(TARGET_PREBUILT_KERNEL)
	cp $(TARGET_PREBUILT_KERNEL) $(PRODUCT_OUT)/kernel
	mkdir $(PRODUCT_OUT)/dtbs/
	cp $(DTB_PATH)/*$(DEVICE)*.dtb $(PRODUCT_OUT)/dtbs/
