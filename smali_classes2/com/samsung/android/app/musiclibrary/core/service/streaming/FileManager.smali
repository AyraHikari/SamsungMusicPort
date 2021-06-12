.class public final Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFileManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager$CacheRequester;,
        Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager$CacheRequestProducer;
    }
.end annotation


# static fields
.field private static final CACHE_ONLY:Ljava/lang/String; = "CacheOnly :"

.field private static final DEBUG:Z = false

.field private static final DEBUG_ITEMS:Z = false

.field private static final LIFECYCLE:Ljava/lang/String; = "LifeCycle: "

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-PlayerServer"

.field private static final SUB_TAG:Ljava/lang/String; = "FileManager> "

.field private static volatile sFileManager:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;


# instance fields
.field private mCacheRequestProducer:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager$CacheRequestProducer;

.field private mFileChain:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileChain;

.field private final mLock:Ljava/lang/Object;

.field private final mPlayingItemArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRandomePathMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestPare:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;",
            "Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->mLock:Ljava/lang/Object;

    .line 58
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->mPlayingItemArray:Landroid/util/SparseArray;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->mRandomePathMap:Ljava/util/Map;

    .line 62
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager$1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;I)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->mRequestPare:Landroid/util/LruCache;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;)Landroid/util/SparseArray;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->mPlayingItemArray:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->printInfoLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->removeRandomPath(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->printLifeCycleLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->requestCacheOnlyInternal(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;)Landroid/util/LruCache;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->mRequestPare:Landroid/util/LruCache;

    return-object p0
.end method

.method private ensureProducer()V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->mCacheRequestProducer:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager$CacheRequestProducer;

    if-nez v0, :cond_0

    .line 240
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager$CacheRequestProducer;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager$CacheRequestProducer;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->mCacheRequestProducer:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager$CacheRequestProducer;

    :cond_0
    return-void
.end method

.method private ensureSize()V
    .locals 3

    .line 391
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->mPlayingItemArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 392
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->mRequestPare:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->maxSize()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 393
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->mRequestPare:Landroid/util/LruCache;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/util/LruCache;->resize(I)V

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "increase max cache size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->printInfoLog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private getHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    :try_start_0
    const-string v0, "MD5"

    .line 220
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "UTF-8"

    .line 221
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 223
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-byte v5, v0, v4

    const-string v6, "%02x"

    const/4 v7, 0x1

    .line 224
    new-array v7, v7, [Ljava/lang/Object;

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 226
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 228
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object p1
.end method

.method static getInstance()Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;
    .locals 2

    .line 38
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->sFileManager:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;

    if-nez v0, :cond_1

    .line 39
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->sFileManager:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;

    invoke-direct {v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;-><init>()V

    sput-object v1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->sFileManager:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;

    .line 43
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 45
    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->sFileManager:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;

    return-object v0
.end method

.method private hasNotActivatedFile(Landroid/util/Pair;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;",
            "Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 386
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;->isDead()Z

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

.method private isNeedFullCacheRequest(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;Landroid/util/Pair;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;",
            "Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;",
            ">;)Z"
        }
    .end annotation

    .line 382
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->options:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;

    iget-wide v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;->requestSize:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    iget-object p1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->options:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;->isPreCache()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private printDebugLog(Landroid/util/LruCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/LruCache<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 399
    invoke-virtual {p1}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object p1

    .line 400
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->printMap(Ljava/util/Map;)V

    return-void
.end method

.method private static printInfoLog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SMUSIC-SV-PlayerServer"

    .line 439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FileManager> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static printLifeCycleLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FileManager> [id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "LifeCycle: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 444
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

    .line 445
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static printLog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SMUSIC-SV-PlayerServer"

    .line 435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FileManager> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private printMap(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 404
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 405
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  K "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " V "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->printInfoLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private printMapDebug()V
    .locals 1

    const-string v0, "Print mRequestPare ----"

    .line 428
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->printInfoLog(Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->mRequestPare:Landroid/util/LruCache;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->printDebugLog(Landroid/util/LruCache;)V

    const-string v0, "Print mPlayingItemArray ----"

    .line 430
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->printInfoLog(Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->mPlayingItemArray:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->printSparseArray(Landroid/util/SparseArray;)V

    return-void
.end method

.method private printSparseArray(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 411
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  K "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " V "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->printInfoLog(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private removeRandomPath(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->mRandomePathMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 189
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 190
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 191
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 192
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private requestCacheOnlyInternal(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 145
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->id:Ljava/lang/String;

    const-string v1, "requestCacheOnlyInternal"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->printLifeCycleLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 147
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->ensureSize()V

    .line 148
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->mRequestPare:Landroid/util/LruCache;

    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 149
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->hasNotActivatedFile(Landroid/util/Pair;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->mFileChain:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileChain;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileChain;->requestChain(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

    move-result-object v1

    .line 151
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 152
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->mRequestPare:Landroid/util/LruCache;

    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->id:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[id: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->id:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] requestCacheOnlyInternal pair.second "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->printInfoLog(Ljava/lang/String;)V

    .line 155
    iget-object p1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;->active(Z)V

    .line 159
    iget-object p1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

    monitor-exit v0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 161
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 163
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public getId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->mRandomePathMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getRandomPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 207
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 208
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    add-int/lit8 v4, v0, -0x1

    .line 211
    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 213
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->getHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->mRandomePathMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public putPlayingItem(ILjava/lang/String;)V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->mPlayingItemArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 100
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public remove(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;)V
    .locals 3

    .line 418
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 419
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->mRequestPare:Landroid/util/LruCache;

    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->id:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] removed"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->printInfoLog(Ljava/lang/String;)V

    .line 424
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public request(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;
    .locals 4

    .line 120
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->id:Ljava/lang/String;

    const-string v1, "request"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->printLifeCycleLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->ensureSize()V

    .line 123
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->mRequestPare:Landroid/util/LruCache;

    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 124
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->hasNotActivatedFile(Landroid/util/Pair;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->mFileChain:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileChain;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileChain;->requestChain(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

    move-result-object v1

    .line 126
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 127
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->mRequestPare:Landroid/util/LruCache;

    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->id:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    goto :goto_0

    .line 130
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->isNeedFullCacheRequest(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;Landroid/util/Pair;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

    invoke-interface {v2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;->setFileRequest(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;)V

    .line 134
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] requested pair.second "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->printInfoLog(Ljava/lang/String;)V

    .line 135
    iget-object p1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;->active(Z)V

    .line 139
    iget-object p1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 140
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public request(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;
    .locals 4

    const-string v0, "request"

    const-string v1, "param id only."

    .line 104
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->printLifeCycleLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->ensureSize()V

    .line 107
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->mRequestPare:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 108
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->hasNotActivatedFile(Landroid/util/Pair;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    iget-object p1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;->active(Z)V

    .line 115
    iget-object p1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

    monitor-exit v0

    return-object p1

    .line 112
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There was no request information with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception p1

    .line 116
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public requestCacheOnly(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;)V
    .locals 1

    .line 234
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->ensureProducer()V

    .line 235
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->mCacheRequestProducer:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager$CacheRequestProducer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager$CacheRequestProducer;->requestCacheOnly(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;)V

    return-void
.end method

.method public setFileChain(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileChain;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->mFileChain:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileChain;

    return-void
.end method
