# Gapps
ifeq ($(WITH_GMS),true)

$(call inherit-product, vendor/gapps/common/common-vendor.mk)

# SetupWizard and Google Assistant properties
PRODUCT_PRODUCT_PROPERTIES += \
    ro.setupwizard.rotation_locked=true \
    setupwizard.theme=glif_v3_light \
    ro.opa.eligible_device=true \

endif

