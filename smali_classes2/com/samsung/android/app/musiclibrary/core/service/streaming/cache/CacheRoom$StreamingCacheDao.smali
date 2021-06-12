.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCacheDao;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StreamingCacheDao"
.end annotation


# virtual methods
.method public varargs abstract delete([Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;)I
.end method

.method public abstract deleteAll()I
.end method

.method public abstract deleteFile(Ljava/lang/String;)I
.end method

.method public abstract deletePath(Ljava/lang/String;)I
.end method

.method public abstract insert(Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;)V
.end method

.method public abstract query(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryOnlyDownloadCompleted(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryOnlyInPath(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCache;",
            ">;"
        }
    .end annotation
.end method
