.class public final Lcom/google/android/gms/internal/zzdpx;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/google/android/gms/internal/zzdth;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzdth;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdpx;->a:Lcom/google/android/gms/internal/zzdth;

    return-void
.end method

.method static final a(Lcom/google/android/gms/internal/zzdth;)Lcom/google/android/gms/internal/zzdpx;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdth;->c()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzdpx;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzdpx;-><init>(Lcom/google/android/gms/internal/zzdth;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "empty keyset"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method final a()Lcom/google/android/gms/internal/zzdth;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdpx;->a:Lcom/google/android/gms/internal/zzdth;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdpx;->a:Lcom/google/android/gms/internal/zzdth;

    invoke-static {}, Lcom/google/android/gms/internal/zzdtj;->a()Lcom/google/android/gms/internal/zzdtj$zza;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdth;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzdtj$zza;->a(I)Lcom/google/android/gms/internal/zzdtj$zza;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdth;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzdth$zzb;

    invoke-static {}, Lcom/google/android/gms/internal/zzdtj$zzb;->a()Lcom/google/android/gms/internal/zzdtj$zzb$zza;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzdth$zzb;->b()Lcom/google/android/gms/internal/zzdsy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzdsy;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzdtj$zzb$zza;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/zzdtj$zzb$zza;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzdth$zzb;->c()Lcom/google/android/gms/internal/zzdtb;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzdtj$zzb$zza;->a(Lcom/google/android/gms/internal/zzdtb;)Lcom/google/android/gms/internal/zzdtj$zzb$zza;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzdth$zzb;->e()Lcom/google/android/gms/internal/zzdtt;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzdtj$zzb$zza;->a(Lcom/google/android/gms/internal/zzdtt;)Lcom/google/android/gms/internal/zzdtj$zzb$zza;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzdth$zzb;->d()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/zzdtj$zzb$zza;->a(I)Lcom/google/android/gms/internal/zzdtj$zzb$zza;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzffu$zza;->zzcxt()Lcom/google/android/gms/internal/zzffu;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzffu;

    check-cast v2, Lcom/google/android/gms/internal/zzdtj$zzb;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzdtj$zza;->a(Lcom/google/android/gms/internal/zzdtj$zzb;)Lcom/google/android/gms/internal/zzdtj$zza;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzffu$zza;->zzcxt()Lcom/google/android/gms/internal/zzffu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzffu;

    check-cast v0, Lcom/google/android/gms/internal/zzdtj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzffu;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
