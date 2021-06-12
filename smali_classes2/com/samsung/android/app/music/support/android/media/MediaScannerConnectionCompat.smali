.class public Lcom/samsung/android/app/music/support/android/media/MediaScannerConnectionCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static scanDirectories(Landroid/content/Context;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    .locals 1

    .line 11
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 13
    invoke-static {p0, p1, p2}, Landroid/media/MediaScannerConnection;->semScanDirectories(Landroid/content/Context;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    :cond_0
    return-void
.end method
