.class public final Lcom/google/android/gms/internal/zzdth;
.super Lcom/google/android/gms/internal/zzffu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzdth$zzb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzffu<",
        "Lcom/google/android/gms/internal/zzdth;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:Lcom/google/android/gms/internal/zzdth;


# instance fields
.field private a:I

.field private b:Lcom/google/android/gms/internal/zzfgd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzfgd<",
            "Lcom/google/android/gms/internal/zzdth$zzb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzdth;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdth;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzdth;->c:Lcom/google/android/gms/internal/zzdth;

    sget v1, Lcom/google/android/gms/internal/zzffu$zzg;->zzphh:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/zzffu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzffu;->zzpgr:Lcom/google/android/gms/internal/zzfio;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfio;->zzbiy()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzffu;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/zzdth;->zzcxo()Lcom/google/android/gms/internal/zzfgd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdth;->b:Lcom/google/android/gms/internal/zzfgd;

    return-void
.end method

.method public static a([B)Lcom/google/android/gms/internal/zzdth;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzfge;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzdth;->c:Lcom/google/android/gms/internal/zzdth;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzffu;->zza(Lcom/google/android/gms/internal/zzffu;[B)Lcom/google/android/gms/internal/zzffu;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/zzdth;

    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzdth;->a:I

    return v0
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzdth$zzb;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdth;->b:Lcom/google/android/gms/internal/zzfgd;

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdth;->b:Lcom/google/android/gms/internal/zzfgd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzfgd;->size()I

    move-result v0

    return v0
.end method
