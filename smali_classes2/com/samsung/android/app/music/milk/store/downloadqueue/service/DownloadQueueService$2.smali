.class Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/content/Loader$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/content/Loader$OnLoadCompleteListener<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$2;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 2
    .param p1    # Landroid/support/v4/content/Loader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 401
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "SV"

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadQueue_DownloadQueueService | onLoadComplete() - data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 414
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 415
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$2;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    invoke-static {p2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->f(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "SV"

    const-string p2, "DownloadQueue_DownloadQueueService | onLoadComplete() - Empty cursor."

    .line 402
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$2;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 404
    new-instance p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$2$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$2$1;-><init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$2;Landroid/os/Looper;)V

    const/4 p2, 0x0

    .line 409
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$2$1;->sendEmptyMessage(I)Z

    .line 410
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$2;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->stopSelf()V

    :goto_1
    return-void
.end method

.method public synthetic onLoadComplete(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Landroid/support/v4/content/Loader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 398
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$2;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method
