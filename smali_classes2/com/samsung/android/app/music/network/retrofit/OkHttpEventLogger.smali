.class public Lcom/samsung/android/app/music/network/retrofit/OkHttpEventLogger;
.super Lokhttp3/EventListener;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lokhttp3/EventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/Call;)V
    .locals 0

    .line 26
    invoke-super {p0, p1}, Lokhttp3/EventListener;->a(Lokhttp3/Call;)V

    return-void
.end method

.method public a(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 3

    .line 42
    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->a(Lokhttp3/Call;Ljava/io/IOException;)V

    const-string v0, "OkHttpEventLogger"

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callFailed. call - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Lokhttp3/Call;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->a(Lokhttp3/Call;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lokhttp3/Call;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Call;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .line 56
    invoke-super {p0, p1, p2, p3}, Lokhttp3/EventListener;->a(Lokhttp3/Call;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public a(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V
    .locals 0

    .line 64
    invoke-super {p0, p1, p2, p3}, Lokhttp3/EventListener;->a(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V

    return-void
.end method

.method public a(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V
    .locals 0
    .param p4    # Lokhttp3/Protocol;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 73
    invoke-super {p0, p1, p2, p3, p4}, Lokhttp3/EventListener;->a(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V

    return-void
.end method

.method public a(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;Ljava/io/IOException;)V
    .locals 0
    .param p4    # Lokhttp3/Protocol;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 99
    invoke-super/range {p0 .. p5}, Lokhttp3/EventListener;->a(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;Ljava/io/IOException;)V

    const-string p1, "OkHttpEventLogger"

    const-string p2, "connectFailed"

    .line 100
    invoke-static {p1, p2, p5}, Lcom/samsung/android/app/music/milk/util/MLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Lokhttp3/Call;Lokhttp3/Connection;)V
    .locals 0

    .line 105
    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->a(Lokhttp3/Call;Lokhttp3/Connection;)V

    return-void
.end method

.method public a(Lokhttp3/Call;Lokhttp3/Handshake;)V
    .locals 0
    .param p2    # Lokhttp3/Handshake;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 90
    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->a(Lokhttp3/Call;Lokhttp3/Handshake;)V

    return-void
.end method

.method public b(Lokhttp3/Call;)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lokhttp3/EventListener;->b(Lokhttp3/Call;)V

    return-void
.end method

.method public b(Lokhttp3/Call;Lokhttp3/Connection;)V
    .locals 0

    .line 114
    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->b(Lokhttp3/Call;Lokhttp3/Connection;)V

    return-void
.end method

.method public c(Lokhttp3/Call;)V
    .locals 0

    .line 82
    invoke-super {p0, p1}, Lokhttp3/EventListener;->c(Lokhttp3/Call;)V

    return-void
.end method
