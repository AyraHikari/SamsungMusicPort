.class final Lcom/google/android/gms/ads/internal/zzal;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzano;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/zzafo;

.field private synthetic b:Lcom/google/android/gms/ads/internal/zzak;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzak;Lcom/google/android/gms/internal/zzafo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzal;->b:Lcom/google/android/gms/ads/internal/zzak;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzal;->a:Lcom/google/android/gms/internal/zzafo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzgp;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzal;->b:Lcom/google/android/gms/ads/internal/zzak;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzal;->a:Lcom/google/android/gms/internal/zzafo;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzafo;->b:Lcom/google/android/gms/internal/zzanh;

    if-eqz v2, :cond_0

    check-cast v2, Landroid/view/View;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzgp;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzal;->a:Lcom/google/android/gms/internal/zzafo;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafo;->b:Lcom/google/android/gms/internal/zzanh;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzgp;->a(Lcom/google/android/gms/internal/zzgt;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method
