.class public final Lcom/google/android/gms/internal/zzdsc;
.super Lcom/google/android/gms/internal/zzffu;

# interfaces
.implements Lcom/google/android/gms/internal/zzfhg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzffu<",
        "Lcom/google/android/gms/internal/zzdsc;",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/google/android/gms/internal/zzfhg;"
    }
.end annotation


# static fields
.field private static final b:Lcom/google/android/gms/internal/zzdsc;


# instance fields
.field private a:Lcom/google/android/gms/internal/zzdtd;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzdsc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdsc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzdsc;->b:Lcom/google/android/gms/internal/zzdsc;

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

.method public static b()Lcom/google/android/gms/internal/zzdsc;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzdsc;->b:Lcom/google/android/gms/internal/zzdsc;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/zzdtd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdsc;->a:Lcom/google/android/gms/internal/zzdtd;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzdtd;->c()Lcom/google/android/gms/internal/zzdtd;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdsc;->a:Lcom/google/android/gms/internal/zzdtd;

    return-object v0
.end method
