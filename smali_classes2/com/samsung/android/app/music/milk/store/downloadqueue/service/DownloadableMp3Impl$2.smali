.class Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner$OnDownloadedFileScanListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl;->b(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/os/Handler;

.field final synthetic c:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;

.field final synthetic d:J

.field final synthetic e:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl;Ljava/lang/String;Landroid/os/Handler;Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;J)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl$2;->e:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl$2;->b:Landroid/os/Handler;

    iput-object p4, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl$2;->c:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;

    iput-wide p5, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl$2;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 286
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    const-string p2, "SV"

    .line 288
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownloadQueue_DownloadableMp3Impl | onComplete() - Scan localTrackExt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 292
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl$2;->a:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 293
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl$2;->b:Landroid/os/Handler;

    const/16 p2, 0xe

    iget-object p3, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl$2;->c:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;

    .line 294
    invoke-static {p2, p3}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a(ILcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)Landroid/os/Message;

    move-result-object p2

    .line 293
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 318
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 298
    :cond_0
    :try_start_1
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl$2;->e:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl;

    invoke-static {p2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl;)Landroid/content/Context;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/app/music/provider/sync/MusicSyncInfo;->a:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    .line 300
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const v2, 0x10001

    const-string v3, "mediaStore"

    .line 307
    invoke-static {p1, v2, v3}, Lcom/samsung/android/app/music/provider/sync/MusicSyncInfo;->a(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    .line 309
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl$2;->e:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->d:Landroid/net/Uri;

    invoke-static {v3, v4, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 312
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl$2;->e:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl$2;->c:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;

    invoke-static {v2, v3, p3}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl;Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_2

    .line 313
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 314
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl$2;->b:Landroid/os/Handler;

    const/4 p2, 0x0

    iget-object p3, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl$2;->c:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;

    invoke-static {p2, p3}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a(ILcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string p1, "SV"

    .line 315
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "DownloadQueue_DownloadableMp3Impl | onComplete() - Scan consumeTime: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableMp3Impl$2;->d:J

    const/4 p3, 0x0

    sub-long/2addr v2, v4

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "ms"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 315
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 318
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p3

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_3
    :goto_0
    :try_start_4
    const-string p3, "SV"

    const-string v2, "DownloadQueue_DownloadableMp3Impl | scanDownloadedFile() - Cannot query given uri on media provider."

    .line 301
    invoke-static {p3, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p1, :cond_4

    .line 313
    :try_start_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 318
    :cond_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 298
    :goto_1
    :try_start_6
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_2
    if-eqz p1, :cond_6

    if-eqz p2, :cond_5

    .line 313
    :try_start_7
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    :catch_1
    move-exception p1

    :try_start_8
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_3
    throw p3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception p1

    .line 318
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method
