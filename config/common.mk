#
# Copyright (C) 2020 Raphielscape LLC. and Haruka LLC.
# Copyright (C) 2021 Weeb Projekt
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

# Inherit from our versioning
$(call inherit-product, vendor/weeb/config/versioning.mk)

# Inherit from our overlay
$(call inherit-product, vendor/weeb/config/overlay.mk)

# Inherit from our prebuilt headers
$(call inherit-product, vendor/weeb-headers/headers.mk)

# Inherit from our kernel/header generator
$(call inherit-product, vendor/weeb/config/BoardConfigWeeb.mk)
