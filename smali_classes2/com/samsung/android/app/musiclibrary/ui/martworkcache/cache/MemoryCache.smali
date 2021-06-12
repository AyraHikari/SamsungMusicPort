.class public Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Object;

.field private final c:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$ResultProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$ResultProvider<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;


# direct methods
.method public constructor <init>(ILcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;->b:Ljava/lang/Object;

    .line 37
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;->c:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$ResultProvider;

    .line 58
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;->d:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;

    .line 59
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache$2;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;I)V

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;->a:Landroid/util/LruCache;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;)Landroid/util/LruCache;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;->a:Landroid/util/LruCache;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)Landroid/graphics/Bitmap;
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;->d:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;->c:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$ResultProvider;

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$ResultProvider;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 70
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;->a:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->evictAll()V

    .line 96
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;->d:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->a(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;

    move-result-object p2

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;->c:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$ResultProvider;

    invoke-virtual {v1, p1, p2, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$ResultProvider;)V

    .line 77
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;)V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;->d:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;->c:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$ResultProvider;

    invoke-virtual {v1, p1, p2, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$ResultProvider;)V

    .line 90
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;->d:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->b(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)V

    .line 83
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;->a:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
