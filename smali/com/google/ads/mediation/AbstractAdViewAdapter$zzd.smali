.class final Lcom/google/ads/mediation/AbstractAdViewAdapter$zzd;
.super Lcom/google/android/gms/ads/AdListener;

# interfaces
.implements Lcom/google/android/gms/internal/zzje;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/AbstractAdViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zzd"
.end annotation


# instance fields
.field private a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

.field private b:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    iput-object p1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zzd;->a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    iput-object p2, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zzd;->b:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zzd;->b:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zzd;->a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->a(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method

.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zzd;->b:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zzd;->a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->a(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zzd;->b:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zzd;->a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->b(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zzd;->b:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zzd;->a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->c(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zzd;->b:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zzd;->a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->d(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method

.method public final onAdClicked()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zzd;->b:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$zzd;->a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->e(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method
