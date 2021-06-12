.class final Lcom/google/android/gms/internal/zzdqp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdpw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzdpw<",
        "Lcom/google/android/gms/internal/zzdpu;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final d(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdpu;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzdsi;->a(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdsi;

    move-result-object p1

    instance-of v0, p1, Lcom/google/android/gms/internal/zzdsi;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzdsi;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdsi;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzdvk;->a(II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdsi;->b()Lcom/google/android/gms/internal/zzdsk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdsk;->b()Lcom/google/android/gms/internal/zzdsg;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdqv;->a(Lcom/google/android/gms/internal/zzdsg;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdsi;->b()Lcom/google/android/gms/internal/zzdsk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdsk;->b()Lcom/google/android/gms/internal/zzdsg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdsg;->a()Lcom/google/android/gms/internal/zzdsm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdsm;->a()Lcom/google/android/gms/internal/zzdso;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzdqv;->a(Lcom/google/android/gms/internal/zzdso;)Lcom/google/android/gms/internal/zzdur;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdsi;->c()Lcom/google/android/gms/internal/zzfes;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfes;->toByteArray()[B

    move-result-object p1

    invoke-static {v2}, Lcom/google/android/gms/internal/zzdup;->a(Lcom/google/android/gms/internal/zzdur;)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance p1, Ljava/security/spec/ECPrivateKeySpec;

    invoke-direct {p1, v3, v2}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    const-string v2, "EC"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/security/interfaces/ECPrivateKey;

    new-instance v7, Lcom/google/android/gms/internal/zzdqx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdsg;->b()Lcom/google/android/gms/internal/zzdsc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdsc;->a()Lcom/google/android/gms/internal/zzdtd;

    move-result-object p1

    invoke-direct {v7, p1}, Lcom/google/android/gms/internal/zzdqx;-><init>(Lcom/google/android/gms/internal/zzdtd;)V

    new-instance p1, Lcom/google/android/gms/internal/zzduk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdsm;->c()Lcom/google/android/gms/internal/zzfes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzfes;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdsm;->b()Lcom/google/android/gms/internal/zzdsq;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzdqv;->a(Lcom/google/android/gms/internal/zzdsq;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdsg;->c()Lcom/google/android/gms/internal/zzdsa;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdqv;->a(Lcom/google/android/gms/internal/zzdsa;)Lcom/google/android/gms/internal/zzdus;

    move-result-object v6

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/zzduk;-><init>(Ljava/security/interfaces/ECPrivateKey;[BLjava/lang/String;Lcom/google/android/gms/internal/zzdus;Lcom/google/android/gms/internal/zzduj;)V

    check-cast p1, Lcom/google/android/gms/internal/zzdpu;

    return-object p1

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected EciesAeadHkdfPrivateKey proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzfge; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected serialized EciesAeadHkdfPrivateKey proto"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

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

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdqp;->d(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdpu;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/zzfhe;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/zzdsi;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzdsi;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdsi;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzdvk;->a(II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdsi;->b()Lcom/google/android/gms/internal/zzdsk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdsk;->b()Lcom/google/android/gms/internal/zzdsg;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdqv;->a(Lcom/google/android/gms/internal/zzdsg;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdsi;->b()Lcom/google/android/gms/internal/zzdsk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdsk;->b()Lcom/google/android/gms/internal/zzdsg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdsg;->a()Lcom/google/android/gms/internal/zzdsm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdsm;->a()Lcom/google/android/gms/internal/zzdso;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzdqv;->a(Lcom/google/android/gms/internal/zzdso;)Lcom/google/android/gms/internal/zzdur;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdsi;->c()Lcom/google/android/gms/internal/zzfes;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfes;->toByteArray()[B

    move-result-object p1

    invoke-static {v2}, Lcom/google/android/gms/internal/zzdup;->a(Lcom/google/android/gms/internal/zzdur;)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance p1, Ljava/security/spec/ECPrivateKeySpec;

    invoke-direct {p1, v3, v2}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    const-string v2, "EC"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/security/interfaces/ECPrivateKey;

    new-instance v7, Lcom/google/android/gms/internal/zzdqx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdsg;->b()Lcom/google/android/gms/internal/zzdsc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdsc;->a()Lcom/google/android/gms/internal/zzdtd;

    move-result-object p1

    invoke-direct {v7, p1}, Lcom/google/android/gms/internal/zzdqx;-><init>(Lcom/google/android/gms/internal/zzdtd;)V

    new-instance p1, Lcom/google/android/gms/internal/zzduk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdsm;->c()Lcom/google/android/gms/internal/zzfes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzfes;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdsm;->b()Lcom/google/android/gms/internal/zzdsq;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzdqv;->a(Lcom/google/android/gms/internal/zzdsq;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdsg;->c()Lcom/google/android/gms/internal/zzdsa;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdqv;->a(Lcom/google/android/gms/internal/zzdsa;)Lcom/google/android/gms/internal/zzdus;

    move-result-object v6

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/zzduk;-><init>(Ljava/security/interfaces/ECPrivateKey;[BLjava/lang/String;Lcom/google/android/gms/internal/zzdus;Lcom/google/android/gms/internal/zzduj;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected EciesAeadHkdfPrivateKey proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzfhe;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzdse;->a(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdse;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdqp;->b(Lcom/google/android/gms/internal/zzfhe;)Lcom/google/android/gms/internal/zzfhe;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzfge; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "invalid EciesAeadHkdf key format"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final b(Lcom/google/android/gms/internal/zzfhe;)Lcom/google/android/gms/internal/zzfhe;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/zzdse;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzdse;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdse;->a()Lcom/google/android/gms/internal/zzdsg;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdqv;->a(Lcom/google/android/gms/internal/zzdsg;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdse;->a()Lcom/google/android/gms/internal/zzdsg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdsg;->a()Lcom/google/android/gms/internal/zzdsm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdsm;->a()Lcom/google/android/gms/internal/zzdso;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdqv;->a(Lcom/google/android/gms/internal/zzdso;)Lcom/google/android/gms/internal/zzdur;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdup;->a(Lcom/google/android/gms/internal/zzdur;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    const-string v1, "EC"

    invoke-static {v1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPublicKey;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/ECPrivateKey;

    invoke-interface {v1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/zzdsk;->e()Lcom/google/android/gms/internal/zzdsk$zza;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzdsk$zza;->a(I)Lcom/google/android/gms/internal/zzdsk$zza;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdse;->a()Lcom/google/android/gms/internal/zzdsg;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/zzdsk$zza;->a(Lcom/google/android/gms/internal/zzdsg;)Lcom/google/android/gms/internal/zzdsk$zza;

    move-result-object p1

    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzfes;->zzaz([B)Lcom/google/android/gms/internal/zzfes;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzdsk$zza;->a(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdsk$zza;

    move-result-object p1

    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzfes;->zzaz([B)Lcom/google/android/gms/internal/zzfes;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzdsk$zza;->b(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdsk$zza;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzffu$zza;->zzcxt()Lcom/google/android/gms/internal/zzffu;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzffu;

    check-cast p1, Lcom/google/android/gms/internal/zzdsk;

    invoke-static {}, Lcom/google/android/gms/internal/zzdsi;->d()Lcom/google/android/gms/internal/zzdsi$zza;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzdsi$zza;->a(I)Lcom/google/android/gms/internal/zzdsi$zza;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzdsi$zza;->a(Lcom/google/android/gms/internal/zzdsk;)Lcom/google/android/gms/internal/zzdsi$zza;

    move-result-object p1

    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzfes;->zzaz([B)Lcom/google/android/gms/internal/zzfes;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzdsi$zza;->a(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdsi$zza;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzffu$zza;->zzcxt()Lcom/google/android/gms/internal/zzffu;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzffu;

    return-object p1

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected EciesAeadHkdfKeyFormat proto"

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdqp;->b(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzfhe;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzdsi;

    invoke-static {}, Lcom/google/android/gms/internal/zzdsy;->d()Lcom/google/android/gms/internal/zzdsy$zza;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdsy$zza;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/zzdsy$zza;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfek;->toByteString()Lcom/google/android/gms/internal/zzfes;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzdsy$zza;->a(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdsy$zza;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/zzdsy$zzb;->zzlwg:Lcom/google/android/gms/internal/zzdsy$zzb;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzdsy$zza;->a(Lcom/google/android/gms/internal/zzdsy$zzb;)Lcom/google/android/gms/internal/zzdsy$zza;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzffu$zza;->zzcxt()Lcom/google/android/gms/internal/zzffu;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzffu;

    check-cast p1, Lcom/google/android/gms/internal/zzdsy;

    return-object p1
.end method
