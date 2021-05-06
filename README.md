# android_prebuilts_HwCamera2
## Prebuilt Huawei Camera app
To be included into ROMs to replace the AOSP Camera. Has been tested for treble ROMs with Huawei EMUI-8 vendor partition. 
It will only work, if the respective binaries, drivers etc. to activate the Camera deamon etc. are present.

This means: **If the AOSP Camera does not work on your ROM, this one won't work either!**

## How to include into your ROM
Add the statement `PRODUCT_PACKAGES += HWCamera2` into a product.mk file (not an Android.mk file)
