.class public abstract Lcom/android/volley/Request;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/Request$Priority;,
        Lcom/android/volley/Request$NetworkRequestCompleteListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/volley/Request<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/android/volley/VolleyLog$MarkerLog;

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Ljava/lang/Object;

.field private f:Lcom/android/volley/Response$ErrorListener;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private g:Ljava/lang/Integer;

.field private h:Lcom/android/volley/RequestQueue;

.field private i:Z

.field private j:Z
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private k:Z
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private l:Z

.field private m:Lcom/android/volley/RetryPolicy;

.field private n:Lcom/android/volley/Cache$Entry;

.field private o:Lcom/android/volley/Request$NetworkRequestCompleteListener;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V
    .locals 2
    .param p3    # Lcom/android/volley/Response$ErrorListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget-boolean v0, Lcom/android/volley/VolleyLog$MarkerLog;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/volley/VolleyLog$MarkerLog;

    invoke-direct {v0}, Lcom/android/volley/VolleyLog$MarkerLog;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/android/volley/Request;->a:Lcom/android/volley/VolleyLog$MarkerLog;

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/volley/Request;->e:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lcom/android/volley/Request;->i:Z

    const/4 v0, 0x0

    .line 100
    iput-boolean v0, p0, Lcom/android/volley/Request;->j:Z

    .line 104
    iput-boolean v0, p0, Lcom/android/volley/Request;->k:Z

    .line 108
    iput-boolean v0, p0, Lcom/android/volley/Request;->l:Z

    .line 118
    iput-object v1, p0, Lcom/android/volley/Request;->n:Lcom/android/volley/Cache$Entry;

    .line 146
    iput p1, p0, Lcom/android/volley/Request;->b:I

    .line 147
    iput-object p2, p0, Lcom/android/volley/Request;->c:Ljava/lang/String;

    .line 148
    iput-object p3, p0, Lcom/android/volley/Request;->f:Lcom/android/volley/Response$ErrorListener;

    .line 149
    new-instance p1, Lcom/android/volley/DefaultRetryPolicy;

    invoke-direct {p1}, Lcom/android/volley/DefaultRetryPolicy;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/volley/Request;->a(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 151
    invoke-static {p2}, Lcom/android/volley/Request;->c(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/volley/Request;->d:I

    return-void
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 475
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 476
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 484
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    .line 485
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 486
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x26

    .line 487
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 477
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Request#getParams() or Request#getPostParams() returned a map containing a null key or value: (%s, %s). All keys and values must be non-null."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 482
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v2, v3

    .line 478
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 489
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 491
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encoding not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static synthetic b(Lcom/android/volley/Request;)Lcom/android/volley/VolleyLog$MarkerLog;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/volley/Request;->a:Lcom/android/volley/VolleyLog$MarkerLog;

    return-object p0
.end method

.method private static c(Ljava/lang/String;)I
    .locals 1

    .line 194
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 197
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 199
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 156
    iget v0, p0, Lcom/android/volley/Request;->b:I

    return v0
.end method

.method public a(Lcom/android/volley/Request;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "TT;>;)I"
        }
    .end annotation

    .line 668
    invoke-virtual {p0}, Lcom/android/volley/Request;->s()Lcom/android/volley/Request$Priority;

    move-result-object v0

    .line 669
    invoke-virtual {p1}, Lcom/android/volley/Request;->s()Lcom/android/volley/Request$Priority;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 673
    iget-object v0, p0, Lcom/android/volley/Request;->g:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Lcom/android/volley/Request;->g:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/volley/Request$Priority;->ordinal()I

    move-result p1

    invoke-virtual {v0}, Lcom/android/volley/Request$Priority;->ordinal()I

    move-result v0

    sub-int v0, p1, v0

    :goto_0
    return v0
.end method

.method public final a(I)Lcom/android/volley/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/volley/Request<",
            "*>;"
        }
    .end annotation

    .line 271
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/volley/Request;->g:Ljava/lang/Integer;

    return-object p0
.end method

.method public a(Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Cache$Entry;",
            ")",
            "Lcom/android/volley/Request<",
            "*>;"
        }
    .end annotation

    .line 311
    iput-object p1, p0, Lcom/android/volley/Request;->n:Lcom/android/volley/Cache$Entry;

    return-object p0
.end method

.method public a(Lcom/android/volley/RequestQueue;)Lcom/android/volley/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/RequestQueue;",
            ")",
            "Lcom/android/volley/Request<",
            "*>;"
        }
    .end annotation

    .line 261
    iput-object p1, p0, Lcom/android/volley/Request;->h:Lcom/android/volley/RequestQueue;

    return-object p0
.end method

.method public a(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/RetryPolicy;",
            ")",
            "Lcom/android/volley/Request<",
            "*>;"
        }
    .end annotation

    .line 212
    iput-object p1, p0, Lcom/android/volley/Request;->m:Lcom/android/volley/RetryPolicy;

    return-object p0
.end method

.method public final a(Z)Lcom/android/volley/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/android/volley/Request<",
            "*>;"
        }
    .end annotation

    .line 501
    iput-boolean p1, p0, Lcom/android/volley/Request;->i:Z

    return-object p0
.end method

.method protected abstract a(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response<",
            "TT;>;"
        }
    .end annotation
.end method

.method protected a(Lcom/android/volley/VolleyError;)Lcom/android/volley/VolleyError;
    .locals 0

    return-object p1
.end method

.method a(Lcom/android/volley/Request$NetworkRequestCompleteListener;)V
    .locals 1

    .line 627
    iget-object v0, p0, Lcom/android/volley/Request;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 628
    :try_start_0
    iput-object p1, p0, Lcom/android/volley/Request;->o:Lcom/android/volley/Request$NetworkRequestCompleteListener;

    .line 629
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method a(Lcom/android/volley/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response<",
            "*>;)V"
        }
    .end annotation

    .line 640
    iget-object v0, p0, Lcom/android/volley/Request;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 641
    :try_start_0
    iget-object v1, p0, Lcom/android/volley/Request;->o:Lcom/android/volley/Request$NetworkRequestCompleteListener;

    .line 642
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 644
    invoke-interface {v1, p0, p1}, Lcom/android/volley/Request$NetworkRequestCompleteListener;->a(Lcom/android/volley/Request;Lcom/android/volley/Response;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 642
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 218
    sget-boolean v0, Lcom/android/volley/VolleyLog$MarkerLog;->a:Z

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/volley/Request;->a:Lcom/android/volley/VolleyLog$MarkerLog;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/volley/VolleyLog$MarkerLog;->a(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public b()I
    .locals 1

    .line 189
    iget v0, p0, Lcom/android/volley/Request;->d:I

    return v0
.end method

.method public b(Lcom/android/volley/VolleyError;)V
    .locals 2

    .line 613
    iget-object v0, p0, Lcom/android/volley/Request;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 614
    :try_start_0
    iget-object v1, p0, Lcom/android/volley/Request;->f:Lcom/android/volley/Response$ErrorListener;

    .line 615
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 617
    invoke-interface {v1, p1}, Lcom/android/volley/Response$ErrorListener;->a(Lcom/android/volley/VolleyError;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 615
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method b(Ljava/lang/String;)V
    .locals 4

    .line 229
    iget-object v0, p0, Lcom/android/volley/Request;->h:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/volley/Request;->h:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, p0}, Lcom/android/volley/RequestQueue;->b(Lcom/android/volley/Request;)V

    .line 232
    :cond_0
    sget-boolean v0, Lcom/android/volley/VolleyLog$MarkerLog;->a:Z

    if-eqz v0, :cond_2

    .line 233
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 234
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 237
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 238
    new-instance v3, Lcom/android/volley/Request$1;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/android/volley/Request$1;-><init>(Lcom/android/volley/Request;Ljava/lang/String;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 249
    :cond_1
    iget-object v2, p0, Lcom/android/volley/Request;->a:Lcom/android/volley/VolleyLog$MarkerLog;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/volley/VolleyLog$MarkerLog;->a(Ljava/lang/String;J)V

    .line 250
    iget-object p1, p0, Lcom/android/volley/Request;->a:Lcom/android/volley/VolleyLog$MarkerLog;

    invoke-virtual {p0}, Lcom/android/volley/Request;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/volley/VolleyLog$MarkerLog;->a(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/android/volley/Request;->c:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 38
    check-cast p1, Lcom/android/volley/Request;

    invoke-virtual {p0, p1}, Lcom/android/volley/Request;->a(Lcom/android/volley/Request;)I

    move-result p1

    return p1
.end method

.method public d()Ljava/lang/String;
    .locals 3

    .line 290
    invoke-virtual {p0}, Lcom/android/volley/Request;->c()Ljava/lang/String;

    move-result-object v0

    .line 297
    invoke-virtual {p0}, Lcom/android/volley/Request;->a()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 301
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public e()Lcom/android/volley/Cache$Entry;
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/android/volley/Request;->n:Lcom/android/volley/Cache$Entry;

    return-object v0
.end method

.method public f()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 337
    iget-object v0, p0, Lcom/android/volley/Request;->e:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 338
    :try_start_0
    iput-boolean v1, p0, Lcom/android/volley/Request;->j:Z

    const/4 v1, 0x0

    .line 339
    iput-object v1, p0, Lcom/android/volley/Request;->f:Lcom/android/volley/Response$ErrorListener;

    .line 340
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public g()Z
    .locals 2

    .line 345
    iget-object v0, p0, Lcom/android/volley/Request;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 346
    :try_start_0
    iget-boolean v1, p0, Lcom/android/volley/Request;->j:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 347
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public h()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .line 357
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected i()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 372
    invoke-virtual {p0}, Lcom/android/volley/Request;->m()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected j()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 392
    invoke-virtual {p0}, Lcom/android/volley/Request;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 398
    invoke-virtual {p0}, Lcom/android/volley/Request;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 413
    invoke-virtual {p0}, Lcom/android/volley/Request;->i()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 414
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 415
    invoke-virtual {p0}, Lcom/android/volley/Request;->j()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/volley/Request;->a(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected m()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected n()Ljava/lang/String;
    .locals 1

    const-string v0, "UTF-8"

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 2

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "application/x-www-form-urlencoded; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/volley/Request;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .line 464
    invoke-virtual {p0}, Lcom/android/volley/Request;->m()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 465
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 466
    invoke-virtual {p0}, Lcom/android/volley/Request;->n()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/volley/Request;->a(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final q()Z
    .locals 1

    .line 507
    iget-boolean v0, p0, Lcom/android/volley/Request;->i:Z

    return v0
.end method

.method public final r()Z
    .locals 1

    .line 524
    iget-boolean v0, p0, Lcom/android/volley/Request;->l:Z

    return v0
.end method

.method public s()Lcom/android/volley/Request$Priority;
    .locals 1

    .line 540
    sget-object v0, Lcom/android/volley/Request$Priority;->NORMAL:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method public final t()I
    .locals 1

    .line 549
    invoke-virtual {p0}, Lcom/android/volley/Request;->u()Lcom/android/volley/RetryPolicy;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/volley/RetryPolicy;->a()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/volley/Request;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 679
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/volley/Request;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "[X] "

    goto :goto_0

    :cond_0
    const-string v2, "[ ] "

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    invoke-virtual {p0}, Lcom/android/volley/Request;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    invoke-virtual {p0}, Lcom/android/volley/Request;->s()Lcom/android/volley/Request$Priority;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/volley/Request;->g:Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Lcom/android/volley/RetryPolicy;
    .locals 1

    .line 554
    iget-object v0, p0, Lcom/android/volley/Request;->m:Lcom/android/volley/RetryPolicy;

    return-object v0
.end method

.method public v()V
    .locals 2

    .line 562
    iget-object v0, p0, Lcom/android/volley/Request;->e:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 563
    :try_start_0
    iput-boolean v1, p0, Lcom/android/volley/Request;->k:Z

    .line 564
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public w()Z
    .locals 2

    .line 569
    iget-object v0, p0, Lcom/android/volley/Request;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 570
    :try_start_0
    iget-boolean v1, p0, Lcom/android/volley/Request;->k:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 571
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method x()V
    .locals 2

    .line 654
    iget-object v0, p0, Lcom/android/volley/Request;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 655
    :try_start_0
    iget-object v1, p0, Lcom/android/volley/Request;->o:Lcom/android/volley/Request$NetworkRequestCompleteListener;

    .line 656
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 658
    invoke-interface {v1, p0}, Lcom/android/volley/Request$NetworkRequestCompleteListener;->a(Lcom/android/volley/Request;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 656
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
