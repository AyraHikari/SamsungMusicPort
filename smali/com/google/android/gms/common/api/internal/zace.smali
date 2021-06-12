.class public final Lcom/google/android/gms/common/api/internal/zace;
.super Lcom/google/android/gms/signin/internal/zac;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# static fields
.field private static zakh:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
            "+",
            "Lcom/google/android/gms/signin/zad;",
            "Lcom/google/android/gms/signin/SignInOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mScopes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private final zaau:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
            "+",
            "Lcom/google/android/gms/signin/zad;",
            "Lcom/google/android/gms/signin/SignInOptions;",
            ">;"
        }
    .end annotation
.end field

.field private zaes:Lcom/google/android/gms/common/internal/ClientSettings;

.field private zaga:Lcom/google/android/gms/signin/zad;

.field private zaki:Lcom/google/android/gms/common/api/internal/zach;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    sget-object v0, Lcom/google/android/gms/signin/zaa;->a:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    sput-object v0, Lcom/google/android/gms/common/api/internal/zace;->zakh:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/ClientSettings;)V
    .locals 1
    .param p3    # Lcom/google/android/gms/common/internal/ClientSettings;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/common/api/internal/zace;->zakh:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/common/api/internal/zace;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;)V
    .locals 0
    .param p3    # Lcom/google/android/gms/common/internal/ClientSettings;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Lcom/google/android/gms/common/internal/ClientSettings;",
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
            "+",
            "Lcom/google/android/gms/signin/zad;",
            "Lcom/google/android/gms/signin/SignInOptions;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/signin/internal/zac;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zace;->mContext:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zace;->mHandler:Landroid/os/Handler;

    const-string p1, "ClientSettings must not be null"

    .line 6
    invoke-static {p3, p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/ClientSettings;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zace;->zaes:Lcom/google/android/gms/common/internal/ClientSettings;

    .line 7
    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/ClientSettings;->c()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zace;->mScopes:Ljava/util/Set;

    .line 8
    iput-object p4, p0, Lcom/google/android/gms/common/api/internal/zace;->zaau:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    return-void
.end method

.method static synthetic zaa(Lcom/google/android/gms/common/api/internal/zace;)Lcom/google/android/gms/common/api/internal/zach;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zace;->zaki:Lcom/google/android/gms/common/api/internal/zach;

    return-object p0
.end method

.method static synthetic zaa(Lcom/google/android/gms/common/api/internal/zace;Lcom/google/android/gms/signin/internal/zaj;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zace;->zac(Lcom/google/android/gms/signin/internal/zaj;)V

    return-void
.end method

.method private final zac(Lcom/google/android/gms/signin/internal/zaj;)V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 34
    invoke-virtual {p1}, Lcom/google/android/gms/signin/internal/zaj;->a()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    invoke-virtual {p1}, Lcom/google/android/gms/signin/internal/zaj;->b()Lcom/google/android/gms/common/internal/ResolveAccountResponse;

    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->b()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->b()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "SignInCoordinator"

    .line 39
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x30

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {p1, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zace;->zaki:Lcom/google/android/gms/common/api/internal/zach;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/internal/zach;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 41
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zace;->zaga:Lcom/google/android/gms/signin/zad;

    invoke-interface {p1}, Lcom/google/android/gms/signin/zad;->a()V

    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zace;->zaki:Lcom/google/android/gms/common/api/internal/zach;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->a()Lcom/google/android/gms/common/internal/IAccountAccessor;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zace;->mScopes:Ljava/util/Set;

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/common/api/internal/zach;->a(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V

    goto :goto_0

    .line 45
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zace;->zaki:Lcom/google/android/gms/common/api/internal/zach;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/internal/zach;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 46
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zace;->zaga:Lcom/google/android/gms/signin/zad;

    invoke-interface {p1}, Lcom/google/android/gms/signin/zad;->a()V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 26
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zace;->zaga:Lcom/google/android/gms/signin/zad;

    invoke-interface {p1, p0}, Lcom/google/android/gms/signin/zad;->a(Lcom/google/android/gms/signin/internal/zad;)V

    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zace;->zaki:Lcom/google/android/gms/common/api/internal/zach;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/zach;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 0
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 28
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zace;->zaga:Lcom/google/android/gms/signin/zad;

    invoke-interface {p1}, Lcom/google/android/gms/signin/zad;->a()V

    return-void
.end method

.method public final zaa(Lcom/google/android/gms/common/api/internal/zach;)V
    .locals 9
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zace;->zaga:Lcom/google/android/gms/signin/zad;

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zace;->zaga:Lcom/google/android/gms/signin/zad;

    invoke-interface {v0}, Lcom/google/android/gms/signin/zad;->a()V

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zace;->zaes:Lcom/google/android/gms/common/internal/ClientSettings;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/ClientSettings;->a(Ljava/lang/Integer;)V

    .line 13
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zace;->zaau:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zace;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zace;->mHandler:Landroid/os/Handler;

    .line 14
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/zace;->zaes:Lcom/google/android/gms/common/internal/ClientSettings;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zace;->zaes:Lcom/google/android/gms/common/internal/ClientSettings;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ClientSettings;->g()Lcom/google/android/gms/signin/SignInOptions;

    move-result-object v6

    move-object v7, p0

    move-object v8, p0

    .line 16
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$Client;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/signin/zad;

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zace;->zaga:Lcom/google/android/gms/signin/zad;

    .line 17
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zace;->zaki:Lcom/google/android/gms/common/api/internal/zach;

    .line 18
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zace;->mScopes:Ljava/util/Set;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zace;->mScopes:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 20
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zace;->zaga:Lcom/google/android/gms/signin/zad;

    invoke-interface {p1}, Lcom/google/android/gms/signin/zad;->w()V

    return-void

    .line 19
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zace;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/common/api/internal/zacf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/zacf;-><init>(Lcom/google/android/gms/common/api/internal/zace;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zab(Lcom/google/android/gms/signin/internal/zaj;)V
    .locals 2
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zace;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/common/api/internal/zacg;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/common/api/internal/zacg;-><init>(Lcom/google/android/gms/common/api/internal/zace;Lcom/google/android/gms/signin/internal/zaj;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zabq()Lcom/google/android/gms/signin/zad;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zace;->zaga:Lcom/google/android/gms/signin/zad;

    return-object v0
.end method

.method public final zabs()V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zace;->zaga:Lcom/google/android/gms/signin/zad;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zace;->zaga:Lcom/google/android/gms/signin/zad;

    invoke-interface {v0}, Lcom/google/android/gms/signin/zad;->a()V

    :cond_0
    return-void
.end method
