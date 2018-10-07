[AID_VENDOR_QCOM_DIAG]
value:2950

[AID_VENDOR_RFS]
value:3012

[AID_VENDOR_RFS_SHARED]
value:3013

[firmware/]
mode: 0771
user: AID_SYSTEM
group: AID_SYSTEM
caps: 0

[firmware/wsd]
mode: 0771
user: AID_VENDOR_RFS
group: AID_VENDOR_RFS
caps: 0

[firmware/image/*]
mode: 0771
user: AID_ROOT
group: AID_SYSTEM
caps: 0

[vendor/firmware_mnt/image/*]
mode: 0771
user: AID_ROOT
group: AID_SYSTEM
caps: 0

[carrier/]
mode: 0771
user: AID_RADIO
group: AID_RADIO
caps: NET_BIND_SERVICE

[persist/]
mode: 0771
user: AID_SYSTEM
group: AID_SYSTEM
caps: 0

[dsp/]
mode: 0771
user: AID_MEDIA
group: AID_MEDIA
caps: 0
