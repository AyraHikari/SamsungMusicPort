.class public Lcom/samsung/android/app/music/support/android/widget/RemoteViewsCompat;
.super Ljava/lang/Object;
.source "RemoteViewsCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addOuterShadowTextEffect(Landroid/widget/RemoteViews;IFFFIF)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual/range {p0 .. p6}, Landroid/widget/RemoteViews;->semAddOuterShadowTextEffect(IFFFIF)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static/range {p0 .. p6}, Lcom/samsung/android/app/music/support/sdl/android/widget/RemoteViewsSdlCompat;->addOuterShadowTextEffect(Landroid/widget/RemoteViews;IFFFIF)V

    :goto_0
    return-void
.end method

.method public static addStrokeTextEffect(Landroid/widget/RemoteViews;IFIF)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/RemoteViews;->semAddStrokeTextEffect(IFIF)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/support/sdl/android/widget/RemoteViewsSdlCompat;->addStrokeTextEffect(Landroid/widget/RemoteViews;IFIF)V

    :goto_0
    return-void
.end method

.method public static setOnLongClickPendingIntent(Landroid/widget/RemoteViews;Landroid/os/IBinder;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p2, p3}, Landroid/widget/RemoteViews;->semSetOnLongClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 3
    invoke-virtual {p0, p2, p4}, Landroid/widget/RemoteViews;->semSetOnTouchPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/support/sdl/android/widget/RemoteViewsSdlCompat;->setOnLongClickPendingIntent(Landroid/widget/RemoteViews;Landroid/os/IBinder;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    :goto_0
    return-void
.end method

.method public static setViewFingerHovered(Landroid/widget/RemoteViews;IZ)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/support/sdl/android/widget/RemoteViewsSdlCompat;->setViewFingerHovered(Landroid/widget/RemoteViews;IZ)V

    :goto_0
    return-void
.end method
