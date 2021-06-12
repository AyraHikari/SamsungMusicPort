.class public Lcom/mz/common/AES256Cipher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# static fields
.field public static a:Ljava/lang/String; = "CJENMNMEZZOMEDIA"

.field public static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 29
    sput v0, Lcom/mz/common/AES256Cipher;->b:I

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "&end="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "mezzomedia20160801ncjenm20170801"

    .line 31
    sget-object v2, Lcom/mz/common/AES256Cipher;->a:Ljava/lang/String;

    invoke-static {v1, p0, v2}, Lcom/mz/common/AES256Cipher;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    .line 32
    array-length v1, p0

    sput v1, Lcom/mz/common/AES256Cipher;->b:I

    .line 33
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\n"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "UTF-8"

    .line 34
    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 4

    :try_start_0
    const-string v0, "UTF-8"

    .line 50
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    const/16 v0, 0x20

    .line 51
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    const-string v0, "UTF-8"

    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    const-string v1, "UTF-8"

    .line 54
    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v1, 0x10

    .line 55
    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p2

    const-string v1, "AES/CBC/PKCS5Padding"

    .line 56
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 57
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 58
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {p2, p0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v0, p2, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 59
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p2, "AES/CBC/PKCS5Padding"

    .line 61
    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    .line 62
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, p0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 63
    invoke-virtual {p2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 p1, 0x0

    .line 67
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method private static a(Ljava/lang/String;[BLjava/lang/String;)[B
    .locals 4

    :try_start_0
    const-string v0, "UTF-8"

    .line 80
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    const/16 v0, 0x20

    .line 81
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    const/4 v0, 0x2

    if-eqz p2, :cond_0

    const-string v1, "UTF-8"

    .line 83
    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v1, 0x10

    .line 84
    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p2

    .line 85
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(I)V

    const-string v1, "AES/CBC/PKCS5Padding"

    .line 86
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 87
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 88
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {p2, p0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v0, p2, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 89
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p2, "AES/CBC/PKCS5Padding"

    .line 92
    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    .line 93
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, p0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 94
    invoke-virtual {p2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 p1, 0x0

    .line 99
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 38
    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 39
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 40
    new-instance v0, Ljava/lang/String;

    const-string v1, "mezzomedia20160801ncjenm20170801"

    sget-object v2, Lcom/mz/common/AES256Cipher;->a:Ljava/lang/String;

    invoke-static {v1, p0, v2}, Lcom/mz/common/AES256Cipher;->a(Ljava/lang/String;[BLjava/lang/String;)[B

    move-result-object p0

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method
