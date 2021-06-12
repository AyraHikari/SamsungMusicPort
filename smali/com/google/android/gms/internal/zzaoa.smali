.class public final Lcom/google/android/gms/internal/zzaoa;
.super Lcom/google/android/gms/internal/zzlm;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private zzbgx:Z

.field private zzbgy:Z

.field private zzbgz:Z

.field private zzcfl:Lcom/google/android/gms/internal/zzlo;

.field private final zzdhj:Lcom/google/android/gms/internal/zzamp;

.field private final zzdmy:Z

.field private final zzdmz:Z

.field private final zzdna:F

.field private zzdnb:I

.field private zzdnc:Z

.field private zzdnd:Z

.field private zzdne:F

.field private zzdnf:F


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzamp;FZZ)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlm;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaoa;->lock:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaoa;->zzdnd:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaoa;->zzbgx:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaoa;->zzdhj:Lcom/google/android/gms/internal/zzamp;

    iput p2, p0, Lcom/google/android/gms/internal/zzaoa;->zzdna:F

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzaoa;->zzdmy:Z

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzaoa;->zzdmz:Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaoa;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzaoa;->zzdnc:Z

    return p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzaoa;)Lcom/google/android/gms/internal/zzamp;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzaoa;->zzdhj:Lcom/google/android/gms/internal/zzamp;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzaoa;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzaoa;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method private final zzc(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object p2, v0

    :goto_0
    const-string v0, "action"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->e()Lcom/google/android/gms/internal/zzahn;

    new-instance p1, Lcom/google/android/gms/internal/zzaob;

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/internal/zzaob;-><init>(Lcom/google/android/gms/internal/zzaoa;Ljava/util/Map;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzahn;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzaoa;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/zzaoa;->zzdnc:Z

    return p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzaoa;)Lcom/google/android/gms/internal/zzlo;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzaoa;->zzcfl:Lcom/google/android/gms/internal/zzlo;

    return-object p0
.end method


# virtual methods
.method public final getAspectRatio()F
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoa;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/zzaoa;->zzdnf:F

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getPlaybackState()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoa;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/zzaoa;->zzdnb:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final isClickToExpandEnabled()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaoa;->isCustomControlsEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaoa;->lock:Ljava/lang/Object;

    monitor-enter v1

    if-nez v0, :cond_0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaoa;->zzbgz:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaoa;->zzdmz:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final isCustomControlsEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoa;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzaoa;->zzdmy:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzaoa;->zzbgy:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final isMuted()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoa;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzaoa;->zzdnd:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final mute(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string p1, "mute"

    goto :goto_0

    :cond_0
    const-string p1, "unmute"

    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzaoa;->zzc(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final pause()V
    .locals 2

    const-string v0, "pause"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzaoa;->zzc(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final play()V
    .locals 2

    const-string v0, "play"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzaoa;->zzc(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zza(FIZF)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoa;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/zzaoa;->zzdne:F

    iget-boolean v5, p0, Lcom/google/android/gms/internal/zzaoa;->zzdnd:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzaoa;->zzdnd:Z

    iget v3, p0, Lcom/google/android/gms/internal/zzaoa;->zzdnb:I

    iput p2, p0, Lcom/google/android/gms/internal/zzaoa;->zzdnb:I

    iget p1, p0, Lcom/google/android/gms/internal/zzaoa;->zzdnf:F

    iput p4, p0, Lcom/google/android/gms/internal/zzaoa;->zzdnf:F

    iget p4, p0, Lcom/google/android/gms/internal/zzaoa;->zzdnf:F

    sub-float/2addr p4, p1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const p4, 0x38d1b717    # 1.0E-4f

    cmpl-float p1, p1, p4

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzaoa;->zzdhj:Lcom/google/android/gms/internal/zzamp;

    if-eqz p1, :cond_0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->e()Lcom/google/android/gms/internal/zzahn;

    new-instance p1, Lcom/google/android/gms/internal/zzaoc;

    move-object v1, p1

    move-object v2, p0

    move v4, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzaoc;-><init>(Lcom/google/android/gms/internal/zzaoa;IIZZ)V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzahn;->a(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzlo;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoa;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzaoa;->zzcfl:Lcom/google/android/gms/internal/zzlo;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzmr;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoa;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p1, Lcom/google/android/gms/internal/zzmr;->b:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzaoa;->zzbgx:Z

    iget-boolean v1, p1, Lcom/google/android/gms/internal/zzmr;->c:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzaoa;->zzbgy:Z

    iget-boolean v1, p1, Lcom/google/android/gms/internal/zzmr;->d:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzaoa;->zzbgz:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "initialState"

    const-string v1, "muteStart"

    iget-boolean v2, p1, Lcom/google/android/gms/internal/zzmr;->b:Z

    if-eqz v2, :cond_0

    const-string v2, "1"

    goto :goto_0

    :cond_0
    const-string v2, "0"

    :goto_0
    const-string v3, "customControlsRequested"

    iget-boolean v4, p1, Lcom/google/android/gms/internal/zzmr;->c:Z

    if-eqz v4, :cond_1

    const-string v4, "1"

    goto :goto_1

    :cond_1
    const-string v4, "0"

    :goto_1
    const-string v5, "clickToExpandRequested"

    iget-boolean p1, p1, Lcom/google/android/gms/internal/zzmr;->d:Z

    if-eqz p1, :cond_2

    const-string p1, "1"

    :goto_2
    move-object v6, p1

    goto :goto_3

    :cond_2
    const-string p1, "0"

    goto :goto_2

    :goto_3
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/common/util/zze;->zza(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/zzaoa;->zzc(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zzih()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzaoa;->zzdna:F

    return v0
.end method

.method public final zzii()F
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoa;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/zzaoa;->zzdne:F

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzij()Lcom/google/android/gms/internal/zzlo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoa;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaoa;->zzcfl:Lcom/google/android/gms/internal/zzlo;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
