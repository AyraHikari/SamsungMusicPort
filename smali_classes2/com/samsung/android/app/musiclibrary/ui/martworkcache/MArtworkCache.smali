.class public Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;

.field private d:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;

.field private e:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/NegativeCache;

.field private f:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;

.field private final g:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;

.field private final h:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;",
            "Ljava/util/concurrent/Callable<",
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;",
            ">;)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->g:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;

    .line 72
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->i:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;

    .line 76
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->b:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->c:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;

    .line 78
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->h:Ljava/util/concurrent/Callable;

    return-void
.end method

.method public static a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;
    .locals 1

    .line 89
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/util/concurrent/Callable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Callable<",
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;",
            ">;)V"
        }
    .end annotation

    .line 83
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;Ljava/util/concurrent/Callable;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;

    return-void
.end method

.method private g()V
    .locals 9

    .line 125
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->i:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->i:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->i:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;->b()V

    return-void

    .line 134
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->h:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;

    const-string v1, "SMUSIC-ArtWork"

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Artwork cache initialized with: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;->a:[I

    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;-><init>([I)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->f:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;

    .line 143
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/NegativeCache;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    .line 144
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0xa

    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->f:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/NegativeCache;-><init>(JJLcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->e:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/NegativeCache;

    .line 147
    iget v1, v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;->b:I

    if-lez v1, :cond_2

    .line 148
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;

    iget v0, v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;->b:I

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->f:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;-><init>(ILcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->d:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 150
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->d:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;

    .line 152
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->i:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;->d()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "SMUSIC-ArtWork"

    const-string v2, "Failed to initialize artwork loader"

    .line 137
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to initialize artwork loader"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->d:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->d:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->d:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->d:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;)V
    .locals 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 97
    invoke-interface {p2, v2, v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;->onPublishArtwork(Landroid/net/Uri;Landroid/graphics/Bitmap;J)V

    return-void

    .line 100
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->g()V

    .line 101
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 102
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->b:Landroid/net/Uri;

    invoke-interface {p2, p1, v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;->onPublishArtwork(Landroid/net/Uri;Landroid/graphics/Bitmap;J)V

    return-void

    .line 105
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->d(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_2

    .line 108
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;-><init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;)V

    goto :goto_0

    .line 110
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 111
    iget v4, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->c:I

    if-le v3, v4, :cond_3

    const-string v0, "SMUSIC-ArtWork"

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadArtwork: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " found in memory cache with size: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " resize in progress"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/ResizeArtworkRequest;

    invoke-direct {v0, v2, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/ResizeArtworkRequest;-><init>(Landroid/graphics/Bitmap;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;)V

    goto :goto_0

    :cond_3
    const-string v4, "SMUSIC-ArtWork"

    .line 117
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadArtwork: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " found in memory cache with size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->b:Landroid/net/Uri;

    invoke-interface {p2, p1, v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;->onPublishArtwork(Landroid/net/Uri;Landroid/graphics/Bitmap;J)V

    :goto_0
    return-void
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;)V
    .locals 2

    .line 163
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/PublishBaseArtworkRequest;

    if-eqz v0, :cond_0

    .line 164
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/PublishBaseArtworkRequest;

    .line 165
    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/PublishBaseArtworkRequest;->d:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;

    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->b:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;->onStartBackgroundRequest(Landroid/net/Uri;)V

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->g:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/PublishBaseArtworkRequest;)V
    .locals 5

    .line 173
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/PublishBaseArtworkRequest;->e:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/PublishBaseArtworkRequest;->f:Z

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->e:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/NegativeCache;

    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/PublishBaseArtworkRequest;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/NegativeCache;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)V

    .line 187
    :cond_0
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/PublishBaseArtworkRequest;->d:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;

    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/PublishBaseArtworkRequest;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->b:Landroid/net/Uri;

    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/PublishBaseArtworkRequest;->e:Landroid/graphics/Bitmap;

    .line 188
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/PublishBaseArtworkRequest;->c()J

    move-result-wide v3

    .line 187
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;->onPublishArtwork(Landroid/net/Uri;Landroid/graphics/Bitmap;J)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)Z
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->e:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/NegativeCache;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/NegativeCache;->b(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)Z

    move-result p1

    return p1
.end method

.method public b()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->c:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;

    return-object v0
.end method

.method public b(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)V
    .locals 4

    .line 232
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->g()V

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->h:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SMUSIC-ArtWork"

    const-string v2, "Unable to get settings"

    .line 237
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove from disk cache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->g:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->a()V

    .line 250
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->b:Landroid/content/Context;

    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->b:Landroid/net/Uri;

    iget v3, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->c:I

    .line 251
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->a(Landroid/content/Context;Landroid/net/Uri;I)V

    .line 252
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove from disk cache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " completed"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 245
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only process with disk cache may call this method settings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()Landroid/content/Context;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->b:Landroid/content/Context;

    return-object v0
.end method

.method public c(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)V
    .locals 1

    .line 256
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->g()V

    .line 257
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->d:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->d:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;->b(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)V

    .line 260
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->g:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->c()V

    return-void
.end method

.method public d(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)Landroid/graphics/Bitmap;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->d:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->d:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public d()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->f:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;

    return-object v0
.end method

.method public e(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)Landroid/graphics/Bitmap;
    .locals 3

    .line 279
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->g()V

    .line 280
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->d:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->d:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 284
    iget p1, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->c:I

    if-gt v1, p1, :cond_0

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public e()V
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->g:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->a()V

    .line 296
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->g:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheClearRequest;

    invoke-direct {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheClearRequest;-><init>()V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;)V

    return-void
.end method

.method public f()V
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->d:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->d:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;->a()V

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->g:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->g:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->b()V

    :cond_1
    return-void
.end method
