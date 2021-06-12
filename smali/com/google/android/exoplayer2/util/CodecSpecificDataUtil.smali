.class public final Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[B

.field private static final b:[I

.field private static final c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    .line 29
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->a:[B

    const/16 v0, 0xd

    .line 33
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->b:[I

    const/16 v0, 0x10

    .line 51
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->c:[I

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_1
    .array-data 4
        0x17700
        0x15888
        0xfa00
        0xbb80
        0xac44
        0x7d00
        0x5dc0
        0x5622
        0x3e80
        0x2ee0
        0x2b11
        0x1f40
        0x1cb6
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x8
        -0x1
        -0x1
        -0x1
        0x7
        0x8
        -0x1
        0x8
        -0x1
    .end array-data
.end method

.method private static a(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I
    .locals 2

    const/4 v0, 0x5

    .line 298
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v0

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x6

    .line 300
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result p0

    add-int/lit8 v0, p0, 0x20

    :cond_0
    return v0
.end method

.method private static a([BI)I
    .locals 2

    .line 263
    array-length v0, p0

    sget-object v1, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->a:[B

    array-length v1, v1

    sub-int/2addr v0, v1

    :goto_0
    if-gt p1, v0, :cond_1

    .line 265
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->b([BI)Z

    move-result v1

    if-eqz v1, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static a(Lcom/google/android/exoplayer2/util/ParsableBitArray;Z)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableBitArray;",
            "Z)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 108
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->a(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I

    move-result v0

    .line 109
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->b(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I

    move-result v1

    const/4 v2, 0x4

    .line 110
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v3

    const/4 v4, 0x5

    if-eq v0, v4, :cond_0

    const/16 v4, 0x1d

    if-ne v0, v4, :cond_1

    .line 117
    :cond_0
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->b(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I

    move-result v1

    .line 118
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->a(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I

    move-result v0

    const/16 v4, 0x16

    if-ne v0, v4, :cond_1

    .line 121
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v3

    :cond_1
    if-eqz p1, :cond_4

    const/16 p1, 0x11

    if-eq v0, p1, :cond_2

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    .line 142
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported audio object type: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 139
    :cond_2
    :pswitch_0
    invoke-static {p0, v0, v3}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->a(Lcom/google/android/exoplayer2/util/ParsableBitArray;II)V

    packed-switch v0, :pswitch_data_3

    :pswitch_1
    goto :goto_0

    :pswitch_2
    const/4 p1, 0x2

    .line 151
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result p0

    if-eq p0, p1, :cond_3

    const/4 p1, 0x3

    if-eq p0, p1, :cond_3

    goto :goto_0

    .line 153
    :cond_3
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported epConfig: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 159
    :cond_4
    :goto_0
    sget-object p0, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->c:[I

    aget p0, p0, v3

    const/4 p1, -0x1

    if-eq p0, p1, :cond_5

    const/4 p1, 0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    .line 160
    :goto_1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->a(Z)V

    .line 161
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static a([B)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 93
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->a(Lcom/google/android/exoplayer2/util/ParsableBitArray;Z)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/google/android/exoplayer2/util/ParsableBitArray;II)V
    .locals 4

    const/4 v0, 0x1

    .line 326
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b(I)V

    .line 327
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xe

    .line 329
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b(I)V

    .line 331
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->e()Z

    move-result v1

    if-eqz p2, :cond_7

    const/4 p2, 0x6

    const/4 v2, 0x3

    const/16 v3, 0x14

    if-eq p1, p2, :cond_1

    if-ne p1, v3, :cond_2

    .line 336
    :cond_1
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b(I)V

    :cond_2
    if-eqz v1, :cond_6

    const/16 p2, 0x16

    if-ne p1, p2, :cond_3

    const/16 p2, 0x10

    .line 340
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b(I)V

    :cond_3
    const/16 p2, 0x11

    if-eq p1, p2, :cond_4

    const/16 p2, 0x13

    if-eq p1, p2, :cond_4

    if-eq p1, v3, :cond_4

    const/16 p2, 0x17

    if-ne p1, p2, :cond_5

    .line 346
    :cond_4
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b(I)V

    .line 348
    :cond_5
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b(I)V

    :cond_6
    return-void

    .line 333
    :cond_7
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public static a(II)[B
    .locals 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 173
    :goto_0
    sget-object v4, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->b:[I

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 174
    sget-object v4, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->b:[I

    aget v4, v4, v2

    if-ne p0, v4, :cond_0

    move v3, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    .line 179
    :goto_1
    sget-object v4, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->c:[I

    array-length v4, v4

    if-ge v0, v4, :cond_3

    .line 180
    sget-object v4, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->c:[I

    aget v4, v4, v0

    if-ne p1, v4, :cond_2

    move v2, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    if-eq p0, v1, :cond_4

    if-eq v2, v1, :cond_4

    const/4 p0, 0x2

    .line 188
    invoke-static {p0, v3, v2}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->a(III)[B

    move-result-object p0

    return-object p0

    .line 185
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid sample rate or number of channels: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(III)[B
    .locals 2

    const/4 v0, 0x2

    .line 201
    new-array v0, v0, [B

    shl-int/lit8 p0, p0, 0x3

    and-int/lit16 p0, p0, 0xf8

    shr-int/lit8 v1, p1, 0x1

    and-int/lit8 v1, v1, 0x7

    or-int/2addr p0, v1

    int-to-byte p0, p0

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    shl-int/lit8 p0, p1, 0x7

    and-int/lit16 p0, p0, 0x80

    shl-int/lit8 p1, p2, 0x3

    and-int/lit8 p1, p1, 0x78

    or-int/2addr p0, p1

    int-to-byte p0, p0

    const/4 p1, 0x1

    aput-byte p0, v0, p1

    return-object v0
.end method

.method public static a([BII)[B
    .locals 4

    .line 216
    sget-object v0, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->a:[B

    array-length v0, v0

    add-int/2addr v0, p2

    new-array v0, v0, [B

    .line 217
    sget-object v1, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->a:[B

    sget-object v2, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->a:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 218
    sget-object v1, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->a:[B

    array-length v1, v1

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static b(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I
    .locals 2

    const/4 v0, 0x4

    .line 314
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    const/16 v0, 0x18

    .line 316
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result p0

    goto :goto_1

    :cond_0
    const/16 p0, 0xd

    if-ge v0, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 318
    :goto_0
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Assertions;->a(Z)V

    .line 319
    sget-object p0, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->b:[I

    aget p0, p0, v0

    :goto_1
    return p0
.end method

.method private static b([BI)Z
    .locals 4

    .line 280
    array-length v0, p0

    sub-int/2addr v0, p1

    sget-object v1, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->a:[B

    array-length v1, v1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    .line 283
    :goto_0
    sget-object v1, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->a:[B

    array-length v1, v1

    if-ge v0, v1, :cond_2

    add-int v1, p1, v0

    .line 284
    aget-byte v1, p0, v1

    sget-object v3, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->a:[B

    aget-byte v3, v3, v0

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static b([B)[[B
    .locals 7

    const/4 v0, 0x0

    .line 234
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->b([BI)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    .line 236
    check-cast p0, [[B

    return-object p0

    .line 238
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 241
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    sget-object v3, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->a:[B

    array-length v3, v3

    add-int/2addr v2, v3

    invoke-static {p0, v2}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->a([BI)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 244
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [[B

    const/4 v3, 0x0

    .line 245
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 246
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 247
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_2

    add-int/lit8 v5, v3, 0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_1

    :cond_2
    array-length v5, p0

    :goto_1
    sub-int/2addr v5, v4

    .line 248
    new-array v5, v5, [B

    .line 249
    array-length v6, v5

    invoke-static {p0, v4, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 250
    aput-object v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method
