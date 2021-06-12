.class public final Lcom/google/android/gms/internal/zzdvd;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;[B[B[BI)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzduu;->b:Lcom/google/android/gms/internal/zzduu;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzduu;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v1

    mul-int/lit16 v1, v1, 0xff

    if-gt p4, v1, :cond_3

    if-eqz p2, :cond_1

    array-length v1, p2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, p2, p0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v1

    new-array v1, v1, [B

    invoke-direct {p2, v1, p0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, p2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    :goto_1
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1

    new-array p2, p4, [B

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, p1, p0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    const/4 p0, 0x0

    new-array p1, p0, [B

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update([B)V

    invoke-virtual {v0, p3}, Ljavax/crypto/Mac;->update([B)V

    int-to-byte p1, v1

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update(B)V

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p1

    array-length v3, p1

    add-int/2addr v3, v2

    if-ge v3, p4, :cond_2

    array-length v3, p1

    invoke-static {p1, p0, p2, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, p1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    sub-int/2addr p4, v2

    invoke-static {p1, p0, p2, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    :cond_3
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "size too large"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
