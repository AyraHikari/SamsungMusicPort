.class Lokhttp3/internal/http1/Http1Codec$ChunkedSource;
.super Lokhttp3/internal/http1/Http1Codec$AbstractSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http1/Http1Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChunkedSource"
.end annotation


# instance fields
.field final synthetic e:Lokhttp3/internal/http1/Http1Codec;

.field private final f:Lokhttp3/HttpUrl;

.field private g:J

.field private h:Z


# direct methods
.method constructor <init>(Lokhttp3/internal/http1/Http1Codec;Lokhttp3/HttpUrl;)V
    .locals 2

    .line 439
    iput-object p1, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->e:Lokhttp3/internal/http1/Http1Codec;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lokhttp3/internal/http1/Http1Codec$AbstractSource;-><init>(Lokhttp3/internal/http1/Http1Codec;Lokhttp3/internal/http1/Http1Codec$1;)V

    const-wide/16 v0, -0x1

    .line 436
    iput-wide v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->g:J

    const/4 p1, 0x1

    .line 437
    iput-boolean p1, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->h:Z

    .line 440
    iput-object p2, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->f:Lokhttp3/HttpUrl;

    return-void
.end method

.method private b()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 465
    iget-wide v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->g:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->e:Lokhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Lokhttp3/internal/http1/Http1Codec;->c:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->r()Ljava/lang/String;

    .line 469
    :cond_0
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->e:Lokhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Lokhttp3/internal/http1/Http1Codec;->c:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->o()J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->g:J

    .line 470
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->e:Lokhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Lokhttp3/internal/http1/Http1Codec;->c:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 471
    iget-wide v1, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->g:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_3

    .line 478
    :cond_1
    iget-wide v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->g:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 479
    iput-boolean v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->h:Z

    .line 480
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->e:Lokhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Lokhttp3/internal/http1/Http1Codec;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->g()Lokhttp3/CookieJar;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->f:Lokhttp3/HttpUrl;

    iget-object v2, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->e:Lokhttp3/internal/http1/Http1Codec;

    invoke-virtual {v2}, Lokhttp3/internal/http1/Http1Codec;->d()Lokhttp3/Headers;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lokhttp3/internal/http/HttpHeaders;->a(Lokhttp3/CookieJar;Lokhttp3/HttpUrl;Lokhttp3/Headers;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 481
    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->a(ZLjava/io/IOException;)V

    :cond_2
    return-void

    .line 472
    :cond_3
    :try_start_1
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected chunk size and optional extensions but was \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->g:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    .line 476
    new-instance v1, Ljava/net/ProtocolException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public a(Lokio/Buffer;J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_5

    .line 445
    iget-boolean v2, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->b:Z

    if-nez v2, :cond_4

    .line 446
    iget-boolean v2, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->h:Z

    const-wide/16 v3, -0x1

    if-nez v2, :cond_0

    return-wide v3

    .line 448
    :cond_0
    iget-wide v5, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->g:J

    cmp-long v0, v5, v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->g:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_2

    .line 449
    :cond_1
    invoke-direct {p0}, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->b()V

    .line 450
    iget-boolean v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->h:Z

    if-nez v0, :cond_2

    return-wide v3

    .line 453
    :cond_2
    iget-wide v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->g:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-super {p0, p1, p2, p3}, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->a(Lokio/Buffer;J)J

    move-result-wide p1

    cmp-long p3, p1, v3

    if-eqz p3, :cond_3

    .line 459
    iget-wide v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->g:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->g:J

    return-wide p1

    .line 455
    :cond_3
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "unexpected end of stream"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 456
    invoke-virtual {p0, p2, p1}, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->a(ZLjava/io/IOException;)V

    .line 457
    throw p1

    .line 445
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 444
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 486
    iget-boolean v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 487
    :cond_0
    iget-boolean v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->h:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lokhttp3/internal/Util;->a(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 488
    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->a(ZLjava/io/IOException;)V

    :cond_1
    const/4 v0, 0x1

    .line 490
    iput-boolean v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->b:Z

    return-void
.end method
