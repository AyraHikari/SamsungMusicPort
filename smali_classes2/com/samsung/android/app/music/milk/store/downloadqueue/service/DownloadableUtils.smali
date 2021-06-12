.class final Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;Landroid/os/Handler;)Ljava/io/File;
    .locals 14
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Handler;
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

    move-object v0, p1

    const-string v1, "SV"

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownloadQueue_DownloadableUtils | downloadTrackFileToCacheFolder() - data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "%s.%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->g:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget v5, v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->h:I

    .line 46
    invoke-static {v5}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableUtils;->a(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->r:J

    iget-wide v4, v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->s:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    return-object v1

    .line 51
    :cond_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->p:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    const-string v3, "Range"

    .line 52
    iget-wide v4, v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->r:J

    long-to-int v4, v4

    .line 53
    invoke-static {v4}, Lcom/samsung/android/app/music/network/HttpUtils;->a(I)Ljava/lang/String;

    move-result-object v4

    .line 52
    invoke-virtual {v2, v3, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const/4 v3, 0x0

    .line 56
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iget-wide v8, v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->r:J

    invoke-static {v4, v8, v9}, Lcom/samsung/android/app/music/milk/store/IOUtils;->a(Ljava/lang/String;J)Ljava/io/OutputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v5, 0x2800

    .line 58
    :try_start_1
    new-array v5, v5, [B

    const/4 v8, 0x0

    .line 62
    :goto_0
    invoke-virtual {v2, v5}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    iget v10, v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->l:I

    if-ne v10, v7, :cond_2

    .line 64
    invoke-virtual {v4, v5, v6, v9}, Ljava/io/OutputStream;->write([BII)V

    .line 65
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v9

    iput-wide v9, v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->r:J

    .line 69
    iget-wide v9, v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->r:J

    long-to-double v9, v9

    iget-wide v11, v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->s:J

    long-to-double v11, v11

    div-double/2addr v9, v11

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    mul-double v9, v9, v11

    double-to-int v9, v9

    if-ge v8, v9, :cond_1

    const-string v10, "SV"

    .line 72
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DownloadQueue_DownloadableUtils | onProgressChanged() - id: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->a:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", progress: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", currentFileSize: "

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->r:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", amountFileSize: "

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->s:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    new-instance v8, Landroid/os/Message;

    invoke-direct {v8}, Landroid/os/Message;-><init>()V

    .line 79
    iget v10, v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->a:I

    iput v10, v8, Landroid/os/Message;->what:I

    .line 80
    iget-wide v10, v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->r:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iput-object v10, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v10, p2

    .line 81
    invoke-virtual {v10, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v8, v9

    goto :goto_0

    :cond_1
    move-object/from16 v10, p2

    goto :goto_0

    .line 84
    :cond_2
    iget-wide v5, v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->s:J

    iget-wide v8, v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->r:J

    const/4 v10, 0x0

    sub-long/2addr v5, v8

    const-wide/16 v8, 0x0

    cmp-long v8, v5, v8

    if-eqz v8, :cond_3

    const-string v8, "SV"

    .line 86
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DownloadQueue_DownloadableUtils | downloadTrackFileToCacheFolder() - id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->a:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", Occurred an abnormal diff: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v8, "SV"

    .line 89
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DownloadQueue_DownloadableUtils | downloadTrackFileToCacheFolder() - id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->a:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", currentFileSize: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->r:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", amountFileSize: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->s:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", diff: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", state: "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->l:I

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget v5, v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->a:I

    iget-wide v8, v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->r:J

    move-object v6, p0

    invoke-static {p0, v5, v8, v9}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueDb;->a(Landroid/content/Context;IJ)V

    .line 94
    iget v5, v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->l:I

    if-eq v5, v7, :cond_6

    const-string v1, "SV"

    .line 95
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DownloadQueue_DownloadableUtils | downloadTrackFileToCacheFolder() - Stopping by external: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->l:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_4

    .line 100
    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_5
    return-object v3

    :cond_6
    if-eqz v4, :cond_7

    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_8
    return-object v1

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v5, v3

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 55
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    :goto_1
    if-eqz v4, :cond_a

    if-eqz v5, :cond_9

    .line 100
    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v4, v0

    :try_start_6
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_9
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    :cond_a
    :goto_2
    throw v1
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    move-object v1, v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v3, v0

    .line 55
    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_3
    if-eqz v2, :cond_c

    if-eqz v3, :cond_b

    .line 100
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v2, v0

    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_c
    :goto_4
    throw v1
.end method

.method private static a(I)Ljava/lang/String;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    packed-switch p0, :pswitch_data_0

    const-string p0, ""

    return-object p0

    :pswitch_0
    const-string p0, "mdrm"

    return-object p0

    :pswitch_1
    const-string p0, "mp3"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)Ljava/lang/String;
    .locals 7
    .param p0    # Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->d:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 121
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s_%02d_%s_%s_%02d_%s"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->x:I

    .line 122
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v6, 0x1

    aput-object v1, v5, v6

    const/4 v1, 0x2

    aput-object v0, v5, v1

    const/4 v0, 0x3

    aput-object v2, v5, v0

    iget v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->y:I

    .line 123
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, v5, v1

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->i:Ljava/lang/String;

    const/4 v1, 0x5

    aput-object v0, v5, v1

    .line 122
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    const/16 v2, 0xf0

    if-le v1, v2, :cond_0

    .line 125
    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableUtils;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->h:I

    invoke-static {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableUtils;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SV"

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadQueue_DownloadableUtils | createFileName() - fileName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 135
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "[?/<>|*:\\\"{\\\\}]"

    const-string v1, " "

    .line 139
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)V
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 105
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

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

    .line 106
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SV"

    const-string v1, "DownloadQueue_DownloadableUtils | deleteCachedFiles() - Delete id3 tag cache file."

    .line 107
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->m:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "SV"

    const-string p1, "DownloadQueue_DownloadableUtils | deleteCachedFiles() - Delete track cache file."

    .line 111
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 145
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 148
    :cond_0
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    if-lez v1, :cond_1

    .line 150
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    :try_start_0
    const-string v0, "UTF-8"

    .line 158
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/16 v1, 0xf0

    const/4 v2, 0x0

    .line 159
    invoke-static {v0, v2, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 160
    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    const-string v3, "UTF-8"

    .line 163
    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    .line 164
    invoke-virtual {v3}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v3

    .line 166
    sget-object v4, Ljava/nio/charset/CodingErrorAction;->IGNORE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v3, v4}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    const/4 v4, 0x1

    .line 167
    invoke-virtual {v3, v0, v1, v4}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 168
    invoke-virtual {v3, v1}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    .line 169
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v3

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->position()I

    move-result v1

    invoke-direct {v0, v3, v2, v1}, Ljava/lang/String;-><init>([CII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SV"

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownloadQueue_DownloadableUtils | substringUpToMaxLength() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method
