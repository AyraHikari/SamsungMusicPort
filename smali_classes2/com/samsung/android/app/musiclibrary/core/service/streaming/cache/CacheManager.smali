.class public final Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;
.super Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileChain;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LIFECYCLE:Ljava/lang/String; = "LifeCycle: "

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-PlayerServer"

.field private static final SUB_TAG:Ljava/lang/String; = "CacheManager> "

.field private static volatile sCacheManager:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static final sExecutor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private mBasePath:Ljava/lang/String;

.field private mCacheVersion:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheVersion;

.field private final mContext:Landroid/content/Context;

.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->sExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileChain;-><init>()V

    .line 45
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->clearCacheInternal(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;I)V
    .locals 0

    .line 24
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->clearCacheInternal(Landroid/content/Context;I)V

    return-void
.end method

.method public static clearCache(Landroid/content/Context;)V
    .locals 2

    .line 168
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->isCalledInMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->sExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$1;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 176
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->clearCacheInternal(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public static clearCache(Landroid/content/Context;I)V
    .locals 2

    .line 192
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->isCalledInMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->sExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$2;-><init>(Landroid/content/Context;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 200
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->clearCacheInternal(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

.method private static clearCacheInternal(Landroid/content/Context;)V
    .locals 2

    .line 185
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->getBaseCachePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 186
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->delete(Ljava/io/File;)V

    .line 187
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom;->deleteAll(Landroid/content/Context;)V

    return-void
.end method

.method private static clearCacheInternal(Landroid/content/Context;I)V
    .locals 1

    .line 205
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->getBaseCachePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->getBaseCachePath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 206
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->delete(Ljava/io/File;)V

    .line 207
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom;->deletePath(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static createInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;
    .locals 2

    .line 52
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->sCacheManager:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;

    if-nez v0, :cond_1

    .line 53
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->sCacheManager:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->sCacheManager:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;

    .line 57
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 59
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->sCacheManager:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;

    return-object p0
.end method

.method public static delete(Ljava/io/File;)V
    .locals 4

    if-eqz p0, :cond_1

    .line 221
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 224
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 225
    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->delete(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 228
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "deleteFile. File remove error !!"

    .line 229
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->printInfoLog(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private deleteFileAndCp(Ljava/lang/String;)V
    .locals 2

    .line 158
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "deleteFileAndCp. File remove error !!"

    .line 161
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->printInfoLog(Ljava/lang/String;)V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom;->deleteFile(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private ensureCache()V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->mCacheVersion:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheVersion;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->mCacheVersion:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheVersion;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheVersion;->hasCafe()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 81
    :cond_0
    monitor-enter p0

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->mCacheVersion:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheVersion;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->mCacheVersion:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheVersion;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheVersion;->hasCafe()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    monitor-exit p0

    return-void

    .line 85
    :cond_1
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheVersion;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->mBasePath:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheVersion;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->mCacheVersion:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheVersion;

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->mCacheVersion:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheVersion;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheVersion;->ensureCafe()V

    .line 87
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private executeCacheFile(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;
    .locals 8
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 137
    iget v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->secureType:I

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->mCacheVersion:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheVersion;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheVersion;->getCafe()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureFactory;->createSecure(ILjava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/ISecure;

    move-result-object v6

    .line 138
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->mBasePath:Ljava/lang/String;

    move-object v2, v0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheFile;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/ISecure;Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 140
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->id:Ljava/lang/String;

    const-string v1, "executeCacheFile"

    if-nez p2, :cond_0

    const-string p2, " "

    goto :goto_0

    :cond_0
    const-string p2, "find cache!"

    :goto_0
    invoke-static {p1, v1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->printLifeCycleLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private findFile(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 99
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->ensureCache()V

    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom;->getCachedData(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 102
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->executeCacheFile(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

    move-result-object p1

    return-object p1

    .line 105
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] data.isSameQuality "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;->isSameQuality:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " req total: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->totalBytes:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " cached: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->printInfoLog(Ljava/lang/String;)V

    .line 108
    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;->path:Ljava/lang/String;

    .line 109
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 110
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->executeCacheFile(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

    move-result-object p1

    return-object p1

    .line 112
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->mBasePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;->isSkippableFile()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 119
    iget p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->secureType:I

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->mCacheVersion:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheVersion;

    .line 120
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheVersion;->getCafe()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureFactory;->createSecure(ILjava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/ISecure;

    move-result-object p1

    .line 121
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/SkippableCacheFile;

    invoke-direct {v1, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/SkippableCacheFile;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/ISecure;)V

    return-object v1

    .line 123
    :cond_3
    iget-boolean v1, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;->isSameQuality:Z

    if-eqz v1, :cond_4

    .line 124
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->hasCachedSourceChanged(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[id: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->id:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] cached data changed, current: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " cached: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->printInfoLog(Ljava/lang/String;)V

    .line 128
    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->deleteFileAndCp(Ljava/lang/String;)V

    .line 129
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->executeCacheFile(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

    move-result-object p1

    return-object p1

    .line 132
    :cond_4
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->executeCacheFile(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

    move-result-object p1

    return-object p1

    .line 114
    :cond_5
    :goto_0
    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->deleteFileAndCp(Ljava/lang/String;)V

    .line 115
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->executeCacheFile(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

    move-result-object p1

    return-object p1
.end method

.method public static getBaseCachePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 217
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->getBasePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getBaseCachePath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getOnlineCacheSize(Landroid/content/Context;)J
    .locals 2

    .line 235
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->getBaseCachePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 236
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 237
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->getSizeIncludeChild(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getSizeIncludeChild(Ljava/io/File;)J
    .locals 6

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_5

    .line 241
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_3

    .line 244
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 245
    array-length v2, p0

    if-nez v2, :cond_1

    goto :goto_2

    .line 249
    :cond_1
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p0, v3

    .line 250
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 251
    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->getSizeIncludeChild(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v0, v4

    goto :goto_1

    .line 253
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v0, v4

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-wide v0

    :cond_4
    :goto_2
    return-wide v0

    :cond_5
    :goto_3
    return-wide v0
.end method

.method private hasCachedSourceChanged(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;)Z
    .locals 1

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->isChangedTotalBytes(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->isChangedServerTimeStamp(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private static isCalledInMainThread()Z
    .locals 4

    .line 181
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isChangedServerTimeStamp(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;)Z
    .locals 1

    .line 149
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->serverTimeStamp:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->serverTimeStamp:Ljava/lang/String;

    iget-object p2, p2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;->serverTimeStamp:Ljava/lang/String;

    .line 150
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isChangedTotalBytes(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;)Z
    .locals 4

    .line 154
    iget-wide v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->totalBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->totalBytes:J

    iget-wide p1, p2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;->totalBytes:J

    cmp-long p1, v0, p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static obtainInstance()Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;
    .locals 2

    .line 63
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->sCacheManager:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;

    if-eqz v0, :cond_0

    .line 66
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->sCacheManager:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;

    return-object v0

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please call createInstance method first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static printErrorLog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SMUSIC-SV-PlayerServer"

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CacheManager> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static printInfoLog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SMUSIC-SV-PlayerServer"

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CacheManager> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static printLifeCycleLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CacheManager> LifeCycle: [id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 273
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "%-50s | %-20s | %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    const/4 p0, 0x2

    aput-object p2, v2, p0

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "SMUSIC-SV-PlayerServer"

    .line 274
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static printLog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SMUSIC-SV-PlayerServer"

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CacheManager> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected request(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;
    .locals 3

    .line 92
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->findFile(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

    move-result-object v0

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->id:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] find! "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->printInfoLog(Ljava/lang/String;)V

    return-object v0
.end method

.method public setBasePath(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->mBasePath:Ljava/lang/String;

    return-void
.end method
