.class public final Lcom/google/android/gms/internal/zzdrs;
.super Lcom/google/android/gms/internal/zzffu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzdrs$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzffu<",
        "Lcom/google/android/gms/internal/zzdrs;",
        "Lcom/google/android/gms/internal/zzdrs$zza;",
        ">;"
    }
.end annotation


# static fields
.field private static final d:Lcom/google/android/gms/internal/zzdrs;


# instance fields
.field private a:I

.field private b:Lcom/google/android/gms/internal/zzdrw;

.field private c:Lcom/google/android/gms/internal/zzfes;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzdrs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdrs;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzdrs;->d:Lcom/google/android/gms/internal/zzdrs;

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

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdrs;->c:Lcom/google/android/gms/internal/zzfes;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdrs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzfge;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzdrs;->d:Lcom/google/android/gms/internal/zzdrs;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzffu;->zza(Lcom/google/android/gms/internal/zzffu;Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzffu;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/zzdrs;

    return-object p0
.end method

.method private final a(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzdrs;->a:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzdrs;I)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdrs;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzdrs;Lcom/google/android/gms/internal/zzdrw;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdrs;->a(Lcom/google/android/gms/internal/zzdrw;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzdrs;Lcom/google/android/gms/internal/zzfes;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdrs;->b(Lcom/google/android/gms/internal/zzfes;)V

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/zzdrw;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdrs;->b:Lcom/google/android/gms/internal/zzdrw;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private final b(Lcom/google/android/gms/internal/zzfes;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdrs;->c:Lcom/google/android/gms/internal/zzfes;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public static c()Lcom/google/android/gms/internal/zzdrs$zza;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/zzdrs;->d:Lcom/google/android/gms/internal/zzdrs;

    sget v1, Lcom/google/android/gms/internal/zzffu$zzg;->zzphj:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/zzffu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzffu$zza;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzffu$zza;->zza(Lcom/google/android/gms/internal/zzffu;)Lcom/google/android/gms/internal/zzffu$zza;

    check-cast v1, Lcom/google/android/gms/internal/zzffu$zza;

    check-cast v1, Lcom/google/android/gms/internal/zzdrs$zza;

    return-object v1
.end method

.method static synthetic d()Lcom/google/android/gms/internal/zzdrs;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzdrs;->d:Lcom/google/android/gms/internal/zzdrs;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzdrs;->a:I

    return v0
.end method

.method public final b()Lcom/google/android/gms/internal/zzfes;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdrs;->c:Lcom/google/android/gms/internal/zzfes;

    return-object v0
.end method
