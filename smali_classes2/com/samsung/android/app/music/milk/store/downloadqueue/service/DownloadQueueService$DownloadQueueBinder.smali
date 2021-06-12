.class final Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadQueueBinder;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DownloadQueueBinder"
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;)V
    .locals 0
    .param p1    # Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 767
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 768
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadQueueBinder;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$1;)V
    .locals 0

    .line 763
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadQueueBinder;-><init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 793
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadQueueBinder;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;->a()V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 773
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadQueueBinder;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;->a(I)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueCallback;)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 803
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadQueueBinder;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueCallback;)V

    return-void
.end method

.method public b(I)V
    .locals 1

    .line 778
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadQueueBinder;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;->b(I)V

    return-void
.end method

.method public b(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueCallback;)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 808
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadQueueBinder;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;->b(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueCallback;)V

    return-void
.end method

.method public c(I)V
    .locals 1

    .line 783
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadQueueBinder;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;->c(I)V

    return-void
.end method

.method public d(I)V
    .locals 1

    .line 788
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadQueueBinder;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;->d(I)V

    return-void
.end method

.method public e(I)V
    .locals 1

    .line 798
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadQueueBinder;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;->e(I)V

    return-void
.end method
