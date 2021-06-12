.class final Lcom/google/ads/mediation/zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;


# instance fields
.field private synthetic a:Lcom/google/ads/mediation/AbstractAdViewAdapter;


# direct methods
.method constructor <init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/mediation/zza;->a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/zza;->a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->a(Lcom/google/ads/mediation/AbstractAdViewAdapter;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/zza;->a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->b(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    return-void
.end method

.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/zza;->a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->a(Lcom/google/ads/mediation/AbstractAdViewAdapter;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/zza;->a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->a(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;I)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/reward/RewardItem;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/zza;->a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->a(Lcom/google/ads/mediation/AbstractAdViewAdapter;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/zza;->a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->a(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;Lcom/google/android/gms/ads/reward/RewardItem;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/zza;->a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->a(Lcom/google/ads/mediation/AbstractAdViewAdapter;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/zza;->a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->c(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/zza;->a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->a(Lcom/google/ads/mediation/AbstractAdViewAdapter;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/zza;->a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->d(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/zza;->a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->a(Lcom/google/ads/mediation/AbstractAdViewAdapter;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/zza;->a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->e(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    iget-object v0, p0, Lcom/google/ads/mediation/zza;->a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->a(Lcom/google/ads/mediation/AbstractAdViewAdapter;Lcom/google/android/gms/ads/InterstitialAd;)Lcom/google/android/gms/ads/InterstitialAd;

    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/zza;->a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->a(Lcom/google/ads/mediation/AbstractAdViewAdapter;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/zza;->a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->f(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    return-void
.end method
