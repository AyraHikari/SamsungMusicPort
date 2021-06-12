.class public final Lokhttp3/OkHttpClient$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field A:I

.field a:Lokhttp3/Dispatcher;

.field b:Ljava/net/Proxy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field g:Lokhttp3/EventListener$Factory;

.field h:Ljava/net/ProxySelector;

.field i:Lokhttp3/CookieJar;

.field j:Lokhttp3/Cache;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field k:Lokhttp3/internal/cache/InternalCache;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field l:Ljavax/net/SocketFactory;

.field m:Ljavax/net/ssl/SSLSocketFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field n:Lokhttp3/internal/tls/CertificateChainCleaner;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field o:Ljavax/net/ssl/HostnameVerifier;

.field p:Lokhttp3/CertificatePinner;

.field q:Lokhttp3/Authenticator;

.field r:Lokhttp3/Authenticator;

.field s:Lokhttp3/ConnectionPool;

.field t:Lokhttp3/Dns;

.field u:Z

.field v:Z

.field w:Z

.field x:I

.field y:I

.field z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->e:Ljava/util/List;

    .line 452
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->f:Ljava/util/List;

    .line 476
    new-instance v0, Lokhttp3/Dispatcher;

    invoke-direct {v0}, Lokhttp3/Dispatcher;-><init>()V

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->a:Lokhttp3/Dispatcher;

    .line 477
    sget-object v0, Lokhttp3/OkHttpClient;->a:Ljava/util/List;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->c:Ljava/util/List;

    .line 478
    sget-object v0, Lokhttp3/OkHttpClient;->b:Ljava/util/List;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->d:Ljava/util/List;

    .line 479
    sget-object v0, Lokhttp3/EventListener;->a:Lokhttp3/EventListener;

    invoke-static {v0}, Lokhttp3/EventListener;->a(Lokhttp3/EventListener;)Lokhttp3/EventListener$Factory;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->g:Lokhttp3/EventListener$Factory;

    .line 480
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->h:Ljava/net/ProxySelector;

    .line 481
    sget-object v0, Lokhttp3/CookieJar;->a:Lokhttp3/CookieJar;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->i:Lokhttp3/CookieJar;

    .line 482
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->l:Ljavax/net/SocketFactory;

    .line 483
    sget-object v0, Lokhttp3/internal/tls/OkHostnameVerifier;->a:Lokhttp3/internal/tls/OkHostnameVerifier;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->o:Ljavax/net/ssl/HostnameVerifier;

    .line 484
    sget-object v0, Lokhttp3/CertificatePinner;->a:Lokhttp3/CertificatePinner;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->p:Lokhttp3/CertificatePinner;

    .line 485
    sget-object v0, Lokhttp3/Authenticator;->a:Lokhttp3/Authenticator;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->q:Lokhttp3/Authenticator;

    .line 486
    sget-object v0, Lokhttp3/Authenticator;->a:Lokhttp3/Authenticator;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->r:Lokhttp3/Authenticator;

    .line 487
    new-instance v0, Lokhttp3/ConnectionPool;

    invoke-direct {v0}, Lokhttp3/ConnectionPool;-><init>()V

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->s:Lokhttp3/ConnectionPool;

    .line 488
    sget-object v0, Lokhttp3/Dns;->a:Lokhttp3/Dns;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->t:Lokhttp3/Dns;

    const/4 v0, 0x1

    .line 489
    iput-boolean v0, p0, Lokhttp3/OkHttpClient$Builder;->u:Z

    .line 490
    iput-boolean v0, p0, Lokhttp3/OkHttpClient$Builder;->v:Z

    .line 491
    iput-boolean v0, p0, Lokhttp3/OkHttpClient$Builder;->w:Z

    const/16 v0, 0x2710

    .line 492
    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->x:I

    .line 493
    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->y:I

    .line 494
    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->z:I

    const/4 v0, 0x0

    .line 495
    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->A:I

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .line 884
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->e:Ljava/util/List;

    return-object v0
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;
    .locals 1

    const-string v0, "timeout"

    .line 537
    invoke-static {v0, p1, p2, p3}, Lokhttp3/internal/Util;->a(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lokhttp3/OkHttpClient$Builder;->x:I

    return-object p0
.end method

.method public a(Ljava/net/Proxy;)Lokhttp3/OkHttpClient$Builder;
    .locals 0
    .param p1    # Ljava/net/Proxy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 594
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->b:Ljava/net/Proxy;

    return-object p0
.end method

.method public a(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 724
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->o:Ljavax/net/ssl/HostnameVerifier;

    return-object p0

    .line 723
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "hostnameVerifier == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljavax/net/ssl/SSLSocketFactory;)Lokhttp3/OkHttpClient$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 672
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->m:Ljavax/net/ssl/SSLSocketFactory;

    .line 673
    invoke-static {}, Lokhttp3/internal/platform/Platform;->c()Lokhttp3/internal/platform/Platform;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/internal/platform/Platform;->b(Ljavax/net/ssl/SSLSocketFactory;)Lokhttp3/internal/tls/CertificateChainCleaner;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->n:Lokhttp3/internal/tls/CertificateChainCleaner;

    return-object p0

    .line 671
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "sslSocketFactory == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;
    .locals 0
    .param p1    # Lokhttp3/Cache;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 631
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->j:Lokhttp3/Cache;

    const/4 p1, 0x0

    .line 632
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->k:Lokhttp3/internal/cache/InternalCache;

    return-object p0
.end method

.method public a(Lokhttp3/EventListener;)Lokhttp3/OkHttpClient$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 916
    invoke-static {p1}, Lokhttp3/EventListener;->a(Lokhttp3/EventListener;)Lokhttp3/EventListener$Factory;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->g:Lokhttp3/EventListener$Factory;

    return-object p0

    .line 915
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "eventListener == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 889
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 888
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "interceptor == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;
    .locals 1

    const-string v0, "timeout"

    .line 552
    invoke-static {v0, p1, p2, p3}, Lokhttp3/internal/Util;->a(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lokhttp3/OkHttpClient$Builder;->y:I

    return-object p0
.end method

.method public b()Lokhttp3/OkHttpClient;
    .locals 1

    .line 935
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0, p0}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    return-object v0
.end method
