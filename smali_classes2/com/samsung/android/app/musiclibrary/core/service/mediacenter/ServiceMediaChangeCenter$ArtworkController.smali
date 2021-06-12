.class Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;
.implements Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArtworkController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$ArtworkWaitTask;,
        Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$MetaPublisher;
    }
.end annotation


# instance fields
.field private final mBitmapSizeResId:I

.field private final mContext:Landroid/content/Context;

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mIsRequesting:Z

.field private mLastArtworkWaitTask:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$ArtworkWaitTask;

.field private mLastRequestedAlbumId:J

.field private mLastRequestedBaseUri:Landroid/net/Uri;

.field private final mMetaPublisher:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$MetaPublisher;


# direct methods
.method constructor <init>(Landroid/content/Context;ILcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$MetaPublisher;)V
    .locals 1
    .param p2    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    .line 454
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController;->mIsRequesting:Z

    const/4 v0, 0x0

    .line 456
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController;->mLastArtworkWaitTask:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$ArtworkWaitTask;

    .line 459
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController;->mContext:Landroid/content/Context;

    .line 460
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController;->mMetaPublisher:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$MetaPublisher;

    .line 461
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController;->mBitmapSizeResId:I

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController;Landroid/net/Uri;J)V
    .locals 0

    .line 441
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController;->updateMeta(Landroid/net/Uri;J)V

    return-void
.end method

.method private static getAlbumUri(Landroid/net/Uri;J)Landroid/net/Uri;
    .locals 0

    if-nez p0, :cond_0

    .line 523
    sget-object p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MDefaultArtworkUtils;->b:Landroid/net/Uri;

    return-object p0

    .line 525
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private isLastRequestArtworkUri(Landroid/net/Uri;)Z
    .locals 3

    .line 488
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController;->mLastRequestedBaseUri:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController;->mLastRequestedAlbumId:J

    .line 489
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController;->getAlbumUri(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private updateMeta(Landroid/net/Uri;J)V
    .locals 2

    .line 497
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController;->mLastRequestedBaseUri:Landroid/net/Uri;

    .line 498
    iput-wide p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController;->mLastRequestedAlbumId:J

    const/4 v0, 0x0

    .line 499
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController;->mIsRequesting:Z

    .line 500
    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController;->getAlbumUri(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 501
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController;->mLastArtworkWaitTask:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$ArtworkWaitTask;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController;->mLastArtworkWaitTask:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$ArtworkWaitTask;

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$ArtworkWaitTask;->isFinished(Landroid/net/Uri;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 502
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController;->mLastArtworkWaitTask:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$ArtworkWaitTask;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$ArtworkWaitTask;->cancel()V

    .line 504
    :cond_0
    iget p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController;->mBitmapSizeResId:I

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->a(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object p2

    .line 505
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->a()Landroid/graphics/Bitmap;

    move-result-object p2

    const/4 p3, 0x1

    if-nez p2, :cond_1

    .line 508
    iput-boolean p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController;->mIsRequesting:Z

    .line 509
    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$ArtworkWaitTask;

    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController;->mMetaPublisher:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$MetaPublisher;

    invoke-direct {p2, p0, p3, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$ArtworkWaitTask;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$MetaPublisher;Landroid/net/Uri;)V

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController;->mLastArtworkWaitTask:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$ArtworkWaitTask;

    .line 510
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController;->mLastArtworkWaitTask:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$ArtworkWaitTask;

    invoke-interface {p2, p3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 511
    iget p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController;->mBitmapSizeResId:I

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->a(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object p1

    .line 512
    invoke-virtual {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 514
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController;->mLastArtworkWaitTask:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$ArtworkWaitTask;

    .line 515
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->getInstance()Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->getColor(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;

    .line 516
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController;->mMetaPublisher:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$MetaPublisher;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$MetaPublisher;->syncPublishMetaCachedBitmap(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 517
    iput-boolean p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController;->mIsRequesting:Z

    :goto_0
    return-void
.end method


# virtual methods
.method hasAsyncRequest()Z
    .locals 1

    .line 493
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController;->mIsRequesting:Z

    return v0
.end method

.method public onPublishArtwork(Landroid/net/Uri;Landroid/graphics/Bitmap;J)V
    .locals 2

    const/4 v0, 0x0

    .line 470
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController;->mIsRequesting:Z

    .line 471
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->getInstance()Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->getColor(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;

    .line 472
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController;->mLastArtworkWaitTask:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$ArtworkWaitTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController;->mLastArtworkWaitTask:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$ArtworkWaitTask;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$ArtworkWaitTask;->isFinished(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController;->mMetaPublisher:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$MetaPublisher;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$MetaPublisher;->asyncPublishBitmap(Landroid/net/Uri;Landroid/graphics/Bitmap;J)V

    goto :goto_0

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController;->mLastArtworkWaitTask:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$ArtworkWaitTask;

    if-eqz v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController;->mLastArtworkWaitTask:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$ArtworkWaitTask;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$ArtworkWaitTask;->setPublish(Landroid/net/Uri;)V

    .line 478
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController;->mMetaPublisher:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$MetaPublisher;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$MetaPublisher;->asyncPublishMetaCachedBitmap(Landroid/net/Uri;Landroid/graphics/Bitmap;J)V

    :goto_0
    return-void
.end method

.method public onStartBackgroundRequest(Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public onStillUsedArtwork(Landroid/net/Uri;J)Z
    .locals 0

    .line 484
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController;->isLastRequestArtworkUri(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

.method public release()V
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method
