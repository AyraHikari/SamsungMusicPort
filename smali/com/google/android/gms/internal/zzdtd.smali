.class public final Lcom/google/android/gms/internal/zzdtd;
.super Lcom/google/android/gms/internal/zzffu;

# interfaces
.implements Lcom/google/android/gms/internal/zzfhg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzffu<",
        "Lcom/google/android/gms/internal/zzdtd;",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/google/android/gms/internal/zzfhg;"
    }
.end annotation


# static fields
.field private static final c:Lcom/google/android/gms/internal/zzdtd;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/google/android/gms/internal/zzfes;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzdtd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdtd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzdtd;->c:Lcom/google/android/gms/internal/zzdtd;

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

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdtd;->a:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzfes;->zzpfg:Lcom/google/android/gms/internal/zzfes;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdtd;->b:Lcom/google/android/gms/internal/zzfes;

    return-void
.end method

.method public static c()Lcom/google/android/gms/internal/zzdtd;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzdtd;->c:Lcom/google/android/gms/internal/zzdtd;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdtd;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/zzfes;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdtd;->b:Lcom/google/android/gms/internal/zzfes;

    return-object v0
.end method
