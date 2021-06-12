.class public abstract Lcom/google/ads/mediation/AbstractAdViewAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;
.implements Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;
.implements Lcom/google/android/gms/ads/mediation/OnImmersiveModeUpdatedListener;
.implements Lcom/google/android/gms/ads/mediation/zza;
.implements Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;
.implements Lcom/google/android/gms/internal/zzapc;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/mediation/AbstractAdViewAdapter$zzb;,
        Lcom/google/ads/mediation/AbstractAdViewAdapter$zza;,
        Lcom/google/ads/mediation/AbstractAdViewAdapter$zze;,
        Lcom/google/ads/mediation/AbstractAdViewAdapter$zzd;,
        Lcom/google/ads/mediation/AbstractAdViewAdapter$zzc;
    }
.end annotation


# static fields
.field public static final AD_UNIT_ID_PARAMETER:Ljava/lang/String; = "pubid"


# instance fields
.field private a:Lcom/google/android/gms/ads/AdView;

.field private b:Lcom/google/android/gms/ads/InterstitialAd;

.field private c:Lcom/google/android/gms/ads/AdLoader;

.field private d:Landroid/content/Context;

.field private e:Lcom/google/android/gms/ads/InterstitialAd;

.field private f:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

.field private g:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/ads/mediation/zza;

    invoke-direct {v0, p0}, Lcom/google/ads/mediation/zza;-><init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;)V

    iput-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->g:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    return-void
.end method

.method private final a(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest;
    .locals 3

    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->a()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->a(Ljava/util/Date;)Lcom/google/android/gms/ads/AdRequest$Builder;

    :cond_0
    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->b()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->a(I)Lcom/google/android/gms/ads/AdRequest$Builder;

    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->c()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->a(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    goto :goto_0

    :cond_2
    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->d()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->a(Landroid/location/Location;)Lcom/google/android/gms/ads/AdRequest$Builder;

    :cond_3
    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->f()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->a()Lcom/google/android/gms/internal/zzajr;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzajr;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/AdRequest$Builder;->b(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    :cond_4
    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->e()I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_6

    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->e()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->a(Z)Lcom/google/android/gms/ads/AdRequest$Builder;

    :cond_6
    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->g()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/AdRequest$Builder;->b(Z)Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-virtual {p0, p3, p4}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const-class p2, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/ads/AdRequest$Builder;->a(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->a()Lcom/google/android/gms/ads/AdRequest;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/google/ads/mediation/AbstractAdViewAdapter;Lcom/google/android/gms/ads/InterstitialAd;)Lcom/google/android/gms/ads/InterstitialAd;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->e:Lcom/google/android/gms/ads/InterstitialAd;

    return-object p1
.end method

.method static synthetic a(Lcom/google/ads/mediation/AbstractAdViewAdapter;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->f:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    return-object p0
.end method


# virtual methods
.method protected abstract a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public getAdUnitId(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    const-string v0, "pubid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getBannerView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->a:Lcom/google/android/gms/ads/AdView;

    return-object v0
.end method

.method public getInterstitialAdapterInfo()Landroid/os/Bundle;
    .locals 2

    new-instance v0, Lcom/google/android/gms/ads/mediation/MediationAdapter$zza;

    invoke-direct {v0}, Lcom/google/android/gms/ads/mediation/MediationAdapter$zza;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationAdapter$zza;->a(I)Lcom/google/android/gms/ads/mediation/MediationAdapter$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/MediationAdapter$zza;->a()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getVideoController()Lcom/google/android/gms/internal/zzll;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->a:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->a:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->getVideoController()Lcom/google/android/gms/ads/VideoController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/VideoController;->a()Lcom/google/android/gms/internal/zzll;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public initialize(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Ljava/lang/String;Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->d:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->f:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    iget-object p1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->f:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    invoke-interface {p1, p0}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->a(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    return-void
.end method

.method public isInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->f:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public loadAd(Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->d:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->f:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/ads/InterstitialAd;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->e:Lcom/google/android/gms/ads/InterstitialAd;

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->e:Lcom/google/android/gms/ads/InterstitialAd;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->a(Z)V

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->e:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {p0, p2}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->getAdUnitId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->e:Lcom/google/android/gms/ads/InterstitialAd;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->g:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->a(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->e:Lcom/google/android/gms/ads/InterstitialAd;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->d:Landroid/content/Context;

    invoke-direct {p0, v1, p1, p3, p2}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->a(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/InterstitialAd;->a(Lcom/google/android/gms/ads/AdRequest;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "AdMobAdapter.loadAd called before initialize."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzakb;->c(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->a:Lcom/google/android/gms/ads/AdView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->a:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->c()V

    iput-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->a:Lcom/google/android/gms/ads/AdView;

    :cond_0
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->b:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->b:Lcom/google/android/gms/ads/InterstitialAd;

    :cond_1
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->c:Lcom/google/android/gms/ads/AdLoader;

    if-eqz v0, :cond_2

    iput-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->c:Lcom/google/android/gms/ads/AdLoader;

    :cond_2
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->e:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v0, :cond_3

    iput-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->e:Lcom/google/android/gms/ads/InterstitialAd;

    :cond_3
    return-void
.end method

.method public onImmersiveModeUpdated(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->b:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->b:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/InterstitialAd;->b(Z)V

    :cond_0
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->e:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->e:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/InterstitialAd;->b(Z)V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->a:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->a:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->b()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->a:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->a:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->a()V

    :cond_0
    return-void
.end method

.method public requestBannerAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationBannerListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/AdSize;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/ads/AdView;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->a:Lcom/google/android/gms/ads/AdView;

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->a:Lcom/google/android/gms/ads/AdView;

    new-instance v1, Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {p4}, Lcom/google/android/gms/ads/AdSize;->b()I

    move-result v2

    invoke-virtual {p4}, Lcom/google/android/gms/ads/AdSize;->a()I

    move-result p4

    invoke-direct {v1, v2, p4}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    iget-object p4, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->a:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {p0, p3}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->getAdUnitId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->a:Lcom/google/android/gms/ads/AdView;

    new-instance v0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zzc;

    invoke-direct {v0, p0, p2}, Lcom/google/ads/mediation/AbstractAdViewAdapter$zzc;-><init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;Lcom/google/android/gms/ads/mediation/MediationBannerListener;)V

    invoke-virtual {p4, v0}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    iget-object p2, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->a:Lcom/google/android/gms/ads/AdView;

    invoke-direct {p0, p1, p5, p6, p3}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->a(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/AdView;->a(Lcom/google/android/gms/ads/AdRequest;)V

    return-void
.end method

.method public requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->b:Lcom/google/android/gms/ads/InterstitialAd;

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->b:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {p0, p3}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->getAdUnitId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->b:Lcom/google/android/gms/ads/InterstitialAd;

    new-instance v1, Lcom/google/ads/mediation/AbstractAdViewAdapter$zzd;

    invoke-direct {v1, p0, p2}, Lcom/google/ads/mediation/AbstractAdViewAdapter$zzd;-><init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->a(Lcom/google/android/gms/ads/AdListener;)V

    iget-object p2, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->b:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-direct {p0, p1, p4, p5, p3}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->a(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/InterstitialAd;->a(Lcom/google/android/gms/ads/AdRequest;)V

    return-void
.end method

.method public requestNativeAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationNativeListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;Landroid/os/Bundle;)V
    .locals 4

    new-instance v0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zze;

    invoke-direct {v0, p0, p2}, Lcom/google/ads/mediation/AbstractAdViewAdapter$zze;-><init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;Lcom/google/android/gms/ads/mediation/MediationNativeListener;)V

    const-string p2, "pubid"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/google/android/gms/ads/AdLoader$Builder;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/ads/AdLoader$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdLoader$Builder;->a(Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object p2

    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;->h()Lcom/google/android/gms/ads/formats/NativeAdOptions;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->a(Lcom/google/android/gms/ads/formats/NativeAdOptions;)Lcom/google/android/gms/ads/AdLoader$Builder;

    :cond_0
    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/AdLoader$Builder;->a(Lcom/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    :cond_1
    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/AdLoader$Builder;->a(Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    :cond_2
    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;->k()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;->l()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;->l()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, v0

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p2, v2, v0, v3}, Lcom/google/android/gms/ads/AdLoader$Builder;->a(Ljava/lang/String;Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdLoader$Builder;->a()Lcom/google/android/gms/ads/AdLoader;

    move-result-object p2

    iput-object p2, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->c:Lcom/google/android/gms/ads/AdLoader;

    iget-object p2, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->c:Lcom/google/android/gms/ads/AdLoader;

    invoke-direct {p0, p1, p4, p5, p3}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->a(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/AdLoader;->a(Lcom/google/android/gms/ads/AdRequest;)V

    return-void
.end method

.method public showInterstitial()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->b:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->a()V

    return-void
.end method

.method public showVideo()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->e:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->a()V

    return-void
.end method
