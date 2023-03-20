.class public Lcom/samsung/android/app/music/support/android/bluetooth/BluetoothDevicePickerCompat;
.super Ljava/lang/Object;
.source "BluetoothDevicePickerCompat.java"


# static fields
.field public static final ACTION_LAUNCH:Ljava/lang/String;

.field public static final EXTRA_FILTER_TYPE:Ljava/lang/String;

.field public static final EXTRA_NEED_AUTH:Ljava/lang/String;

.field public static final FILTER_TYPE_AUDIO_AV:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const-string v0, "android.bluetooth.devicepicker.action.LAUNCH"

    .line 2
    sput-object v0, Lcom/samsung/android/app/music/support/android/bluetooth/BluetoothDevicePickerCompat;->ACTION_LAUNCH:Ljava/lang/String;

    const-string v0, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    .line 3
    sput-object v0, Lcom/samsung/android/app/music/support/android/bluetooth/BluetoothDevicePickerCompat;->EXTRA_NEED_AUTH:Ljava/lang/String;

    const-string v0, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    .line 4
    sput-object v0, Lcom/samsung/android/app/music/support/android/bluetooth/BluetoothDevicePickerCompat;->EXTRA_FILTER_TYPE:Ljava/lang/String;

    const/4 v0, 0x6

    .line 5
    sput v0, Lcom/samsung/android/app/music/support/android/bluetooth/BluetoothDevicePickerCompat;->FILTER_TYPE_AUDIO_AV:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
