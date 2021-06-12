.class public final Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource;


# instance fields
.field private a:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field private b:I

.field private c:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([BII)I
    .locals 2

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->c:[B

    array-length v0, v0

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->b:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_1

    const/4 p1, -0x1

    return p1

    .line 71
    :cond_1
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 72
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->c:[B

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->b:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    iget p1, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->b:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->b:I

    return p3
.end method

.method public a(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->a:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 39
    iget-object p1, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->a:Landroid/net/Uri;

    .line 40
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "data"

    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 44
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 45
    array-length v1, v0

    const/4 v2, 0x2

    if-gt v1, v2, :cond_1

    const/4 p1, 0x1

    .line 48
    aget-object p1, v0, p1

    const/4 v1, 0x0

    .line 49
    aget-object v0, v0, v1

    const-string v2, ";base64"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    :try_start_0
    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->c:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 53
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while parsing Base64 encoded string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    const-string v0, "US-ASCII"

    .line 57
    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->c:[B

    .line 59
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->c:[B

    array-length p1, p1

    int-to-long v0, p1

    return-wide v0

    .line 46
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected URI format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_2
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->a:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 85
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->c:[B

    return-void
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->a:Lcom/google/android/exoplayer2/upstream/DataSpec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;->a:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v0, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->a:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
