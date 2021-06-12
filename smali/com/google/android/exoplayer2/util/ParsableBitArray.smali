.class public final Lcom/google/android/exoplayer2/util/ParsableBitArray;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[B

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 42
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->a:[B

    .line 53
    iput p2, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->d:I

    return-void
.end method

.method private g()V
    .locals 2

    .line 302
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b:I

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->d:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b:I

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->d:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 93
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->d:I

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public a(I)V
    .locals 1

    .line 119
    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b:I

    .line 120
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b:I

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c:I

    .line 121
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->g()V

    return-void
.end method

.method public a(II)V
    .locals 8

    const/4 v0, 0x1

    const/16 v1, 0x20

    if-ge p2, v1, :cond_0

    shl-int v1, v0, p2

    sub-int/2addr v1, v0

    and-int/2addr p1, v1

    .line 280
    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c:I

    const/16 v2, 0x8

    rsub-int/lit8 v1, v1, 0x8

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 281
    iget v3, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c:I

    rsub-int/lit8 v3, v3, 0x8

    sub-int/2addr v3, v1

    const v4, 0xff00

    .line 282
    iget v5, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c:I

    shr-int/2addr v4, v5

    shl-int v5, v0, v3

    sub-int/2addr v5, v0

    or-int/2addr v4, v5

    .line 283
    iget-object v5, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->a:[B

    iget v6, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b:I

    aget-byte v7, v5, v6

    and-int/2addr v4, v7

    int-to-byte v4, v4

    aput-byte v4, v5, v6

    sub-int v1, p2, v1

    ushr-int v4, p1, v1

    .line 285
    iget-object v5, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->a:[B

    iget v6, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b:I

    aget-byte v7, v5, v6

    shl-int v3, v4, v3

    or-int/2addr v3, v7

    int-to-byte v3, v3

    aput-byte v3, v5, v6

    .line 287
    iget v3, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b:I

    add-int/2addr v3, v0

    :goto_0
    if-le v1, v2, :cond_1

    .line 289
    iget-object v4, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->a:[B

    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v6, v1, -0x8

    ushr-int v6, p1, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v3

    add-int/lit8 v1, v1, -0x8

    move v3, v5

    goto :goto_0

    :cond_1
    sub-int/2addr v2, v1

    .line 293
    iget-object v4, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->a:[B

    aget-byte v5, v4, v3

    shl-int v6, v0, v2

    sub-int/2addr v6, v0

    and-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v3

    shl-int v1, v0, v1

    sub-int/2addr v1, v0

    and-int/2addr p1, v1

    .line 295
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->a:[B

    aget-byte v1, v0, v3

    shl-int/2addr p1, v2

    or-int/2addr p1, v1

    int-to-byte p1, p1

    aput-byte p1, v0, v3

    .line 296
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b(I)V

    .line 297
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->g()V

    return-void
.end method

.method public a([B)V
    .locals 1

    .line 62
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->a([BI)V

    return-void
.end method

.method public a([BI)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->a:[B

    const/4 p1, 0x0

    .line 84
    iput p1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b:I

    .line 85
    iput p1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c:I

    .line 86
    iput p2, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->d:I

    return-void
.end method

.method public a([BII)V
    .locals 6

    shr-int/lit8 v0, p3, 0x3

    add-int/2addr v0, p2

    :goto_0
    const/16 v1, 0xff

    const/16 v2, 0x8

    if-ge p2, v0, :cond_0

    .line 201
    iget-object v3, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->a:[B

    iget v4, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b:I

    aget-byte v3, v3, v4

    iget v4, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c:I

    shl-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, p2

    .line 202
    aget-byte v3, p1, p2

    iget-object v4, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->a:[B

    iget v5, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b:I

    aget-byte v4, v4, v5

    and-int/2addr v1, v4

    iget v4, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c:I

    sub-int/2addr v2, v4

    shr-int/2addr v1, v2

    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    and-int/lit8 p2, p3, 0x7

    if-nez p2, :cond_1

    return-void

    .line 209
    :cond_1
    aget-byte p3, p1, v0

    shr-int v3, v1, p2

    and-int/2addr p3, v3

    int-to-byte p3, p3

    aput-byte p3, p1, v0

    .line 210
    iget p3, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c:I

    add-int/2addr p3, p2

    if-le p3, v2, :cond_2

    .line 212
    aget-byte p3, p1, v0

    iget-object v3, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->a:[B

    iget v4, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b:I

    aget-byte v3, v3, v4

    and-int/2addr v3, v1

    iget v4, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c:I

    shl-int/2addr v3, v4

    int-to-byte v3, v3

    or-int/2addr p3, v3

    int-to-byte p3, p3

    aput-byte p3, p1, v0

    .line 213
    iget p3, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c:I

    sub-int/2addr p3, v2

    iput p3, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c:I

    .line 215
    :cond_2
    iget p3, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c:I

    add-int/2addr p3, p2

    iput p3, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c:I

    .line 216
    iget-object p3, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->a:[B

    iget v3, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b:I

    aget-byte p3, p3, v3

    and-int/2addr p3, v1

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c:I

    rsub-int/lit8 v1, v1, 0x8

    shr-int/2addr p3, v1

    .line 217
    aget-byte v1, p1, v0

    rsub-int/lit8 p2, p2, 0x8

    shl-int p2, p3, p2

    int-to-byte p2, p2

    or-int/2addr p2, v1

    int-to-byte p2, p2

    aput-byte p2, p1, v0

    .line 218
    iget p1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c:I

    if-ne p1, v2, :cond_3

    const/4 p1, 0x0

    .line 219
    iput p1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c:I

    .line 220
    iget p1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b:I

    .line 222
    :cond_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->g()V

    return-void
.end method

.method public b()I
    .locals 2

    .line 100
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c:I

    add-int/2addr v0, v1

    return v0
.end method

.method public b(I)V
    .locals 2

    .line 141
    div-int/lit8 v0, p1, 0x8

    .line 142
    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b:I

    .line 143
    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c:I

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr p1, v0

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c:I

    .line 144
    iget p1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c:I

    const/4 v0, 0x7

    if-le p1, v0, :cond_0

    .line 145
    iget p1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b:I

    .line 146
    iget p1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c:I

    add-int/lit8 p1, p1, -0x8

    iput p1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c:I

    .line 148
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->g()V

    return-void
.end method

.method public b([BII)V
    .locals 2

    .line 248
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    .line 249
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->a:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 250
    iget p1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b:I

    .line 251
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->g()V

    return-void
.end method

.method public c()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    .line 110
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b:I

    return v0
.end method

.method public c(I)I
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 173
    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c:I

    const/4 v1, 0x0

    .line 174
    :goto_0
    iget v2, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c:I

    const/16 v3, 0x8

    if-le v2, v3, :cond_1

    .line 175
    iget v2, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c:I

    .line 176
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->a:[B

    iget v3, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    iget v3, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c:I

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    goto :goto_0

    .line 178
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->a:[B

    iget v4, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b:I

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    iget v4, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c:I

    rsub-int/lit8 v4, v4, 0x8

    shr-int/2addr v2, v4

    or-int/2addr v1, v2

    const/4 v2, -0x1

    rsub-int/lit8 p1, p1, 0x20

    ushr-int p1, v2, p1

    and-int/2addr p1, v1

    .line 180
    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c:I

    if-ne v1, v3, :cond_2

    .line 181
    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c:I

    .line 182
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b:I

    .line 184
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->g()V

    return p1
.end method

.method public d()V
    .locals 2

    .line 128
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 129
    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c:I

    .line 130
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b:I

    .line 132
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->g()V

    return-void
.end method

.method public d(I)V
    .locals 1

    .line 261
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    .line 262
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b:I

    .line 263
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->g()V

    return-void
.end method

.method public e()Z
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->a:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b:I

    aget-byte v0, v0, v1

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c:I

    const/16 v2, 0x80

    shr-int v1, v2, v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 158
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->d()V

    return v0
.end method

.method public f()V
    .locals 1

    .line 229
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 232
    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c:I

    .line 233
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b:I

    .line 234
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->g()V

    return-void
.end method
