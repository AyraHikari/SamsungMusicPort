.class final Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadHandler$DownloadableImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/downloadqueue/service/Downloadable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DownloadableImpl"
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/Downloadable;

.field private final b:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/Downloadable;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 651
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 652
    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadHandler$DownloadableImpl;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/Downloadable;

    .line 653
    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadHandler$DownloadableImpl;->b:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/Downloadable;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$1;)V
    .locals 0

    .line 646
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadHandler$DownloadableImpl;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 669
    iget v0, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->h:I

    if-nez v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadHandler$DownloadableImpl;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/Downloadable;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/Downloadable;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;Landroid/os/Handler;Landroid/os/Handler;)V

    goto :goto_0

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadHandler$DownloadableImpl;->b:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/Downloadable;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/Downloadable;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;Landroid/os/Handler;Landroid/os/Handler;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;Landroid/os/Handler;)Z
    .locals 1
    .param p1    # Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 659
    iget v0, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->h:I

    if-nez v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadHandler$DownloadableImpl;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/Downloadable;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/Downloadable;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;Landroid/os/Handler;)Z

    move-result p1

    return p1

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadHandler$DownloadableImpl;->b:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/Downloadable;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/Downloadable;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;Landroid/os/Handler;)Z

    move-result p1

    return p1
.end method
