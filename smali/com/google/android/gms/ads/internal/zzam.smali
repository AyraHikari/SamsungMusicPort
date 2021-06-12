.class final Lcom/google/android/gms/ads/internal/zzam;
.super Lcom/google/android/gms/internal/zzagb;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/zzak;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/zzak;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzam;->a:Lcom/google/android/gms/ads/internal/zzak;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzagb;-><init>()V

    iput p2, p0, Lcom/google/android/gms/ads/internal/zzam;->b:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    new-instance v8, Lcom/google/android/gms/ads/internal/zzao;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzam;->a:Lcom/google/android/gms/ads/internal/zzak;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-boolean v1, v0, Lcom/google/android/gms/ads/internal/zzbt;->G:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzam;->a:Lcom/google/android/gms/ads/internal/zzak;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzak;->zzdj()Z

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzam;->a:Lcom/google/android/gms/ads/internal/zzak;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzak;->zza(Lcom/google/android/gms/ads/internal/zzak;)Z

    move-result v3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzam;->a:Lcom/google/android/gms/ads/internal/zzak;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzak;->zzb(Lcom/google/android/gms/ads/internal/zzak;)F

    move-result v4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzam;->a:Lcom/google/android/gms/ads/internal/zzak;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->G:Z

    const/4 v9, -0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/ads/internal/zzam;->b:I

    move v5, v0

    goto :goto_0

    :cond_0
    const/4 v5, -0x1

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzam;->a:Lcom/google/android/gms/ads/internal/zzak;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzak;->zzc(Lcom/google/android/gms/ads/internal/zzak;)Z

    move-result v6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzam;->a:Lcom/google/android/gms/ads/internal/zzak;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    iget-boolean v7, v0, Lcom/google/android/gms/internal/zzafo;->I:Z

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/zzao;-><init>(ZZZFIZZ)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzam;->a:Lcom/google/android/gms/ads/internal/zzak;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafo;->b:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzanh;->y()I

    move-result v0

    if-ne v0, v9, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzam;->a:Lcom/google/android/gms/ads/internal/zzak;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    iget v0, v0, Lcom/google/android/gms/internal/zzafo;->g:I

    :cond_1
    move v5, v0

    new-instance v9, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzam;->a:Lcom/google/android/gms/ads/internal/zzak;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzam;->a:Lcom/google/android/gms/ads/internal/zzak;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzam;->a:Lcom/google/android/gms/ads/internal/zzak;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzam;->a:Lcom/google/android/gms/ads/internal/zzak;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    iget-object v4, v0, Lcom/google/android/gms/internal/zzafo;->b:Lcom/google/android/gms/internal/zzanh;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzam;->a:Lcom/google/android/gms/ads/internal/zzak;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/zzbt;->e:Lcom/google/android/gms/internal/zzakd;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzam;->a:Lcom/google/android/gms/ads/internal/zzak;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    iget-object v7, v0, Lcom/google/android/gms/internal/zzafo;->z:Ljava/lang/String;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/zzje;Lcom/google/android/gms/ads/internal/overlay/zzn;Lcom/google/android/gms/ads/internal/overlay/zzq;Lcom/google/android/gms/internal/zzanh;ILcom/google/android/gms/internal/zzakd;Ljava/lang/String;Lcom/google/android/gms/ads/internal/zzao;)V

    sget-object v0, Lcom/google/android/gms/internal/zzahn;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/zzan;

    invoke-direct {v1, p0, v9}, Lcom/google/android/gms/ads/internal/zzan;-><init>(Lcom/google/android/gms/ads/internal/zzam;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method
