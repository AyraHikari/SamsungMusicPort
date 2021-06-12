.class final Lcom/google/android/gms/internal/zzdud;
.super Lcom/google/android/gms/internal/zzdue;


# direct methods
.method private constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzdue;-><init>([BLcom/google/android/gms/internal/zzduc;)V

    return-void
.end method

.method synthetic constructor <init>([BLcom/google/android/gms/internal/zzduc;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdud;-><init>([B)V

    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method final a([BI)[I
    .locals 3

    const/16 v0, 0x10

    new-array v0, v0, [I

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdue;->d([I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdud;->b:Lcom/google/android/gms/internal/zzdve;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdve;->a()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzdue;->a([I[B)V

    const/16 v1, 0xc

    aput p2, v0, v1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzdud;->a(Ljava/nio/ByteBuffer;)[I

    move-result-object p1

    const/4 p2, 0x0

    const/16 v1, 0xd

    const/4 v2, 0x3

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method final c([B)Lcom/google/android/gms/internal/zzduf;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzduf;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/zzduf;-><init>(Lcom/google/android/gms/internal/zzdub;[BI)V

    return-object v0
.end method

.method final c([I)V
    .locals 2

    const/16 v0, 0xc

    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    return-void
.end method
