.class public final Lcom/google/android/gms/internal/zzdtl;
.super Lcom/google/android/gms/internal/zzffu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzdtl$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzffu<",
        "Lcom/google/android/gms/internal/zzdtl;",
        "Lcom/google/android/gms/internal/zzdtl$zza;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:Lcom/google/android/gms/internal/zzdtl;


# instance fields
.field private a:I

.field private b:Lcom/google/android/gms/internal/zzdtn;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzdtl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdtl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzdtl;->c:Lcom/google/android/gms/internal/zzdtl;

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

.method public static a(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdtl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzfge;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzdtl;->c:Lcom/google/android/gms/internal/zzdtl;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzffu;->zza(Lcom/google/android/gms/internal/zzffu;Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzffu;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/zzdtl;

    return-object p0
.end method

.method private final a(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzdtl;->a:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzdtl;I)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdtl;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzdtl;Lcom/google/android/gms/internal/zzdtn;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdtl;->a(Lcom/google/android/gms/internal/zzdtn;)V

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/zzdtn;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdtl;->b:Lcom/google/android/gms/internal/zzdtn;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public static c()Lcom/google/android/gms/internal/zzdtl$zza;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/zzdtl;->c:Lcom/google/android/gms/internal/zzdtl;

    sget v1, Lcom/google/android/gms/internal/zzffu$zzg;->zzphj:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/zzffu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzffu$zza;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzffu$zza;->zza(Lcom/google/android/gms/internal/zzffu;)Lcom/google/android/gms/internal/zzffu$zza;

    check-cast v1, Lcom/google/android/gms/internal/zzffu$zza;

    check-cast v1, Lcom/google/android/gms/internal/zzdtl$zza;

    return-object v1
.end method

.method static synthetic d()Lcom/google/android/gms/internal/zzdtl;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzdtl;->c:Lcom/google/android/gms/internal/zzdtl;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzdtl;->a:I

    return v0
.end method

.method public final b()Lcom/google/android/gms/internal/zzdtn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdtl;->b:Lcom/google/android/gms/internal/zzdtn;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzdtn;->b()Lcom/google/android/gms/internal/zzdtn;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdtl;->b:Lcom/google/android/gms/internal/zzdtn;

    return-object v0
.end method
