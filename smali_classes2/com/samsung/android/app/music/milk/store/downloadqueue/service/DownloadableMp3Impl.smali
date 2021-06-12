.class final Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl;
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

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl;)Landroid/content/Context;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl;->a:Landroid/content/Context;

    return-object p0
.end method

.method private a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;Ljava/io/File;Ljava/io/File;)V
    .locals 6
    .param p1    # Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->n:Ljava/io/File;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->o:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 256
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "SV"

    const-string v1, "DownloadQueue_DownloadableMp3Impl | mergeId3Tag() - Delete existed same name file."

    .line 257
    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :cond_0
    new-instance p1, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p2, 0x0

    .line 262
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 263
    :try_start_1
    new-instance p3, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v0, 0x2800

    invoke-direct {p3, v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 265
    :try_start_2
    new-array v0, v0, [B

    .line 267
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    .line 268
    invoke-virtual {p3, v0, v3, v2}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_0

    .line 270
    :cond_1
    :goto_1
    invoke-virtual {v1, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    if-eq v2, v4, :cond_2

    .line 271
    invoke-virtual {p3, v0, v3, v2}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 273
    :cond_2
    :try_start_3
    invoke-virtual {p3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->close()V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, p2

    goto :goto_2

    :catch_0
    move-exception v0

    .line 260
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    :goto_2
    if-eqz v2, :cond_3

    .line 273
    :try_start_6
    invoke-virtual {p3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_3

    :catch_1
    move-exception p3

    :try_start_7
    invoke-virtual {v2, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    invoke-virtual {p3}, Ljava/io/BufferedOutputStream;->close()V

    :goto_3
    throw v0
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p3

    move-object v0, p2

    goto :goto_4

    :catch_2
    move-exception p3

    .line 260
    :try_start_8
    throw p3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v0

    move-object v5, v0

    move-object v0, p3

    move-object p3, v5

    :goto_4
    if-eqz v0, :cond_4

    .line 273
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_5

    :catch_3
    move-exception v1

    :try_start_a
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_4
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    :goto_5
    throw p3
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception p3

    goto :goto_6

    :catch_4
    move-exception p2

    .line 260
    :try_start_b
    throw p2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :goto_6
    if-eqz p2, :cond_5

    .line 273
    :try_start_c
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_7

    :catch_5
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_5
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->close()V

    :goto_7
    throw p3
.end method

.method private a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;Ljava/lang/String;)V
    .locals 8
    .param p1    # Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "192"

    .line 334
    iget-object v1, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string v2, "320"

    .line 335
    iget-object v3, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object p2, v1

    .line 337
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/network/transport/UserMyTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/UserMyTransport;

    move-result-object v2

    iget-object v3, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->g:Ljava/lang/String;

    const/16 v4, 0x581

    iget-object v5, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->k:Ljava/lang/String;

    move-object v6, v0

    move-object v7, p2

    .line 338
    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/app/music/network/transport/UserMyTransport;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v1

    .line 339
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl$4;

    invoke-direct {v2, p0, p2, v0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl$4;-><init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)V

    .line 340
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl$3;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl$3;-><init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl;)V

    .line 368
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl;Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)Z
    .locals 6
    .param p1    # Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 212
    iget-wide v0, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->t:J

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    iget-wide v0, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->t:J

    .line 213
    invoke-static {}, Lcom/samsung/android/app/music/util/ConvertSystemTime;->d()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 214
    :goto_0
    iget-object v1, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->p:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->v:Ljava/lang/String;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x1

    :goto_2
    const-string v1, "SV"

    .line 215
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DownloadQueue_DownloadableMp3Impl | isInvalidDownloadUrl() - expiredUrl: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", invalidUrl: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_4

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_3
    return v2
.end method

.method private b(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)Ljava/io/File;
    .locals 9
    .param p1    # Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "tag"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 224
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SV"

    const-string v2, "DownloadQueue_DownloadableMp3Impl | downloadId3Tag() - Delete existed same name file."

    .line 225
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl;->a:Landroid/content/Context;

    .line 229
    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/net/transport/DownloadTransport$Proxy;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/net/transport/DownloadTransport;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->v:Ljava/lang/String;

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/app/music/service/milk/net/transport/DownloadTransport;->a(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    .line 230
    invoke-interface {v1}, Lretrofit2/Call;->a()Lretrofit2/Response;

    move-result-object v1

    .line 231
    invoke-virtual {v1}, Lretrofit2/Response;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/ResponseBody;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    return-object v3

    .line 236
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Lokhttp3/ResponseBody;->d()Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4

    .line 237
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 238
    :try_start_2
    invoke-virtual {v1}, Lretrofit2/Response;->c()Lokhttp3/Headers;

    move-result-object v1

    const-string v5, "Content-Length"

    invoke-virtual {v1, v5}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 239
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->w:J

    .line 240
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl;->a:Landroid/content/Context;

    iget v5, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->a:I

    iget-wide v6, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->w:J

    invoke-static {v1, v5, v6, v7}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueDb;->b(Landroid/content/Context;IJ)V

    const/16 v1, 0x1000

    .line 242
    new-array v1, v1, [B

    .line 244
    :goto_0
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    const/4 v6, 0x0

    .line 245
    invoke-virtual {v4, v1, v6, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 247
    :cond_2
    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_3
    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v3

    goto :goto_1

    :catch_0
    move-exception v0

    .line 236
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_1
    if-eqz v1, :cond_4

    .line 247
    :try_start_6
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :catch_1
    move-exception v4

    :try_start_7
    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    :goto_2
    throw v0
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v3, v0

    .line 236
    :try_start_8
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_3
    if-eqz v2, :cond_6

    if-eqz v3, :cond_5

    .line 247
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_4

    :catch_3
    move-exception v1

    :try_start_a
    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_6
    :goto_4
    throw v0
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_4

    .line 248
    :catch_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value on header. trackId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->g:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;Landroid/os/Handler;)V
    .locals 11
    .param p1    # Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 279
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

    const-string v0, "SV"

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadQueue_DownloadableMp3Impl | scanDownloadedFile() - fullFilePath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    new-instance v8, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl;->a:Landroid/content/Context;

    invoke-direct {v8, v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner;-><init>(Landroid/content/Context;)V

    const-string v9, "audio/mp4a-latm"

    new-instance v10, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl$2;

    move-object v0, v10

    move-object v1, p0

    move-object v2, v7

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl$2;-><init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl;Ljava/lang/String;Landroid/os/Handler;Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;J)V

    invoke-virtual {v8, v7, v9, v10}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner;->a(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner$OnDownloadedFileScanListener;)V

    return-void
.end method

.method private c(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)Lio/reactivex/Observable;
    .locals 3
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

    .line 327
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/network/request/order/OrderTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/request/order/OrderTransport;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->i:Ljava/lang/String;

    iget-object v2, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->j:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->g:Ljava/lang/String;

    .line 328
    invoke-interface {v0, v1, v2, p1}, Lcom/samsung/android/app/music/network/request/order/OrderTransport;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 329
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 10
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

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadQueue_DownloadableMp3Impl | download() - data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xb

    const/16 v1, 0x2712

    .line 142
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 143
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl;->b(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)Ljava/io/File;

    move-result-object v4

    const-string v5, "SV"

    .line 144
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DownloadQueue_DownloadableMp3Impl | download() - Id3tag consumeTime: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/4 v9, 0x0

    sub-long/2addr v7, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-static {v5, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v4, :cond_0

    .line 147
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a(ILcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    return-void

    .line 163
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 164
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableUtils;->a(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;Landroid/os/Handler;)Ljava/io/File;

    move-result-object p2

    const-string v0, "SV"

    .line 165
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DownloadQueue_DownloadableMp3Impl | download() - MP3 consumeTime: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v8, 0x0

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 165
    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_2

    .line 168
    iget p2, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->l:I

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    const/4 p2, 0x1

    .line 169
    invoke-static {p2, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a(ILcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1
    return-void

    .line 184
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 190
    :cond_3
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 191
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl;->a:Landroid/content/Context;

    iget-object v3, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->q:Ljava/lang/String;

    iget-object v5, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->g:Ljava/lang/String;

    iget-object v6, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->n:Ljava/io/File;

    iget-object v7, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->o:Ljava/lang/String;

    invoke-static {v2, v3, v5, v6, v7}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/LyricsDownloader;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "SV"

    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DownloadQueue_DownloadableMp3Impl | download() - Lyrics consumeTime: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v7, 0x0

    sub-long/2addr v5, v0

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-static {v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SV"

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownloadQueue_DownloadableMp3Impl | download() - While download lyrics. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :goto_0
    :try_start_3
    invoke-direct {p0, p1, v4, p2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;Ljava/io/File;Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 208
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl;->b(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;Landroid/os/Handler;)V

    return-void

    :catch_1
    move-exception p2

    const-string v0, "SV"

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadQueue_DownloadableMp3Impl | download() - While merge id3 tag. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0xd

    .line 204
    invoke-static {p2, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a(ILcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_4
    :goto_1
    const/16 p2, 0x64

    .line 185
    invoke-static {p2, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a(ILcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catch_2
    move-exception p2

    const-string v0, "SV"

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadQueue_DownloadableMp3Impl | download() - While download MP3. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0xc

    .line 180
    invoke-static {p2, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a(ILcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catch_3
    move-exception p2

    const-string v0, "SV"

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownloadQueue_DownloadableMp3Impl | download() - Lost connection while download MP3. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 174
    invoke-static {v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-static {v1, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a(ILcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catch_4
    move-exception p2

    const-string v1, "SV"

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownloadQueue_DownloadableMp3Impl | download() - While download Id3tag. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a(ILcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catch_5
    move-exception p2

    const-string v0, "SV"

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownloadQueue_DownloadableMp3Impl | download() - Lost connection while download Id3tag. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 151
    invoke-static {v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-static {v1, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a(ILcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)Landroid/os/Message;

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

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 74
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)Z

    move-result v0

    const/4 v8, 0x1

    if-eqz v0, :cond_2

    const/4 v9, 0x0

    .line 77
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl;->c(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)Lio/reactivex/Observable;

    move-result-object v10

    new-instance v11, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl$1;

    move-object v0, v11

    move-object v1, p0

    move-wide v2, v6

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl$1;-><init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl;JLandroid/os/Handler;Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)V

    invoke-virtual {v10, v11}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lio/reactivex/Observable;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/model/purchase/DownloadTackList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/purchase/DownloadTackList;->getResultCode()I

    move-result v1

    const-string v2, "SV"

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DownloadQueue_DownloadableMp3Impl | fillDownloadInfo() - resultCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\ndata: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 98
    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_0

    .line 103
    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/purchase/DownloadTackList;->getTrackDownloadList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;

    const-string v0, "SV"

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadQueue_DownloadableMp3Impl | fillDownloadInfo() - track: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->getBitrate()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->i:Ljava/lang/String;

    .line 106
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->getAudioExpiredTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/util/ConvertSystemTime;->a(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->t:J

    .line 107
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->getId3v1()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->u:Ljava/lang/String;

    .line 108
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->getId3v2()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->v:Ljava/lang/String;

    .line 109
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->getSize()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->s:J

    .line 110
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->getTrackNumber()I

    move-result v0

    iput v0, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->x:I

    .line 111
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->getDiskNumber()I

    move-result v0

    iput v0, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->y:I

    .line 112
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->p:Ljava/lang/String;

    .line 113
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->getSynclyricsUrl()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->q:Ljava/lang/String;

    .line 114
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableUtils;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->o:Ljava/lang/String;

    .line 115
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl;->a:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueDb;->a(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)V

    const-string p2, "SV"

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadQueue_DownloadableMp3Impl | fillDownloadInfo() - data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "SV"

    .line 117
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DownloadQueue_DownloadableMp3Impl | fillDownloadInfo() - consumeTime: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v6

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 117
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :cond_0
    const/16 v0, 0x21c1

    if-ne v1, v0, :cond_1

    const/16 v0, 0x2710

    .line 122
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a(ILcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    const/16 v0, 0xa

    .line 125
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a(ILcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    const-string p1, "SV"

    .line 127
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DownloadQueue_DownloadableMp3Impl | fillDownloadInfo() - consumeTime: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v6

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 127
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v9

    :catch_0
    return v9

    :cond_2
    return v8
.end method
