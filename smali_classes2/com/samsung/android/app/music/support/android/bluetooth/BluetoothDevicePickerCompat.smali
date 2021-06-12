.class public Lcom/samsung/android/app/music/support/android/bluetooth/BluetoothDevicePickerCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_LAUNCH:Ljava/lang/String;

.field public static final EXTRA_FILTER_TYPE:Ljava/lang/String;

.field public static final EXTRA_NEED_AUTH:Ljava/lang/String;

.field public static final FILTER_TYPE_AUDIO_AV:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const-string v0, "android.bluetooth.devicepicker.action.LAUNCH"

    sput-object v0, Lcom/samsung/android/app/music/support/android/bluetooth/BluetoothDevicePickerCompat;->ACTION_LAUNCH:Ljava/lang/String;

    .line 13
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const-string v0, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    sput-object v0, Lcom/samsung/android/app/music/support/android/bluetooth/BluetoothDevicePickerCompat;->EXTRA_NEED_AUTH:Ljava/lang/String;

    .line 17
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const-string v0, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    sput-object v0, Lcom/samsung/android/app/music/support/android/bluetooth/BluetoothDevicePickerCompat;->EXTRA_FILTER_TYPE:Ljava/lang/String;

    .line 21
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/4 v0, 0x6

    sput v0, Lcom/samsung/android/app/music/support/android/bluetooth/BluetoothDevicePickerCompat;->FILTER_TYPE_AUDIO_AV:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
