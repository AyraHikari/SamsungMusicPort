.class public final Lcom/google/android/gms/internal/zzdse;
.super Lcom/google/android/gms/internal/zzffu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzffu<",
        "Lcom/google/android/gms/internal/zzdse;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Lcom/google/android/gms/internal/zzdse;


# instance fields
.field private a:Lcom/google/android/gms/internal/zzdsg;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzdse;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdse;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzdse;->b:Lcom/google/android/gms/internal/zzdse;

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

.method public static a(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzfge;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzdse;->b:Lcom/google/android/gms/internal/zzdse;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzffu;->zza(Lcom/google/android/gms/internal/zzffu;Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzffu;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/zzdse;

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/zzdsg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdse;->a:Lcom/google/android/gms/internal/zzdsg;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzdsg;->d()Lcom/google/android/gms/internal/zzdsg;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdse;->a:Lcom/google/android/gms/internal/zzdsg;

    return-object v0
.end method
