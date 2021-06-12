.class public final Lcom/google/android/gms/ads/InterstitialAd;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/internal/zzlx;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzlx;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzlx;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->a:Lcom/google/android/gms/internal/zzlx;

    const-string v0, "Context cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->a:Lcom/google/android/gms/internal/zzlx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzlx;->a()V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/AdListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->a:Lcom/google/android/gms/internal/zzlx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzlx;->a(Lcom/google/android/gms/ads/AdListener;)V

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/internal/zzje;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->a:Lcom/google/android/gms/internal/zzlx;

    check-cast p1, Lcom/google/android/gms/internal/zzje;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzlx;->a(Lcom/google/android/gms/internal/zzje;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/ads/InterstitialAd;->a:Lcom/google/android/gms/internal/zzlx;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzlx;->a(Lcom/google/android/gms/internal/zzje;)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/AdRequest;)V
    .locals 1
    .annotation build Landroid/support/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->a:Lcom/google/android/gms/internal/zzlx;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdRequest;->a()Lcom/google/android/gms/internal/zzlt;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzlx;->a(Lcom/google/android/gms/internal/zzlt;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->a:Lcom/google/android/gms/internal/zzlx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzlx;->a(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->a:Lcom/google/android/gms/internal/zzlx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzlx;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/ads/InterstitialAd;->a:Lcom/google/android/gms/internal/zzlx;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzlx;->a(Z)V

    return-void
.end method

.method public final b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->a:Lcom/google/android/gms/internal/zzlx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzlx;->b(Z)V

    return-void
.end method
