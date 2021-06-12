.class Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager$CacheRequester;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/streaming/OnFileLoadListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheRequester"
.end annotation


# instance fields
.field private final mFileManager:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;

.field private final mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;Ljava/util/concurrent/BlockingQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;",
            ">;)V"
        }
    .end annotation

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager$CacheRequester;->mFileManager:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;

    .line 283
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager$CacheRequester;->mQueue:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method private consume(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;)V
    .locals 4

    .line 298
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->id:Ljava/lang/String;

    const-string v1, "CacheOnly :requestCacheOnlyInternal"

    const-string v2, "enter"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->access$300(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager$CacheRequester;->getHighPriorityFile()Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "wait for high priority file:"

    .line 301
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager$CacheRequester;->waitFile(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;Ljava/lang/String;)V

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager$CacheRequester;->mFileManager:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->access$400(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

    move-result-object v0

    .line 305
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->id:Ljava/lang/String;

    const-string v2, "CacheOnly :requestCacheOnlyInternal"

    const-string v3, "exit"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->access$300(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cache finished:"

    .line 306
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager$CacheRequester;->waitFile(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;Ljava/lang/String;)V

    return-void
.end method

.method private getCurrentRequestId()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager$CacheRequester;->mFileManager:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->access$000(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;)Landroid/util/SparseArray;

    move-result-object v0

    const/4 v1, 0x1

    .line 349
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private getHighPriorityFile()Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 329
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager$CacheRequester;->getCurrentRequestId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 333
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager$CacheRequester;->getIFile(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 337
    :cond_1
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

    return-object v0
.end method

.method private getIFile(Ljava/lang/String;)Landroid/util/Pair;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;",
            "Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;",
            ">;"
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager$CacheRequester;->mFileManager:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->access$500(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;)Landroid/util/LruCache;

    move-result-object v0

    .line 343
    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    return-object p1
.end method

.method private isCompleteDownload(Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;)Z
    .locals 8

    .line 372
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;->isLoadFinished()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 375
    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;->getAvailableBytes()J

    move-result-wide v2

    .line 376
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;->getTotalBytes()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-eqz p1, :cond_1

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private waitFile(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;Ljava/lang/String;)V
    .locals 2

    if-nez p2, :cond_0

    .line 311
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->id:Ljava/lang/String;

    const-string v0, "CacheOnly :finished"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->access$300(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 314
    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager$CacheRequester;->isCompleteDownload(Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->id:Ljava/lang/String;

    const-string v0, "CacheOnly :finished"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->access$300(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 319
    :cond_1
    :try_start_0
    invoke-interface {p2, p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;->registerListener(Lcom/samsung/android/app/musiclibrary/core/service/streaming/OnFileLoadListener;)V

    .line 320
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager$CacheRequester;->waitUntilJobFinished(Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;)V

    .line 321
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->id:Ljava/lang/String;

    const-string v0, "CacheOnly :finished"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, v0, p3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->access$300(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    invoke-interface {p2, p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;->unregisterListener(Lcom/samsung/android/app/musiclibrary/core/service/streaming/OnFileLoadListener;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {p2, p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;->unregisterListener(Lcom/samsung/android/app/musiclibrary/core/service/streaming/OnFileLoadListener;)V

    throw p1
.end method

.method private waitUntilJobFinished(Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;)V
    .locals 1

    .line 360
    monitor-enter p0

    .line 361
    :goto_0
    :try_start_0
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;->isDead()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager$CacheRequester;->isCompleteDownload(Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 363
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 365
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 368
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method


# virtual methods
.method public onChangedFileLoad()V
    .locals 1

    .line 354
    monitor-enter p0

    .line 355
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 356
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 1

    .line 290
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager$CacheRequester;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager$CacheRequester;->consume(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 293
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-void
.end method
