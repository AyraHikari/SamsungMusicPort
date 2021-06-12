.class public Lcom/samsung/android/app/musiclibrary/core/library/wifi/DisplayManagerUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ADDRESS_INFO:I = 0x1

.field public static final ALL_TOGETHER_RUNNING:I = 0x8

.field public static final DEFAULT_WFD_DEVICE_TYPE:I = 0x9

.field public static final GLOBAL_WIFI_DISPLAY_SETTING_URI:Landroid/net/Uri;

.field public static final GROUP_PLAY_RUNNING:I = 0x7

.field public static final HDMI:I = 0x3

.field public static final LIMITED_PLAY_VIA_SCREEN_MIRRORING:I = 0x6

.field public static final NAME_INFO:I = 0x2

.field public static final NORMAL:I = 0x0

.field public static final POWER_SAVING_ON:I = 0x5

.field public static final SIDE_SYNC_RUNNING:I = 0x4

.field private static final TAG:Ljava/lang/String; = "DisplayManagerUtils"

.field public static final TYPE_INFO:I = 0x3

.field public static final WFD_DONGLE_TYPE:I = 0x0

.field public static final WIFI_DIRECT:I = 0x2

.field public static final WIFI_HOTSPOT:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    sget-object v0, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$Global;->WIFI_DISPLAY_ON:Ljava/lang/String;

    .line 20
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/DisplayManagerUtils;->GLOBAL_WIFI_DISPLAY_SETTING_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceType(Ljava/lang/String;)I
    .locals 5

    if-eqz p0, :cond_0

    const-string v0, "-"

    .line 58
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 60
    :try_start_0
    aget-object v2, v0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    if-lt v2, v0, :cond_1

    const/16 v0, 0xc

    if-ge v2, v0, :cond_1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 69
    :catch_0
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/library/wifi/DisplayManagerUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDeviceType - deviceType is invalid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/16 v2, 0x9

    .line 72
    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/DisplayManagerUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWfdDeviceType() - primaryDeviceTypeStr: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " deviceType: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method
