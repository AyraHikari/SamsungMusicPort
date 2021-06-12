.class final Lcom/google/android/gms/ads/internal/zzm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/ads/internal/zzl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzm;->a:Lcom/google/android/gms/ads/internal/zzl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzm;->a:Lcom/google/android/gms/ads/internal/zzl;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzl;->c:Lcom/google/android/gms/ads/internal/zzi;

    new-instance v10, Lcom/google/android/gms/internal/zzafo;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzm;->a:Lcom/google/android/gms/ads/internal/zzl;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/zzl;->a:Lcom/google/android/gms/internal/zzafp;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/zzafo;-><init>(Lcom/google/android/gms/internal/zzafp;Lcom/google/android/gms/internal/zzanh;Lcom/google/android/gms/internal/zzuh;Lcom/google/android/gms/internal/zzva;Ljava/lang/String;Lcom/google/android/gms/internal/zzuk;Lcom/google/android/gms/internal/zzou;Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Lcom/google/android/gms/ads/internal/zza;->zzb(Lcom/google/android/gms/internal/zzafo;)V

    return-void
.end method
