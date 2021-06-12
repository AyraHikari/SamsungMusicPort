.class Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/toolbox/DiskBasedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CacheHeader"
.end annotation


# instance fields
.field a:J

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:J

.field final e:J

.field final f:J

.field final g:J

.field final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/volley/Header;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V
    .locals 12

    .line 407
    iget-object v2, p2, Lcom/android/volley/Cache$Entry;->b:Ljava/lang/String;

    iget-wide v3, p2, Lcom/android/volley/Cache$Entry;->c:J

    iget-wide v5, p2, Lcom/android/volley/Cache$Entry;->d:J

    iget-wide v7, p2, Lcom/android/volley/Cache$Entry;->e:J

    iget-wide v9, p2, Lcom/android/volley/Cache$Entry;->f:J

    .line 414
    invoke-static {p2}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->a(Lcom/android/volley/Cache$Entry;)Ljava/util/List;

    move-result-object v11

    move-object v0, p0

    move-object v1, p1

    .line 407
    invoke-direct/range {v0 .. v11}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V

    .line 415
    iget-object p1, p2, Lcom/android/volley/Cache$Entry;->a:[B

    array-length p1, p1

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->a:J

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJJJ",
            "Ljava/util/List<",
            "Lcom/android/volley/Header;",
            ">;)V"
        }
    .end annotation

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    iput-object p1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->b:Ljava/lang/String;

    const-string p1, ""

    .line 392
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    :cond_0
    iput-object p2, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->c:Ljava/lang/String;

    .line 393
    iput-wide p3, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->d:J

    .line 394
    iput-wide p5, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->e:J

    .line 395
    iput-wide p7, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->f:J

    .line 396
    iput-wide p9, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->g:J

    .line 397
    iput-object p11, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->h:Ljava/util/List;

    return-void
.end method

.method static a(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;)Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 435
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->a(Ljava/io/InputStream;)I

    move-result v0

    const v1, 0x20150306

    if-ne v0, v1, :cond_0

    .line 440
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->a(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;)Ljava/lang/String;

    move-result-object v3

    .line 441
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->a(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;)Ljava/lang/String;

    move-result-object v4

    .line 442
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->b(Ljava/io/InputStream;)J

    move-result-wide v5

    .line 443
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->b(Ljava/io/InputStream;)J

    move-result-wide v7

    .line 444
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->b(Ljava/io/InputStream;)J

    move-result-wide v9

    .line 445
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->b(Ljava/io/InputStream;)J

    move-result-wide v11

    .line 446
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->b(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;)Ljava/util/List;

    move-result-object v13

    .line 447
    new-instance p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    move-object v2, p0

    invoke-direct/range {v2 .. v13}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V

    return-object p0

    .line 438
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method private static a(Lcom/android/volley/Cache$Entry;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Cache$Entry;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/volley/Header;",
            ">;"
        }
    .end annotation

    .line 420
    iget-object v0, p0, Lcom/android/volley/Cache$Entry;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 421
    iget-object p0, p0, Lcom/android/volley/Cache$Entry;->h:Ljava/util/List;

    return-object p0

    .line 425
    :cond_0
    iget-object p0, p0, Lcom/android/volley/Cache$Entry;->g:Ljava/util/Map;

    invoke-static {p0}, Lcom/android/volley/toolbox/HttpHeaderParser;->b(Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method a([B)Lcom/android/volley/Cache$Entry;
    .locals 3

    .line 453
    new-instance v0, Lcom/android/volley/Cache$Entry;

    invoke-direct {v0}, Lcom/android/volley/Cache$Entry;-><init>()V

    .line 454
    iput-object p1, v0, Lcom/android/volley/Cache$Entry;->a:[B

    .line 455
    iget-object p1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->c:Ljava/lang/String;

    iput-object p1, v0, Lcom/android/volley/Cache$Entry;->b:Ljava/lang/String;

    .line 456
    iget-wide v1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->d:J

    iput-wide v1, v0, Lcom/android/volley/Cache$Entry;->c:J

    .line 457
    iget-wide v1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->e:J

    iput-wide v1, v0, Lcom/android/volley/Cache$Entry;->d:J

    .line 458
    iget-wide v1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->f:J

    iput-wide v1, v0, Lcom/android/volley/Cache$Entry;->e:J

    .line 459
    iget-wide v1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->g:J

    iput-wide v1, v0, Lcom/android/volley/Cache$Entry;->f:J

    .line 460
    iget-object p1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->h:Ljava/util/List;

    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, v0, Lcom/android/volley/Cache$Entry;->g:Ljava/util/Map;

    .line 461
    iget-object p1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->h:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/android/volley/Cache$Entry;->h:Ljava/util/List;

    return-object v0
.end method

.method a(Ljava/io/OutputStream;)Z
    .locals 4

    const v0, 0x20150306

    const/4 v1, 0x1

    .line 468
    :try_start_0
    invoke-static {p1, v0}, Lcom/android/volley/toolbox/DiskBasedCache;->a(Ljava/io/OutputStream;I)V

    .line 469
    iget-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/volley/toolbox/DiskBasedCache;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->c:Ljava/lang/String;

    :goto_0
    invoke-static {p1, v0}, Lcom/android/volley/toolbox/DiskBasedCache;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 471
    iget-wide v2, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->d:J

    invoke-static {p1, v2, v3}, Lcom/android/volley/toolbox/DiskBasedCache;->a(Ljava/io/OutputStream;J)V

    .line 472
    iget-wide v2, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->e:J

    invoke-static {p1, v2, v3}, Lcom/android/volley/toolbox/DiskBasedCache;->a(Ljava/io/OutputStream;J)V

    .line 473
    iget-wide v2, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->f:J

    invoke-static {p1, v2, v3}, Lcom/android/volley/toolbox/DiskBasedCache;->a(Ljava/io/OutputStream;J)V

    .line 474
    iget-wide v2, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->g:J

    invoke-static {p1, v2, v3}, Lcom/android/volley/toolbox/DiskBasedCache;->a(Ljava/io/OutputStream;J)V

    .line 475
    iget-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->h:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->a(Ljava/util/List;Ljava/io/OutputStream;)V

    .line 476
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    const-string v0, "%s"

    .line 479
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/volley/VolleyLog;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method
