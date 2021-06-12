.class public final Lcom/google/android/gms/internal/zzdtf;
.super Lcom/google/android/gms/internal/zzffu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzdtf$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzffu<",
        "Lcom/google/android/gms/internal/zzdtf;",
        "Lcom/google/android/gms/internal/zzdtf$zza;",
        ">;"
    }
.end annotation


# static fields
.field private static final f:Lcom/google/android/gms/internal/zzdtf;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Z

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzdtf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdtf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzdtf;->f:Lcom/google/android/gms/internal/zzdtf;

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

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdtf;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdtf;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdtf;->e:Ljava/lang/String;

    return-void
.end method

.method private final a(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzdtf;->c:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzdtf;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdtf;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzdtf;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdtf;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzdtf;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdtf;->a(Z)V

    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdtf;->a:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzdtf;->d:Z

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/zzdtf;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdtf;->b(Ljava/lang/String;)V

    return-void
.end method

.method private final b(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdtf;->b:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method static synthetic c(Lcom/google/android/gms/internal/zzdtf;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdtf;->c(Ljava/lang/String;)V

    return-void
.end method

.method private final c(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdtf;->e:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public static f()Lcom/google/android/gms/internal/zzdtf$zza;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/zzdtf;->f:Lcom/google/android/gms/internal/zzdtf;

    sget v1, Lcom/google/android/gms/internal/zzffu$zzg;->zzphj:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/zzffu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzffu$zza;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzffu$zza;->zza(Lcom/google/android/gms/internal/zzffu;)Lcom/google/android/gms/internal/zzffu$zza;

    check-cast v1, Lcom/google/android/gms/internal/zzffu$zza;

    check-cast v1, Lcom/google/android/gms/internal/zzdtf$zza;

    return-object v1
.end method

.method static synthetic g()Lcom/google/android/gms/internal/zzdtf;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzdtf;->f:Lcom/google/android/gms/internal/zzdtf;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdtf;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdtf;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzdtf;->c:I

    return v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzdtf;->d:Z

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdtf;->e:Ljava/lang/String;

    return-object v0
.end method
