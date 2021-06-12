.class public final Lcom/google/android/gms/internal/zziu$zza;
.super Lcom/google/android/gms/internal/zzffu;

# interfaces
.implements Lcom/google/android/gms/internal/zzfhg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zziu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zziu$zza$zzb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzffu<",
        "Lcom/google/android/gms/internal/zziu$zza;",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/google/android/gms/internal/zzfhg;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/android/gms/internal/zziu$zza;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zziu$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zziu$zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zziu$zza;->a:Lcom/google/android/gms/internal/zziu$zza;

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
