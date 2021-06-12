.class public final Lcom/google/android/gms/internal/zzdre;
.super Lcom/google/android/gms/internal/zzffu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzffu<",
        "Lcom/google/android/gms/internal/zzdre;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:Lcom/google/android/gms/internal/zzdre;


# instance fields
.field private a:Lcom/google/android/gms/internal/zzdri;

.field private b:Lcom/google/android/gms/internal/zzdsu;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzdre;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdre;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzdre;->c:Lcom/google/android/gms/internal/zzdre;

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

.method public static a(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdre;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzfge;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzdre;->c:Lcom/google/android/gms/internal/zzdre;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzffu;->zza(Lcom/google/android/gms/internal/zzffu;Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzffu;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/zzdre;

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/zzdri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdre;->a:Lcom/google/android/gms/internal/zzdri;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzdri;->c()Lcom/google/android/gms/internal/zzdri;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdre;->a:Lcom/google/android/gms/internal/zzdri;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/zzdsu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdre;->b:Lcom/google/android/gms/internal/zzdsu;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzdsu;->c()Lcom/google/android/gms/internal/zzdsu;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdre;->b:Lcom/google/android/gms/internal/zzdsu;

    return-object v0
.end method
