.class public Lokio/ByteString;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lokio/ByteString;",
        ">;"
    }
.end annotation


# static fields
.field public static final EMPTY:Lokio/ByteString;

.field static final HEX_DIGITS:[C

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final data:[B

.field transient hashCode:I

.field transient utf8:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    .line 53
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lokio/ByteString;->HEX_DIGITS:[C

    const/4 v0, 0x0

    .line 58
    new-array v0, v0, [B

    invoke-static {v0}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method constructor <init>([B)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lokio/ByteString;->data:[B

    return-void
.end method

.method static codePointIndexToCharIndex(Ljava/lang/String;I)I
    .locals 5

    .line 513
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    if-ne v2, p1, :cond_0

    return v1

    .line 517
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    .line 518
    invoke-static {v3}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1

    const/16 v4, 0xd

    if-ne v3, v4, :cond_2

    :cond_1
    const v4, 0xfffd

    if-ne v3, v4, :cond_3

    :cond_2
    const/4 p0, -0x1

    return p0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 513
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    .line 524
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method public static decodeBase64(Ljava/lang/String;)Lokio/ByteString;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    if-eqz p0, :cond_1

    .line 203
    invoke-static {p0}, Lokio/Base64;->a(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_0

    .line 204
    new-instance v0, Lokio/ByteString;

    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 202
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "base64 == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static decodeHex(Ljava/lang/String;)Lokio/ByteString;
    .locals 4

    if-eqz p0, :cond_2

    .line 221
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 223
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 224
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    mul-int/lit8 v2, v1, 0x2

    .line 225
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lokio/ByteString;->decodeHexDigit(C)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    add-int/lit8 v2, v2, 0x1

    .line 226
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lokio/ByteString;->decodeHexDigit(C)I

    move-result v2

    add-int/2addr v3, v2

    int-to-byte v2, v3

    .line 227
    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 229
    :cond_0
    invoke-static {v0}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object p0

    return-object p0

    .line 221
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected hex string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "hex == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static decodeHexDigit(C)I
    .locals 3

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    return p0

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v1, 0x66

    if-gt p0, v1, :cond_1

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v1, 0x46

    if-gt p0, v1, :cond_2

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    .line 236
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected hex digit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private digest(Ljava/lang/String;)Lokio/ByteString;
    .locals 1

    .line 156
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iget-object v0, p0, Lokio/ByteString;->data:[B

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    invoke-static {p1}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 158
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static encodeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/ByteString;
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 109
    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    return-object v0

    .line 108
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "charset == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 107
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "s == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static encodeUtf8(Ljava/lang/String;)Lokio/ByteString;
    .locals 2

    if-eqz p0, :cond_0

    .line 100
    new-instance v0, Lokio/ByteString;

    sget-object v1, Lokio/Util;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    .line 101
    iput-object p0, v0, Lokio/ByteString;->utf8:Ljava/lang/String;

    return-object v0

    .line 99
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "s == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;
    .locals 2

    .line 179
    :try_start_0
    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 180
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Lokio/ByteString;->toByteArray()[B

    move-result-object p2

    invoke-direct {v1, p2, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 181
    iget-object p1, p0, Lokio/ByteString;->data:[B

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1

    invoke-static {p1}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 185
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 183
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public static of(Ljava/nio/ByteBuffer;)Lokio/ByteString;
    .locals 1

    if-eqz p0, :cond_0

    .line 92
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 93
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 94
    new-instance p0, Lokio/ByteString;

    invoke-direct {p0, v0}, Lokio/ByteString;-><init>([B)V

    return-object p0

    .line 90
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "data == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs of([B)Lokio/ByteString;
    .locals 1

    if-eqz p0, :cond_0

    .line 73
    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    return-object v0

    .line 72
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "data == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static of([BII)Lokio/ByteString;
    .locals 7

    if-eqz p0, :cond_0

    .line 82
    array-length v0, p0

    int-to-long v1, v0

    int-to-long v3, p1

    int-to-long v5, p2

    invoke-static/range {v1 .. v6}, Lokio/Util;->a(JJJ)V

    .line 84
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 85
    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    new-instance p0, Lokio/ByteString;

    invoke-direct {p0, v0}, Lokio/ByteString;-><init>([B)V

    return-object p0

    .line 81
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "data == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static read(Ljava/io/InputStream;I)Lokio/ByteString;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_3

    if-ltz p1, :cond_2

    .line 249
    new-array v0, p1, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    sub-int v2, p1, v1

    .line 251
    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    add-int/2addr v1, v2

    goto :goto_0

    .line 252
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    .line 254
    :cond_1
    new-instance p0, Lokio/ByteString;

    invoke-direct {p0, v0}, Lokio/ByteString;-><init>([B)V

    return-object p0

    .line 247
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 246
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "in == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 528
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 529
    invoke-static {p1, v0}, Lokio/ByteString;->read(Ljava/io/InputStream;I)Lokio/ByteString;

    move-result-object p1

    .line 531
    :try_start_0
    const-class v0, Lokio/ByteString;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 532
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 533
    iget-object p1, p1, Lokio/ByteString;->data:[B

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 537
    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 535
    :catch_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 542
    iget-object v0, p0, Lokio/ByteString;->data:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 543
    iget-object v0, p0, Lokio/ByteString;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->write([B)V

    return-void
.end method


# virtual methods
.method public asByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 366
    iget-object v0, p0, Lokio/ByteString;->data:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public base64()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lokio/ByteString;->data:[B

    invoke-static {v0}, Lokio/Base64;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public base64Url()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lokio/ByteString;->data:[B

    invoke-static {v0}, Lokio/Base64;->b([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 52
    check-cast p1, Lokio/ByteString;

    invoke-virtual {p0, p1}, Lokio/ByteString;->compareTo(Lokio/ByteString;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lokio/ByteString;)I
    .locals 9

    .line 473
    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v0

    .line 474
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v1

    .line 475
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ge v4, v2, :cond_2

    .line 476
    invoke-virtual {p0, v4}, Lokio/ByteString;->getByte(I)B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    .line 477
    invoke-virtual {p1, v4}, Lokio/ByteString;->getByte(I)B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    if-ne v7, v8, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    if-ge v7, v8, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    :goto_1
    return v5

    :cond_2
    if-ne v0, v1, :cond_3

    return v3

    :cond_3
    if-ge v0, v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v5, 0x1

    :goto_2
    return v5
.end method

.method public final endsWith(Lokio/ByteString;)Z
    .locals 3

    .line 409
    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v0

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v2, v1}, Lokio/ByteString;->rangeEquals(ILokio/ByteString;II)Z

    move-result p1

    return p1
.end method

.method public final endsWith([B)Z
    .locals 3

    .line 413
    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v0

    array-length v1, p1

    sub-int/2addr v0, v1

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v2, v1}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 462
    :cond_0
    instance-of v1, p1, Lokio/ByteString;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lokio/ByteString;

    .line 463
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v1

    iget-object v3, p0, Lokio/ByteString;->data:[B

    array-length v3, v3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lokio/ByteString;->data:[B

    iget-object v3, p0, Lokio/ByteString;->data:[B

    array-length v3, v3

    .line 464
    invoke-virtual {p1, v2, v1, v2, v3}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getByte(I)B
    .locals 1

    .line 340
    iget-object v0, p0, Lokio/ByteString;->data:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 468
    iget v0, p0, Lokio/ByteString;->hashCode:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 469
    :cond_0
    iget-object v0, p0, Lokio/ByteString;->data:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lokio/ByteString;->hashCode:I

    :goto_0
    return v0
.end method

.method public hex()Ljava/lang/String;
    .locals 9

    .line 209
    iget-object v0, p0, Lokio/ByteString;->data:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 211
    iget-object v1, p0, Lokio/ByteString;->data:[B

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v5, v1, v3

    add-int/lit8 v6, v4, 0x1

    .line 212
    sget-object v7, Lokio/ByteString;->HEX_DIGITS:[C

    shr-int/lit8 v8, v5, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    aput-char v7, v0, v4

    add-int/lit8 v4, v6, 0x1

    .line 213
    sget-object v7, Lokio/ByteString;->HEX_DIGITS:[C

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v7, v5

    aput-char v5, v0, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 215
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public hmacSha1(Lokio/ByteString;)Lokio/ByteString;
    .locals 1

    const-string v0, "HmacSHA1"

    .line 164
    invoke-direct {p0, v0, p1}, Lokio/ByteString;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public hmacSha256(Lokio/ByteString;)Lokio/ByteString;
    .locals 1

    const-string v0, "HmacSHA256"

    .line 169
    invoke-direct {p0, v0, p1}, Lokio/ByteString;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public hmacSha512(Lokio/ByteString;)Lokio/ByteString;
    .locals 1

    const-string v0, "HmacSHA512"

    .line 174
    invoke-direct {p0, v0, p1}, Lokio/ByteString;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final indexOf(Lokio/ByteString;)I
    .locals 1

    .line 417
    invoke-virtual {p1}, Lokio/ByteString;->internalArray()[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lokio/ByteString;->indexOf([BI)I

    move-result p1

    return p1
.end method

.method public final indexOf(Lokio/ByteString;I)I
    .locals 0

    .line 421
    invoke-virtual {p1}, Lokio/ByteString;->internalArray()[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lokio/ByteString;->indexOf([BI)I

    move-result p1

    return p1
.end method

.method public final indexOf([B)I
    .locals 1

    const/4 v0, 0x0

    .line 425
    invoke-virtual {p0, p1, v0}, Lokio/ByteString;->indexOf([BI)I

    move-result p1

    return p1
.end method

.method public indexOf([BI)I
    .locals 4

    const/4 v0, 0x0

    .line 429
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 430
    iget-object v1, p0, Lokio/ByteString;->data:[B

    array-length v1, v1

    array-length v2, p1

    sub-int/2addr v1, v2

    :goto_0
    if-gt p2, v1, :cond_1

    .line 431
    iget-object v2, p0, Lokio/ByteString;->data:[B

    array-length v3, p1

    invoke-static {v2, p2, p1, v0, v3}, Lokio/Util;->a([BI[BII)Z

    move-result v2

    if-eqz v2, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method internalArray()[B
    .locals 1

    .line 359
    iget-object v0, p0, Lokio/ByteString;->data:[B

    return-object v0
.end method

.method public final lastIndexOf(Lokio/ByteString;)I
    .locals 1

    .line 439
    invoke-virtual {p1}, Lokio/ByteString;->internalArray()[B

    move-result-object p1

    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lokio/ByteString;->lastIndexOf([BI)I

    move-result p1

    return p1
.end method

.method public final lastIndexOf(Lokio/ByteString;I)I
    .locals 0

    .line 443
    invoke-virtual {p1}, Lokio/ByteString;->internalArray()[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lokio/ByteString;->lastIndexOf([BI)I

    move-result p1

    return p1
.end method

.method public final lastIndexOf([B)I
    .locals 1

    .line 447
    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lokio/ByteString;->lastIndexOf([BI)I

    move-result p1

    return p1
.end method

.method public lastIndexOf([BI)I
    .locals 3

    .line 451
    iget-object v0, p0, Lokio/ByteString;->data:[B

    array-length v0, v0

    array-length v1, p1

    sub-int/2addr v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_0
    if-ltz p2, :cond_1

    .line 453
    iget-object v0, p0, Lokio/ByteString;->data:[B

    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {v0, p2, p1, v1, v2}, Lokio/Util;->a([BI[BII)Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public md5()Lokio/ByteString;
    .locals 1

    const-string v0, "MD5"

    .line 136
    invoke-direct {p0, v0}, Lokio/ByteString;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public rangeEquals(ILokio/ByteString;II)Z
    .locals 1

    .line 386
    iget-object v0, p0, Lokio/ByteString;->data:[B

    invoke-virtual {p2, p3, v0, p1, p4}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result p1

    return p1
.end method

.method public rangeEquals(I[BII)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 395
    iget-object v0, p0, Lokio/ByteString;->data:[B

    array-length v0, v0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_0

    if-ltz p3, :cond_0

    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_0

    iget-object v0, p0, Lokio/ByteString;->data:[B

    .line 397
    invoke-static {v0, p1, p2, p3, p4}, Lokio/Util;->a([BI[BII)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public sha1()Lokio/ByteString;
    .locals 1

    const-string v0, "SHA-1"

    .line 141
    invoke-direct {p0, v0}, Lokio/ByteString;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public sha256()Lokio/ByteString;
    .locals 1

    const-string v0, "SHA-256"

    .line 146
    invoke-direct {p0, v0}, Lokio/ByteString;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public sha512()Lokio/ByteString;
    .locals 1

    const-string v0, "SHA-512"

    .line 151
    invoke-direct {p0, v0}, Lokio/ByteString;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 347
    iget-object v0, p0, Lokio/ByteString;->data:[B

    array-length v0, v0

    return v0
.end method

.method public final startsWith(Lokio/ByteString;)Z
    .locals 2

    .line 401
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v1, v0}, Lokio/ByteString;->rangeEquals(ILokio/ByteString;II)Z

    move-result p1

    return p1
.end method

.method public final startsWith([B)Z
    .locals 2

    .line 405
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v1, v0}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result p1

    return p1
.end method

.method public string(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    .line 122
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lokio/ByteString;->data:[B

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    .line 121
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "charset == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public substring(I)Lokio/ByteString;
    .locals 1

    .line 312
    iget-object v0, p0, Lokio/ByteString;->data:[B

    array-length v0, v0

    invoke-virtual {p0, p1, v0}, Lokio/ByteString;->substring(II)Lokio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public substring(II)Lokio/ByteString;
    .locals 3

    if-ltz p1, :cond_3

    .line 322
    iget-object v0, p0, Lokio/ByteString;->data:[B

    array-length v0, v0

    if-gt p2, v0, :cond_2

    sub-int v0, p2, p1

    if-ltz v0, :cond_1

    if-nez p1, :cond_0

    .line 329
    iget-object v1, p0, Lokio/ByteString;->data:[B

    array-length v1, v1

    if-ne p2, v1, :cond_0

    return-object p0

    .line 333
    :cond_0
    new-array p2, v0, [B

    .line 334
    iget-object v1, p0, Lokio/ByteString;->data:[B

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 335
    new-instance p1, Lokio/ByteString;

    invoke-direct {p1, p2}, Lokio/ByteString;-><init>([B)V

    return-object p1

    .line 327
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "endIndex < beginIndex"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 323
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "endIndex > length("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lokio/ByteString;->data:[B

    array-length v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 321
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "beginIndex < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toAsciiLowercase()Lokio/ByteString;
    .locals 6

    const/4 v0, 0x0

    .line 264
    :goto_0
    iget-object v1, p0, Lokio/ByteString;->data:[B

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 265
    iget-object v1, p0, Lokio/ByteString;->data:[B

    aget-byte v1, v1, v0

    const/16 v2, 0x41

    if-lt v1, v2, :cond_4

    const/16 v3, 0x5a

    if-le v1, v3, :cond_0

    goto :goto_3

    .line 270
    :cond_0
    iget-object v4, p0, Lokio/ByteString;->data:[B

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v1, v1, 0x20

    int-to-byte v1, v1

    .line 271
    aput-byte v1, v4, v0

    .line 272
    :goto_1
    array-length v0, v4

    if-ge v5, v0, :cond_3

    .line 273
    aget-byte v0, v4, v5

    if-lt v0, v2, :cond_2

    if-le v0, v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    .line 275
    aput-byte v0, v4, v5

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 277
    :cond_3
    new-instance v0, Lokio/ByteString;

    invoke-direct {v0, v4}, Lokio/ByteString;-><init>([B)V

    return-object v0

    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-object p0
.end method

.method public toAsciiUppercase()Lokio/ByteString;
    .locals 6

    const/4 v0, 0x0

    .line 289
    :goto_0
    iget-object v1, p0, Lokio/ByteString;->data:[B

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 290
    iget-object v1, p0, Lokio/ByteString;->data:[B

    aget-byte v1, v1, v0

    const/16 v2, 0x61

    if-lt v1, v2, :cond_4

    const/16 v3, 0x7a

    if-le v1, v3, :cond_0

    goto :goto_3

    .line 295
    :cond_0
    iget-object v4, p0, Lokio/ByteString;->data:[B

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v1, v1, -0x20

    int-to-byte v1, v1

    .line 296
    aput-byte v1, v4, v0

    .line 297
    :goto_1
    array-length v0, v4

    if-ge v5, v0, :cond_3

    .line 298
    aget-byte v0, v4, v5

    if-lt v0, v2, :cond_2

    if-le v0, v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, -0x20

    int-to-byte v0, v0

    .line 300
    aput-byte v0, v4, v5

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 302
    :cond_3
    new-instance v0, Lokio/ByteString;

    invoke-direct {v0, v4}, Lokio/ByteString;-><init>([B)V

    return-object v0

    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-object p0
.end method

.method public toByteArray()[B
    .locals 1

    .line 354
    iget-object v0, p0, Lokio/ByteString;->data:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 490
    iget-object v0, p0, Lokio/ByteString;->data:[B

    array-length v0, v0

    if-nez v0, :cond_0

    const-string v0, "[size=0]"

    return-object v0

    .line 494
    :cond_0
    invoke-virtual {p0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x40

    .line 495
    invoke-static {v0, v1}, Lokio/ByteString;->codePointIndexToCharIndex(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    .line 498
    iget-object v0, p0, Lokio/ByteString;->data:[B

    array-length v0, v0

    if-gt v0, v1, :cond_1

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[hex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 500
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lokio/ByteString;->data:[B

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " hex="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v1}, Lokio/ByteString;->substring(II)Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u2026]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 503
    :cond_2
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\\"

    const-string v4, "\\\\"

    .line 504
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\n"

    const-string v4, "\\n"

    .line 505
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\r"

    const-string v4, "\\r"

    .line 506
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 507
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lokio/ByteString;->data:[B

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " text="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u2026]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 509
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[text="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public utf8()Ljava/lang/String;
    .locals 3

    .line 114
    iget-object v0, p0, Lokio/ByteString;->utf8:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lokio/ByteString;->data:[B

    sget-object v2, Lokio/Util;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v0, p0, Lokio/ByteString;->utf8:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 372
    iget-object v0, p0, Lokio/ByteString;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void

    .line 371
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "out == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method write(Lokio/Buffer;)V
    .locals 3

    .line 377
    iget-object v0, p0, Lokio/ByteString;->data:[B

    iget-object v1, p0, Lokio/ByteString;->data:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lokio/Buffer;->b([BII)Lokio/Buffer;

    return-void
.end method
