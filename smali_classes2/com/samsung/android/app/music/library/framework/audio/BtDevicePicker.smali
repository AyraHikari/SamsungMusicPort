.class public Lcom/samsung/android/app/music/library/framework/audio/BtDevicePicker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    sget-object v0, Lcom/samsung/android/app/music/support/android/bluetooth/BluetoothDevicePickerCompat;->ACTION_LAUNCH:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/music/library/framework/audio/BtDevicePicker;->a:Ljava/lang/String;

    .line 24
    sget-object v0, Lcom/samsung/android/app/music/support/android/bluetooth/BluetoothDevicePickerCompat;->EXTRA_NEED_AUTH:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/music/library/framework/audio/BtDevicePicker;->b:Ljava/lang/String;

    .line 29
    sget-object v0, Lcom/samsung/android/app/music/support/android/bluetooth/BluetoothDevicePickerCompat;->EXTRA_FILTER_TYPE:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/music/library/framework/audio/BtDevicePicker;->c:Ljava/lang/String;

    .line 40
    sget v0, Lcom/samsung/android/app/music/support/android/bluetooth/BluetoothDevicePickerCompat;->FILTER_TYPE_AUDIO_AV:I

    sput v0, Lcom/samsung/android/app/music/library/framework/audio/BtDevicePicker;->d:I

    return-void
.end method
