.class public Lcom/android/volley/toolbox/StringRequest;
.super Lcom/android/volley/Request;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/Request<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Lcom/android/volley/Response$Listener;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 0
    .param p4    # Lcom/android/volley/Response$ErrorListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2, p4}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 32
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/volley/toolbox/StringRequest;->a:Ljava/lang/Object;

    .line 52
    iput-object p3, p0, Lcom/android/volley/toolbox/StringRequest;->b:Lcom/android/volley/Response$Listener;

    return-void
.end method


# virtual methods
.method protected a(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 91
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/android/volley/NetworkResponse;->b:[B

    iget-object v2, p1, Lcom/android/volley/NetworkResponse;->c:Ljava/util/Map;

    invoke-static {v2}, Lcom/android/volley/toolbox/HttpHeaderParser;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    :catch_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/android/volley/NetworkResponse;->b:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 98
    :goto_0
    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->a(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/volley/Response;->a(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/StringRequest;->c(Ljava/lang/String;)V

    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/android/volley/toolbox/StringRequest;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/android/volley/toolbox/StringRequest;->b:Lcom/android/volley/Response$Listener;

    .line 80
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 82
    invoke-interface {v1, p1}, Lcom/android/volley/Response$Listener;->a(Ljava/lang/Object;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 80
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public f()V
    .locals 2

    .line 69
    invoke-super {p0}, Lcom/android/volley/Request;->f()V

    .line 70
    iget-object v0, p0, Lcom/android/volley/toolbox/StringRequest;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 71
    :try_start_0
    iput-object v1, p0, Lcom/android/volley/toolbox/StringRequest;->b:Lcom/android/volley/Response$Listener;

    .line 72
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
