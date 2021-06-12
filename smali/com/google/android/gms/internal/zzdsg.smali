.class public final Lcom/google/android/gms/internal/zzdsg;
.super Lcom/google/android/gms/internal/zzffu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzffu<",
        "Lcom/google/android/gms/internal/zzdsg;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final d:Lcom/google/android/gms/internal/zzdsg;


# instance fields
.field private a:Lcom/google/android/gms/internal/zzdsm;

.field private b:Lcom/google/android/gms/internal/zzdsc;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzdsg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdsg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzdsg;->d:Lcom/google/android/gms/internal/zzdsg;

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

.method public static d()Lcom/google/android/gms/internal/zzdsg;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzdsg;->d:Lcom/google/android/gms/internal/zzdsg;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/zzdsm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdsg;->a:Lcom/google/android/gms/internal/zzdsm;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzdsm;->d()Lcom/google/android/gms/internal/zzdsm;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdsg;->a:Lcom/google/android/gms/internal/zzdsm;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/zzdsc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdsg;->b:Lcom/google/android/gms/internal/zzdsc;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzdsc;->b()Lcom/google/android/gms/internal/zzdsc;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdsg;->b:Lcom/google/android/gms/internal/zzdsc;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/zzdsa;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzdsg;->c:I

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdsa;->zzfn(I)Lcom/google/android/gms/internal/zzdsa;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzdsa;->zzlun:Lcom/google/android/gms/internal/zzdsa;

    :cond_0
    return-object v0
.end method
