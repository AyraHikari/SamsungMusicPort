.class public abstract Lcom/android/volley/toolbox/JsonRequest;
.super Lcom/android/volley/Request;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/volley/Request<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/Object;

.field private c:Lcom/android/volley/Response$Listener;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "application/json; charset=%s"

    const/4 v1, 0x1

    .line 40
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "utf-8"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 41
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/volley/toolbox/JsonRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/android/volley/Response$ErrorListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener<",
            "TT;>;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1, p2, p5}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 44
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/volley/toolbox/JsonRequest;->b:Ljava/lang/Object;

    .line 71
    iput-object p4, p0, Lcom/android/volley/toolbox/JsonRequest;->c:Lcom/android/volley/Response$Listener;

    .line 72
    iput-object p3, p0, Lcom/android/volley/toolbox/JsonRequest;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
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

.method protected a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/android/volley/toolbox/JsonRequest;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/android/volley/toolbox/JsonRequest;->c:Lcom/android/volley/Response$Listener;

    .line 88
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 90
    invoke-interface {v1, p1}, Lcom/android/volley/Response$Listener;->a(Ljava/lang/Object;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 88
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public f()V
    .locals 2

    .line 77
    invoke-super {p0}, Lcom/android/volley/Request;->f()V

    .line 78
    iget-object v0, p0, Lcom/android/volley/toolbox/JsonRequest;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 79
    :try_start_0
    iput-object v1, p0, Lcom/android/volley/toolbox/JsonRequest;->c:Lcom/android/volley/Response$Listener;

    .line 80
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public k()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 101
    invoke-virtual {p0}, Lcom/android/volley/toolbox/JsonRequest;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()[B
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 108
    invoke-virtual {p0}, Lcom/android/volley/toolbox/JsonRequest;->p()[B

    move-result-object v0

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .line 113
    sget-object v0, Lcom/android/volley/toolbox/JsonRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public p()[B
    .locals 5

    const/4 v0, 0x0

    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/android/volley/toolbox/JsonRequest;->d:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/volley/toolbox/JsonRequest;->d:Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    const-string v1, "Unsupported Encoding while trying to get the bytes of %s using %s"

    const/4 v2, 0x2

    .line 121
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/volley/toolbox/JsonRequest;->d:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "utf-8"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method
