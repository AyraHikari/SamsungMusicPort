.class public Lcom/samsung/android/app/music/support/android/app/ActivityCompat;
.super Ljava/lang/Object;
.source "ActivityCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exitMultiWindowMode(Landroid/app/Activity;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->semExitMultiWindowMode()Z

    :cond_0
    return-void
.end method

.method public static overridePendingTransition(Landroid/app/Activity;II)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_1

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->semOverridePendingTransition(II)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1
    :goto_0
    return-void
.end method
