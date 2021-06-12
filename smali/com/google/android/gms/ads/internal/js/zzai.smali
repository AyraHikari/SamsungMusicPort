.class final Lcom/google/android/gms/ads/internal/js/zzai;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/ads/internal/js/zzc;

.field private synthetic b:Lcom/google/android/gms/ads/internal/js/zzah;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/js/zzah;Lcom/google/android/gms/ads/internal/js/zzc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/js/zzai;->b:Lcom/google/android/gms/ads/internal/js/zzah;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/js/zzai;->a:Lcom/google/android/gms/ads/internal/js/zzc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzai;->b:Lcom/google/android/gms/ads/internal/js/zzah;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/js/zzah;->a:Lcom/google/android/gms/ads/internal/js/zzae;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/js/zzae;->a(Lcom/google/android/gms/ads/internal/js/zzae;)Lcom/google/android/gms/internal/zzaiq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/js/zzai;->a:Lcom/google/android/gms/ads/internal/js/zzc;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzaiq;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzai;->a:Lcom/google/android/gms/ads/internal/js/zzc;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/js/zzc;->a()V

    return-void
.end method
