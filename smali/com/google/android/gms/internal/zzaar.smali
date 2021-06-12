.class public final Lcom/google/android/gms/internal/zzaar;
.super Lcom/google/android/gms/internal/zzaan;

# interfaces
.implements Lcom/google/android/gms/common/internal/zzf;
.implements Lcom/google/android/gms/common/internal/zzg;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/google/android/gms/internal/zzakd;

.field private c:Lcom/google/android/gms/internal/zzalh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzalh<",
            "Lcom/google/android/gms/internal/zzaat;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/internal/zzaal;

.field private final e:Ljava/lang/Object;

.field private f:Lcom/google/android/gms/internal/zzaas;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzakd;Lcom/google/android/gms/internal/zzalh;Lcom/google/android/gms/internal/zzaal;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/zzakd;",
            "Lcom/google/android/gms/internal/zzalh<",
            "Lcom/google/android/gms/internal/zzaat;",
            ">;",
            "Lcom/google/android/gms/internal/zzaal;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p3, p4}, Lcom/google/android/gms/internal/zzaan;-><init>(Lcom/google/android/gms/internal/zzalh;Lcom/google/android/gms/internal/zzaal;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaar;->e:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaar;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaar;->b:Lcom/google/android/gms/internal/zzakd;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzaar;->c:Lcom/google/android/gms/internal/zzalh;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzaar;->d:Lcom/google/android/gms/internal/zzaal;

    sget-object p2, Lcom/google/android/gms/internal/zznh;->C:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->s()Lcom/google/android/gms/internal/zzajf;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzajf;->a()Landroid/os/Looper;

    move-result-object p2

    :goto_0
    move-object v2, p2

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    goto :goto_0

    :goto_1
    new-instance p2, Lcom/google/android/gms/internal/zzaas;

    iget-object p3, p0, Lcom/google/android/gms/internal/zzaar;->b:Lcom/google/android/gms/internal/zzakd;

    iget v5, p3, Lcom/google/android/gms/internal/zzakd;->d:I

    move-object v0, p2

    move-object v1, p1

    move-object v3, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzaas;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/internal/zzg;I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaar;->f:Lcom/google/android/gms/internal/zzaas;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzaar;->f:Lcom/google/android/gms/internal/zzaas;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->zzakj()V

    return-void
.end method


# virtual methods
.method public final e_()Lcom/google/android/gms/internal/zzabb;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaar;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaar;->f:Lcom/google/android/gms/internal/zzaas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaas;->a()Lcom/google/android/gms/internal/zzabb;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final f_()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaar;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaar;->f:Lcom/google/android/gms/internal/zzaas;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzd;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaar;->f:Lcom/google/android/gms/internal/zzaas;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzd;->isConnecting()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaar;->f:Lcom/google/android/gms/internal/zzaas;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzd;->disconnect()V

    :cond_1
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
