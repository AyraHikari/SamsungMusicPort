.class public final Lcom/google/android/gms/internal/zzmr;
.super Lcom/google/android/gms/internal/zzbfm;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# static fields
.field public static final a:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzmr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Z

.field public final c:Z

.field public final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzms;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzms;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzmr;->a:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/VideoOptions;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/ads/VideoOptions;->a()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/VideoOptions;->b()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/VideoOptions;->c()Z

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/internal/zzmr;-><init>(ZZZ)V

    return-void
.end method

.method public constructor <init>(ZZZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbfm;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzmr;->b:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzmr;->c:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzmr;->d:Z

    return-void
.end method
