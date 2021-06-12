.class public Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/BatteryState;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Z)V
    .locals 1

    const-string v0, "music"

    .line 47
    invoke-static {v0, p0}, Lcom/samsung/android/app/music/support/samsung/hardware/SecHardwareInterfaceCompat;->setBatteryADC(Ljava/lang/String;Z)V

    return-void
.end method
