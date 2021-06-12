.class Lretrofit2/OkHttpCall$ExceptionCatchingRequestBody$1;
.super Lokio/ForwardingSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit2/OkHttpCall$ExceptionCatchingRequestBody;->c()Lokio/BufferedSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lretrofit2/OkHttpCall$ExceptionCatchingRequestBody;


# direct methods
.method constructor <init>(Lretrofit2/OkHttpCall$ExceptionCatchingRequestBody;Lokio/Source;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lretrofit2/OkHttpCall$ExceptionCatchingRequestBody$1;->a:Lretrofit2/OkHttpCall$ExceptionCatchingRequestBody;

    invoke-direct {p0, p2}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    return-void
.end method


# virtual methods
.method public a(Lokio/Buffer;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 291
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSource;->a(Lokio/Buffer;J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    .line 293
    iget-object p2, p0, Lretrofit2/OkHttpCall$ExceptionCatchingRequestBody$1;->a:Lretrofit2/OkHttpCall$ExceptionCatchingRequestBody;

    iput-object p1, p2, Lretrofit2/OkHttpCall$ExceptionCatchingRequestBody;->a:Ljava/io/IOException;

    .line 294
    throw p1
.end method
