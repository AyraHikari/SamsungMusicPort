.class public Lcom/samsung/android/app/music/support/android/content/res/ConfigurationCompat;
.super Ljava/lang/Object;
.source "ConfigurationCompat.java"


# static fields
.field public static final DISPLAY_DEVICE_TYPE_MAIN:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/app/music/support/android/content/res/ConfigurationCompat;->getDisPlayDeviceTypeMain()I

    move-result v0

    sput v0, Lcom/samsung/android/app/music/support/android/content/res/ConfigurationCompat;->DISPLAY_DEVICE_TYPE_MAIN:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDisPlayDeviceTypeMain()I
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    sget v0, Lcom/samsung/android/app/music/support/SamsungSdk;->VERSION:I

    :cond_0
    return v1
.end method

.method public static getDisplayDeviceType(Landroid/content/res/Configuration;)I
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_1

    .line 2
    sget v0, Lcom/samsung/android/app/music/support/SamsungSdk;->VERSION:I

    const v1, 0x31895

    if-ge v0, v1, :cond_0

    .line 3
    sget p0, Lcom/samsung/android/app/music/support/android/content/res/ConfigurationCompat;->DISPLAY_DEVICE_TYPE_MAIN:I

    return p0

    .line 4
    :cond_0
    iget p0, p0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    return p0

    .line 5
    :cond_1
    sget p0, Lcom/samsung/android/app/music/support/android/content/res/ConfigurationCompat;->DISPLAY_DEVICE_TYPE_MAIN:I

    return p0
.end method

.method public static hasMobileKeyboard(Landroid/content/res/Configuration;)Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_1

    .line 2
    iget p0, p0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/content/res/ConfigurationSdlCompat;->hasMobileKeyboard(Landroid/content/res/Configuration;)Z

    move-result p0

    return p0
.end method
