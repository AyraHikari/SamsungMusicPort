.class final Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCacheDao;,
        Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;,
        Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$AppDatabase;
    }
.end annotation


# static fields
.field private static final DEBUG_TSP:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-PlayerServer"

.field private static final SUB_TAG:Ljava/lang/String; = "Cache> "

.field private static volatile sInstance:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$AppDatabase;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanCachedSize(Landroid/content/Context;Ljava/lang/String;JJ)V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 181
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom;->obtain(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$AppDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$AppDatabase;->streamingCacheDao()Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCacheDao;

    move-result-object p0

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCacheDao;->queryOnlyInPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 184
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;

    int-to-long v3, v1

    .line 185
    iget-wide v1, v2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->downloadedBytes:J

    add-long/2addr v3, v1

    long-to-int v1, v3

    goto :goto_0

    :cond_0
    int-to-long v0, v1

    sub-long/2addr v0, p2

    .line 188
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cache exceed : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom;->printLog(Ljava/lang/String;)V

    const-wide/16 p2, 0x0

    cmp-long v2, v0, p2

    if-lez v2, :cond_5

    add-long/2addr v0, p4

    const/4 p4, 0x0

    .line 192
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;

    .line 193
    new-instance v2, Ljava/io/File;

    iget-object v3, p5, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->path:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 195
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "deleteFile. File remove error !!"

    .line 196
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom;->printInfoLog(Ljava/lang/String;)V

    .line 199
    :cond_2
    iget-wide v2, p5, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->downloadedBytes:J

    sub-long/2addr v0, v2

    if-nez p4, :cond_3

    .line 201
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 203
    :cond_3
    invoke-interface {p4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    cmp-long p5, v0, p2

    if-gez p5, :cond_1

    :cond_4
    if-eqz p4, :cond_5

    .line 209
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;

    invoke-interface {p4, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCacheDao;->delete([Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;)I

    :cond_5
    return-void
.end method

.method public static deleteAll(Landroid/content/Context;)V
    .locals 0
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 223
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom;->obtain(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$AppDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$AppDatabase;->streamingCacheDao()Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCacheDao;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCacheDao;->deleteAll()I

    return-void
.end method

.method public static deleteFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 235
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom;->obtain(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$AppDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$AppDatabase;->streamingCacheDao()Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCacheDao;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCacheDao;->deleteFile(Ljava/lang/String;)I

    return-void
.end method

.method public static deletePath(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 247
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom;->obtain(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$AppDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$AppDatabase;->streamingCacheDao()Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCacheDao;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCacheDao;->deletePath(Ljava/lang/String;)I

    return-void
.end method

.method public static getCachedData(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;
    .locals 11
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 141
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom;->obtain(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$AppDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$AppDatabase;->streamingCacheDao()Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCacheDao;

    move-result-object p0

    .line 143
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->options:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;

    iget-boolean v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;->findFullCacheOnly:Z

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->id:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->parseSourceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->id:Ljava/lang/String;

    .line 145
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->parseFullSong(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-interface {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCacheDao;->queryOnlyDownloadCompleted(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 147
    :cond_0
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->id:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->parseSourceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->id:Ljava/lang/String;

    .line 148
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->parseFullSong(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-interface {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCacheDao;->query(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 150
    :goto_0
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->id:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->parseQuality(Ljava/lang/String;)I

    move-result p1

    .line 151
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;

    .line 152
    iget v1, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->quality:I

    if-ne p1, v1, :cond_2

    .line 153
    new-instance p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->path:Ljava/lang/String;

    iget-wide v4, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->downloadedBytes:J

    iget-wide v6, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->totalBytes:J

    iget-object v8, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->timeStamp:Ljava/lang/String;

    iget v9, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->encryptType:I

    const/4 v10, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;-><init>(Ljava/lang/String;JJLjava/lang/String;IZ)V

    return-object p0

    .line 155
    :cond_2
    iget v1, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->quality:I

    if-ge p1, v1, :cond_3

    .line 157
    iget-wide v1, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->downloadedBytes:J

    iget-wide v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->totalBytes:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 158
    new-instance p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->path:Ljava/lang/String;

    iget-wide v4, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->downloadedBytes:J

    iget-wide v6, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->totalBytes:J

    iget-object v8, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->timeStamp:Ljava/lang/String;

    iget v9, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->encryptType:I

    const/4 v10, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$CacheData;-><init>(Ljava/lang/String;JJLjava/lang/String;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    .line 168
    throw p0
.end method

.method private static obtain(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$AppDatabase;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 42
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom;->sInstance:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$AppDatabase;

    if-nez v0, :cond_1

    .line 43
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom;->sInstance:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$AppDatabase;

    if-nez v1, :cond_0

    .line 45
    const-class v1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$AppDatabase;

    const-string v2, "streaming_cache"

    invoke-static {p0, v1, v2}, Landroid/arch/persistence/room/Room;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/arch/persistence/room/RoomDatabase$Builder;

    move-result-object p0

    .line 46
    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase$Builder;->a()Landroid/arch/persistence/room/RoomDatabase;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$AppDatabase;

    sput-object p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom;->sInstance:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$AppDatabase;

    .line 48
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 50
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom;->sInstance:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$AppDatabase;

    return-object p0
.end method

.method private static printErrorLog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SMUSIC-SV-PlayerServer"

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cache> "

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

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cache> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static printLog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SMUSIC-SV-PlayerServer"

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cache> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static save(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;Ljava/lang/String;JJI)V
    .locals 0
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 128
    invoke-static/range {p0 .. p7}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom;->saveToRoom(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;Ljava/lang/String;JJI)V

    return-void
.end method

.method private static saveToRoom(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;Ljava/lang/String;JJI)V
    .locals 1

    .line 255
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;-><init>()V

    .line 256
    iput-object p2, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->path:Ljava/lang/String;

    .line 257
    iget-object p2, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->id:Ljava/lang/String;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->parseSourceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->streamingId:Ljava/lang/String;

    .line 258
    iget-object p2, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->id:Ljava/lang/String;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->parseFullSong(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->isFullStream:Ljava/lang/String;

    .line 259
    iget-object p2, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->id:Ljava/lang/String;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->parseQuality(Ljava/lang/String;)I

    move-result p2

    iput p2, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->quality:I

    .line 260
    iput-wide p3, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->downloadedBytes:J

    .line 261
    iput-wide p5, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->totalBytes:J

    .line 262
    iput p7, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->encryptType:I

    .line 263
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->serverTimeStamp:Ljava/lang/String;

    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->timeStamp:Ljava/lang/String;

    .line 264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/16 p3, 0x3e8

    div-long/2addr p1, p3

    iput-wide p1, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->lastAccessTime:J

    .line 265
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom;->obtain(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$AppDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$AppDatabase;->streamingCacheDao()Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCacheDao;

    move-result-object p0

    .line 266
    invoke-interface {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCacheDao;->insert(Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;)V

    return-void
.end method
