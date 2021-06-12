.class Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$4;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;Landroid/os/Looper;)V
    .locals 0

    .line 429
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$4;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 432
    iget v0, p1, Landroid/os/Message;->what:I

    .line 433
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$4;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;

    if-nez v1, :cond_0

    const-string p1, "SV"

    const-string v0, "DownloadQueue_DownloadQueueService | ProgressHandler | handleMessage() - null data."

    .line 435
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 438
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-float p1, v2

    .line 439
    iget-wide v4, v1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->s:J

    long-to-float v4, v4

    div-float/2addr p1, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float p1, p1, v4

    float-to-int p1, p1

    const/16 v4, 0x64

    if-le p1, v4, :cond_1

    const-string v1, "SV"

    .line 449
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownloadQueue_DownloadQueueService | ProgressHandler | handleMessage() - id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", progress: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Skip this because the currentFileSize is larger than amountFileSize."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 456
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$4;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    invoke-static {v4}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->g(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;)Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;

    move-result-object v4

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->b:Ljava/lang/String;

    invoke-virtual {v4, v1, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->a(Ljava/lang/String;I)V

    .line 458
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$4;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->h(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueCallback;

    .line 459
    invoke-interface {v1, v0, v2, v3}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueCallback;->a(IJ)V

    goto :goto_0

    :cond_2
    return-void
.end method
