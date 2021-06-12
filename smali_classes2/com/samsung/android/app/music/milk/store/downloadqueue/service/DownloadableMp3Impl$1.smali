.class Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;Landroid/os/Handler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Landroid/os/Handler;

.field final synthetic c:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;

.field final synthetic d:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl;JLandroid/os/Handler;Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl$1;->d:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl;

    iput-wide p2, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl$1;->a:J

    iput-object p4, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl$1;->b:Landroid/os/Handler;

    iput-object p5, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl$1;->c:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "SV"

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadQueue_DownloadableMp3Impl | fillDownloadInfo() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    instance-of v0, p1, Ljava/net/SocketException;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl$1;->b:Landroid/os/Handler;

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl$1;->c:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;

    .line 90
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a(ILcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)Landroid/os/Message;

    move-result-object v0

    .line 89
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "SV"

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadQueue_DownloadableMp3Impl | fillDownloadInfo() - Lost connection while download track info. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\nconsumeTime: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl$1;->a:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 83
    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl$1;->b:Landroid/os/Handler;

    const/16 v0, 0x2712

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl$1;->c:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a(ILcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 77
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl$1;->a(Ljava/lang/Throwable;)V

    return-void
.end method
