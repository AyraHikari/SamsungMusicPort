.class public final Lcom/google/android/gms/ads/internal/zzaw;
.super Lcom/google/android/gms/internal/zzlh;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# static fields
.field private static final sLock:Ljava/lang/Object;

.field private static zzard:Lcom/google/android/gms/ads/internal/zzaw;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private zzare:Z

.field private zzarf:Lcom/google/android/gms/internal/zzakd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/zzaw;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzakd;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlh;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzaw;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzaw;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzaw;->zzarf:Lcom/google/android/gms/internal/zzakd;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/zzaw;->zzare:Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/zzaw;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/zzaw;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzakd;)Lcom/google/android/gms/ads/internal/zzaw;
    .locals 2

    sget-object v0, Lcom/google/android/gms/ads/internal/zzaw;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/ads/internal/zzaw;->zzard:Lcom/google/android/gms/ads/internal/zzaw;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/ads/internal/zzaw;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/zzaw;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzakd;)V

    sput-object v1, Lcom/google/android/gms/ads/internal/zzaw;->zzard:Lcom/google/android/gms/ads/internal/zzaw;

    :cond_0
    sget-object p0, Lcom/google/android/gms/ads/internal/zzaw;->zzard:Lcom/google/android/gms/ads/internal/zzaw;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final initialize()V
    .locals 3

    sget-object v0, Lcom/google/android/gms/ads/internal/zzaw;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/zzaw;->zzare:Z

    if-eqz v1, :cond_0

    const-string v1, "Mobile ads is initialized already."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/zzaw;->zzare:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzaw;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zznh;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->i()Lcom/google/android/gms/internal/zzaft;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzaw;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzaw;->zzarf:Lcom/google/android/gms/internal/zzakd;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzaft;->a(Landroid/content/Context;Lcom/google/android/gms/internal/zzakd;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->j()Lcom/google/android/gms/internal/zzid;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzaw;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzid;->a(Landroid/content/Context;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final setAppMuted(Z)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->B()Lcom/google/android/gms/internal/zzaie;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzaie;->a(Z)V

    return-void
.end method

.method public final setAppVolume(F)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->B()Lcom/google/android/gms/internal/zzaie;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzaie;->a(F)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzaw;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zznh;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/google/android/gms/internal/zznh;->cc:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v1, Lcom/google/android/gms/internal/zznh;->as:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    or-int/2addr v0, v1

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/gms/internal/zznh;->as:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzn;->zzx(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Runnable;

    new-instance v1, Lcom/google/android/gms/ads/internal/zzax;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/ads/internal/zzax;-><init>(Lcom/google/android/gms/ads/internal/zzaw;Ljava/lang/Runnable;)V

    :cond_1
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->l()Lcom/google/android/gms/ads/internal/zzac;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzaw;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzaw;->zzarf:Lcom/google/android/gms/internal/zzakd;

    invoke-virtual {p2, v0, v2, p1, v1}, Lcom/google/android/gms/ads/internal/zzac;->a(Landroid/content/Context;Lcom/google/android/gms/internal/zzakd;Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "Wrapped context is null. Failed to open debug menu."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzn;->zzx(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-nez p1, :cond_1

    const-string p1, "Context is null. Failed to open debug menu."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzaig;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzaig;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzaig;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzaw;->zzarf:Lcom/google/android/gms/internal/zzakd;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzakd;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzaig;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaig;->a()V

    return-void
.end method

.method public final zzdn()F
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->B()Lcom/google/android/gms/internal/zzaie;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaie;->a()F

    move-result v0

    return v0
.end method

.method public final zzdo()Z
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->B()Lcom/google/android/gms/internal/zzaie;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaie;->b()Z

    move-result v0

    return v0
.end method

.method public final zzu(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzaw;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zznh;->a(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zznh;->cc:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->l()Lcom/google/android/gms/ads/internal/zzac;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzaw;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzaw;->zzarf:Lcom/google/android/gms/internal/zzakd;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/google/android/gms/ads/internal/zzac;->a(Landroid/content/Context;Lcom/google/android/gms/internal/zzakd;Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
