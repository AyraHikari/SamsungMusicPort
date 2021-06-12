.class public final Lcom/google/android/gms/internal/zzdtj;
.super Lcom/google/android/gms/internal/zzffu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzdtj$zza;,
        Lcom/google/android/gms/internal/zzdtj$zzb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzffu<",
        "Lcom/google/android/gms/internal/zzdtj;",
        "Lcom/google/android/gms/internal/zzdtj$zza;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:Lcom/google/android/gms/internal/zzdtj;


# instance fields
.field private a:I

.field private b:Lcom/google/android/gms/internal/zzfgd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzfgd<",
            "Lcom/google/android/gms/internal/zzdtj$zzb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzdtj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdtj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzdtj;->c:Lcom/google/android/gms/internal/zzdtj;

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

    invoke-static {}, Lcom/google/android/gms/internal/zzdtj;->zzcxo()Lcom/google/android/gms/internal/zzfgd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdtj;->b:Lcom/google/android/gms/internal/zzfgd;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/zzdtj$zza;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/zzdtj;->c:Lcom/google/android/gms/internal/zzdtj;

    sget v1, Lcom/google/android/gms/internal/zzffu$zzg;->zzphj:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/zzffu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzffu$zza;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzffu$zza;->zza(Lcom/google/android/gms/internal/zzffu;)Lcom/google/android/gms/internal/zzffu$zza;

    check-cast v1, Lcom/google/android/gms/internal/zzffu$zza;

    check-cast v1, Lcom/google/android/gms/internal/zzdtj$zza;

    return-object v1
.end method

.method private final a(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzdtj;->a:I

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/zzdtj$zzb;)V
    .locals 2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdtj;->b:Lcom/google/android/gms/internal/zzfgd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzfgd;->zzcvi()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdtj;->b:Lcom/google/android/gms/internal/zzfgd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzfgd;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    shl-int/lit8 v1, v1, 0x1

    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzfgd;->zzly(I)Lcom/google/android/gms/internal/zzfgd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdtj;->b:Lcom/google/android/gms/internal/zzfgd;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdtj;->b:Lcom/google/android/gms/internal/zzfgd;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzfgd;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzdtj;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdtj;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzdtj;Lcom/google/android/gms/internal/zzdtj$zzb;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdtj;->a(Lcom/google/android/gms/internal/zzdtj$zzb;)V

    return-void
.end method

.method static synthetic b()Lcom/google/android/gms/internal/zzdtj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzdtj;->c:Lcom/google/android/gms/internal/zzdtj;

    return-object v0
.end method
