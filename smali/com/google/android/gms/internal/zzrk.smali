.class public final Lcom/google/android/gms/internal/zzrk;
.super Lcom/google/android/gms/internal/zzqr;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private final zzbwn:Lcom/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqr;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrk;->zzbwn:Lcom/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzqe;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrk;->zzbwn:Lcom/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener;

    new-instance v1, Lcom/google/android/gms/internal/zzqh;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzqh;-><init>(Lcom/google/android/gms/internal/zzqe;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener;->a(Lcom/google/android/gms/ads/formats/NativeAppInstallAd;)V

    return-void
.end method
