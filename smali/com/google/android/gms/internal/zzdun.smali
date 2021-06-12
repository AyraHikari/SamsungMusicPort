.class public final Lcom/google/android/gms/internal/zzdun;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/security/interfaces/ECPublicKey;


# direct methods
.method public constructor <init>(Ljava/security/interfaces/ECPublicKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdun;->a:Ljava/security/interfaces/ECPublicKey;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;[B[BILcom/google/android/gms/internal/zzdus;)Lcom/google/android/gms/internal/zzduo;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdun;->a:Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzduu;->d:Lcom/google/android/gms/internal/zzduu;

    const-string v2, "EC"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzduu;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/KeyPairGenerator;

    invoke-virtual {v1, v0}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPublicKey;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/ECPrivateKey;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdun;->a:Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v2}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzdun;->a:Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v3}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzdup;->a(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V

    sget-object v2, Lcom/google/android/gms/internal/zzduu;->c:Lcom/google/android/gms/internal/zzduu;

    const-string v3, "ECDH"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzduu;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/crypto/KeyAgreement;

    invoke-virtual {v2, v0}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdun;->a:Ljava/security/interfaces/ECPublicKey;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    invoke-virtual {v2}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object v0

    invoke-interface {v1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v2

    invoke-interface {v1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzdup;->a(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V

    invoke-static {v2}, Lcom/google/android/gms/internal/zzdup;->a(Ljava/security/spec/EllipticCurve;)I

    move-result v2

    sget-object v4, Lcom/google/android/gms/internal/zzduq;->a:[I

    invoke-virtual {p5}, Lcom/google/android/gms/internal/zzdus;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    packed-switch v4, :pswitch_data_0

    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0xf

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "invalid format:"

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    add-int/2addr v2, v3

    new-array p5, v2, [B

    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    array-length v7, v4

    sub-int/2addr v2, v7

    array-length v7, v4

    invoke-static {v4, v6, p5, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    int-to-byte v1, v1

    aput-byte v1, p5, v6

    goto :goto_1

    :pswitch_1
    mul-int/lit8 p5, v2, 0x2

    add-int/2addr p5, v3

    new-array v4, p5, [B

    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    array-length v8, v1

    sub-int/2addr p5, v8

    array-length v8, v1

    invoke-static {v1, v6, v4, p5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v3

    array-length p5, v7

    sub-int/2addr v2, p5

    array-length p5, v7

    invoke-static {v7, v6, v4, v2, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p5, 0x4

    aput-byte p5, v4, v6

    move-object p5, v4

    :goto_1
    new-array v1, v5, [[B

    aput-object p5, v1, v6

    aput-object v0, v1, v3

    invoke-static {v1}, Lcom/google/android/gms/internal/zzdua;->a([[B)[B

    move-result-object v0

    invoke-static {p1, v0, p2, p3, p4}, Lcom/google/android/gms/internal/zzdvd;->a(Ljava/lang/String;[B[B[BI)[B

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/zzduo;

    invoke-direct {p2, p5, p1}, Lcom/google/android/gms/internal/zzduo;-><init>([B[B)V

    return-object p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
