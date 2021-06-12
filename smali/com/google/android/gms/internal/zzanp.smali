.class final Lcom/google/android/gms/internal/zzanp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzn;


# instance fields
.field private a:Lcom/google/android/gms/internal/zzanh;

.field private b:Lcom/google/android/gms/ads/internal/overlay/zzn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzanh;Lcom/google/android/gms/ads/internal/overlay/zzn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzanp;->a:Lcom/google/android/gms/internal/zzanh;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzanp;->b:Lcom/google/android/gms/ads/internal/overlay/zzn;

    return-void
.end method


# virtual methods
.method public final onPause()V
    .locals 0

    return-void
.end method

.method public final onResume()V
    .locals 0

    return-void
.end method

.method public final zzcg()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanp;->b:Lcom/google/android/gms/ads/internal/overlay/zzn;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzn;->zzcg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanp;->a:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzanh;->m()V

    return-void
.end method

.method public final zzch()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanp;->b:Lcom/google/android/gms/ads/internal/overlay/zzn;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzn;->zzch()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanp;->a:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzanh;->n()V

    return-void
.end method
