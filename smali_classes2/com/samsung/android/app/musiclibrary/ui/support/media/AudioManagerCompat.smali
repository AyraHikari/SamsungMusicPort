.class public Lcom/samsung/android/app/musiclibrary/ui/support/media/AudioManagerCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/media/AudioManager;I)V
    .locals 4

    .line 16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/16 v3, 0x17

    if-lt v0, v3, :cond_0

    const/16 p1, 0x65

    .line 18
    invoke-virtual {p0, v2, p1, v1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    const/4 v1, 0x1

    .line 21
    :cond_1
    invoke-virtual {p0, v2, v1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    :goto_0
    return-void
.end method
