.class Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl$2;
.super Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;
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
        "Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter<",
        "Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl;

    invoke-direct {p0, p2}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;)V
    .locals 2

    .line 76
    iget-wide v0, p2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;->id:J

    const/4 p2, 0x1

    invoke-interface {p1, p2, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->a(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 68
    check-cast p2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoomStreamingCacheDao_Impl$2;->bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM `streaming_cache` WHERE `id` = ?"

    return-object v0
.end method
