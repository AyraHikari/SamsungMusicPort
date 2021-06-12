.class Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$5$1;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$5;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;

.field final synthetic b:I

.field final synthetic c:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$5;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$5;Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;I)V
    .locals 0

    .line 522
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$5$1;->c:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$5;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$5$1;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;

    iput p3, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$5$1;->b:I

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 3

    const-string v0, "SV"

    .line 536
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadQueue_DownloadQueueService | ResultHandler | handleMessage() - DRM_INVALID_ORDER_ID result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 529
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$5$1;->c:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$5;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$5;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->g(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;)Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->c()V

    .line 530
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$5$1;->c:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$5;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$5;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$5$1;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;

    iget v0, v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->a:I

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->b(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;I)V

    .line 531
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$5$1;->c:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$5;

    iget v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$5$1;->b:I

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$5;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$5;I)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 522
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$5$1;->a(Ljava/lang/Boolean;)V

    return-void
.end method
