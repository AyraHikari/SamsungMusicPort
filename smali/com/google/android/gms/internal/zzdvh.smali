.class final Lcom/google/android/gms/internal/zzdvh;
.super Ljava/lang/Object;


# direct methods
.method private static a([BI)J
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    int-to-long p0, p0

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    return-wide p0
.end method

.method private static a([BII)J
    .locals 2

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzdvh;->a([BI)J

    move-result-wide p0

    shr-long/2addr p0, p2

    const-wide/32 v0, 0x3ffffff

    and-long/2addr p0, v0

    return-wide p0
.end method

.method private static a([BJI)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    add-int v1, p3, v0

    const-wide/16 v2, 0xff

    and-long/2addr v2, p1

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x8

    shr-long/2addr p1, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static a([B[B)[B
    .locals 53

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v0

    const/16 v3, 0x20

    if-ne v2, v3, :cond_2

    const/4 v2, 0x0

    invoke-static {v0, v2, v2}, Lcom/google/android/gms/internal/zzdvh;->a([BII)J

    move-result-wide v4

    const-wide/32 v6, 0x3ffffff

    and-long/2addr v4, v6

    const/4 v8, 0x2

    const/4 v9, 0x3

    invoke-static {v0, v9, v8}, Lcom/google/android/gms/internal/zzdvh;->a([BII)J

    move-result-wide v10

    const-wide/32 v12, 0x3ffff03

    and-long/2addr v10, v12

    const/4 v12, 0x4

    const/4 v13, 0x6

    invoke-static {v0, v13, v12}, Lcom/google/android/gms/internal/zzdvh;->a([BII)J

    move-result-wide v14

    const-wide/32 v16, 0x3ffc0ff

    and-long v14, v14, v16

    const/16 v3, 0x9

    invoke-static {v0, v3, v13}, Lcom/google/android/gms/internal/zzdvh;->a([BII)J

    move-result-wide v16

    const-wide/32 v18, 0x3f03fff

    and-long v16, v16, v18

    const/16 v6, 0x8

    const/16 v7, 0xc

    invoke-static {v0, v7, v6}, Lcom/google/android/gms/internal/zzdvh;->a([BII)J

    move-result-wide v18

    const-wide/32 v22, 0xfffff

    and-long v18, v18, v22

    const-wide/16 v22, 0x5

    mul-long v24, v10, v22

    mul-long v26, v14, v22

    mul-long v28, v16, v22

    mul-long v30, v18, v22

    const/16 v6, 0x11

    new-array v6, v6, [B

    const-wide/16 v32, 0x0

    move-wide/from16 v34, v32

    move-wide/from16 v36, v34

    move-wide/from16 v38, v36

    move-wide/from16 v40, v38

    const/4 v7, 0x0

    :goto_0
    array-length v3, v1

    const/16 v12, 0x10

    const/16 v42, 0x1a

    if-ge v7, v3, :cond_1

    array-length v3, v1

    sub-int/2addr v3, v7

    invoke-static {v12, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v7, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v43, 0x1

    aput-byte v43, v6, v3

    if-eq v3, v12, :cond_0

    add-int/lit8 v3, v3, 0x1

    const/16 v12, 0x11

    invoke-static {v6, v3, v12, v2}, Ljava/util/Arrays;->fill([BIIB)V

    :cond_0
    invoke-static {v6, v2, v2}, Lcom/google/android/gms/internal/zzdvh;->a([BII)J

    move-result-wide v45

    add-long v40, v40, v45

    invoke-static {v6, v9, v8}, Lcom/google/android/gms/internal/zzdvh;->a([BII)J

    move-result-wide v45

    add-long v32, v32, v45

    const/4 v3, 0x4

    invoke-static {v6, v13, v3}, Lcom/google/android/gms/internal/zzdvh;->a([BII)J

    move-result-wide v45

    add-long v34, v34, v45

    const/16 v3, 0x9

    invoke-static {v6, v3, v13}, Lcom/google/android/gms/internal/zzdvh;->a([BII)J

    move-result-wide v45

    add-long v36, v36, v45

    const/16 v3, 0x8

    const/16 v12, 0xc

    invoke-static {v6, v12, v3}, Lcom/google/android/gms/internal/zzdvh;->a([BII)J

    move-result-wide v45

    const/16 v3, 0x10

    aget-byte v3, v6, v3

    shl-int/lit8 v3, v3, 0x18

    int-to-long v8, v3

    or-long v8, v45, v8

    add-long v38, v38, v8

    mul-long v8, v40, v4

    mul-long v43, v32, v30

    add-long v8, v8, v43

    mul-long v43, v34, v28

    add-long v8, v8, v43

    mul-long v43, v36, v26

    add-long v8, v8, v43

    mul-long v43, v38, v24

    add-long v8, v8, v43

    mul-long v43, v40, v10

    mul-long v45, v32, v4

    add-long v43, v43, v45

    mul-long v45, v34, v30

    add-long v43, v43, v45

    mul-long v45, v36, v28

    add-long v43, v43, v45

    mul-long v45, v38, v26

    add-long v43, v43, v45

    mul-long v45, v40, v14

    mul-long v47, v32, v10

    add-long v45, v45, v47

    mul-long v47, v34, v4

    add-long v45, v45, v47

    mul-long v47, v36, v30

    add-long v45, v45, v47

    mul-long v47, v38, v28

    add-long v45, v45, v47

    mul-long v47, v40, v16

    mul-long v49, v32, v14

    add-long v47, v47, v49

    mul-long v49, v34, v10

    add-long v47, v47, v49

    mul-long v49, v36, v4

    add-long v47, v47, v49

    mul-long v49, v38, v30

    add-long v47, v47, v49

    mul-long v40, v40, v18

    mul-long v32, v32, v16

    add-long v40, v40, v32

    mul-long v34, v34, v14

    add-long v40, v40, v34

    mul-long v36, v36, v10

    add-long v40, v40, v36

    mul-long v38, v38, v4

    add-long v40, v40, v38

    shr-long v32, v8, v42

    const-wide/32 v20, 0x3ffffff

    and-long v8, v8, v20

    add-long v43, v43, v32

    shr-long v32, v43, v42

    and-long v34, v43, v20

    add-long v45, v45, v32

    shr-long v32, v45, v42

    and-long v36, v45, v20

    add-long v47, v47, v32

    shr-long v32, v47, v42

    and-long v38, v47, v20

    add-long v40, v40, v32

    shr-long v32, v40, v42

    and-long v40, v40, v20

    mul-long v32, v32, v22

    add-long v8, v8, v32

    shr-long v32, v8, v42

    and-long v8, v8, v20

    add-long v32, v34, v32

    add-int/lit8 v7, v7, 0x10

    move-wide/from16 v34, v36

    move-wide/from16 v36, v38

    move-wide/from16 v38, v40

    const/4 v12, 0x4

    move-wide/from16 v40, v8

    const/4 v8, 0x2

    const/4 v9, 0x3

    goto/16 :goto_0

    :cond_1
    const-wide/32 v20, 0x3ffffff

    shr-long v3, v32, v42

    and-long v5, v32, v20

    add-long v34, v34, v3

    shr-long v3, v34, v42

    and-long v7, v34, v20

    add-long v36, v36, v3

    shr-long v3, v36, v42

    and-long v9, v36, v20

    add-long v38, v38, v3

    shr-long v3, v38, v42

    and-long v11, v38, v20

    mul-long v3, v3, v22

    add-long v40, v40, v3

    shr-long v3, v40, v42

    and-long v14, v40, v20

    add-long/2addr v5, v3

    add-long v22, v14, v22

    shr-long v3, v22, v42

    and-long v16, v22, v20

    add-long/2addr v3, v5

    shr-long v18, v3, v42

    and-long v3, v3, v20

    add-long v18, v7, v18

    shr-long v22, v18, v42

    and-long v18, v18, v20

    add-long v22, v9, v22

    shr-long v24, v22, v42

    and-long v20, v22, v20

    add-long v24, v11, v24

    const-wide/32 v22, 0x4000000

    sub-long v24, v24, v22

    const/16 v1, 0x3f

    move-wide/from16 v51, v3

    shr-long v2, v24, v1

    and-long/2addr v14, v2

    and-long v4, v5, v2

    and-long v6, v7, v2

    and-long v8, v9, v2

    and-long v10, v11, v2

    not-long v1, v2

    and-long v16, v16, v1

    or-long v14, v14, v16

    and-long v16, v51, v1

    or-long v3, v4, v16

    and-long v16, v18, v1

    or-long v5, v6, v16

    and-long v16, v20, v1

    or-long v7, v8, v16

    and-long v1, v24, v1

    or-long/2addr v1, v10

    shl-long v9, v3, v42

    or-long/2addr v9, v14

    const-wide v11, 0xffffffffL

    and-long/2addr v9, v11

    shr-long/2addr v3, v13

    const/16 v13, 0x14

    shl-long v13, v5, v13

    or-long/2addr v3, v13

    and-long/2addr v3, v11

    const/16 v13, 0xc

    shr-long/2addr v5, v13

    const/16 v13, 0xe

    shl-long v13, v7, v13

    or-long/2addr v5, v13

    and-long/2addr v5, v11

    const/16 v13, 0x12

    shr-long/2addr v7, v13

    const/16 v13, 0x8

    shl-long/2addr v1, v13

    or-long/2addr v1, v7

    and-long/2addr v1, v11

    const/16 v7, 0x10

    invoke-static {v0, v7}, Lcom/google/android/gms/internal/zzdvh;->a([BI)J

    move-result-wide v13

    add-long/2addr v9, v13

    and-long v7, v9, v11

    const/16 v13, 0x14

    invoke-static {v0, v13}, Lcom/google/android/gms/internal/zzdvh;->a([BI)J

    move-result-wide v13

    add-long/2addr v3, v13

    const/16 v13, 0x20

    shr-long/2addr v9, v13

    add-long/2addr v3, v9

    and-long v9, v3, v11

    const/16 v14, 0x18

    invoke-static {v0, v14}, Lcom/google/android/gms/internal/zzdvh;->a([BI)J

    move-result-wide v14

    add-long/2addr v5, v14

    shr-long/2addr v3, v13

    add-long/2addr v5, v3

    and-long v3, v5, v11

    const/16 v14, 0x1c

    invoke-static {v0, v14}, Lcom/google/android/gms/internal/zzdvh;->a([BI)J

    move-result-wide v14

    add-long/2addr v1, v14

    shr-long/2addr v5, v13

    add-long/2addr v1, v5

    and-long v0, v1, v11

    const/16 v2, 0x10

    new-array v2, v2, [B

    const/4 v5, 0x0

    invoke-static {v2, v7, v8, v5}, Lcom/google/android/gms/internal/zzdvh;->a([BJI)V

    const/4 v5, 0x4

    invoke-static {v2, v9, v10, v5}, Lcom/google/android/gms/internal/zzdvh;->a([BJI)V

    const/16 v5, 0x8

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzdvh;->a([BJI)V

    const/16 v3, 0xc

    invoke-static {v2, v0, v1, v3}, Lcom/google/android/gms/internal/zzdvh;->a([BJI)V

    return-object v2

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The key length in bytes must be 32."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
