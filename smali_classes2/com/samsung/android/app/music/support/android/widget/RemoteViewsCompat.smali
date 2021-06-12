.class public Lcom/samsung/android/app/music/support/android/widget/RemoteViewsCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addOuterShadowTextEffect(Landroid/widget/RemoteViews;IFFFIF)V
    .locals 1

    .line 44
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual/range {p0 .. p6}, Landroid/widget/RemoteViews;->semAddOuterShadowTextEffect(IFFFIF)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-static/range {p0 .. p6}, Lcom/samsung/android/app/music/support/sdl/android/widget/RemoteViewsSdlCompat;->addOuterShadowTextEffect(Landroid/widget/RemoteViews;IFFFIF)V

    :goto_0
    return-void
.end method

.method public static addStrokeTextEffect(Landroid/widget/RemoteViews;IFIF)V
    .locals 1

    .line 34
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/RemoteViews;->semAddStrokeTextEffect(IFIF)V

    goto :goto_0

    .line 38
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/support/sdl/android/widget/RemoteViewsSdlCompat;->addStrokeTextEffect(Landroid/widget/RemoteViews;IFIF)V

    :goto_0
    return-void
.end method

.method public static setOnLongClickPendingIntent(Landroid/widget/RemoteViews;Landroid/os/IBinder;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 1

    .line 22
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p0, p2, p3}, Landroid/widget/RemoteViews;->semSetOnLongClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 24
    invoke-virtual {p0, p2, p4}, Landroid/widget/RemoteViews;->semSetOnTouchPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_0

    .line 27
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/support/sdl/android/widget/RemoteViewsSdlCompat;->setOnLongClickPendingIntent(Landroid/widget/RemoteViews;Landroid/os/IBinder;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    :goto_0
    return-void
.end method

.method public static setViewFingerHovered(Landroid/widget/RemoteViews;IZ)V
    .locals 1

    .line 12
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/support/sdl/android/widget/RemoteViewsSdlCompat;->setViewFingerHovered(Landroid/widget/RemoteViews;IZ)V

    :goto_0
    return-void
.end method
