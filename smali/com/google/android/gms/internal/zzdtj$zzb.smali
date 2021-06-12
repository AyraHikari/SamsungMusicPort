.class public final Lcom/google/android/gms/internal/zzdtj$zzb;
.super Lcom/google/android/gms/internal/zzffu;

# interfaces
.implements Lcom/google/android/gms/internal/zzfhg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzdtj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzdtj$zzb$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzffu<",
        "Lcom/google/android/gms/internal/zzdtj$zzb;",
        "Lcom/google/android/gms/internal/zzdtj$zzb$zza;",
        ">;",
        "Lcom/google/android/gms/internal/zzfhg;"
    }
.end annotation


# static fields
.field private static final e:Lcom/google/android/gms/internal/zzdtj$zzb;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzdtj$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdtj$zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzdtj$zzb;->e:Lcom/google/android/gms/internal/zzdtj$zzb;

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

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdtj$zzb;->a:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/zzdtj$zzb$zza;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/zzdtj$zzb;->e:Lcom/google/android/gms/internal/zzdtj$zzb;

    sget v1, Lcom/google/android/gms/internal/zzffu$zzg;->zzphj:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/zzffu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzffu$zza;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzffu$zza;->zza(Lcom/google/android/gms/internal/zzffu;)Lcom/google/android/gms/internal/zzffu$zza;

    check-cast v1, Lcom/google/android/gms/internal/zzffu$zza;

    check-cast v1, Lcom/google/android/gms/internal/zzdtj$zzb$zza;

    return-object v1
.end method

.method private final a(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzdtj$zzb;->c:I

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/zzdtb;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdtb;->zzhq()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/zzdtj$zzb;->b:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzdtj$zzb;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdtj$zzb;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzdtj$zzb;Lcom/google/android/gms/internal/zzdtb;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdtj$zzb;->a(Lcom/google/android/gms/internal/zzdtb;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzdtj$zzb;Lcom/google/android/gms/internal/zzdtt;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdtj$zzb;->a(Lcom/google/android/gms/internal/zzdtt;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzdtj$zzb;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdtj$zzb;->a(Ljava/lang/String;)V

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/zzdtt;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdtt;->zzhq()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/zzdtj$zzb;->d:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private final a(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdtj$zzb;->a:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method static synthetic b()Lcom/google/android/gms/internal/zzdtj$zzb;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzdtj$zzb;->e:Lcom/google/android/gms/internal/zzdtj$zzb;

    return-object v0
.end method
