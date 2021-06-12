.class public Lcom/samsung/android/app/music/support/android/os/PowerManagerCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static goToSleep(Landroid/os/PowerManager;J)V
    .locals 1

    .line 19
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p0, p1, p2}, Landroid/os/PowerManager;->semGoToSleep(J)V

    goto :goto_0

    .line 22
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/support/sdl/android/os/PowerManagerSdlCompat;->goToSleep(Landroid/os/PowerManager;J)V

    :goto_0
    return-void
.end method

.method public static wakeUp(Landroid/os/PowerManager;J)V
    .locals 1

    .line 11
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, p1, p2, v0}, Landroid/os/PowerManager;->semWakeUp(JI)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/support/sdl/android/os/PowerManagerSdlCompat;->wakeUp(Landroid/os/PowerManager;J)V

    :goto_0
    return-void
.end method
