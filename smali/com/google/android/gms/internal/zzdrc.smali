.class public final Lcom/google/android/gms/internal/zzdrc;
.super Lcom/google/android/gms/internal/zzffu;

# interfaces
.implements Lcom/google/android/gms/internal/zzfhg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzdrc$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzffu<",
        "Lcom/google/android/gms/internal/zzdrc;",
        "Lcom/google/android/gms/internal/zzdrc$zza;",
        ">;",
        "Lcom/google/android/gms/internal/zzfhg;"
    }
.end annotation


# static fields
.field private static final d:Lcom/google/android/gms/internal/zzdrc;


# instance fields
.field private a:I

.field private b:Lcom/google/android/gms/internal/zzdrg;

.field private c:Lcom/google/android/gms/internal/zzdss;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzdrc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdrc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzdrc;->d:Lcom/google/android/gms/internal/zzdrc;

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

.method public static a(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdrc;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzfge;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzdrc;->d:Lcom/google/android/gms/internal/zzdrc;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzffu;->zza(Lcom/google/android/gms/internal/zzffu;Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzffu;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/zzdrc;

    return-object p0
.end method

.method private final a(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzdrc;->a:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzdrc;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdrc;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzdrc;Lcom/google/android/gms/internal/zzdrg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdrc;->a(Lcom/google/android/gms/internal/zzdrg;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzdrc;Lcom/google/android/gms/internal/zzdss;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdrc;->a(Lcom/google/android/gms/internal/zzdss;)V

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/zzdrg;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdrc;->b:Lcom/google/android/gms/internal/zzdrg;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private final a(Lcom/google/android/gms/internal/zzdss;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdrc;->c:Lcom/google/android/gms/internal/zzdss;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public static d()Lcom/google/android/gms/internal/zzdrc$zza;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/zzdrc;->d:Lcom/google/android/gms/internal/zzdrc;

    sget v1, Lcom/google/android/gms/internal/zzffu$zzg;->zzphj:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/zzffu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzffu$zza;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzffu$zza;->zza(Lcom/google/android/gms/internal/zzffu;)Lcom/google/android/gms/internal/zzffu$zza;

    check-cast v1, Lcom/google/android/gms/internal/zzffu$zza;

    check-cast v1, Lcom/google/android/gms/internal/zzdrc$zza;

    return-object v1
.end method

.method static synthetic e()Lcom/google/android/gms/internal/zzdrc;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzdrc;->d:Lcom/google/android/gms/internal/zzdrc;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzdrc;->a:I

    return v0
.end method

.method public final b()Lcom/google/android/gms/internal/zzdrg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdrc;->b:Lcom/google/android/gms/internal/zzdrg;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzdrg;->e()Lcom/google/android/gms/internal/zzdrg;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdrc;->b:Lcom/google/android/gms/internal/zzdrg;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/zzdss;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdrc;->c:Lcom/google/android/gms/internal/zzdss;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzdss;->e()Lcom/google/android/gms/internal/zzdss;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdrc;->c:Lcom/google/android/gms/internal/zzdss;

    return-object v0
.end method
