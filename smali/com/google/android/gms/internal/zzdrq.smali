.class public final Lcom/google/android/gms/internal/zzdrq;
.super Lcom/google/android/gms/internal/zzffu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzffu<",
        "Lcom/google/android/gms/internal/zzdrq;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Lcom/google/android/gms/internal/zzdrq;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzdrq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdrq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzdrq;->b:Lcom/google/android/gms/internal/zzdrq;

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

.method public static b()Lcom/google/android/gms/internal/zzdrq;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzdrq;->b:Lcom/google/android/gms/internal/zzdrq;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzdrq;->a:I

    return v0
.end method
