.class public final Lcom/google/android/gms/internal/zzdtv;
.super Lcom/google/android/gms/internal/zzffu;

# interfaces
.implements Lcom/google/android/gms/internal/zzfhg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzdtv$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzffu<",
        "Lcom/google/android/gms/internal/zzdtv;",
        "Lcom/google/android/gms/internal/zzdtv$zza;",
        ">;",
        "Lcom/google/android/gms/internal/zzfhg;"
    }
.end annotation


# static fields
.field private static final c:Lcom/google/android/gms/internal/zzdtv;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/google/android/gms/internal/zzfgd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzfgd<",
            "Lcom/google/android/gms/internal/zzdtf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzdtv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdtv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzdtv;->c:Lcom/google/android/gms/internal/zzdtv;

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

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdtv;->a:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/zzdtv;->zzcxo()Lcom/google/android/gms/internal/zzfgd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdtv;->b:Lcom/google/android/gms/internal/zzfgd;

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/zzdtf;)V
    .locals 2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdtv;->b:Lcom/google/android/gms/internal/zzfgd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzfgd;->zzcvi()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdtv;->b:Lcom/google/android/gms/internal/zzfgd;

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

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdtv;->b:Lcom/google/android/gms/internal/zzfgd;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdtv;->b:Lcom/google/android/gms/internal/zzfgd;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzfgd;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzdtv;Lcom/google/android/gms/internal/zzdtf;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdtv;->a(Lcom/google/android/gms/internal/zzdtf;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzdtv;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdtv;->a(Ljava/lang/String;)V

    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdtv;->a:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public static b()Lcom/google/android/gms/internal/zzdtv$zza;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/zzdtv;->c:Lcom/google/android/gms/internal/zzdtv;

    sget v1, Lcom/google/android/gms/internal/zzffu$zzg;->zzphj:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/zzffu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzffu$zza;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzffu$zza;->zza(Lcom/google/android/gms/internal/zzffu;)Lcom/google/android/gms/internal/zzffu$zza;

    check-cast v1, Lcom/google/android/gms/internal/zzffu$zza;

    check-cast v1, Lcom/google/android/gms/internal/zzdtv$zza;

    return-object v1
.end method

.method static synthetic c()Lcom/google/android/gms/internal/zzdtv;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzdtv;->c:Lcom/google/android/gms/internal/zzdtv;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzdtf;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdtv;->b:Lcom/google/android/gms/internal/zzfgd;

    return-object v0
.end method
