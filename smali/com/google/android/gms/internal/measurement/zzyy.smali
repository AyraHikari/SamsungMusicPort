.class public final Lcom/google/android/gms/internal/measurement/zzyy;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/nio/ByteBuffer;

.field private b:Lcom/google/android/gms/internal/measurement/zzut;

.field private c:I


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzyy;->a:Ljava/nio/ByteBuffer;

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzyy;->a:Ljava/nio/ByteBuffer;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private constructor <init>([BII)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzyy;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static a(I)I
    .locals 0

    if-ltz p0, :cond_0

    .line 199
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzyy;->d(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static a(J)I
    .locals 4

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    const/4 p0, 0x5

    return p0

    :cond_4
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    const/4 p0, 0x6

    return p0

    :cond_5
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    const/4 p0, 0x7

    return p0

    :cond_6
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    const/16 p0, 0x8

    return p0

    :cond_7
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr p0, v0

    cmp-long p0, p0, v2

    if-nez p0, :cond_8

    const/16 p0, 0x9

    return p0

    :cond_8
    const/16 p0, 0xa

    return p0
.end method

.method private static a(Ljava/lang/CharSequence;)I
    .locals 8

    .line 85
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 88
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x80

    if-ge v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_1
    if-ge v2, v0, :cond_6

    .line 91
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x800

    if-ge v4, v5, :cond_1

    rsub-int/lit8 v4, v4, 0x7f

    ushr-int/lit8 v4, v4, 0x1f

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 95
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    :goto_2
    if-ge v2, v4, :cond_5

    .line 98
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ge v6, v5, :cond_2

    rsub-int/lit8 v6, v6, 0x7f

    ushr-int/lit8 v6, v6, 0x1f

    add-int/2addr v1, v6

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x2

    const v7, 0xd800

    if-gt v7, v6, :cond_4

    const v7, 0xdfff

    if-gt v6, v7, :cond_4

    .line 103
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v6

    const/high16 v7, 0x10000

    if-lt v6, v7, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 105
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/16 v0, 0x27

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unpaired surrogate at index "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    add-int/2addr v3, v1

    :cond_6
    if-lt v3, v0, :cond_7

    return v3

    .line 113
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    int-to-long v0, v3

    const-wide v2, 0x100000000L

    add-long/2addr v0, v2

    const/16 v2, 0x36

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "UTF-8 length does not fit in int: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1

    .line 201
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzyy;->a(Ljava/lang/CharSequence;)I

    move-result p0

    .line 202
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzyy;->d(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static a([B)Lcom/google/android/gms/internal/measurement/zzyy;
    .locals 2

    .line 7
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/zzyy;->a([BII)Lcom/google/android/gms/internal/measurement/zzyy;

    move-result-object p0

    return-object p0
.end method

.method public static a([BII)Lcom/google/android/gms/internal/measurement/zzyy;
    .locals 1

    .line 8
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzyy;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0, p2}, Lcom/google/android/gms/internal/measurement/zzyy;-><init>([BII)V

    return-object p1
.end method

.method private static a(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .locals 13

    .line 115
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_12

    .line 117
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    const/16 v1, 0x27

    const v2, 0xdfff

    const v3, 0xd800

    const/16 v4, 0x800

    const/4 v5, 0x0

    const/16 v6, 0x80

    if-eqz v0, :cond_a

    .line 119
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 120
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v7, v8

    .line 121
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    .line 123
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    add-int/2addr v8, v7

    :goto_0
    if-ge v5, v9, :cond_0

    add-int v10, v5, v7

    if-ge v10, v8, :cond_0

    .line 126
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    if-ge v11, v6, :cond_0

    int-to-byte v11, v11

    .line 127
    aput-byte v11, v0, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    if-ne v5, v9, :cond_1

    add-int/2addr v7, v9

    goto/16 :goto_4

    :cond_1
    add-int/2addr v7, v5

    :goto_1
    if-ge v5, v9, :cond_9

    .line 133
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-ge v10, v6, :cond_2

    if-ge v7, v8, :cond_2

    add-int/lit8 v11, v7, 0x1

    int-to-byte v10, v10

    .line 135
    aput-byte v10, v0, v7

    :goto_2
    move v7, v11

    goto/16 :goto_3

    :cond_2
    if-ge v10, v4, :cond_3

    add-int/lit8 v11, v8, -0x2

    if-gt v7, v11, :cond_3

    add-int/lit8 v11, v7, 0x1

    ushr-int/lit8 v12, v10, 0x6

    or-int/lit16 v12, v12, 0x3c0

    int-to-byte v12, v12

    .line 137
    aput-byte v12, v0, v7

    add-int/lit8 v7, v11, 0x1

    and-int/lit8 v10, v10, 0x3f

    or-int/2addr v10, v6

    int-to-byte v10, v10

    .line 138
    aput-byte v10, v0, v11

    goto :goto_3

    :cond_3
    if-lt v10, v3, :cond_4

    if-ge v2, v10, :cond_5

    :cond_4
    add-int/lit8 v11, v8, -0x3

    if-gt v7, v11, :cond_5

    add-int/lit8 v11, v7, 0x1

    ushr-int/lit8 v12, v10, 0xc

    or-int/lit16 v12, v12, 0x1e0

    int-to-byte v12, v12

    .line 140
    aput-byte v12, v0, v7

    add-int/lit8 v7, v11, 0x1

    ushr-int/lit8 v12, v10, 0x6

    and-int/lit8 v12, v12, 0x3f

    or-int/2addr v12, v6

    int-to-byte v12, v12

    .line 141
    aput-byte v12, v0, v11

    add-int/lit8 v11, v7, 0x1

    and-int/lit8 v10, v10, 0x3f

    or-int/2addr v10, v6

    int-to-byte v10, v10

    .line 142
    aput-byte v10, v0, v7

    goto :goto_2

    :cond_5
    add-int/lit8 v11, v8, -0x4

    if-gt v7, v11, :cond_8

    add-int/lit8 v11, v5, 0x1

    .line 144
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-eq v11, v12, :cond_7

    .line 145
    invoke-interface {p0, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v10, v5}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 147
    invoke-static {v10, v5}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v5

    add-int/lit8 v10, v7, 0x1

    ushr-int/lit8 v12, v5, 0x12

    or-int/lit16 v12, v12, 0xf0

    int-to-byte v12, v12

    .line 148
    aput-byte v12, v0, v7

    add-int/lit8 v7, v10, 0x1

    ushr-int/lit8 v12, v5, 0xc

    and-int/lit8 v12, v12, 0x3f

    or-int/2addr v12, v6

    int-to-byte v12, v12

    .line 149
    aput-byte v12, v0, v10

    add-int/lit8 v10, v7, 0x1

    ushr-int/lit8 v12, v5, 0x6

    and-int/lit8 v12, v12, 0x3f

    or-int/2addr v12, v6

    int-to-byte v12, v12

    .line 150
    aput-byte v12, v0, v7

    add-int/lit8 v7, v10, 0x1

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v6

    int-to-byte v5, v5

    .line 151
    aput-byte v5, v0, v10

    move v5, v11

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_6
    move v5, v11

    .line 146
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    add-int/lit8 v5, v5, -0x1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unpaired surrogate at index "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 153
    :cond_8
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/16 p1, 0x25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Failed writing "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, " at index "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 157
    :cond_9
    :goto_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p0

    sub-int/2addr v7, p0

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 160
    new-instance p1, Ljava/nio/BufferOverflowException;

    invoke-direct {p1}, Ljava/nio/BufferOverflowException;-><init>()V

    .line 161
    invoke-virtual {p1, p0}, Ljava/nio/BufferOverflowException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 162
    throw p1

    .line 164
    :cond_a
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :goto_5
    if-ge v5, v0, :cond_11

    .line 166
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-ge v7, v6, :cond_b

    int-to-byte v7, v7

    .line 168
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto/16 :goto_7

    :cond_b
    if-ge v7, v4, :cond_c

    ushr-int/lit8 v8, v7, 0x6

    or-int/lit16 v8, v8, 0x3c0

    int-to-byte v8, v8

    .line 170
    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v6

    int-to-byte v7, v7

    .line 171
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_c
    if-lt v7, v3, :cond_10

    if-ge v2, v7, :cond_d

    goto :goto_6

    :cond_d
    add-int/lit8 v8, v5, 0x1

    .line 176
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-eq v8, v9, :cond_f

    .line 177
    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 179
    invoke-static {v7, v5}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v5

    ushr-int/lit8 v7, v5, 0x12

    or-int/lit16 v7, v7, 0xf0

    int-to-byte v7, v7

    .line 180
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    ushr-int/lit8 v7, v5, 0xc

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v6

    int-to-byte v7, v7

    .line 181
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    ushr-int/lit8 v7, v5, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v6

    int-to-byte v7, v7

    .line 182
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v6

    int-to-byte v5, v5

    .line 183
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move v5, v8

    goto :goto_7

    :cond_e
    move v5, v8

    .line 178
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    add-int/lit8 v5, v5, -0x1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unpaired surrogate at index "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    :goto_6
    ushr-int/lit8 v8, v7, 0xc

    or-int/lit16 v8, v8, 0x1e0

    int-to-byte v8, v8

    .line 173
    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    ushr-int/lit8 v8, v7, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v8, v6

    int-to-byte v8, v8

    .line 174
    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v6

    int-to-byte v7, v7

    .line 175
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_5

    :cond_11
    return-void

    .line 116
    :cond_12
    new-instance p0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p0
.end method

.method public static b(I)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 226
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzyy;->d(I)I

    move-result p0

    return p0
.end method

.method public static b(II)I
    .locals 0

    .line 192
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzyy;->b(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzyy;->a(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static b(ILcom/google/android/gms/internal/measurement/zzzg;)I
    .locals 1

    .line 194
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzyy;->b(I)I

    move-result p0

    .line 195
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzg;->e()I

    move-result p1

    .line 196
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzyy;->d(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0
.end method

.method public static b(ILjava/lang/String;)I
    .locals 0

    .line 193
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzyy;->b(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzyy;->a(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method private final b()Lcom/google/android/gms/internal/measurement/zzut;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyy;->b:Lcom/google/android/gms/internal/measurement/zzut;

    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyy;->a:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzut;->a(Ljava/nio/ByteBuffer;)Lcom/google/android/gms/internal/measurement/zzut;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyy;->b:Lcom/google/android/gms/internal/measurement/zzut;

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyy;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzyy;->c:I

    goto :goto_0

    .line 12
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzyy;->c:I

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzyy;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyy;->b:Lcom/google/android/gms/internal/measurement/zzut;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzyy;->a:Ljava/nio/ByteBuffer;

    .line 14
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzyy;->c:I

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzyy;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    iget v4, p0, Lcom/google/android/gms/internal/measurement/zzyy;->c:I

    sub-int/2addr v3, v4

    .line 15
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzut;->b([BII)V

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyy;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzyy;->c:I

    .line 17
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyy;->b:Lcom/google/android/gms/internal/measurement/zzut;

    return-object v0
.end method

.method private final b(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    long-to-int p1, p1

    .line 238
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzyy;->e(I)V

    return-void

    :cond_0
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    .line 240
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzyy;->e(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public static c(IJ)I
    .locals 0

    .line 189
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzyy;->b(I)I

    move-result p0

    .line 190
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzyy;->a(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static d(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method private final e(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte p1, p1

    .line 212
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyy;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyy;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void

    .line 213
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzyz;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyy;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzyy;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzyz;-><init>(II)V

    throw p1
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 204
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyy;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 206
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 207
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzyy;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 208
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Did not write as much data as expected, %s bytes remaining."

    .line 209
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(ID)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 18
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzyy;->c(II)V

    .line 20
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    .line 21
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzyy;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p3

    const/16 v0, 0x8

    if-lt p3, v0, :cond_0

    .line 23
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzyy;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p3, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    return-void

    .line 22
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzyz;

    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzyy;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzyy;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->limit()I

    move-result p3

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzyz;-><init>(II)V

    throw p1
.end method

.method public final a(IF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 25
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzyy;->c(II)V

    .line 27
    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    .line 28
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzyy;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    const/4 v0, 0x4

    if-lt p2, v0, :cond_0

    .line 30
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzyy;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void

    .line 29
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzyz;

    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzyy;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyy;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zzyz;-><init>(II)V

    throw p1
.end method

.method public final a(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzyy;->c(II)V

    if-ltz p2, :cond_0

    .line 43
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzyy;->c(I)V

    return-void

    :cond_0
    int-to-long p1, p2

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzyy;->b(J)V

    return-void
.end method

.method public final a(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzyy;->c(II)V

    .line 34
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzyy;->b(J)V

    return-void
.end method

.method public final a(ILcom/google/android/gms/internal/measurement/zzwt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzyy;->b()Lcom/google/android/gms/internal/measurement/zzut;

    move-result-object v0

    .line 81
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzut;->a(ILcom/google/android/gms/internal/measurement/zzwt;)V

    .line 82
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzut;->a()V

    .line 83
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzyy;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzyy;->c:I

    return-void
.end method

.method public final a(ILcom/google/android/gms/internal/measurement/zzzg;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 77
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzyy;->c(II)V

    .line 78
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzyy;->a(Lcom/google/android/gms/internal/measurement/zzzg;)V

    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 54
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzyy;->c(II)V

    .line 56
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzyy;->d(I)I

    move-result p1

    .line 57
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzyy;->d(I)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyy;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 60
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzyy;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lt v1, p1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzyy;->a:Ljava/nio/ByteBuffer;

    add-int v2, v0, p1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 63
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzyy;->a:Ljava/nio/ByteBuffer;

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/zzyy;->a(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    .line 64
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzyy;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    .line 65
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzyy;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    sub-int v0, p2, v0

    sub-int/2addr v0, p1

    .line 66
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzyy;->c(I)V

    .line 67
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzyy;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    .line 61
    :cond_0
    new-instance p2, Lcom/google/android/gms/internal/measurement/zzyz;

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzyy;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/measurement/zzyz;-><init>(II)V

    throw p2

    .line 69
    :cond_1
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzyy;->a(Ljava/lang/CharSequence;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzyy;->c(I)V

    .line 70
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzyy;->a:Ljava/nio/ByteBuffer;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/zzyy;->a(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 73
    new-instance p2, Lcom/google/android/gms/internal/measurement/zzyz;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyy;->a:Ljava/nio/ByteBuffer;

    .line 74
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzyy;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-direct {p2, v0, v1}, Lcom/google/android/gms/internal/measurement/zzyz;-><init>(II)V

    .line 75
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/zzyz;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 76
    throw p2
.end method

.method public final a(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 46
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzyy;->c(II)V

    int-to-byte p1, p2

    .line 50
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzyy;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 52
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzyy;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void

    .line 51
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzyz;

    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzyy;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyy;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zzyz;-><init>(II)V

    throw p1
.end method

.method public final a(Lcom/google/android/gms/internal/measurement/zzzg;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzg;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzyy;->c(I)V

    .line 187
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/zzzg;->a(Lcom/google/android/gms/internal/measurement/zzyy;)V

    return-void
.end method

.method public final b(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 36
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzyy;->c(II)V

    .line 38
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzyy;->b(J)V

    return-void
.end method

.method public final b([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    array-length v0, p1

    .line 217
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzyy;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lt v1, v0, :cond_0

    .line 218
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzyy;->a:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void

    .line 219
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzyz;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyy;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzyy;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzyz;-><init>(II)V

    throw p1
.end method

.method public final c(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    .line 228
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzyy;->e(I)V

    return-void

    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    .line 230
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzyy;->e(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method public final c(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    .line 222
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzyy;->c(I)V

    return-void
.end method
