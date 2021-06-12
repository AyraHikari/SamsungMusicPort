.class public final Lcom/google/android/gms/internal/zzod;
.super Lcom/google/android/gms/internal/zzob;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private final zzbgh:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzob;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzod;->zzbgh:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zznx;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzod;->zzbgh:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    new-instance v1, Lcom/google/android/gms/internal/zznw;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zznw;-><init>(Lcom/google/android/gms/internal/zznx;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;->a(Lcom/google/android/gms/ads/doubleclick/CustomRenderedAd;)V

    return-void
.end method
