.class public final Lcom/samsung/android/app/music/support/sdl/android/os/PowerManagerSdlCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static goToSleep(Landroid/os/PowerManager;J)V
    .locals 0

    .line 50
    invoke-virtual {p0, p1, p2}, Landroid/os/PowerManager;->goToSleep(J)V

    return-void
.end method

.method public static wakeUp(Landroid/os/PowerManager;J)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p0, p1, p2, v0}, Landroid/os/PowerManager;->wakeUp(JI)V

    return-void
.end method
