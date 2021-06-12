.class final Lcom/google/android/gms/internal/zzdqq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdpw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzdpw<",
        "Lcom/google/android/gms/internal/zzdpv;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final d(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdpv;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzdsk;->a(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdsk;

    move-result-object p1

    instance-of v0, p1, Lcom/google/android/gms/internal/zzdsk;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzdsk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdsk;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzdvk;->a(II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdsk;->b()Lcom/google/android/gms/internal/zzdsg;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdqv;->a(Lcom/google/android/gms/internal/zzdsg;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdsk;->b()Lcom/google/android/gms/internal/zzdsg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdsg;->a()Lcom/google/android/gms/internal/zzdsm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdsm;->a()Lcom/google/android/gms/internal/zzdso;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzdqv;->a(Lcom/google/android/gms/internal/zzdso;)Lcom/google/android/gms/internal/zzdur;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdsk;->c()Lcom/google/android/gms/internal/zzfes;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzfes;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdsk;->d()Lcom/google/android/gms/internal/zzfes;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfes;->toByteArray()[B

    move-result-object p1

    invoke-static {v2}, Lcom/google/android/gms/internal/zzdup;->a(Lcom/google/android/gms/internal/zzdur;)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    new-instance v4, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v5, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance p1, Ljava/security/spec/ECPoint;

    invoke-direct {p1, v4, v3}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/zzdup;->a(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V

    new-instance v3, Ljava/security/spec/ECPublicKeySpec;

    invoke-direct {v3, p1, v2}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    const-string p1, "EC"

    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/security/interfaces/ECPublicKey;

    new-instance v7, Lcom/google/android/gms/internal/zzdqx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdsg;->b()Lcom/google/android/gms/internal/zzdsc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdsc;->a()Lcom/google/android/gms/internal/zzdtd;

    move-result-object p1

    invoke-direct {v7, p1}, Lcom/google/android/gms/internal/zzdqx;-><init>(Lcom/google/android/gms/internal/zzdtd;)V

    new-instance p1, Lcom/google/android/gms/internal/zzdul;

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

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/zzdul;-><init>(Ljava/security/interfaces/ECPublicKey;[BLjava/lang/String;Lcom/google/android/gms/internal/zzdus;Lcom/google/android/gms/internal/zzduj;)V

    check-cast p1, Lcom/google/android/gms/internal/zzdpv;

    return-object p1

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected EciesAeadHkdfPublicKey proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzfge; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected serialized EciesAeadHkdfPublicKey proto"

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

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdqq;->d(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdpv;

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

    instance-of v0, p1, Lcom/google/android/gms/internal/zzdsk;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzdsk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdsk;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzdvk;->a(II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdsk;->b()Lcom/google/android/gms/internal/zzdsg;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdqv;->a(Lcom/google/android/gms/internal/zzdsg;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdsk;->b()Lcom/google/android/gms/internal/zzdsg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdsg;->a()Lcom/google/android/gms/internal/zzdsm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdsm;->a()Lcom/google/android/gms/internal/zzdso;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzdqv;->a(Lcom/google/android/gms/internal/zzdso;)Lcom/google/android/gms/internal/zzdur;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdsk;->c()Lcom/google/android/gms/internal/zzfes;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzfes;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdsk;->d()Lcom/google/android/gms/internal/zzfes;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfes;->toByteArray()[B

    move-result-object p1

    invoke-static {v2}, Lcom/google/android/gms/internal/zzdup;->a(Lcom/google/android/gms/internal/zzdur;)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    new-instance v4, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v5, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance p1, Ljava/security/spec/ECPoint;

    invoke-direct {p1, v4, v3}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/zzdup;->a(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V

    new-instance v3, Ljava/security/spec/ECPublicKeySpec;

    invoke-direct {v3, p1, v2}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    const-string p1, "EC"

    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/security/interfaces/ECPublicKey;

    new-instance v7, Lcom/google/android/gms/internal/zzdqx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdsg;->b()Lcom/google/android/gms/internal/zzdsc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdsc;->a()Lcom/google/android/gms/internal/zzdtd;

    move-result-object p1

    invoke-direct {v7, p1}, Lcom/google/android/gms/internal/zzdqx;-><init>(Lcom/google/android/gms/internal/zzdtd;)V

    new-instance p1, Lcom/google/android/gms/internal/zzdul;

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

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/zzdul;-><init>(Ljava/security/interfaces/ECPublicKey;[BLjava/lang/String;Lcom/google/android/gms/internal/zzdus;Lcom/google/android/gms/internal/zzduj;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected EciesAeadHkdfPublicKey proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzfhe;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Not implemented."

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Lcom/google/android/gms/internal/zzfhe;)Lcom/google/android/gms/internal/zzfhe;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Not implemented."

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdsy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Not implemented."

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
