.class final Lcom/google/android/gms/ads/internal/js/zzp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/js/zzd;


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/js/zzc;

.field final synthetic b:Lcom/google/android/gms/ads/internal/js/zzo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/js/zzo;Lcom/google/android/gms/ads/internal/js/zzc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/js/zzp;->b:Lcom/google/android/gms/ads/internal/js/zzo;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/js/zzp;->a:Lcom/google/android/gms/ads/internal/js/zzc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/zzahn;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/js/zzq;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/js/zzq;-><init>(Lcom/google/android/gms/ads/internal/js/zzp;)V

    sget v2, Lcom/google/android/gms/ads/internal/js/zzy;->b:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
