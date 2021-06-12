.class public final Lcom/google/android/gms/internal/zzrn;
.super Lcom/google/android/gms/internal/zzra;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private final zzbwq:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzra;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrn;->zzbwq:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/zzqm;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrn;->zzbwq:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzqp;->a(Lcom/google/android/gms/internal/zzqm;)Lcom/google/android/gms/internal/zzqp;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;->a(Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;)V

    return-void
.end method
