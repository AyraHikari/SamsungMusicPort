.class public Lcom/samsung/android/app/music/service/observer/NotificationUpdaterDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper$INotificationUpdaterDelegate;


# instance fields
.field private final a:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

.field private final b:Lcom/samsung/android/app/music/background/cache/UriBlurBitmapCacheClient;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/samsung/android/app/music/background/cache/UriBlurBitmapCacheClient;

    invoke-direct {v0}, Lcom/samsung/android/app/music/background/cache/UriBlurBitmapCacheClient;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/observer/NotificationUpdaterDelegate;->b:Lcom/samsung/android/app/music/background/cache/UriBlurBitmapCacheClient;

    .line 28
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/NotificationUpdaterDelegate;->a:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    return-void
.end method


# virtual methods
.method public buildNotification(Landroid/content/Context;Landroid/app/Notification$Builder;Z)Landroid/app/Notification;
    .locals 0

    const p1, 0x7f02052e

    .line 61
    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 62
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method public getBlurBackground(Landroid/content/Context;FJJLkotlin/jvm/functions/Function1;)V
    .locals 6

    long-to-int p5, p5

    .line 45
    invoke-static {p5}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->a(I)Landroid/net/Uri;

    move-result-object p5

    invoke-static {p5, p3, p4}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p3

    .line 46
    iget-object p4, p0, Lcom/samsung/android/app/music/service/observer/NotificationUpdaterDelegate;->b:Lcom/samsung/android/app/music/background/cache/UriBlurBitmapCacheClient;

    invoke-virtual {p4, p3}, Lcom/samsung/android/app/music/background/cache/UriBlurBitmapCacheClient;->a(Landroid/net/Uri;)V

    .line 48
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/NotificationUpdaterDelegate;->b:Lcom/samsung/android/app/music/background/cache/UriBlurBitmapCacheClient;

    new-instance v5, Lcom/samsung/android/app/music/service/observer/NotificationUpdaterDelegate$1;

    invoke-direct {v5, p0, p7}, Lcom/samsung/android/app/music/service/observer/NotificationUpdaterDelegate$1;-><init>(Lcom/samsung/android/app/music/service/observer/NotificationUpdaterDelegate;Lkotlin/jvm/functions/Function1;)V

    const/high16 v2, 0x41c80000    # 25.0f

    const/4 v4, 0x1

    move-object v0, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache;->a(Landroid/content/Context;Lcom/samsung/android/app/music/background/cache/BlurBitmapCacheClient;FFZLkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public registerNotification(ILandroid/app/Notification;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/NotificationUpdaterDelegate;->a:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->registerNotification(ILandroid/app/Notification;)V

    return-void
.end method

.method public unregisterNotification(Z)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/NotificationUpdaterDelegate;->a:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->unregisterNotification(Z)V

    return-void
.end method
