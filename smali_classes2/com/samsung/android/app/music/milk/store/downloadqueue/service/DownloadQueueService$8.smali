.class Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Ljava/lang/String;",
        "Lio/reactivex/Observable<",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;

.field final synthetic b:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)V
    .locals 0

    .line 872
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$8;->b:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$8;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 875
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 876
    new-instance p1, Ljava/lang/Throwable;

    const-string v0, "fail to update orderId"

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 878
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$8;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;

    iput-object p1, v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->k:Ljava/lang/String;

    const-string v0, "SV"

    .line 879
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadQueue_DownloadQueueService | updateDrmOrderId() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$8;->b:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$8;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;

    iget v0, v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->a:I

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;I)V

    const/4 p1, 0x1

    .line 881
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 872
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$8;->a(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
