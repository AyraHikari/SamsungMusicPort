.class public final Lcom/google/android/gms/internal/zzdrw;
.super Lcom/google/android/gms/internal/zzffu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzffu<",
        "Lcom/google/android/gms/internal/zzdrw;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/android/gms/internal/zzdrw;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzdrw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdrw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzdrw;->a:Lcom/google/android/gms/internal/zzdrw;

    sget v1, Lcom/google/android/gms/internal/zzffu$zzg;->zzphh:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/zzffu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzffu;->zzpgr:Lcom/google/android/gms/internal/zzfio;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfio;->zzbiy()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzffu;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/zzdrw;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzdrw;->a:Lcom/google/android/gms/internal/zzdrw;

    return-object v0
.end method
