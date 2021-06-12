.class final Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureAes$AesHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureAes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AesHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureAes$AesHelper$SecureLevel;
    }
.end annotation


# static fields
.field private static final AES:Ljava/lang/String; = "AES"

.field private static final BUFFER_SIZE:I = 0x400

.field private static final BYTES_SIZE_16:I = 0x10

.field private static final CIPHER_TRANSFORMATION:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static final ITERATE_COUNT:I = 0x3e8

.field private static final KEY_LENGTH:I = 0x100

.field private static final PBKDF2_SHA1:Ljava/lang/String; = "PBKDF2WithHmacSHA1"

.field private static final SHA_256:Ljava/lang/String; = "SHA-256"

.field private static final UTF8:Ljava/lang/String; = "UTF-8"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static decrypt(Ljava/lang/String;Ljava/io/FileInputStream;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 129
    invoke-static {p1, p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureAes$AesHelper;->decryptStream(Ljava/io/InputStream;Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method private static decryptStream(Ljava/io/InputStream;Ljava/lang/String;I)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "AES/CBC/PKCS5Padding"

    .line 187
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v1

    new-array v1, v1, [B

    .line 191
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    .line 193
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    if-lez p2, :cond_0

    const/16 p2, 0x10

    .line 197
    new-array p2, p2, [B

    .line 198
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    .line 199
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureAes$AesHelper;->generatePBKDF2SecretKey(Ljava/lang/String;[B)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p1

    goto :goto_0

    .line 202
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureAes$AesHelper;->generateSHA256SecretKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p1

    :goto_0
    const/4 p2, 0x2

    .line 206
    invoke-virtual {v0, p2, p1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 207
    new-instance p1, Ljavax/crypto/CipherInputStream;

    invoke-direct {p1, p0, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object p1
.end method

.method static encrypt(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 118
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 p2, 0x1

    invoke-static {v0, p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureAes$AesHelper;->encryptStream(Ljava/io/OutputStream;Ljava/lang/String;I)Ljava/io/OutputStream;

    move-result-object p0

    const/4 p2, 0x0

    .line 119
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 p1, 0x400

    .line 121
    :try_start_1
    new-array p1, p1, [B

    .line 122
    :goto_0
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 123
    invoke-virtual {p0, p1, v2, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 125
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    move-object v1, p2

    goto :goto_1

    :catch_0
    move-exception p1

    .line 118
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, p1

    move-object p1, v3

    :goto_1
    if-eqz v1, :cond_2

    .line 125
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :goto_2
    throw p1
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    move-object p2, p1

    .line 118
    :try_start_6
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_3
    if-eqz p0, :cond_4

    if-eqz p2, :cond_3

    .line 125
    :try_start_7
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_4

    :catch_3
    move-exception p0

    invoke-virtual {p2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_3
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    :cond_4
    :goto_4
    throw p1
.end method

.method private static encryptStream(Ljava/io/OutputStream;Ljava/lang/String;I)Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "AES/CBC/PKCS5Padding"

    .line 134
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v1

    new-array v1, v1, [B

    .line 138
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 139
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 142
    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    if-lez p2, :cond_0

    .line 146
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureAes$AesHelper;->generateEncryptSalt()[B

    move-result-object p2

    .line 147
    invoke-virtual {p0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 148
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureAes$AesHelper;->generatePBKDF2SecretKey(Ljava/lang/String;[B)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p1

    goto :goto_0

    .line 151
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/secure/SecureAes$AesHelper;->generateSHA256SecretKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p1

    :goto_0
    const/4 p2, 0x1

    .line 155
    invoke-virtual {v0, p2, p1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 156
    new-instance p1, Ljavax/crypto/CipherOutputStream;

    invoke-direct {p1, p0, v0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object p1
.end method

.method private static generateEncryptSalt()[B
    .locals 2

    .line 168
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x10

    .line 169
    new-array v1, v1, [B

    .line 170
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v1
.end method

.method private static generatePBKDF2SecretKey(Ljava/lang/String;[B)Ljavax/crypto/spec/SecretKeySpec;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 176
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const-string v0, "PBKDF2WithHmacSHA1"

    .line 178
    invoke-static {v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v0

    .line 179
    new-instance v1, Ljavax/crypto/spec/PBEKeySpec;

    const/16 v2, 0x3e8

    const/16 v3, 0x100

    invoke-direct {v1, p0, p1, v2, v3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 180
    invoke-virtual {v0, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p0

    .line 181
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p0

    const-string v0, "AES"

    invoke-direct {p1, p0, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p1
.end method

.method private static generateSHA256SecretKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "SHA-256"

    .line 160
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "UTF-8"

    .line 161
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    const/16 p0, 0x10

    .line 162
    new-array p0, p0, [B

    .line 163
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method
