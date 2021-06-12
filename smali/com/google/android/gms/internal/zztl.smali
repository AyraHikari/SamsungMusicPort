.class public final Lcom/google/android/gms/internal/zztl;
.super Lcom/google/android/gms/internal/zzkt;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private final zzapq:Ljava/lang/String;

.field private zzaqg:Z

.field private final zzbzs:Lcom/google/android/gms/internal/zzsd;

.field private zzbzx:Lcom/google/android/gms/ads/internal/zzak;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final zzcak:Lcom/google/android/gms/internal/zztd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzux;Lcom/google/android/gms/internal/zzakd;Lcom/google/android/gms/ads/internal/zzv;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzsd;

    invoke-direct {v0, p1, p3, p4, p5}, Lcom/google/android/gms/internal/zzsd;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzux;Lcom/google/android/gms/internal/zzakd;Lcom/google/android/gms/ads/internal/zzv;)V

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/zztl;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzsd;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzsd;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzkt;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zztl;->zzapq:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zztl;->zzbzs:Lcom/google/android/gms/internal/zzsd;

    new-instance p1, Lcom/google/android/gms/internal/zztd;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zztd;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zztl;->zzcak:Lcom/google/android/gms/internal/zztd;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->q()Lcom/google/android/gms/internal/zztg;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zztg;->a(Lcom/google/android/gms/internal/zzsd;)V

    return-void
.end method

.method private final abort()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zztl;->zzbzx:Lcom/google/android/gms/ads/internal/zzak;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zztl;->zzbzs:Lcom/google/android/gms/internal/zzsd;

    iget-object v1, p0, Lcom/google/android/gms/internal/zztl;->zzapq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzsd;->a(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/zzak;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zztl;->zzbzx:Lcom/google/android/gms/ads/internal/zzak;

    iget-object v0, p0, Lcom/google/android/gms/internal/zztl;->zzcak:Lcom/google/android/gms/internal/zztd;

    iget-object v1, p0, Lcom/google/android/gms/internal/zztl;->zzbzx:Lcom/google/android/gms/ads/internal/zzak;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zztd;->a(Lcom/google/android/gms/ads/internal/zzak;)V

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zztl;->zzbzx:Lcom/google/android/gms/ads/internal/zzak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zztl;->zzbzx:Lcom/google/android/gms/ads/internal/zzak;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zza;->destroy()V

    :cond_0
    return-void
.end method

.method public final getAdUnitId()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getAdUnitId not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getMediationAdapterClassName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zztl;->zzbzx:Lcom/google/android/gms/ads/internal/zzak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zztl;->zzbzx:Lcom/google/android/gms/ads/internal/zzak;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzd;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getVideoController()Lcom/google/android/gms/internal/zzll;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getVideoController not implemented for interstitials"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isLoading()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zztl;->zzbzx:Lcom/google/android/gms/ads/internal/zzak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zztl;->zzbzx:Lcom/google/android/gms/ads/internal/zzak;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zza;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isReady()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zztl;->zzbzx:Lcom/google/android/gms/ads/internal/zzak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zztl;->zzbzx:Lcom/google/android/gms/ads/internal/zzak;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zza;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zztl;->zzbzx:Lcom/google/android/gms/ads/internal/zzak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zztl;->zzbzx:Lcom/google/android/gms/ads/internal/zzak;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zza;->pause()V

    :cond_0
    return-void
.end method

.method public final resume()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zztl;->zzbzx:Lcom/google/android/gms/ads/internal/zzak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zztl;->zzbzx:Lcom/google/android/gms/ads/internal/zzak;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zza;->resume()V

    :cond_0
    return-void
.end method

.method public final setImmersiveMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zztl;->zzaqg:Z

    return-void
.end method

.method public final setManualImpressionsEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zztl;->abort()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zztl;->zzbzx:Lcom/google/android/gms/ads/internal/zzak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zztl;->zzbzx:Lcom/google/android/gms/ads/internal/zzak;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/zza;->setManualImpressionsEnabled(Z)V

    :cond_0
    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final showInterstitial()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zztl;->zzbzx:Lcom/google/android/gms/ads/internal/zzak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zztl;->zzbzx:Lcom/google/android/gms/ads/internal/zzak;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zztl;->zzaqg:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zza;->setImmersiveMode(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zztl;->zzbzx:Lcom/google/android/gms/ads/internal/zzak;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzd;->showInterstitial()V

    return-void

    :cond_0
    const-string v0, "Interstitial ad must be loaded before showInterstitial()."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final stopLoading()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zztl;->zzbzx:Lcom/google/android/gms/ads/internal/zzak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zztl;->zzbzx:Lcom/google/android/gms/ads/internal/zzak;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zza;->stopLoading()V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzadp;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zztl;->zzcak:Lcom/google/android/gms/internal/zztd;

    iput-object p1, v0, Lcom/google/android/gms/internal/zztd;->e:Lcom/google/android/gms/internal/zzadp;

    iget-object p1, p0, Lcom/google/android/gms/internal/zztl;->zzbzx:Lcom/google/android/gms/ads/internal/zzak;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zztl;->zzcak:Lcom/google/android/gms/internal/zztd;

    iget-object v0, p0, Lcom/google/android/gms/internal/zztl;->zzbzx:Lcom/google/android/gms/ads/internal/zzak;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zztd;->a(Lcom/google/android/gms/ads/internal/zzak;)V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzjn;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zztl;->zzbzx:Lcom/google/android/gms/ads/internal/zzak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zztl;->zzbzx:Lcom/google/android/gms/ads/internal/zzak;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/zza;->zza(Lcom/google/android/gms/internal/zzjn;)V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzke;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zztl;->zzcak:Lcom/google/android/gms/internal/zztd;

    iput-object p1, v0, Lcom/google/android/gms/internal/zztd;->d:Lcom/google/android/gms/internal/zzke;

    iget-object p1, p0, Lcom/google/android/gms/internal/zztl;->zzbzx:Lcom/google/android/gms/ads/internal/zzak;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zztl;->zzcak:Lcom/google/android/gms/internal/zztd;

    iget-object v0, p0, Lcom/google/android/gms/internal/zztl;->zzbzx:Lcom/google/android/gms/ads/internal/zzak;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zztd;->a(Lcom/google/android/gms/ads/internal/zzak;)V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzkh;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zztl;->zzcak:Lcom/google/android/gms/internal/zztd;

    iput-object p1, v0, Lcom/google/android/gms/internal/zztd;->a:Lcom/google/android/gms/internal/zzkh;

    iget-object p1, p0, Lcom/google/android/gms/internal/zztl;->zzbzx:Lcom/google/android/gms/ads/internal/zzak;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zztl;->zzcak:Lcom/google/android/gms/internal/zztd;

    iget-object v0, p0, Lcom/google/android/gms/internal/zztl;->zzbzx:Lcom/google/android/gms/ads/internal/zzak;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zztd;->a(Lcom/google/android/gms/ads/internal/zzak;)V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzkx;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zztl;->zzcak:Lcom/google/android/gms/internal/zztd;

    iput-object p1, v0, Lcom/google/android/gms/internal/zztd;->b:Lcom/google/android/gms/internal/zzkx;

    iget-object p1, p0, Lcom/google/android/gms/internal/zztl;->zzbzx:Lcom/google/android/gms/ads/internal/zzak;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zztl;->zzcak:Lcom/google/android/gms/internal/zztd;

    iget-object v0, p0, Lcom/google/android/gms/internal/zztl;->zzbzx:Lcom/google/android/gms/ads/internal/zzak;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zztd;->a(Lcom/google/android/gms/ads/internal/zzak;)V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzld;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zztl;->abort()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zztl;->zzbzx:Lcom/google/android/gms/ads/internal/zzak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zztl;->zzbzx:Lcom/google/android/gms/ads/internal/zzak;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/zza;->zza(Lcom/google/android/gms/internal/zzld;)V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzlr;)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unused method"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzmr;)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "getVideoController not implemented for interstitials"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzoa;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zztl;->zzcak:Lcom/google/android/gms/internal/zztd;

    iput-object p1, v0, Lcom/google/android/gms/internal/zztd;->c:Lcom/google/android/gms/internal/zzoa;

    iget-object p1, p0, Lcom/google/android/gms/internal/zztl;->zzbzx:Lcom/google/android/gms/ads/internal/zzak;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zztl;->zzcak:Lcom/google/android/gms/internal/zztd;

    iget-object v0, p0, Lcom/google/android/gms/internal/zztl;->zzbzx:Lcom/google/android/gms/ads/internal/zzak;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zztd;->a(Lcom/google/android/gms/ads/internal/zzak;)V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzxl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "setInAppPurchaseListener is deprecated and should not be called."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzxr;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "setPlayStorePurchaseParams is deprecated and should not be called."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzjj;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/zztg;->a(Lcom/google/android/gms/internal/zzjj;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "gw"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zztl;->abort()V

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zztg;->a(Lcom/google/android/gms/internal/zzjj;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "_skipMediation"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zztl;->abort()V

    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/internal/zzjj;->k:Lcom/google/android/gms/internal/zzmn;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zztl;->abort()V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zztl;->zzbzx:Lcom/google/android/gms/ads/internal/zzak;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zztl;->zzbzx:Lcom/google/android/gms/ads/internal/zzak;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/zza;->zzb(Lcom/google/android/gms/internal/zzjj;)Z

    move-result p1

    return p1

    :cond_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->q()Lcom/google/android/gms/internal/zztg;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/zztg;->a(Lcom/google/android/gms/internal/zzjj;)Ljava/util/Set;

    move-result-object v1

    const-string v2, "_ad"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/zztl;->zzapq:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zztg;->b(Lcom/google/android/gms/internal/zzjj;Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zztl;->zzapq:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zztg;->a(Lcom/google/android/gms/internal/zzjj;Ljava/lang/String;)Lcom/google/android/gms/internal/zztj;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-boolean p1, v0, Lcom/google/android/gms/internal/zztj;->e:Z

    if-nez p1, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zztj;->a()Z

    invoke-static {}, Lcom/google/android/gms/internal/zztk;->a()Lcom/google/android/gms/internal/zztk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztk;->e()V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/zztk;->a()Lcom/google/android/gms/internal/zztk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztk;->d()V

    :goto_0
    iget-object p1, v0, Lcom/google/android/gms/internal/zztj;->a:Lcom/google/android/gms/ads/internal/zzak;

    iput-object p1, p0, Lcom/google/android/gms/internal/zztl;->zzbzx:Lcom/google/android/gms/ads/internal/zzak;

    iget-object p1, v0, Lcom/google/android/gms/internal/zztj;->c:Lcom/google/android/gms/internal/zzse;

    iget-object v1, p0, Lcom/google/android/gms/internal/zztl;->zzcak:Lcom/google/android/gms/internal/zztd;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzse;->a(Lcom/google/android/gms/internal/zztd;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zztl;->zzcak:Lcom/google/android/gms/internal/zztd;

    iget-object v1, p0, Lcom/google/android/gms/internal/zztl;->zzbzx:Lcom/google/android/gms/ads/internal/zzak;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zztd;->a(Lcom/google/android/gms/ads/internal/zzak;)V

    iget-boolean p1, v0, Lcom/google/android/gms/internal/zztj;->f:Z

    return p1

    :cond_6
    invoke-direct {p0}, Lcom/google/android/gms/internal/zztl;->abort()V

    invoke-static {}, Lcom/google/android/gms/internal/zztk;->a()Lcom/google/android/gms/internal/zztk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zztk;->e()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zztl;->zzbzx:Lcom/google/android/gms/ads/internal/zzak;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/zza;->zzb(Lcom/google/android/gms/internal/zzjj;)Z

    move-result p1

    return p1
.end method

.method public final zzbr()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zztl;->zzbzx:Lcom/google/android/gms/ads/internal/zzak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zztl;->zzbzx:Lcom/google/android/gms/ads/internal/zzak;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zza;->zzbr()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzbs()Lcom/google/android/gms/internal/zzjn;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zztl;->zzbzx:Lcom/google/android/gms/ads/internal/zzak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zztl;->zzbzx:Lcom/google/android/gms/ads/internal/zzak;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zza;->zzbs()Lcom/google/android/gms/internal/zzjn;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzbu()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zztl;->zzbzx:Lcom/google/android/gms/ads/internal/zzak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zztl;->zzbzx:Lcom/google/android/gms/ads/internal/zzak;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zza;->zzbu()V

    return-void

    :cond_0
    const-string v0, "Interstitial ad must be loaded before pingManualTrackingUrl()."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final zzcd()Lcom/google/android/gms/internal/zzkx;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getIAppEventListener not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzce()Lcom/google/android/gms/internal/zzkh;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getIAdListener not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzcp()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zztl;->zzbzx:Lcom/google/android/gms/ads/internal/zzak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zztl;->zzbzx:Lcom/google/android/gms/ads/internal/zzak;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzd;->zzcp()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
