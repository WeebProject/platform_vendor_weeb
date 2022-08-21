#
# Copyright (C) 2022 Weeb Projekt
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
# Set date and time
BUILD_DATE := $(shell date +%Y%m%d)
BUILD_TIME := $(shell date +%H%M)

PLATFORM_WEEB_RELEASE := 13.0
WEEB_ROM_VERSION := v2.0

ifndef WEEB_BUILD_TYPE
    WEEB_BUILD_TYPE := UNOFFICIAL
endif

PLATFORM_WEEB_VERSION := $(PLATFORM_WEEB_RELEASE).$(shell date +%m%d%H%M)

TARGET_PRODUCT_SHORT := $(subst weeb_,,$(TARGET_DEVICE))

ifeq ($(WEEB_BUILD_TYPE),OFFICIAL)
    PROD_VERSION := $(TARGET_PRODUCT)-$(BUILD_DATE)-$(PLATFORM_WEEB_RELEASE)-$(WEEB_ROM_VERSION)-$(WEEB_BUILD_TYPE)
else
    PROD_VERSION := $(TARGET_PRODUCT)-$(BUILD_DATE)-$(BUILD_TIME)-$(PLATFORM_WEEB_RELEASE)-$(WEEB_ROM_VERSION)-$(WEEB_BUILD_TYPE)
endif

PRODUCT_PRODUCT_PROPERTIES += \
    ro.system.weeb.version=$(PLATFORM_WEEB_VERSION)

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.weeb.version=$(WEEB_ROM_VERSION)
