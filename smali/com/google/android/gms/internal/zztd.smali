.class final Lcom/google/android/gms/internal/zztd;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field a:Lcom/google/android/gms/internal/zzkh;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field b:Lcom/google/android/gms/internal/zzkx;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field c:Lcom/google/android/gms/internal/zzoa;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field d:Lcom/google/android/gms/internal/zzke;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field e:Lcom/google/android/gms/internal/zzadp;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Lcom/google/android/gms/ads/internal/zzak;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zztd;->a:Lcom/google/android/gms/internal/zzkh;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzte;

    iget-object v1, p0, Lcom/google/android/gms/internal/zztd;->a:Lcom/google/android/gms/internal/zzkh;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzte;-><init>(Lcom/google/android/gms/internal/zzkh;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zza;->zza(Lcom/google/android/gms/internal/zzkh;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zztd;->b:Lcom/google/android/gms/internal/zzkx;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zztd;->b:Lcom/google/android/gms/internal/zzkx;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zza;->zza(Lcom/google/android/gms/internal/zzkx;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zztd;->c:Lcom/google/android/gms/internal/zzoa;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zztd;->c:Lcom/google/android/gms/internal/zzoa;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zza;->zza(Lcom/google/android/gms/internal/zzoa;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zztd;->d:Lcom/google/android/gms/internal/zzke;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zztd;->d:Lcom/google/android/gms/internal/zzke;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zza;->zza(Lcom/google/android/gms/internal/zzke;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zztd;->e:Lcom/google/android/gms/internal/zzadp;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zztd;->e:Lcom/google/android/gms/internal/zzadp;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zza;->zza(Lcom/google/android/gms/internal/zzadp;)V

    :cond_4
    return-void
.end method
