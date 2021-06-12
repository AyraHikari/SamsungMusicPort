.class public final Lcom/google/android/gms/internal/zzdsm;
.super Lcom/google/android/gms/internal/zzffu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzffu<",
        "Lcom/google/android/gms/internal/zzdsm;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final d:Lcom/google/android/gms/internal/zzdsm;


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/google/android/gms/internal/zzfes;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzdsm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdsm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzdsm;->d:Lcom/google/android/gms/internal/zzdsm;

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

    sget-object v0, Lcom/google/android/gms/internal/zzfes;->zzpfg:Lcom/google/android/gms/internal/zzfes;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdsm;->c:Lcom/google/android/gms/internal/zzfes;

    return-void
.end method

.method public static d()Lcom/google/android/gms/internal/zzdsm;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzdsm;->d:Lcom/google/android/gms/internal/zzdsm;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/zzdso;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzdsm;->a:I

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdso;->zzfq(I)Lcom/google/android/gms/internal/zzdso;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzdso;->zzlvl:Lcom/google/android/gms/internal/zzdso;

    :cond_0
    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/zzdsq;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzdsm;->b:I

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdsq;->zzfr(I)Lcom/google/android/gms/internal/zzdsq;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzdsq;->zzlvs:Lcom/google/android/gms/internal/zzdsq;

    :cond_0
    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/zzfes;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdsm;->c:Lcom/google/android/gms/internal/zzfes;

    return-object v0
.end method
