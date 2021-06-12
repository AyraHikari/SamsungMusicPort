.class public final Lcom/google/android/gms/internal/zzpe;
.super Lcom/google/android/gms/internal/zzbfm;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# static fields
.field public static final a:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzpe;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:I

.field public final c:Z

.field public final d:I

.field public final e:Z

.field public final f:I

.field public final g:Lcom/google/android/gms/internal/zzmr;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzpf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzpf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzpe;->a:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZIZILcom/google/android/gms/internal/zzmr;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbfm;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzpe;->b:I

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzpe;->c:Z

    iput p3, p0, Lcom/google/android/gms/internal/zzpe;->d:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzpe;->e:Z

    iput p5, p0, Lcom/google/android/gms/internal/zzpe;->f:I

    iput-object p6, p0, Lcom/google/android/gms/internal/zzpe;->g:Lcom/google/android/gms/internal/zzmr;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/formats/NativeAdOptions;)V
    .locals 7

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions;->a()Z

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions;->b()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions;->c()Z

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions;->d()I

    move-result v5

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions;->e()Lcom/google/android/gms/ads/VideoOptions;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzmr;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions;->e()Lcom/google/android/gms/ads/VideoOptions;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzmr;-><init>(Lcom/google/android/gms/ads/VideoOptions;)V

    move-object v6, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    move-object v6, p1

    :goto_0
    const/4 v1, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzpe;-><init>(IZIZILcom/google/android/gms/internal/zzmr;)V

    return-void
.end method
