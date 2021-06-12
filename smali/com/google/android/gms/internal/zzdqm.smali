.class final Lcom/google/android/gms/internal/zzdqm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdpw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzdpw<",
        "Lcom/google/android/gms/internal/zzdpp;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static c(Lcom/google/android/gms/internal/zzfhe;)Lcom/google/android/gms/internal/zzdpp;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    instance-of v0, p0, Lcom/google/android/gms/internal/zzdtl;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/zzdtl;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdtl;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzdvk;->a(II)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdtl;->b()Lcom/google/android/gms/internal/zzdtn;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdtn;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzdpz;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/zzdpy;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/zzdpy;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/zzdpp;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "expected KmsAeadKey proto"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static d(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdpp;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/zzdtl;->a(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdtl;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzdqm;->c(Lcom/google/android/gms/internal/zzfhe;)Lcom/google/android/gms/internal/zzdpp;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzfge; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected KmsAeadKey proto"

    invoke-direct {v0, v1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/zzfes;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/zzdqm;->d(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdpp;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/zzfhe;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/zzdqm;->c(Lcom/google/android/gms/internal/zzfhe;)Lcom/google/android/gms/internal/zzdpp;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzfhe;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzdtn;->a(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdtn;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdqm;->b(Lcom/google/android/gms/internal/zzfhe;)Lcom/google/android/gms/internal/zzfhe;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzfge; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected serialized KmsAeadKeyFormat proto"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final b(Lcom/google/android/gms/internal/zzfhe;)Lcom/google/android/gms/internal/zzfhe;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/zzdtn;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzdtn;

    invoke-static {}, Lcom/google/android/gms/internal/zzdtl;->c()Lcom/google/android/gms/internal/zzdtl$zza;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzdtl$zza;->a(Lcom/google/android/gms/internal/zzdtn;)Lcom/google/android/gms/internal/zzdtl$zza;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzdtl$zza;->a(I)Lcom/google/android/gms/internal/zzdtl$zza;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzffu$zza;->zzcxt()Lcom/google/android/gms/internal/zzffu;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzffu;

    return-object p1

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected KmsAeadKeyFormat proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdsy;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdqm;->b(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzfhe;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzdtl;

    invoke-static {}, Lcom/google/android/gms/internal/zzdsy;->d()Lcom/google/android/gms/internal/zzdsy$zza;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.KmsAeadKey"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdsy$zza;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/zzdsy$zza;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfek;->toByteString()Lcom/google/android/gms/internal/zzfes;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzdsy$zza;->a(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdsy$zza;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/zzdsy$zzb;->zzlwi:Lcom/google/android/gms/internal/zzdsy$zzb;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzdsy$zza;->a(Lcom/google/android/gms/internal/zzdsy$zzb;)Lcom/google/android/gms/internal/zzdsy$zza;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzffu$zza;->zzcxt()Lcom/google/android/gms/internal/zzffu;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzffu;

    check-cast p1, Lcom/google/android/gms/internal/zzdsy;

    return-object p1
.end method
