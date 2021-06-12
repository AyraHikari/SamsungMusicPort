.class Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl$1;
.super Landroid/arch/persistence/room/EntityInsertionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/arch/persistence/room/EntityInsertionAdapter<",
        "Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl;

    invoke-direct {p0, p2}, Landroid/arch/persistence/room/EntityInsertionAdapter;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;)V
    .locals 3

    .line 40
    iget-wide v0, p2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->id:J

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a(IJ)V

    .line 41
    iget-object v0, p2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->streamingId:Ljava/lang/String;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 42
    invoke-interface {p1, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a(I)V

    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->streamingId:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a(ILjava/lang/String;)V

    .line 46
    :goto_0
    iget-object v0, p2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->path:Ljava/lang/String;

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 47
    invoke-interface {p1, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a(I)V

    goto :goto_1

    .line 49
    :cond_1
    iget-object v0, p2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->path:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a(ILjava/lang/String;)V

    .line 51
    :goto_1
    iget-object v0, p2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->isFullStream:Ljava/lang/String;

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 52
    invoke-interface {p1, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a(I)V

    goto :goto_2

    .line 54
    :cond_2
    iget-object v0, p2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->isFullStream:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a(ILjava/lang/String;)V

    .line 56
    :goto_2
    iget-object v0, p2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->timeStamp:Ljava/lang/String;

    const/4 v1, 0x5

    if-nez v0, :cond_3

    .line 57
    invoke-interface {p1, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a(I)V

    goto :goto_3

    .line 59
    :cond_3
    iget-object v0, p2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->timeStamp:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a(ILjava/lang/String;)V

    :goto_3
    const/4 v0, 0x6

    .line 61
    iget-wide v1, p2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->downloadedBytes:J

    invoke-interface {p1, v0, v1, v2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a(IJ)V

    const/4 v0, 0x7

    .line 62
    iget-wide v1, p2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->totalBytes:J

    invoke-interface {p1, v0, v1, v2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a(IJ)V

    const/16 v0, 0x8

    .line 63
    iget-wide v1, p2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->lastAccessTime:J

    invoke-interface {p1, v0, v1, v2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a(IJ)V

    const/16 v0, 0x9

    .line 64
    iget v1, p2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->quality:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a(IJ)V

    const/16 v0, 0xa

    .line 65
    iget p2, p2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->encryptType:I

    int-to-long v1, p2

    invoke-interface {p1, v0, v1, v2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl$1;->bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `streaming_cache`(`id`,`streaming_id`,`path`,`is_full_stream`,`time_stamp`,`downloaded_bytes`,`total_bytes`,`last_access_time`,`quality`,`encrypt_type`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
