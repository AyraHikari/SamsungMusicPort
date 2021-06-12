.class Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager$CacheRequestProducer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheRequestProducer"
.end annotation


# instance fields
.field private final mCacheRequestConsumer:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager$CacheRequester;

.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;

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
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;)V
    .locals 2

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager$CacheRequestProducer;->mQueue:Ljava/util/concurrent/BlockingQueue;

    .line 256
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager$CacheRequestProducer;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 259
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager$CacheRequestProducer;->mFileManager:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;

    .line 260
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager$CacheRequester;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager$CacheRequestProducer;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager$CacheRequester;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager$CacheRequestProducer;->mCacheRequestConsumer:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager$CacheRequester;

    .line 261
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager$CacheRequestProducer;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager$CacheRequestProducer;->mCacheRequestConsumer:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager$CacheRequester;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method requestCacheOnly(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;)V
    .locals 4

    .line 266
    :try_start_0
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->id:Ljava/lang/String;

    const-string v1, "CacheOnly :put"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " enter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->access$300(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager$CacheRequestProducer;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 268
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->id:Ljava/lang/String;

    const-string v1, "CacheOnly :put"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " exit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->access$300(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 270
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method
