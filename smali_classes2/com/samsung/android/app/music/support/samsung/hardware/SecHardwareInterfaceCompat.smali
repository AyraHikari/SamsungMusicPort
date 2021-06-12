.class public final Lcom/samsung/android/app/music/support/samsung/hardware/SecHardwareInterfaceCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setBatteryADC(Ljava/lang/String;Z)V
    .locals 1

    .line 11
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-nez v0, :cond_0

    .line 12
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/hardware/SecHardwareInterfaceSdlCompat;->setBatteryADC(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
