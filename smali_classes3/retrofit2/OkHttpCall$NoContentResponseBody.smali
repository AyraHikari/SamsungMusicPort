.class final Lretrofit2/OkHttpCall$NoContentResponseBody;
.super Lokhttp3/ResponseBody;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/OkHttpCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NoContentResponseBody"
.end annotation


# instance fields
.field private final a:Lokhttp3/MediaType;

.field private final b:J


# direct methods
.method constructor <init>(Lokhttp3/MediaType;J)V
    .locals 0

    .line 253
    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    .line 254
    iput-object p1, p0, Lretrofit2/OkHttpCall$NoContentResponseBody;->a:Lokhttp3/MediaType;

    .line 255
    iput-wide p2, p0, Lretrofit2/OkHttpCall$NoContentResponseBody;->b:J

    return-void
.end method


# virtual methods
.method public a()Lokhttp3/MediaType;
    .locals 1

    .line 259
    iget-object v0, p0, Lretrofit2/OkHttpCall$NoContentResponseBody;->a:Lokhttp3/MediaType;

    return-object v0
.end method

.method public b()J
    .locals 2

    .line 263
    iget-wide v0, p0, Lretrofit2/OkHttpCall$NoContentResponseBody;->b:J

    return-wide v0
.end method

.method public c()Lokio/BufferedSource;
    .locals 2

    .line 267
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot read raw response body of a converted body."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
