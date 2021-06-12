.class final Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zach;
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/internal/GoogleApiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zac"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

.field private final b:Lcom/google/android/gms/common/api/Api$Client;

.field private final c:Lcom/google/android/gms/common/api/internal/zai;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/zai<",
            "*>;"
        }
    .end annotation
.end field

.field private d:Lcom/google/android/gms/common/internal/IAccountAccessor;

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/GoogleApiManager;Lcom/google/android/gms/common/api/Api$Client;Lcom/google/android/gms/common/api/internal/zai;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api$Client;",
            "Lcom/google/android/gms/common/api/internal/zai<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;->a:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;->d:Lcom/google/android/gms/common/internal/IAccountAccessor;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;->e:Ljava/util/Set;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;->f:Z

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;->b:Lcom/google/android/gms/common/api/Api$Client;

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;->c:Lcom/google/android/gms/common/api/internal/zai;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;)Lcom/google/android/gms/common/api/Api$Client;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;->b:Lcom/google/android/gms/common/api/Api$Client;

    return-object p0
.end method

.method private final a()V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 19
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;->d:Lcom/google/android/gms/common/internal/IAccountAccessor;

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;->b:Lcom/google/android/gms/common/api/Api$Client;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;->d:Lcom/google/android/gms/common/internal/IAccountAccessor;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;->e:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/common/api/Api$Client;->a(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;Z)Z
    .locals 0

    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;->a()V

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;)Lcom/google/android/gms/common/api/internal/zai;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;->c:Lcom/google/android/gms/common/api/internal/zai;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;->a:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->a(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/internal/zabo;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/common/api/internal/zabo;-><init>(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/internal/IAccountAccessor;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;->d:Lcom/google/android/gms/common/internal/IAccountAccessor;

    .line 16
    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;->e:Ljava/util/Set;

    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;->a()V

    return-void

    :cond_1
    :goto_0
    const-string p1, "GoogleApiManager"

    const-string p2, "Received null response from onSignInSuccess"

    .line 13
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-static {p1, p2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;->a:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->j(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zac;->c:Lcom/google/android/gms/common/api/internal/zai;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
