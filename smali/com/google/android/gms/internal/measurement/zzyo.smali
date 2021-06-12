.class final Lcom/google/android/gms/internal/measurement/zzyo;
.super Lcom/google/android/gms/internal/measurement/zzyl;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzyl;-><init>()V

    return-void
.end method

.method private static a([BIJI)I
    .locals 2

    packed-switch p4, :pswitch_data_0

    .line 178
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 175
    :pswitch_0
    invoke-static {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzyh;->a([BJ)B

    move-result p4

    const-wide/16 v0, 0x1

    add-long/2addr p2, v0

    .line 176
    invoke-static {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzyh;->a([BJ)B

    move-result p0

    .line 177
    invoke-static {p1, p4, p0}, Lcom/google/android/gms/internal/measurement/zzyj;->a(III)I

    move-result p0

    return p0

    .line 174
    :pswitch_1
    invoke-static {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzyh;->a([BJ)B

    move-result p0

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/zzyj;->a(II)I

    move-result p0

    return p0

    .line 173
    :pswitch_2
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzyj;->a(I)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method final a(I[BII)I
    .locals 17

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    or-int v3, v1, v2

    .line 2
    array-length v4, v0

    sub-int/2addr v4, v2

    or-int/2addr v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-ltz v3, :cond_12

    int-to-long v7, v1

    int-to-long v1, v2

    sub-long/2addr v1, v7

    long-to-int v1, v1

    const/16 v2, 0x10

    const-wide/16 v9, 0x1

    if-ge v1, v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    move-wide v11, v7

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    add-long v13, v11, v9

    .line 12
    invoke-static {v0, v11, v12}, Lcom/google/android/gms/internal/measurement/zzyh;->a([BJ)B

    move-result v3

    if-gez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move-wide v11, v13

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_1
    sub-int/2addr v1, v2

    int-to-long v2, v2

    add-long/2addr v7, v2

    :cond_3
    :goto_2
    const/4 v2, 0x0

    :goto_3
    if-lez v1, :cond_5

    add-long v2, v7, v9

    .line 20
    invoke-static {v0, v7, v8}, Lcom/google/android/gms/internal/measurement/zzyh;->a([BJ)B

    move-result v7

    if-ltz v7, :cond_4

    add-int/lit8 v1, v1, -0x1

    move-wide v15, v2

    move v2, v7

    move-wide v7, v15

    goto :goto_3

    :cond_4
    move-wide v15, v2

    move v2, v7

    move-wide v7, v15

    :cond_5
    if-nez v1, :cond_6

    return v6

    :cond_6
    add-int/lit8 v1, v1, -0x1

    const/16 v3, -0x20

    const/16 v11, -0x41

    const/4 v12, -0x1

    if-ge v2, v3, :cond_a

    if-nez v1, :cond_7

    return v2

    :cond_7
    add-int/lit8 v1, v1, -0x1

    const/16 v3, -0x3e

    if-lt v2, v3, :cond_9

    add-long v2, v7, v9

    .line 29
    invoke-static {v0, v7, v8}, Lcom/google/android/gms/internal/measurement/zzyh;->a([BJ)B

    move-result v7

    if-le v7, v11, :cond_8

    goto :goto_4

    :cond_8
    move-wide v7, v2

    goto :goto_2

    :cond_9
    :goto_4
    return v12

    :cond_a
    const/16 v13, -0x10

    if-ge v2, v13, :cond_f

    if-ge v1, v4, :cond_b

    .line 33
    invoke-static {v0, v2, v7, v8, v1}, Lcom/google/android/gms/internal/measurement/zzyo;->a([BIJI)I

    move-result v0

    return v0

    :cond_b
    add-int/lit8 v1, v1, -0x2

    add-long v13, v7, v9

    .line 35
    invoke-static {v0, v7, v8}, Lcom/google/android/gms/internal/measurement/zzyh;->a([BJ)B

    move-result v7

    if-gt v7, v11, :cond_e

    const/16 v8, -0x60

    if-ne v2, v3, :cond_c

    if-lt v7, v8, :cond_e

    :cond_c
    const/16 v3, -0x13

    if-ne v2, v3, :cond_d

    if-ge v7, v8, :cond_e

    :cond_d
    const/4 v2, 0x0

    add-long v7, v13, v9

    .line 36
    invoke-static {v0, v13, v14}, Lcom/google/android/gms/internal/measurement/zzyh;->a([BJ)B

    move-result v2

    if-le v2, v11, :cond_3

    :cond_e
    return v12

    :cond_f
    if-ge v1, v5, :cond_10

    .line 40
    invoke-static {v0, v2, v7, v8, v1}, Lcom/google/android/gms/internal/measurement/zzyo;->a([BIJI)I

    move-result v0

    return v0

    :cond_10
    add-int/lit8 v1, v1, -0x3

    add-long v13, v7, v9

    .line 42
    invoke-static {v0, v7, v8}, Lcom/google/android/gms/internal/measurement/zzyh;->a([BJ)B

    move-result v3

    if-gt v3, v11, :cond_11

    shl-int/lit8 v2, v2, 0x1c

    add-int/lit8 v3, v3, 0x70

    add-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x1e

    if-nez v2, :cond_11

    add-long v2, v13, v9

    .line 43
    invoke-static {v0, v13, v14}, Lcom/google/android/gms/internal/measurement/zzyh;->a([BJ)B

    move-result v7

    if-gt v7, v11, :cond_11

    add-long v7, v2, v9

    .line 44
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzyh;->a([BJ)B

    move-result v2

    if-le v2, v11, :cond_3

    :cond_11
    return v12

    .line 3
    :cond_12
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-array v5, v5, [Ljava/lang/Object;

    array-length v0, v0

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v5, v1

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v4

    const-string v0, "Array length=%d, index=%d, limit=%d"

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method final a(Ljava/lang/CharSequence;[BII)I
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    int-to-long v4, v2

    int-to-long v6, v3

    add-long/2addr v6, v4

    .line 95
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-gt v8, v3, :cond_c

    .line 96
    array-length v9, v1

    sub-int/2addr v9, v3

    if-lt v9, v2, :cond_c

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x80

    const-wide/16 v9, 0x1

    if-ge v2, v8, :cond_0

    .line 100
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    if-ge v11, v3, :cond_0

    add-long/2addr v9, v4

    int-to-byte v3, v11

    .line 101
    invoke-static {v1, v4, v5, v3}, Lcom/google/android/gms/internal/measurement/zzyh;->a([BJB)V

    add-int/lit8 v2, v2, 0x1

    move-wide v4, v9

    goto :goto_0

    :cond_0
    if-ne v2, v8, :cond_1

    long-to-int v0, v4

    return v0

    :cond_1
    :goto_1
    if-ge v2, v8, :cond_b

    .line 106
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    if-ge v11, v3, :cond_2

    cmp-long v12, v4, v6

    if-gez v12, :cond_2

    add-long v12, v4, v9

    int-to-byte v11, v11

    .line 108
    invoke-static {v1, v4, v5, v11}, Lcom/google/android/gms/internal/measurement/zzyh;->a([BJB)V

    :goto_2
    move-wide v4, v12

    goto/16 :goto_3

    :cond_2
    const/16 v12, 0x800

    if-ge v11, v12, :cond_3

    const-wide/16 v12, 0x2

    sub-long v12, v6, v12

    cmp-long v12, v4, v12

    if-gtz v12, :cond_3

    add-long v12, v4, v9

    ushr-int/lit8 v14, v11, 0x6

    or-int/lit16 v14, v14, 0x3c0

    int-to-byte v14, v14

    .line 110
    invoke-static {v1, v4, v5, v14}, Lcom/google/android/gms/internal/measurement/zzyh;->a([BJB)V

    add-long v4, v12, v9

    and-int/lit8 v11, v11, 0x3f

    or-int/2addr v11, v3

    int-to-byte v11, v11

    .line 111
    invoke-static {v1, v12, v13, v11}, Lcom/google/android/gms/internal/measurement/zzyh;->a([BJB)V

    goto/16 :goto_3

    :cond_3
    const v12, 0xdfff

    const v13, 0xd800

    if-lt v11, v13, :cond_4

    if-ge v12, v11, :cond_5

    :cond_4
    const-wide/16 v14, 0x3

    sub-long v14, v6, v14

    cmp-long v14, v4, v14

    if-gtz v14, :cond_5

    add-long v12, v4, v9

    ushr-int/lit8 v14, v11, 0xc

    or-int/lit16 v14, v14, 0x1e0

    int-to-byte v14, v14

    .line 113
    invoke-static {v1, v4, v5, v14}, Lcom/google/android/gms/internal/measurement/zzyh;->a([BJB)V

    add-long v4, v12, v9

    ushr-int/lit8 v14, v11, 0x6

    and-int/lit8 v14, v14, 0x3f

    or-int/2addr v14, v3

    int-to-byte v14, v14

    .line 114
    invoke-static {v1, v12, v13, v14}, Lcom/google/android/gms/internal/measurement/zzyh;->a([BJB)V

    add-long v12, v4, v9

    and-int/lit8 v11, v11, 0x3f

    or-int/2addr v11, v3

    int-to-byte v11, v11

    .line 115
    invoke-static {v1, v4, v5, v11}, Lcom/google/android/gms/internal/measurement/zzyh;->a([BJB)V

    goto :goto_2

    :cond_5
    const-wide/16 v14, 0x4

    sub-long v14, v6, v14

    cmp-long v14, v4, v14

    if-gtz v14, :cond_8

    add-int/lit8 v12, v2, 0x1

    if-eq v12, v8, :cond_6

    .line 117
    invoke-interface {v0, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v11, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 119
    invoke-static {v11, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    add-long v13, v4, v9

    ushr-int/lit8 v11, v2, 0x12

    or-int/lit16 v11, v11, 0xf0

    int-to-byte v11, v11

    .line 120
    invoke-static {v1, v4, v5, v11}, Lcom/google/android/gms/internal/measurement/zzyh;->a([BJB)V

    add-long v4, v13, v9

    ushr-int/lit8 v11, v2, 0xc

    and-int/lit8 v11, v11, 0x3f

    or-int/2addr v11, v3

    int-to-byte v11, v11

    .line 121
    invoke-static {v1, v13, v14, v11}, Lcom/google/android/gms/internal/measurement/zzyh;->a([BJB)V

    add-long v13, v4, v9

    ushr-int/lit8 v11, v2, 0x6

    and-int/lit8 v11, v11, 0x3f

    or-int/2addr v11, v3

    int-to-byte v11, v11

    .line 122
    invoke-static {v1, v4, v5, v11}, Lcom/google/android/gms/internal/measurement/zzyh;->a([BJB)V

    add-long v4, v13, v9

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 123
    invoke-static {v1, v13, v14, v2}, Lcom/google/android/gms/internal/measurement/zzyh;->a([BJB)V

    move v2, v12

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_6
    move v12, v2

    .line 118
    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzyn;

    add-int/lit8 v12, v12, -0x1

    invoke-direct {v0, v12, v8}, Lcom/google/android/gms/internal/measurement/zzyn;-><init>(II)V

    throw v0

    :cond_8
    if-gt v13, v11, :cond_a

    if-gt v11, v12, :cond_a

    add-int/lit8 v1, v2, 0x1

    if-eq v1, v8, :cond_9

    .line 126
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v11, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-nez v0, :cond_a

    .line 127
    :cond_9
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzyn;

    invoke-direct {v0, v2, v8}, Lcom/google/android/gms/internal/measurement/zzyn;-><init>(II)V

    throw v0

    .line 128
    :cond_a
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/16 v1, 0x2e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Failed writing "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, " at index "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    long-to-int v0, v4

    return v0

    .line 97
    :cond_c
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    add-int/lit8 v8, v8, -0x1

    .line 98
    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    add-int/2addr v2, v3

    const/16 v3, 0x25

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed writing "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, " at index "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method final a(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .locals 19

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 131
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/zzyh;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    .line 132
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v4, v2

    .line 133
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v6, v2

    .line 134
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    int-to-long v9, v8

    sub-long v11, v6, v4

    cmp-long v9, v9, v11

    if-gtz v9, :cond_c

    const/4 v9, 0x0

    :goto_0
    const/16 v10, 0x80

    const-wide/16 v11, 0x1

    if-ge v9, v8, :cond_0

    .line 139
    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ge v13, v10, :cond_0

    add-long v10, v4, v11

    int-to-byte v12, v13

    .line 140
    invoke-static {v4, v5, v12}, Lcom/google/android/gms/internal/measurement/zzyh;->a(JB)V

    add-int/lit8 v9, v9, 0x1

    move-wide v4, v10

    goto :goto_0

    :cond_0
    if-ne v9, v8, :cond_1

    sub-long/2addr v4, v2

    long-to-int v0, v4

    .line 143
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :cond_1
    :goto_1
    if-ge v9, v8, :cond_b

    .line 146
    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ge v13, v10, :cond_2

    cmp-long v14, v4, v6

    if-gez v14, :cond_2

    add-long v14, v4, v11

    int-to-byte v13, v13

    .line 148
    invoke-static {v4, v5, v13}, Lcom/google/android/gms/internal/measurement/zzyh;->a(JB)V

    :goto_2
    move-wide v4, v11

    :goto_3
    const/16 v11, 0x80

    goto/16 :goto_4

    :cond_2
    const/16 v14, 0x800

    if-ge v13, v14, :cond_3

    const-wide/16 v14, 0x2

    sub-long v14, v6, v14

    cmp-long v14, v4, v14

    if-gtz v14, :cond_3

    add-long v14, v4, v11

    ushr-int/lit8 v10, v13, 0x6

    or-int/lit16 v10, v10, 0x3c0

    int-to-byte v10, v10

    .line 150
    invoke-static {v4, v5, v10}, Lcom/google/android/gms/internal/measurement/zzyh;->a(JB)V

    add-long v4, v14, v11

    and-int/lit8 v10, v13, 0x3f

    const/16 v13, 0x80

    or-int/2addr v10, v13

    int-to-byte v10, v10

    .line 151
    invoke-static {v14, v15, v10}, Lcom/google/android/gms/internal/measurement/zzyh;->a(JB)V

    move-wide v14, v4

    goto :goto_2

    :cond_3
    const v10, 0xdfff

    const v14, 0xd800

    if-lt v13, v14, :cond_4

    if-ge v10, v13, :cond_5

    :cond_4
    const-wide/16 v17, 0x3

    sub-long v17, v6, v17

    cmp-long v15, v4, v17

    if-gtz v15, :cond_5

    add-long v14, v4, v11

    ushr-int/lit8 v10, v13, 0xc

    or-int/lit16 v10, v10, 0x1e0

    int-to-byte v10, v10

    .line 153
    invoke-static {v4, v5, v10}, Lcom/google/android/gms/internal/measurement/zzyh;->a(JB)V

    add-long v4, v14, v11

    ushr-int/lit8 v10, v13, 0x6

    and-int/lit8 v10, v10, 0x3f

    const/16 v11, 0x80

    or-int/2addr v10, v11

    int-to-byte v10, v10

    .line 154
    invoke-static {v14, v15, v10}, Lcom/google/android/gms/internal/measurement/zzyh;->a(JB)V

    const-wide/16 v14, 0x1

    add-long v17, v4, v14

    and-int/lit8 v10, v13, 0x3f

    or-int/2addr v10, v11

    int-to-byte v10, v10

    .line 155
    invoke-static {v4, v5, v10}, Lcom/google/android/gms/internal/measurement/zzyh;->a(JB)V

    move-wide/from16 v14, v17

    const-wide/16 v4, 0x1

    goto :goto_3

    :cond_5
    const-wide/16 v11, 0x4

    sub-long v11, v6, v11

    cmp-long v11, v4, v11

    if-gtz v11, :cond_8

    add-int/lit8 v10, v9, 0x1

    if-eq v10, v8, :cond_7

    .line 157
    invoke-interface {v0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v13, v9}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 159
    invoke-static {v13, v9}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v9

    const-wide/16 v11, 0x1

    add-long v13, v4, v11

    ushr-int/lit8 v15, v9, 0x12

    or-int/lit16 v15, v15, 0xf0

    int-to-byte v15, v15

    .line 160
    invoke-static {v4, v5, v15}, Lcom/google/android/gms/internal/measurement/zzyh;->a(JB)V

    add-long v4, v13, v11

    ushr-int/lit8 v15, v9, 0xc

    and-int/lit8 v15, v15, 0x3f

    const/16 v11, 0x80

    or-int/lit16 v12, v15, 0x80

    int-to-byte v12, v12

    .line 161
    invoke-static {v13, v14, v12}, Lcom/google/android/gms/internal/measurement/zzyh;->a(JB)V

    const-wide/16 v12, 0x1

    add-long v14, v4, v12

    ushr-int/lit8 v16, v9, 0x6

    and-int/lit8 v12, v16, 0x3f

    or-int/2addr v12, v11

    int-to-byte v12, v12

    .line 162
    invoke-static {v4, v5, v12}, Lcom/google/android/gms/internal/measurement/zzyh;->a(JB)V

    const-wide/16 v4, 0x1

    add-long v12, v14, v4

    and-int/lit8 v9, v9, 0x3f

    or-int/2addr v9, v11

    int-to-byte v9, v9

    .line 163
    invoke-static {v14, v15, v9}, Lcom/google/android/gms/internal/measurement/zzyh;->a(JB)V

    move v9, v10

    move-wide v14, v12

    :goto_4
    add-int/lit8 v9, v9, 0x1

    move-wide v11, v4

    move-wide v4, v14

    const/16 v10, 0x80

    goto/16 :goto_1

    :cond_6
    move v9, v10

    .line 158
    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzyn;

    add-int/lit8 v9, v9, -0x1

    invoke-direct {v0, v9, v8}, Lcom/google/android/gms/internal/measurement/zzyn;-><init>(II)V

    throw v0

    :cond_8
    if-gt v14, v13, :cond_a

    if-gt v13, v10, :cond_a

    add-int/lit8 v1, v9, 0x1

    if-eq v1, v8, :cond_9

    .line 166
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-nez v0, :cond_a

    .line 167
    :cond_9
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzyn;

    invoke-direct {v0, v9, v8}, Lcom/google/android/gms/internal/measurement/zzyn;-><init>(II)V

    throw v0

    .line 168
    :cond_a
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/16 v1, 0x2e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Failed writing "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, " at index "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    const/4 v0, 0x0

    sub-long/2addr v4, v2

    long-to-int v0, v4

    .line 170
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    .line 136
    :cond_c
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    add-int/lit8 v8, v8, -0x1

    .line 137
    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    const/16 v3, 0x25

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed writing "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, " at index "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method final b([BII)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzvt;
        }
    .end annotation

    or-int v0, p2, p3

    .line 47
    array-length v1, p1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_9

    add-int v0, p2, p3

    .line 52
    new-array p3, p3, [C

    const/4 v3, 0x0

    :goto_0
    if-ge p2, v0, :cond_0

    int-to-long v4, p2

    .line 55
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzyh;->a([BJ)B

    move-result v4

    .line 56
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzyk;->a(B)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v5, v3, 0x1

    .line 58
    invoke-static {v4, p3, v3}, Lcom/google/android/gms/internal/measurement/zzyk;->a(B[CI)V

    move v3, v5

    goto :goto_0

    :cond_0
    move v8, v3

    :goto_1
    if-ge p2, v0, :cond_8

    add-int/lit8 v3, p2, 0x1

    int-to-long v4, p2

    .line 61
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzyh;->a([BJ)B

    move-result p2

    .line 62
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzyk;->a(B)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v4, v8, 0x1

    .line 63
    invoke-static {p2, p3, v8}, Lcom/google/android/gms/internal/measurement/zzyk;->a(B[CI)V

    :goto_2
    if-ge v3, v0, :cond_1

    int-to-long v5, v3

    .line 65
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzyh;->a([BJ)B

    move-result p2

    .line 66
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzyk;->a(B)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v4, 0x1

    .line 68
    invoke-static {p2, p3, v4}, Lcom/google/android/gms/internal/measurement/zzyk;->a(B[CI)V

    move v4, v5

    goto :goto_2

    :cond_1
    move p2, v3

    move v8, v4

    goto :goto_1

    .line 70
    :cond_2
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzyk;->b(B)Z

    move-result v4

    if-eqz v4, :cond_4

    if-ge v3, v0, :cond_3

    add-int/lit8 v4, v3, 0x1

    int-to-long v5, v3

    .line 74
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzyh;->a([BJ)B

    move-result v3

    add-int/lit8 v5, v8, 0x1

    .line 75
    invoke-static {p2, v3, p3, v8}, Lcom/google/android/gms/internal/measurement/zzyk;->a(BB[CI)V

    move p2, v4

    move v8, v5

    goto :goto_1

    .line 72
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwr()Lcom/google/android/gms/internal/measurement/zzvt;

    move-result-object p1

    throw p1

    .line 76
    :cond_4
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzyk;->c(B)Z

    move-result v4

    if-eqz v4, :cond_6

    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_5

    add-int/lit8 v4, v3, 0x1

    int-to-long v5, v3

    .line 80
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzyh;->a([BJ)B

    move-result v3

    add-int/lit8 v5, v4, 0x1

    int-to-long v6, v4

    .line 81
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/zzyh;->a([BJ)B

    move-result v4

    add-int/lit8 v6, v8, 0x1

    .line 82
    invoke-static {p2, v3, v4, p3, v8}, Lcom/google/android/gms/internal/measurement/zzyk;->a(BBB[CI)V

    move p2, v5

    move v8, v6

    goto :goto_1

    .line 78
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwr()Lcom/google/android/gms/internal/measurement/zzvt;

    move-result-object p1

    throw p1

    :cond_6
    add-int/lit8 v4, v0, -0x2

    if-ge v3, v4, :cond_7

    add-int/lit8 v4, v3, 0x1

    int-to-long v5, v3

    .line 86
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzyh;->a([BJ)B

    move-result v5

    add-int/lit8 v3, v4, 0x1

    int-to-long v6, v4

    .line 87
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/zzyh;->a([BJ)B

    move-result v6

    add-int/lit8 v9, v3, 0x1

    int-to-long v3, v3

    .line 88
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzyh;->a([BJ)B

    move-result v7

    add-int/lit8 v10, v8, 0x1

    move v3, p2

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, p3

    .line 89
    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/measurement/zzyk;->a(BBBB[CI)V

    add-int/2addr v10, v2

    move p2, v9

    move v8, v10

    goto/16 :goto_1

    .line 84
    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwr()Lcom/google/android/gms/internal/measurement/zzvt;

    move-result-object p1

    throw p1

    .line 92
    :cond_8
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3, v1, v8}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 48
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    array-length p1, p1

    .line 49
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v3, p2

    const-string p1, "buffer length=%d, index=%d, size=%d"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
