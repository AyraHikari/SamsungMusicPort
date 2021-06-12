.class Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CacheData"
.end annotation


# instance fields
.field final downloadedBytes:J

.field final encryptType:I

.field final isSameQuality:Z

.field final path:Ljava/lang/String;

.field final serverTimeStamp:Ljava/lang/String;

.field final totalBytes:J


# direct methods
.method constructor <init>(Ljava/lang/String;JJLjava/lang/String;IZ)V
    .locals 0

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;->path:Ljava/lang/String;

    .line 294
    iput-wide p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;->downloadedBytes:J

    .line 295
    iput-wide p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;->totalBytes:J

    .line 296
    iput-object p6, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;->serverTimeStamp:Ljava/lang/String;

    .line 297
    iput p7, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;->encryptType:I

    .line 298
    iput-boolean p8, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;->isSameQuality:Z

    return-void
.end method


# virtual methods
.method hasRealTotalData()Z
    .locals 5

    .line 307
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 308
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 309
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 312
    iget-wide v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;->downloadedBytes:J

    cmp-long v0, v0, v3

    if-ltz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    return v2
.end method

.method isFullDownloaded()Z
    .locals 4

    .line 302
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;->totalBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;->downloadedBytes:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;->downloadedBytes:J

    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;->totalBytes:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 303
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;->hasRealTotalData()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isSkippableFile()Z
    .locals 2

    .line 318
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;->encryptType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;->isFullDownloaded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 324
    iget-wide v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;->downloadedBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    .line 325
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 326
    iget-wide v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;->totalBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " bytes, "

    .line 327
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "serverTimeStamp: "

    .line 328
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;->serverTimeStamp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
