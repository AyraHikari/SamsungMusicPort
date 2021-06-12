.class public final Lcom/google/android/gms/internal/zzjg;
.super Lcom/google/android/gms/internal/zzki;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private final zzbde:Lcom/google/android/gms/ads/AdListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/AdListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzki;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjg;->zzbde:Lcom/google/android/gms/ads/AdListener;

    return-void
.end method


# virtual methods
.method public final getAdListener()Lcom/google/android/gms/ads/AdListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjg;->zzbde:Lcom/google/android/gms/ads/AdListener;

    return-object v0
.end method

.method public final onAdClicked()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjg;->zzbde:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdListener;->onAdClicked()V

    return-void
.end method

.method public final onAdClosed()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjg;->zzbde:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdListener;->c()V

    return-void
.end method

.method public final onAdFailedToLoad(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjg;->zzbde:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/AdListener;->a(I)V

    return-void
.end method

.method public final onAdImpression()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjg;->zzbde:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdListener;->e()V

    return-void
.end method

.method public final onAdLeftApplication()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjg;->zzbde:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdListener;->d()V

    return-void
.end method

.method public final onAdLoaded()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjg;->zzbde:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdListener;->a()V

    return-void
.end method

.method public final onAdOpened()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjg;->zzbde:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdListener;->b()V

    return-void
.end method
