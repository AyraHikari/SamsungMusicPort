.class public Lcom/samsung/android/app/music/support/android/os/DebugCompat;
.super Ljava/lang/Object;
.source "DebugCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isProductDev()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/support/sdl/android/os/DebugSdlCompat;->isProductDev()Z

    move-result v0

    return v0
.end method
