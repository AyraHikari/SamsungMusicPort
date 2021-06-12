.class final Lretrofit2/OkHttpCall$ExceptionCatchingRequestBody;
.super Lokhttp3/ResponseBody;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/OkHttpCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ExceptionCatchingRequestBody"
.end annotation


# instance fields
.field a:Ljava/io/IOException;

.field private final b:Lokhttp3/ResponseBody;


# direct methods
.method constructor <init>(Lokhttp3/ResponseBody;)V
    .locals 0

    .line 275
    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    .line 276
    iput-object p1, p0, Lretrofit2/OkHttpCall$ExceptionCatchingRequestBody;->b:Lokhttp3/ResponseBody;

    return-void
.end method


# virtual methods
.method public a()Lokhttp3/MediaType;
    .locals 1

    .line 280
    iget-object v0, p0, Lretrofit2/OkHttpCall$ExceptionCatchingRequestBody;->b:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->a()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public b()J
    .locals 2

    .line 284
    iget-object v0, p0, Lretrofit2/OkHttpCall$ExceptionCatchingRequestBody;->b:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public c()Lokio/BufferedSource;
    .locals 2

    .line 288
    new-instance v0, Lretrofit2/OkHttpCall$ExceptionCatchingRequestBody$1;

    iget-object v1, p0, Lretrofit2/OkHttpCall$ExceptionCatchingRequestBody;->b:Lokhttp3/ResponseBody;

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->c()Lokio/BufferedSource;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lretrofit2/OkHttpCall$ExceptionCatchingRequestBody$1;-><init>(Lretrofit2/OkHttpCall$ExceptionCatchingRequestBody;Lokio/Source;)V

    invoke-static {v0}, Lokio/Okio;->a(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    .line 301
    iget-object v0, p0, Lretrofit2/OkHttpCall$ExceptionCatchingRequestBody;->b:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    return-void
.end method

.method g()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lretrofit2/OkHttpCall$ExceptionCatchingRequestBody;->a:Ljava/io/IOException;

    if-nez v0, :cond_0

    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lretrofit2/OkHttpCall$ExceptionCatchingRequestBody;->a:Ljava/io/IOException;

    throw v0
.end method
