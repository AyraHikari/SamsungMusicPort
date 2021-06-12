.class public Lcom/samsung/android/app/music/support/android/app/ActivityCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exitMultiWindowMode(Landroid/app/Activity;)V
    .locals 1

    .line 9
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->semExitMultiWindowMode()Z

    :cond_0
    return-void
.end method
