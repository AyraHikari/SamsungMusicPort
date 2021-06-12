.class public final Lcom/google/android/gms/internal/zzdth$zzb;
.super Lcom/google/android/gms/internal/zzffu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzdth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzffu<",
        "Lcom/google/android/gms/internal/zzdth$zzb;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final e:Lcom/google/android/gms/internal/zzdth$zzb;


# instance fields
.field private a:Lcom/google/android/gms/internal/zzdsy;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzdth$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdth$zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzdth$zzb;->e:Lcom/google/android/gms/internal/zzdth$zzb;

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


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdth$zzb;->a:Lcom/google/android/gms/internal/zzdsy;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Lcom/google/android/gms/internal/zzdsy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdth$zzb;->a:Lcom/google/android/gms/internal/zzdsy;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzdsy;->e()Lcom/google/android/gms/internal/zzdsy;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdth$zzb;->a:Lcom/google/android/gms/internal/zzdsy;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/zzdtb;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzdth$zzb;->b:I

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdtb;->zzfu(I)Lcom/google/android/gms/internal/zzdtb;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzdtb;->zzlwp:Lcom/google/android/gms/internal/zzdtb;

    :cond_0
    return-object v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzdth$zzb;->c:I

    return v0
.end method

.method public final e()Lcom/google/android/gms/internal/zzdtt;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzdth$zzb;->d:I

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdtt;->zzgd(I)Lcom/google/android/gms/internal/zzdtt;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzdtt;->zzlxx:Lcom/google/android/gms/internal/zzdtt;

    :cond_0
    return-object v0
.end method
