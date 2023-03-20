.class public Lcom/samsung/android/app/music/support/sdl/android/os/DebugSdlCompat;
.super Ljava/lang/Object;
.source "DebugSdlCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isProductDev()Z
    .locals 2

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
