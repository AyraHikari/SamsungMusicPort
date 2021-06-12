.class final Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/downloadqueue/service/Downloadable;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl;)Landroid/content/Context;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl;->a:Landroid/content/Context;

    return-object p0
.end method

.method private a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)Z
    .locals 6
    .param p1    # Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 190
    iget-wide v0, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->t:J

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    iget-wide v0, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->t:J

    .line 191
    invoke-static {}, Lcom/samsung/android/app/music/util/ConvertSystemTime;->d()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 192
    :goto_0
    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->p:Ljava/lang/String;

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    const-string v1, "SV"

    .line 193
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DownloadQueue_DownloadableDrmImpl | isInvalidDownloadUrl() - expiredUrl: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", invalidUrl: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_2
    return v2
.end method

.method private b(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)Lio/reactivex/Observable;
    .locals 4
    .param p1    # Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/purchase/DownloadTackList;",
            ">;"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/network/request/order/OrderTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/request/order/OrderTransport;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->i:Ljava/lang/String;

    iget-object v2, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->k:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->g:Ljava/lang/String;

    .line 203
    invoke-interface {v0, v1, v2, v3, p1}, Lcom/samsung/android/app/music/network/request/order/OrderTransport;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 204
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private b(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;Landroid/os/Handler;)V
    .locals 10
    .param p1    # Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 210
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/network/request/order/OrderTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/request/order/OrderTransport;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->k:Ljava/lang/String;

    new-instance v2, Lcom/samsung/android/app/music/model/purchase/DrmDownloadComplete;

    iget-object v3, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->g:Ljava/lang/String;

    iget-object v4, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->z:Ljava/lang/String;

    iget-object v7, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->A:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v7}, Lcom/samsung/android/app/music/model/purchase/DrmDownloadComplete;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-static {v2}, Lcom/samsung/android/app/music/model/purchase/DrmDownloadCompleteArray;->create(Lcom/samsung/android/app/music/model/purchase/DrmDownloadComplete;)Lcom/samsung/android/app/music/model/purchase/DrmDownloadCompleteArray;

    move-result-object v2

    .line 210
    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/music/network/request/order/OrderTransport;->a(Ljava/lang/String;Lcom/samsung/android/app/music/model/purchase/DrmDownloadCompleteArray;)Lio/reactivex/Observable;

    move-result-object v0

    .line 212
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl$2;-><init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl;)V

    .line 213
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->n:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 222
    new-instance v8, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl;->a:Landroid/content/Context;

    invoke-direct {v8, v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner;-><init>(Landroid/content/Context;)V

    new-instance v9, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl$3;

    move-object v0, v9

    move-object v1, p0

    move-object v2, v7

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl$3;-><init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl;Ljava/lang/String;Landroid/os/Handler;Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;J)V

    .line 223
    invoke-virtual {v8, v7, v9}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner;->a(Ljava/lang/String;Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner$OnDownloadedFileScanListener;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 9
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

    const-string v0, "SV"

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadQueue_DownloadableDrmImpl | download() - data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xc

    .line 136
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 137
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl;->a:Landroid/content/Context;

    .line 138
    invoke-static {v3, p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableUtils;->a(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;Landroid/os/Handler;)Ljava/io/File;

    move-result-object p2

    const-string v3, "SV"

    .line 139
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DownloadQueue_DownloadableDrmImpl | download() - DRM consumeTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v7, 0x0

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-static {v3, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_1

    .line 142
    iget p2, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->l:I

    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    const/4 p2, 0x1

    .line 143
    invoke-static {p2, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a(ILcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    :cond_0
    return-void

    .line 160
    :cond_1
    :try_start_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->n:Ljava/io/File;

    iget-object v3, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->o:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 161
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    const/4 p2, 0x0

    .line 162
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/16 v1, 0x2800

    .line 163
    :try_start_3
    new-array v1, v1, [B

    .line 165
    :goto_0
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_2

    const/4 v5, 0x0

    .line 166
    invoke-virtual {v3, v1, v5, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 168
    :cond_2
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 176
    :try_start_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 177
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl;->a:Landroid/content/Context;

    iget-object v2, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->q:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->g:Ljava/lang/String;

    iget-object v4, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->n:Ljava/io/File;

    iget-object v5, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->o:Ljava/lang/String;

    invoke-static {p2, v2, v3, v4, v5}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/LyricsDownloader;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    const-string p2, "SV"

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownloadQueue_DownloadableDrmImpl | download() - Lyrics consumeTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    const-string v0, "SV"

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadQueue_DownloadableDrmImpl | download() - While download lyrics. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :goto_1
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl;->b(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;Landroid/os/Handler;)V

    return-void

    :catchall_0
    move-exception v1

    move-object v4, p2

    goto :goto_2

    :catch_1
    move-exception v1

    .line 161
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v4

    move-object v8, v4

    move-object v4, v1

    move-object v1, v8

    :goto_2
    if-eqz v4, :cond_3

    .line 168
    :try_start_8
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_3

    :catch_2
    move-exception v3

    :try_start_9
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    :goto_3
    throw v1
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception p2

    .line 161
    :try_start_a
    throw p2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :goto_4
    if-eqz p2, :cond_4

    .line 168
    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_5

    :catch_4
    move-exception v2

    :try_start_c
    invoke-virtual {p2, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :goto_5
    throw v1
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    :catch_5
    move-exception p2

    const-string v1, "SV"

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownloadQueue_DownloadableDrmImpl | download() - While create drm file. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a(ILcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catch_6
    move-exception p2

    const-string v1, "SV"

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownloadQueue_DownloadableDrmImpl | download() - While download DRM. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a(ILcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catch_7
    move-exception p2

    const-string v0, "SV"

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadQueue_DownloadableDrmImpl | download() - Lost connection while download DRM. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 148
    invoke-static {v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x2712

    .line 150
    invoke-static {p2, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a(ILcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;Landroid/os/Handler;)Z
    .locals 12
    .param p1    # Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 59
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)Z

    move-result v0

    const/4 v8, 0x1

    if-eqz v0, :cond_3

    const/4 v9, 0x0

    .line 62
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl;->b(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)Lio/reactivex/Observable;

    move-result-object v10

    new-instance v11, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl$1;

    move-object v0, v11

    move-object v1, p0

    move-wide v2, v6

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl$1;-><init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl;JLandroid/os/Handler;Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)V

    invoke-virtual {v10, v11}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lio/reactivex/Observable;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/model/purchase/DownloadTackList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/purchase/DownloadTackList;->getResultCode()I

    move-result v1

    const-string v2, "SV"

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DownloadQueue_DownloadableDrmImpl | fillDownloadInfo() - resultCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\ndata: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 83
    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_0

    .line 88
    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/purchase/DownloadTackList;->getTrackDownloadList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;

    const-string v0, "SV"

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadQueue_DownloadableDrmImpl | fillDownloadInfo() - track: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->getBitrate()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->i:Ljava/lang/String;

    .line 91
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->getAudioExpiredTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/util/ConvertSystemTime;->a(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->t:J

    .line 92
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->getId3v1()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->u:Ljava/lang/String;

    .line 93
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->getId3v2()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->v:Ljava/lang/String;

    .line 94
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->getSize()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->s:J

    .line 95
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->getTrackNumber()I

    move-result v0

    iput v0, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->x:I

    .line 96
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->getDiskNumber()I

    move-result v0

    iput v0, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->y:I

    .line 97
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->p:Ljava/lang/String;

    .line 98
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->getSynclyricsUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->q:Ljava/lang/String;

    .line 99
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->getDrmType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->z:Ljava/lang/String;

    .line 100
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->getDeleteUrl()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->A:Ljava/lang/String;

    .line 101
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableUtils;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->o:Ljava/lang/String;

    .line 102
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl;->a:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueDb;->a(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)V

    const-string p2, "SV"

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadQueue_DownloadableDrmImpl | fillDownloadInfo() - data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "SV"

    .line 104
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DownloadQueue_DownloadableDrmImpl | fillDownloadInfo() - consumeTime: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v6

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 104
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :cond_0
    const/16 v0, 0x219d

    if-eq v1, v0, :cond_2

    const/16 v0, 0x21c1

    if-eq v1, v0, :cond_1

    const/16 v0, 0xa

    .line 118
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a(ILcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)Landroid/os/Message;

    move-result-object p1

    .line 117
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    const/16 v0, 0x2710

    .line 111
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a(ILcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    const/16 v0, 0x3eb

    .line 114
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a(ILcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    const-string p1, "SV"

    .line 121
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DownloadQueue_DownloadableDrmImpl | fillDownloadInfo() - consumeTime: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v6

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 121
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v9

    :catch_0
    return v9

    :cond_3
    return v8
.end method
