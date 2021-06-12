.class public final Lcom/google/android/gms/ads/internal/zzao;
.super Lcom/google/android/gms/internal/zzbfm;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# static fields
.field public static final a:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/ads/internal/zzao;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:F

.field public final f:I

.field public final g:Z

.field public final h:Z

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/zzap;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/zzap;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/zzao;->a:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ZZLjava/lang/String;ZFIZZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbfm;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/zzao;->b:Z

    iput-boolean p2, p0, Lcom/google/android/gms/ads/internal/zzao;->c:Z

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzao;->i:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/ads/internal/zzao;->d:Z

    iput p5, p0, Lcom/google/android/gms/ads/internal/zzao;->e:F

    iput p6, p0, Lcom/google/android/gms/ads/internal/zzao;->f:I

    iput-boolean p7, p0, Lcom/google/android/gms/ads/internal/zzao;->g:Z

    iput-boolean p8, p0, Lcom/google/android/gms/ads/internal/zzao;->h:Z

    return-void
.end method

.method public constructor <init>(ZZZFIZZ)V
    .locals 9

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/ads/internal/zzao;-><init>(ZZLjava/lang/String;ZFIZZ)V

    return-void
.end method
