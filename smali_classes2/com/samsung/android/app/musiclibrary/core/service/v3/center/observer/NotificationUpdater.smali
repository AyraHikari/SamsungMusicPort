.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/center/observer/NotificationUpdater;
.super Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/SimplePlayerCallback;
.source "SourceFile"


# instance fields
.field private final service:Landroid/app/Service;


# direct methods
.method public constructor <init>(Landroid/app/Service;)V
    .locals 1

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/SimplePlayerCallback;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/observer/NotificationUpdater;->service:Landroid/app/Service;

    return-void
.end method

.method private final testMediaNotification(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;)V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 51
    sget v0, Lcom/samsung/android/app/musiclibrary/R$drawable;->music_library_ic_no_album_01:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 52
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "Music Test"

    .line 54
    new-instance v2, Landroid/media/session/MediaSession;

    const-string v3, "test_music"

    invoke-direct {v2, p1, v3}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, p1, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    sget v4, Lcom/samsung/android/app/musiclibrary/R$drawable;->music_list_ic_play:I

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x1

    .line 58
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setColorized(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 59
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 60
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->getTitle()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 61
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->getArtist()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 63
    new-instance v0, Landroid/app/Notification$Action$Builder;

    .line 64
    sget v3, Lcom/samsung/android/app/musiclibrary/R$drawable;->music_list_ic_play:I

    const-string v5, "pause"

    .line 65
    check-cast v5, Ljava/lang/CharSequence;

    .line 66
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const/4 v7, 0x0

    invoke-static {p1, v7, v6, v7}, Landroid/app/PendingIntent;->getForegroundService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 63
    invoke-direct {v0, v3, v5, v6}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 67
    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    .line 62
    invoke-virtual {p2, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 70
    new-instance v0, Landroid/app/Notification$DecoratedMediaCustomViewStyle;

    invoke-direct {v0}, Landroid/app/Notification$DecoratedMediaCustomViewStyle;-><init>()V

    .line 71
    invoke-virtual {v2}, Landroid/media/session/MediaSession;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->setMediaSession(Landroid/media/session/MediaSession$Token;)Landroid/app/Notification$MediaStyle;

    move-result-object v0

    new-array v2, v4, [I

    aput v7, v2, v7

    .line 72
    invoke-virtual {v0, v2}, Landroid/app/Notification$MediaStyle;->setShowActionsInCompactView([I)Landroid/app/Notification$MediaStyle;

    move-result-object v0

    check-cast v0, Landroid/app/Notification$Style;

    .line 69
    invoke-virtual {p2, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 74
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    const-string v0, "notification"

    .line 76
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/app/NotificationManager;

    .line 78
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v2, "Channel name"

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 79
    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 93
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 81
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/observer/NotificationUpdater;->service:Landroid/app/Service;

    invoke-virtual {p1, v4, p2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 82
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 95
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    sub-long/2addr p1, v0

    const-string v0, "SMUSIC-SV"

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v3, "Thread.currentThread()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\t "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/concurrent/TimeUnitExtensionKt;->a(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ms\t\tUi "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "notification start foreground"

    .line 80
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 96
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 76
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final testNormalNotification(Landroid/content/Context;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 32
    sget v0, Lcom/samsung/android/app/musiclibrary/R$drawable;->music_library_ic_no_album_01:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 33
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "Music Test"

    .line 36
    new-instance v2, Landroid/app/NotificationChannel;

    const-string v3, "Channel name"

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x2

    invoke-direct {v2, v1, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 37
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v3, p1, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 38
    sget v1, Lcom/samsung/android/app/musiclibrary/R$drawable;->music_list_ic_play:I

    invoke-virtual {v3, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const-string v3, "image title"

    .line 39
    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const-string v3, "description"

    .line 40
    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 41
    new-instance v3, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v3}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;-><init>()V

    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/NotificationCompat$Style;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const-string v1, "notification"

    .line 44
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/app/NotificationManager;

    .line 45
    invoke-virtual {p1, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    const/4 v1, 0x1

    .line 46
    invoke-virtual {p1, v1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    .line 44
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final getService()Landroid/app/Service;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/observer/NotificationUpdater;->service:Landroid/app/Service;

    return-object v0
.end method

.method public onMetaChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;)V
    .locals 5

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/SimplePlayerCallback;->onMetaChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;)V

    .line 23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 85
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 25
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/observer/NotificationUpdater;->service:Landroid/app/Service;

    check-cast v2, Landroid/content/Context;

    invoke-direct {p0, v2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/observer/NotificationUpdater;->testMediaNotification(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;)V

    .line 26
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 87
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-string p1, "SMUSIC-SV"

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v4, "Thread.currentThread()"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\t "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/concurrent/TimeUnitExtensionKt;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ms\t\tUi "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "testMediaNotification"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
