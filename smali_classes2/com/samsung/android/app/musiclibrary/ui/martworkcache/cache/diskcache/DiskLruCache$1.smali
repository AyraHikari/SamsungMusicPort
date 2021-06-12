.class Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$1;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$1;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;

    monitor-enter v0

    .line 200
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$1;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;)Ljava/io/Writer;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 201
    monitor-exit v0

    return-object v2

    .line 203
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$1;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->b(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;)V

    .line 204
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$1;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->c(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$1;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->d(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;)V

    .line 206
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$1;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;I)I

    .line 208
    :cond_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 197
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
