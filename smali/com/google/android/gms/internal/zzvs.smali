.class public final Lcom/google/android/gms/internal/zzvs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationBannerListener;
.implements Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;
.implements Lcom/google/android/gms/ads/mediation/MediationNativeListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/zzvd;

.field private b:Lcom/google/android/gms/ads/mediation/NativeAdMapper;

.field private c:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzvd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzvs;->a:Lcom/google/android/gms/internal/zzvd;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/ads/mediation/NativeAdMapper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvs;->b:Lcom/google/android/gms/ads/mediation/NativeAdMapper;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V
    .locals 1

    const-string p1, "onAdLoaded must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdLoaded."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzakb;->b(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzvs;->a:Lcom/google/android/gms/internal/zzvd;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzvd;->onAdLoaded()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Could not call onAdLoaded."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzakb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;I)V
    .locals 1

    const-string p1, "onAdFailedToLoad must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x37

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Adapter called onAdFailedToLoad with error. "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzakb;->b(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzvs;->a:Lcom/google/android/gms/internal/zzvd;

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/zzvd;->onAdFailedToLoad(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Could not call onAdFailedToLoad."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzakb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p1, "onAppEvent must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    const-string p1, "Adapter called onAppEvent."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzakb;->b(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzvs;->a:Lcom/google/android/gms/internal/zzvd;

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/zzvd;->onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Could not call onAppEvent."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzakb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
    .locals 1

    const-string p1, "onAdLoaded must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdLoaded."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzakb;->b(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzvs;->a:Lcom/google/android/gms/internal/zzvd;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzvd;->onAdLoaded()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Could not call onAdLoaded."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzakb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V
    .locals 1

    const-string p1, "onAdFailedToLoad must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x37

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Adapter called onAdFailedToLoad with error "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzakb;->b(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzvs;->a:Lcom/google/android/gms/internal/zzvd;

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/zzvd;->onAdFailedToLoad(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Could not call onAdFailedToLoad."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzakb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V
    .locals 1

    const-string p1, "onAdOpened must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdOpened."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzakb;->b(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzvs;->a:Lcom/google/android/gms/internal/zzvd;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzvd;->onAdOpened()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Could not call onAdOpened."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzakb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;I)V
    .locals 1

    const-string p1, "onAdFailedToLoad must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x37

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Adapter called onAdFailedToLoad with error "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzakb;->b(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzvs;->a:Lcom/google/android/gms/internal/zzvd;

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/zzvd;->onAdFailedToLoad(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Could not call onAdFailedToLoad."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzakb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;)V
    .locals 2

    const-string p1, "onAdLoaded must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdLoaded with template id "

    invoke-interface {p2}, Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzakb;->b(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzvs;->c:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzvs;->a:Lcom/google/android/gms/internal/zzvd;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzvd;->onAdLoaded()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Could not call onAdLoaded."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzakb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;Ljava/lang/String;)V
    .locals 0

    instance-of p1, p2, Lcom/google/android/gms/internal/zzqp;

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzvs;->a:Lcom/google/android/gms/internal/zzvd;

    check-cast p2, Lcom/google/android/gms/internal/zzqp;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzqp;->b()Lcom/google/android/gms/internal/zzqm;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/zzvd;->zzb(Lcom/google/android/gms/internal/zzqm;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Could not call onCustomClick."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzakb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const-string p1, "Unexpected native custom template ad type."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzakb;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/mediation/NativeAdMapper;)V
    .locals 1

    const-string v0, "onAdLoaded must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdLoaded."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzakb;->b(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzvs;->b:Lcom/google/android/gms/ads/mediation/NativeAdMapper;

    instance-of p1, p1, Lcom/google/ads/mediation/admob/AdMobAdapter;

    if-nez p1, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/android/gms/ads/VideoController;

    invoke-direct {p1}, Lcom/google/android/gms/ads/VideoController;-><init>()V

    new-instance p2, Lcom/google/android/gms/internal/zzvp;

    invoke-direct {p2}, Lcom/google/android/gms/internal/zzvp;-><init>()V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/VideoController;->a(Lcom/google/android/gms/internal/zzll;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzvs;->b:Lcom/google/android/gms/ads/mediation/NativeAdMapper;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->a(Lcom/google/android/gms/ads/VideoController;)V

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzvs;->a:Lcom/google/android/gms/internal/zzvd;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzvd;->onAdLoaded()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Could not call onAdLoaded."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzakb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final b()Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvs;->c:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;

    return-object v0
.end method

.method public final b(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V
    .locals 1

    const-string p1, "onAdOpened must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdOpened."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzakb;->b(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzvs;->a:Lcom/google/android/gms/internal/zzvd;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzvd;->onAdOpened()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Could not call onAdOpened."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzakb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
    .locals 1

    const-string p1, "onAdOpened must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdOpened."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzakb;->b(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzvs;->a:Lcom/google/android/gms/internal/zzvd;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzvd;->onAdOpened()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Could not call onAdOpened."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzakb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V
    .locals 1

    const-string p1, "onAdClosed must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdClosed."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzakb;->b(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzvs;->a:Lcom/google/android/gms/internal/zzvd;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzvd;->onAdClosed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Could not call onAdClosed."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzakb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final c(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V
    .locals 1

    const-string p1, "onAdClosed must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdClosed."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzakb;->b(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzvs;->a:Lcom/google/android/gms/internal/zzvd;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzvd;->onAdClosed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Could not call onAdClosed."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzakb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final c(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
    .locals 1

    const-string p1, "onAdClosed must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdClosed."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzakb;->b(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzvs;->a:Lcom/google/android/gms/internal/zzvd;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzvd;->onAdClosed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Could not call onAdClosed."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzakb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final c(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V
    .locals 1

    const-string p1, "onAdLeftApplication must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdLeftApplication."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzakb;->b(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzvs;->a:Lcom/google/android/gms/internal/zzvd;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzvd;->onAdLeftApplication()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Could not call onAdLeftApplication."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzakb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final d(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V
    .locals 1

    const-string p1, "onAdLeftApplication must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdLeftApplication."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzakb;->b(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzvs;->a:Lcom/google/android/gms/internal/zzvd;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzvd;->onAdLeftApplication()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Could not call onAdLeftApplication."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzakb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final d(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
    .locals 1

    const-string p1, "onAdLeftApplication must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdLeftApplication."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzakb;->b(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzvs;->a:Lcom/google/android/gms/internal/zzvd;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzvd;->onAdLeftApplication()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Could not call onAdLeftApplication."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzakb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final d(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V
    .locals 1

    const-string p1, "onAdClicked must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzvs;->b:Lcom/google/android/gms/ads/mediation/NativeAdMapper;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvs;->c:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    const-string p1, "Could not call onAdClicked since NativeAdMapper is null."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzakb;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->b()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Could not call onAdClicked since setOverrideClickHandling is not set to true"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzakb;->b(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p1, "Adapter called onAdClicked."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzakb;->b(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzvs;->a:Lcom/google/android/gms/internal/zzvd;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzvd;->onAdClicked()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Could not call onAdClicked."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzakb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final e(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V
    .locals 1

    const-string p1, "onAdClicked must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdClicked."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzakb;->b(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzvs;->a:Lcom/google/android/gms/internal/zzvd;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzvd;->onAdClicked()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Could not call onAdClicked."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzakb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final e(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
    .locals 1

    const-string p1, "onAdClicked must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdClicked."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzakb;->b(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzvs;->a:Lcom/google/android/gms/internal/zzvd;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzvd;->onAdClicked()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Could not call onAdClicked."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzakb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final e(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V
    .locals 1

    const-string p1, "onAdImpression must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzvs;->b:Lcom/google/android/gms/ads/mediation/NativeAdMapper;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvs;->c:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    const-string p1, "Could not call onAdImpression since NativeAdMapper is null. "

    invoke-static {p1}, Lcom/google/android/gms/internal/zzakb;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->a()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Could not call onAdImpression since setOverrideImpressionRecording is not set to true"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzakb;->b(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p1, "Adapter called onAdImpression."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzakb;->b(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzvs;->a:Lcom/google/android/gms/internal/zzvd;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzvd;->onAdImpression()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Could not call onAdImpression."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzakb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
