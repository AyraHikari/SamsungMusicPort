.class public final Lcom/samsung/android/app/music/service/v3/PlayerServiceV3$NotificationUpdaterDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper$INotificationUpdaterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/v3/PlayerServiceV3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NotificationUpdaterDelegate"
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/app/music/background/cache/UriBlurBitmapCacheClient;

.field private final b:Lcom/samsung/android/app/music/service/v3/PlayerServiceV3;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/service/v3/PlayerServiceV3;)V
    .locals 2

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/service/v3/PlayerServiceV3$NotificationUpdaterDelegate;->b:Lcom/samsung/android/app/music/service/v3/PlayerServiceV3;

    .line 277
    new-instance p1, Lcom/samsung/android/app/music/background/cache/UriBlurBitmapCacheClient;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1, v0}, Lcom/samsung/android/app/music/background/cache/UriBlurBitmapCacheClient;-><init>(Landroid/net/Uri;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/service/v3/PlayerServiceV3$NotificationUpdaterDelegate;->a:Lcom/samsung/android/app/music/background/cache/UriBlurBitmapCacheClient;

    return-void
.end method


# virtual methods
.method public buildNotification(Landroid/content/Context;Landroid/app/Notification$Builder;Z)Landroid/app/Notification;
    .locals 0

    const-string p3, "context"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "builder"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p1, 0x7f02052e

    .line 306
    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 307
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const-string p2, "builder.build()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getBlurBackground(Landroid/content/Context;FJJLkotlin/jvm/functions/Function1;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "FJJ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/graphics/Bitmap;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p7

    const-string v2, "context"

    move-object v3, p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "function1"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-wide/from16 v4, p5

    long-to-int v2, v4

    .line 292
    invoke-static {v2}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->a(I)Landroid/net/Uri;

    move-result-object v2

    move-wide v4, p3

    invoke-static {v2, v4, v5}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 293
    iget-object v4, v0, Lcom/samsung/android/app/music/service/v3/PlayerServiceV3$NotificationUpdaterDelegate;->a:Lcom/samsung/android/app/music/background/cache/UriBlurBitmapCacheClient;

    const-string v5, "currentAlbumUri"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcom/samsung/android/app/music/background/cache/UriBlurBitmapCacheClient;->a(Landroid/net/Uri;)V

    .line 296
    iget-object v2, v0, Lcom/samsung/android/app/music/service/v3/PlayerServiceV3$NotificationUpdaterDelegate;->a:Lcom/samsung/android/app/music/background/cache/UriBlurBitmapCacheClient;

    move-object v4, v2

    check-cast v4, Lcom/samsung/android/app/music/background/cache/BlurBitmapCacheClient;

    .line 297
    new-instance v2, Lcom/samsung/android/app/music/service/v3/PlayerServiceV3$NotificationUpdaterDelegate$getBlurBackground$1;

    invoke-direct {v2, v1}, Lcom/samsung/android/app/music/service/v3/PlayerServiceV3$NotificationUpdaterDelegate$getBlurBackground$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    move-object v9, v2

    check-cast v9, Lkotlin/jvm/functions/Function2;

    const/high16 v5, 0x41c80000    # 25.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v10, 0x20

    const/4 v11, 0x0

    move v6, p2

    .line 295
    invoke-static/range {v3 .. v11}, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache;->a(Landroid/content/Context;Lcom/samsung/android/app/music/background/cache/BlurBitmapCacheClient;FFZLandroid/os/Looper;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method

.method public registerNotification(ILandroid/app/Notification;)V
    .locals 1

    const-string v0, "notification"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/samsung/android/app/music/service/v3/PlayerServiceV3$NotificationUpdaterDelegate;->b:Lcom/samsung/android/app/music/service/v3/PlayerServiceV3;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/music/service/v3/PlayerServiceV3;->a(Lcom/samsung/android/app/music/service/v3/PlayerServiceV3;ILandroid/app/Notification;)V

    return-void
.end method

.method public unregisterNotification(Z)V
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/samsung/android/app/music/service/v3/PlayerServiceV3$NotificationUpdaterDelegate;->b:Lcom/samsung/android/app/music/service/v3/PlayerServiceV3;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/service/v3/PlayerServiceV3;->a(Lcom/samsung/android/app/music/service/v3/PlayerServiceV3;Z)V

    return-void
.end method
