.class public final Lcom/google/android/gms/measurement/internal/zzef;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/zzdr;

.field private volatile b:Z

.field private volatile c:Lcom/google/android/gms/measurement/internal/zzao;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/measurement/internal/zzdr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzef;->a:Lcom/google/android/gms/measurement/internal/zzdr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/zzef;Z)Z
    .locals 0

    const/4 p1, 0x0

    .line 98
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzef;->b:Z

    return p1
.end method


# virtual methods
.method public final a()V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzef;->c:Lcom/google/android/gms/measurement/internal/zzao;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzef;->c:Lcom/google/android/gms/measurement/internal/zzao;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzao;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzef;->c:Lcom/google/android/gms/measurement/internal/zzao;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzao;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzef;->c:Lcom/google/android/gms/measurement/internal/zzao;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzao;->a()V

    :cond_1
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzef;->c:Lcom/google/android/gms/measurement/internal/zzao;

    return-void
.end method

.method public final a(I)V
    .locals 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    const-string p1, "MeasurementServiceConnection.onConnectionSuspended"

    .line 82
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->b(Ljava/lang/String;)V

    .line 83
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzef;->a:Lcom/google/android/gms/measurement/internal/zzdr;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->w()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string v0, "Service connection suspended"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    .line 84
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzef;->a:Lcom/google/android/gms/measurement/internal/zzdr;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzco;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzej;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzej;-><init>(Lcom/google/android/gms/measurement/internal/zzef;)V

    .line 85
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzbo;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzef;->a:Lcom/google/android/gms/measurement/internal/zzdr;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzef;->a:Lcom/google/android/gms/measurement/internal/zzdr;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->n()Landroid/content/Context;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->a()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v1

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzef;->b:Z

    if-eqz v2, :cond_0

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzef;->a:Lcom/google/android/gms/measurement/internal/zzdr;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->x()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string v0, "Connection attempt already in progress"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    .line 8
    monitor-exit p0

    return-void

    .line 9
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzef;->a:Lcom/google/android/gms/measurement/internal/zzdr;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzap;->x()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v2

    const-string v3, "Using local app measurement service"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 10
    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzef;->b:Z

    .line 11
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzef;->a:Lcom/google/android/gms/measurement/internal/zzdr;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzdr;->a(Lcom/google/android/gms/measurement/internal/zzdr;)Lcom/google/android/gms/measurement/internal/zzef;

    move-result-object v2

    const/16 v3, 0x81

    invoke-virtual {v1, v0, p1, v2, v3}, Lcom/google/android/gms/common/stats/ConnectionTracker;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 12
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    const-string p1, "MeasurementServiceConnection.onConnected"

    .line 70
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->b(Ljava/lang/String;)V

    .line 71
    monitor-enter p0

    const/4 p1, 0x0

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzef;->c:Lcom/google/android/gms/measurement/internal/zzao;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzao;->t()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzag;

    .line 73
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzn;->x()Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzef;->c:Lcom/google/android/gms/measurement/internal/zzao;

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzef;->a:Lcom/google/android/gms/measurement/internal/zzdr;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzco;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzei;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/measurement/internal/zzei;-><init>(Lcom/google/android/gms/measurement/internal/zzef;Lcom/google/android/gms/measurement/internal/zzag;)V

    .line 76
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzbo;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 79
    :catch_0
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzef;->c:Lcom/google/android/gms/measurement/internal/zzao;

    const/4 p1, 0x0

    .line 80
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzef;->b:Z

    .line 81
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    const-string v0, "MeasurementServiceConnection.onConnectionFailed"

    .line 87
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->b(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzef;->a:Lcom/google/android/gms/measurement/internal/zzdr;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzdr;->r:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->d()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->i()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Service connection failed"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    :cond_0
    monitor-enter p0

    const/4 p1, 0x0

    .line 92
    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzef;->b:Z

    const/4 p1, 0x0

    .line 93
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzef;->c:Lcom/google/android/gms/measurement/internal/zzao;

    .line 94
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzef;->a:Lcom/google/android/gms/measurement/internal/zzdr;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzco;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzek;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzek;-><init>(Lcom/google/android/gms/measurement/internal/zzef;)V

    .line 96
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzbo;->a(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 94
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b()V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzef;->a:Lcom/google/android/gms/measurement/internal/zzdr;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzef;->a:Lcom/google/android/gms/measurement/internal/zzdr;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->n()Landroid/content/Context;

    move-result-object v0

    .line 56
    monitor-enter p0

    .line 57
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzef;->b:Z

    if-eqz v1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzef;->a:Lcom/google/android/gms/measurement/internal/zzdr;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->x()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Connection attempt already in progress"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    .line 59
    monitor-exit p0

    return-void

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzef;->c:Lcom/google/android/gms/measurement/internal/zzao;

    if-eqz v1, :cond_2

    .line 61
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzn;->x()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzef;->c:Lcom/google/android/gms/measurement/internal/zzao;

    .line 62
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzao;->c()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzef;->c:Lcom/google/android/gms/measurement/internal/zzao;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzao;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzef;->a:Lcom/google/android/gms/measurement/internal/zzdr;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->x()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Already awaiting connection attempt"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    .line 64
    monitor-exit p0

    return-void

    .line 65
    :cond_2
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzao;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v0, v2, p0, p0}, Lcom/google/android/gms/measurement/internal/zzao;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzef;->c:Lcom/google/android/gms/measurement/internal/zzao;

    .line 66
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzef;->a:Lcom/google/android/gms/measurement/internal/zzdr;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->x()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Connecting to remote service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzef;->b:Z

    .line 68
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzef;->c:Lcom/google/android/gms/measurement/internal/zzao;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzao;->m()V

    .line 69
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    const-string p1, "MeasurementServiceConnection.onServiceConnected"

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->b(Ljava/lang/String;)V

    .line 18
    monitor-enter p0

    const/4 p1, 0x0

    if-nez p2, :cond_0

    .line 20
    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzef;->b:Z

    .line 21
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzef;->a:Lcom/google/android/gms/measurement/internal/zzdr;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string p2, "Service connected with null binder"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    .line 22
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x0

    .line 24
    :try_start_1
    invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.gms.measurement.internal.IMeasurementService"

    .line 25
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "com.google.android.gms.measurement.internal.IMeasurementService"

    .line 29
    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 30
    instance-of v2, v1, Lcom/google/android/gms/measurement/internal/zzag;

    if-eqz v2, :cond_2

    .line 31
    check-cast v1, Lcom/google/android/gms/measurement/internal/zzag;

    :goto_0
    move-object v0, v1

    goto :goto_1

    .line 32
    :cond_2
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzai;

    invoke-direct {v1, p2}, Lcom/google/android/gms/measurement/internal/zzai;-><init>(Landroid/os/IBinder;)V

    goto :goto_0

    .line 34
    :goto_1
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzef;->a:Lcom/google/android/gms/measurement/internal/zzdr;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzap;->x()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p2

    const-string v1, "Bound to IMeasurementService interface"

    invoke-virtual {p2, v1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 35
    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzef;->a:Lcom/google/android/gms/measurement/internal/zzdr;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p2

    const-string v2, "Got binder with a wrong descriptor"

    invoke-virtual {p2, v2, v1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 38
    :catch_0
    :try_start_2
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzef;->a:Lcom/google/android/gms/measurement/internal/zzdr;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p2

    const-string v1, "Service connect failed to get IMeasurementService"

    invoke-virtual {p2, v1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    :goto_2
    if-nez v0, :cond_4

    .line 40
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzef;->b:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    :try_start_3
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->a()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzef;->a:Lcom/google/android/gms/measurement/internal/zzdr;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzco;->n()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzef;->a:Lcom/google/android/gms/measurement/internal/zzdr;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzdr;->a(Lcom/google/android/gms/measurement/internal/zzdr;)Lcom/google/android/gms/measurement/internal/zzef;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/common/stats/ConnectionTracker;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 46
    :cond_4
    :try_start_4
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzef;->a:Lcom/google/android/gms/measurement/internal/zzdr;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzco;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-direct {p2, p0, v0}, Lcom/google/android/gms/measurement/internal/zzeg;-><init>(Lcom/google/android/gms/measurement/internal/zzef;Lcom/google/android/gms/measurement/internal/zzag;)V

    .line 47
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzbo;->a(Ljava/lang/Runnable;)V

    .line 48
    :catch_1
    :goto_3
    monitor-exit p0

    return-void

    :goto_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    const-string v0, "MeasurementServiceConnection.onServiceDisconnected"

    .line 49
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->b(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzef;->a:Lcom/google/android/gms/measurement/internal/zzdr;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->w()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Service disconnected"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzef;->a:Lcom/google/android/gms/measurement/internal/zzdr;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzeh;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zzeh;-><init>(Lcom/google/android/gms/measurement/internal/zzef;Landroid/content/ComponentName;)V

    .line 52
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbo;->a(Ljava/lang/Runnable;)V

    return-void
.end method
