.class public Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/NegativeCache;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final b:J

.field private final c:J

.field private final d:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;


# direct methods
.method public constructor <init>(JJLcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/NegativeCache;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 46
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/NegativeCache;->b:J

    .line 47
    iput-wide p3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/NegativeCache;->c:J

    .line 48
    iput-object p5, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/NegativeCache;->d:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;

    return-void
.end method

.method private c(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;
    .locals 1

    .line 64
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/NegativeCache;->d:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->a()I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)V
    .locals 5

    .line 53
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/NegativeCache;->c:J

    goto :goto_0

    .line 56
    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/NegativeCache;->b:J

    .line 58
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/NegativeCache;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/NegativeCache;->c(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)Z
    .locals 6

    .line 71
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/NegativeCache;->c(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/NegativeCache;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 74
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 75
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const-string v0, "SMUSIC-ArtWork"

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is in negative cache ttl NOT EXPIRED"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string v1, "SMUSIC-ArtWork"

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is in negative cache ttl EXPIRED"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/NegativeCache;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
