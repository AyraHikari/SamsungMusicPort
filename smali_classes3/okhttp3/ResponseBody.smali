.class public abstract Lokhttp3/ResponseBody;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/ResponseBody$BomAwareReader;
    }
.end annotation


# instance fields
.field private a:Ljava/io/Reader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lokhttp3/MediaType;JLokio/BufferedSource;)Lokhttp3/ResponseBody;
    .locals 1
    .param p0    # Lokhttp3/MediaType;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p3, :cond_0

    .line 217
    new-instance v0, Lokhttp3/ResponseBody$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lokhttp3/ResponseBody$1;-><init>(Lokhttp3/MediaType;JLokio/BufferedSource;)V

    return-object v0

    .line 216
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "source == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lokhttp3/MediaType;[B)Lokhttp3/ResponseBody;
    .locals 3
    .param p0    # Lokhttp3/MediaType;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 209
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {v0, p1}, Lokio/Buffer;->b([B)Lokio/Buffer;

    move-result-object v0

    .line 210
    array-length p1, p1

    int-to-long v1, p1

    invoke-static {p0, v1, v2, v0}, Lokhttp3/ResponseBody;->a(Lokhttp3/MediaType;JLokio/BufferedSource;)Lokhttp3/ResponseBody;

    move-result-object p0

    return-object p0
.end method

.method private g()Ljava/nio/charset/Charset;
    .locals 2

    .line 182
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->a()Lokhttp3/MediaType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    sget-object v1, Lokhttp3/internal/Util;->e:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lokhttp3/MediaType;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lokhttp3/internal/Util;->e:Ljava/nio/charset/Charset;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public abstract a()Lokhttp3/MediaType;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract b()J
.end method

.method public abstract c()Lokio/BufferedSource;
.end method

.method public close()V
    .locals 1

    .line 187
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->c()Lokio/BufferedSource;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/Util;->a(Ljava/io/Closeable;)V

    return-void
.end method

.method public final d()Ljava/io/InputStream;
    .locals 1

    .line 115
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->c()Lokio/BufferedSource;

    move-result-object v0

    invoke-interface {v0}, Lokio/BufferedSource;->g()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/io/Reader;
    .locals 3

    .line 157
    iget-object v0, p0, Lokhttp3/ResponseBody;->a:Ljava/io/Reader;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 158
    :cond_0
    new-instance v0, Lokhttp3/ResponseBody$BomAwareReader;

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->c()Lokio/BufferedSource;

    move-result-object v1

    invoke-direct {p0}, Lokhttp3/ResponseBody;->g()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lokhttp3/ResponseBody$BomAwareReader;-><init>(Lokio/BufferedSource;Ljava/nio/charset/Charset;)V

    iput-object v0, p0, Lokhttp3/ResponseBody;->a:Ljava/io/Reader;

    :goto_0
    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->c()Lokio/BufferedSource;

    move-result-object v0

    .line 174
    :try_start_0
    invoke-direct {p0}, Lokhttp3/ResponseBody;->g()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-static {v0, v1}, Lokhttp3/internal/Util;->a(Lokio/BufferedSource;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 175
    invoke-interface {v0, v1}, Lokio/BufferedSource;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    invoke-static {v0}, Lokhttp3/internal/Util;->a(Ljava/io/Closeable;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lokhttp3/internal/Util;->a(Ljava/io/Closeable;)V

    throw v1
.end method
