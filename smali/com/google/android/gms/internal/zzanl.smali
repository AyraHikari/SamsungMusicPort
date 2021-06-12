.class final Lcom/google/android/gms/internal/zzanl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/zzani;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzani;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzanl;->a:Lcom/google/android/gms/internal/zzani;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanl;->a:Lcom/google/android/gms/internal/zzani;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzani;->a:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzanh;->E()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanl;->a:Lcom/google/android/gms/internal/zzani;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzani;->a:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzanh;->q()Lcom/google/android/gms/ads/internal/overlay/zzd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzmv()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzanl;->a:Lcom/google/android/gms/internal/zzani;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzani;->a(Lcom/google/android/gms/internal/zzani;)Lcom/google/android/gms/internal/zzano;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanl;->a:Lcom/google/android/gms/internal/zzani;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzani;->a(Lcom/google/android/gms/internal/zzani;)Lcom/google/android/gms/internal/zzano;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzano;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanl;->a:Lcom/google/android/gms/internal/zzani;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzani;->a(Lcom/google/android/gms/internal/zzani;Lcom/google/android/gms/internal/zzano;)Lcom/google/android/gms/internal/zzano;

    :cond_1
    return-void
.end method
