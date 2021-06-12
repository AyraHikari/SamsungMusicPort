.class public final Lcom/google/android/gms/internal/zzdsy;
.super Lcom/google/android/gms/internal/zzffu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzdsy$zza;,
        Lcom/google/android/gms/internal/zzdsy$zzb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzffu<",
        "Lcom/google/android/gms/internal/zzdsy;",
        "Lcom/google/android/gms/internal/zzdsy$zza;",
        ">;"
    }
.end annotation


# static fields
.field private static final d:Lcom/google/android/gms/internal/zzdsy;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/google/android/gms/internal/zzfes;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzdsy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdsy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzdsy;->d:Lcom/google/android/gms/internal/zzdsy;

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

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdsy;->a:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzfes;->zzpfg:Lcom/google/android/gms/internal/zzfes;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdsy;->b:Lcom/google/android/gms/internal/zzfes;

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/zzdsy$zzb;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdsy$zzb;->zzhq()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/zzdsy;->c:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzdsy;Lcom/google/android/gms/internal/zzdsy$zzb;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdsy;->a(Lcom/google/android/gms/internal/zzdsy$zzb;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzdsy;Lcom/google/android/gms/internal/zzfes;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdsy;->a(Lcom/google/android/gms/internal/zzfes;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzdsy;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdsy;->a(Ljava/lang/String;)V

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/zzfes;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdsy;->b:Lcom/google/android/gms/internal/zzfes;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private final a(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdsy;->a:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public static d()Lcom/google/android/gms/internal/zzdsy$zza;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/zzdsy;->d:Lcom/google/android/gms/internal/zzdsy;

    sget v1, Lcom/google/android/gms/internal/zzffu$zzg;->zzphj:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/zzffu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzffu$zza;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzffu$zza;->zza(Lcom/google/android/gms/internal/zzffu;)Lcom/google/android/gms/internal/zzffu$zza;

    check-cast v1, Lcom/google/android/gms/internal/zzffu$zza;

    check-cast v1, Lcom/google/android/gms/internal/zzdsy$zza;

    return-object v1
.end method

.method public static e()Lcom/google/android/gms/internal/zzdsy;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzdsy;->d:Lcom/google/android/gms/internal/zzdsy;

    return-object v0
.end method

.method static synthetic f()Lcom/google/android/gms/internal/zzdsy;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzdsy;->d:Lcom/google/android/gms/internal/zzdsy;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdsy;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/zzfes;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdsy;->b:Lcom/google/android/gms/internal/zzfes;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/zzdsy$zzb;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzdsy;->c:I

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdsy$zzb;->zzft(I)Lcom/google/android/gms/internal/zzdsy$zzb;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzdsy$zzb;->zzlwj:Lcom/google/android/gms/internal/zzdsy$zzb;

    :cond_0
    return-object v0
.end method
