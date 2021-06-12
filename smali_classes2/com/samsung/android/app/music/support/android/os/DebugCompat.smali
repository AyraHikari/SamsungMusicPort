.class public Lcom/samsung/android/app/music/support/android/os/DebugCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isProductDev()Z
    .locals 1

    .line 10
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 11
    const v0, 0x1

    return v0

    .line 13
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/support/sdl/android/os/DebugSdlCompat;->isProductDev()Z

    move-result v0

    return v0
.end method
