.class public Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/SkippableCacheFile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;


# instance fields
.field private final mCacheData:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;

.field private final mSecure:Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/ISecure;

.field private mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/ISecure;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/SkippableCacheFile;->mCacheData:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;

    .line 25
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/SkippableCacheFile;->mSecure:Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/ISecure;

    return-void
.end method

.method private getPurePath(Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;)Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 95
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;->path:Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/SkippableCacheFile;->mSecure:Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/ISecure;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/ISecure;->getPostFix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    .line 97
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public active(Z)V
    .locals 0

    return-void
.end method

.method public getAvailableBytes()J
    .locals 2

    .line 45
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/SkippableCacheFile;->mCacheData:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/SkippableCacheFile;->mCacheData:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getFileRequest()Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlayingUri()Landroid/net/Uri;
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/SkippableCacheFile;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    const-string v0, "cache"

    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/SkippableCacheFile;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileChain$PlayingUri;->obtain(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/SkippableCacheFile;->mUri:Landroid/net/Uri;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/SkippableCacheFile;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getTotalBytes()J
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/SkippableCacheFile;->mCacheData:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;

    iget-wide v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;->totalBytes:J

    return-wide v0
.end method

.method public isDead()Z
    .locals 2

    .line 70
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/SkippableCacheFile;->mCacheData:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isLoadFinished()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public obtainInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/SkippableCacheFile;->mCacheData:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;->path:Ljava/lang/String;

    .line 86
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/SkippableCacheFile;->mSecure:Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/ISecure;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/ISecure;->getPostFix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/SkippableCacheFile;->mSecure:Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/ISecure;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/SkippableCacheFile;->mCacheData:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/SkippableCacheFile;->getPurePath(Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheSaver;->getCacheId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/ISecure;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 89
    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public registerListener(Lcom/samsung/android/app/musiclibrary/core/service/streaming/OnFileLoadListener;)V
    .locals 0

    return-void
.end method

.method public setFileRequest(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;)V
    .locals 0

    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/app/musiclibrary/core/service/streaming/OnFileLoadListener;)V
    .locals 0

    return-void
.end method
