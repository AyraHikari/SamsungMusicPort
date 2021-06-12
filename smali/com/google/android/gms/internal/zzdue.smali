.class abstract Lcom/google/android/gms/internal/zzdue;
.super Lcom/google/android/gms/internal/zzdub;


# direct methods
.method private constructor <init>([B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdub;-><init>([B)V

    return-void
.end method

.method synthetic constructor <init>([BLcom/google/android/gms/internal/zzduc;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdue;-><init>([B)V

    return-void
.end method

.method private static a([IIIII)V
    .locals 2

    aget v0, p0, p1

    aget v1, p0, p2

    add-int/2addr v0, v1

    aput v0, p0, p1

    aget v0, p0, p4

    aget v1, p0, p1

    xor-int/2addr v0, v1

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzdue;->a(II)I

    move-result v0

    aput v0, p0, p4

    aget v0, p0, p3

    aget v1, p0, p4

    add-int/2addr v0, v1

    aput v0, p0, p3

    aget v0, p0, p2

    aget v1, p0, p3

    xor-int/2addr v0, v1

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzdue;->a(II)I

    move-result v0

    aput v0, p0, p2

    aget v0, p0, p1

    aget v1, p0, p2

    add-int/2addr v0, v1

    aput v0, p0, p1

    aget v0, p0, p4

    aget p1, p0, p1

    xor-int/2addr p1, v0

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzdue;->a(II)I

    move-result p1

    aput p1, p0, p4

    aget p1, p0, p3

    aget p4, p0, p4

    add-int/2addr p1, p4

    aput p1, p0, p3

    aget p1, p0, p2

    aget p3, p0, p3

    xor-int/2addr p1, p3

    const/4 p3, 0x7

    invoke-static {p1, p3}, Lcom/google/android/gms/internal/zzdue;->a(II)I

    move-result p1

    aput p1, p0, p2

    return-void
.end method

.method static synthetic a([I[B)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzdue;->b([I[B)V

    return-void
.end method

.method private static b([I[B)V
    .locals 3

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzdue;->a(Ljava/nio/ByteBuffer;)[I

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {p1, v1, p0, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static synthetic d([I)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzdue;->e([I)V

    return-void
.end method

.method private static e([I)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/zzdue;->a:[I

    sget-object v1, Lcom/google/android/gms/internal/zzdue;->a:[I

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method final b([I)V
    .locals 16

    move-object/from16 v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    const/16 v4, 0xc

    const/16 v5, 0x8

    const/4 v6, 0x4

    invoke-static {v0, v1, v6, v5, v4}, Lcom/google/android/gms/internal/zzdue;->a([IIIII)V

    const/16 v7, 0xd

    const/16 v8, 0x9

    const/4 v9, 0x5

    const/4 v10, 0x1

    invoke-static {v0, v10, v9, v8, v7}, Lcom/google/android/gms/internal/zzdue;->a([IIIII)V

    const/16 v11, 0xe

    const/4 v12, 0x6

    const/4 v13, 0x2

    invoke-static {v0, v13, v12, v3, v11}, Lcom/google/android/gms/internal/zzdue;->a([IIIII)V

    const/16 v14, 0xf

    const/16 v15, 0xb

    const/4 v6, 0x7

    const/4 v8, 0x3

    invoke-static {v0, v8, v6, v15, v14}, Lcom/google/android/gms/internal/zzdue;->a([IIIII)V

    invoke-static {v0, v1, v9, v3, v14}, Lcom/google/android/gms/internal/zzdue;->a([IIIII)V

    invoke-static {v0, v10, v12, v15, v4}, Lcom/google/android/gms/internal/zzdue;->a([IIIII)V

    invoke-static {v0, v13, v6, v5, v7}, Lcom/google/android/gms/internal/zzdue;->a([IIIII)V

    const/4 v3, 0x4

    const/16 v4, 0x9

    invoke-static {v0, v8, v3, v4, v11}, Lcom/google/android/gms/internal/zzdue;->a([IIIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
