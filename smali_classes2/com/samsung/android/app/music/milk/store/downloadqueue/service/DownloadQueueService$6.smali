.class Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;)V
    .locals 0

    .line 679
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$6;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/network/NetworkInfo;)V
    .locals 3
    .param p1    # Lcom/samsung/android/app/music/network/NetworkInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 682
    iget-object p1, p1, Lcom/samsung/android/app/music/network/NetworkInfo;->a:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean p1, p1, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$6;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$6;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->j(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "SV"

    .line 683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadQueue_DownloadQueueService | onNetworkStateChanged() - pendingQueue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$6;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    .line 684
    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$6;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->j(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 683
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$6;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$6;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->j(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;I)V

    .line 686
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$6;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->c(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;I)I

    :cond_0
    return-void
.end method
