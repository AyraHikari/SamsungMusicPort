.class final Lcom/google/android/gms/ads/internal/overlay/zzj;
.super Lcom/google/android/gms/internal/zzagb;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/overlay/zzd;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/internal/overlay/zzd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzj;->a:Lcom/google/android/gms/ads/internal/overlay/zzd;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzagb;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/internal/overlay/zzd;Lcom/google/android/gms/ads/internal/overlay/zze;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzj;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzd;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->w()Lcom/google/android/gms/internal/zzajg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzj;->a:Lcom/google/android/gms/ads/internal/overlay/zzd;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->o:Lcom/google/android/gms/ads/internal/zzao;

    iget v1, v1, Lcom/google/android/gms/ads/internal/zzao;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzajg;->a(Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->g()Lcom/google/android/gms/internal/zzaht;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzj;->a:Lcom/google/android/gms/ads/internal/overlay/zzd;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zza(Lcom/google/android/gms/ads/internal/overlay/zzd;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzj;->a:Lcom/google/android/gms/ads/internal/overlay/zzd;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->o:Lcom/google/android/gms/ads/internal/zzao;

    iget-boolean v3, v3, Lcom/google/android/gms/ads/internal/zzao;->d:Z

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzj;->a:Lcom/google/android/gms/ads/internal/overlay/zzd;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->o:Lcom/google/android/gms/ads/internal/zzao;

    iget v4, v4, Lcom/google/android/gms/ads/internal/zzao;->e:F

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/google/android/gms/internal/zzaht;->a(Landroid/content/Context;Landroid/graphics/Bitmap;ZF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzahn;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/zzk;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzk;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzj;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method
