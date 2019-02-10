# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    persist.camera.sat.fallback.dist=45 \
    persist.camera.sat.fallback.dist.d=5 \
    persist.camera.sat.fallback.luxindex=310 \
    persist.camera.sat.fallback.lux.d=50 \
    persist.vendor.camera.perfcapture=1

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    tunnel.audio.encode=true \
    media.stagefright.enable-player=true \
    media.stagefright.enable-http=true \
    media.stagefright.enable-aac=true \
    media.stagefright.enable-qcp=true \
    media.stagefright.enable-fma2dp=true \
    media.stagefright.enable-scan=true \
    media.stagefright.audio.deep=true \
    mmp.enable.3g2=true \
    media.aac_51_output_enabled=true \
    mm.enable.smoothstreaming=true \
    vendor.mm.enable.qcom_parser=16776191 \
    persist.mm.enable.prefetch=true

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    bt.max.hfpclient.connections=1 \
    persist.vendor.btstack.enable.splita2dp=true \
    persist.vendor.btstack.a2dp_offload_cap=sbc-aptx-aptxtws-aptxhd-aac-ldac \
    persist.vendor.btstack.enable.twsplus=true \
    persist.vendor.btstack.connect.peer_earbud=true \
    ro.bluetooth.emb_wp_mode=false \
    ro.bluetooth.wipower=false

# Graphics
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=440 \
    debug.sf.hw=1 \
    debug.composition.type=gpu \
    dev.pm.dyn_samplingrate=1 \
    debug.hwui.use_buffer_age=false \
    sdm.debug.rotator_downscale=1

# ART
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dex2oat-filter=speed \
    dalvik.vm.image-dex2oat-filter=speed \
    ro.vendor.qti.am.reschedule_service=true \
    ro.sys.fw.dex2oat_thread_count=8 \
    dalvik.vm.boot-dex2oat-threads=8 \
    dalvik.vm.dex2oat-threads=8

#Assistant
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opa.eligible_device=true 

# Display features
PRODUCT_PROPERTY_OVERRIDES += \
    ro.displayfeature.histogram.enable=false \
    ro.eyecare.brightness.threshold=7 \
    ro.eyecare.brightness.level=5 \
    ro.hist.brightness.threshold=7 \
    ro.qcom.ad=1 \
    ro.qcom.ad.calib.data=/vendor/etc/sdr_config.cfg \
    ro.qcom.ad.hdr.calib.data=/vendor/etc/hdr_config.cfg \
    ro.qcom.ad.sensortype=2 \
    ro.qualcomm.cabl=0 \
    ro.whitepoint_calibration_enable=false
