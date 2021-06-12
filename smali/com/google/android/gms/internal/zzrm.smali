.class public final Lcom/google/android/gms/internal/zzrm;
.super Lcom/google/android/gms/internal/zzqx;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private final zzbwp:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqx;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrm;->zzbwp:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/zzqm;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrm;->zzbwp:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzqp;->a(Lcom/google/android/gms/internal/zzqm;)Lcom/google/android/gms/internal/zzqp;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;->a(Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;Ljava/lang/String;)V

    return-void
.end method
