.class final Lcom/google/android/gms/internal/measurement/zzuq;
.super Lcom/google/android/gms/internal/measurement/zzuo;


# instance fields
.field private final d:[B

.field private final e:Z

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method private constructor <init>([BIIZ)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzuo;-><init>(Lcom/google/android/gms/internal/measurement/zzup;)V

    const v0, 0x7fffffff

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzuq;->k:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzuq;->d:[B

    add-int/2addr p3, p2

    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/measurement/zzuq;->f:I

    .line 5
    iput p2, p0, Lcom/google/android/gms/internal/measurement/zzuq;->h:I

    .line 6
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzuq;->h:I

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzuq;->i:I

    .line 7
    iput-boolean p4, p0, Lcom/google/android/gms/internal/measurement/zzuq;->e:Z

    return-void
.end method

.method synthetic constructor <init>([BIIZLcom/google/android/gms/internal/measurement/zzup;)V
    .locals 0

    .line 221
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/zzuq;-><init>([BIIZ)V

    return-void
.end method

.method private final A()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzuq;->h:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzuq;->f:I

    if-eq v0, v1, :cond_0

    .line 214
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzuq;->d:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzuq;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzuq;->h:I

    aget-byte v0, v0, v1

    return v0

    .line 213
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwk()Lcom/google/android/gms/internal/measurement/zzvt;

    move-result-object v0

    throw v0
.end method

.method private final v()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzuq;->h:I

    .line 124
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzuq;->f:I

    if-eq v1, v0, :cond_6

    .line 125
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzuq;->d:[B

    add-int/lit8 v2, v0, 0x1

    .line 126
    aget-byte v0, v1, v0

    if-ltz v0, :cond_0

    .line 127
    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzuq;->h:I

    return v0

    .line 129
    :cond_0
    iget v3, p0, Lcom/google/android/gms/internal/measurement/zzuq;->f:I

    sub-int/2addr v3, v2

    const/16 v4, 0x9

    if-lt v3, v4, :cond_6

    add-int/lit8 v3, v2, 0x1

    .line 130
    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x7

    xor-int/2addr v0, v2

    if-gez v0, :cond_1

    xor-int/lit8 v0, v0, -0x80

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v3, 0x1

    .line 132
    aget-byte v3, v1, v3

    shl-int/lit8 v3, v3, 0xe

    xor-int/2addr v0, v3

    if-ltz v0, :cond_3

    xor-int/lit16 v0, v0, 0x3f80

    :cond_2
    move v3, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v2, 0x1

    .line 134
    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x15

    xor-int/2addr v0, v2

    if-gez v0, :cond_4

    const v1, -0x1fc080

    xor-int/2addr v0, v1

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v3, 0x1

    .line 136
    aget-byte v3, v1, v3

    shl-int/lit8 v4, v3, 0x1c

    xor-int/2addr v0, v4

    const v4, 0xfe03f80

    xor-int/2addr v0, v4

    if-gez v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    .line 139
    aget-byte v2, v1, v2

    if-gez v2, :cond_5

    add-int/lit8 v2, v3, 0x1

    aget-byte v3, v1, v3

    if-gez v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v1, v2

    if-gez v2, :cond_5

    add-int/lit8 v2, v3, 0x1

    aget-byte v3, v1, v3

    if-gez v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    aget-byte v1, v1, v2

    if-ltz v1, :cond_6

    .line 140
    :cond_5
    :goto_0
    iput v3, p0, Lcom/google/android/gms/internal/measurement/zzuq;->h:I

    return v0

    .line 142
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzuo;->s()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private final w()J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzuq;->h:I

    .line 144
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzuq;->f:I

    if-eq v1, v0, :cond_9

    .line 145
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzuq;->d:[B

    add-int/lit8 v2, v0, 0x1

    .line 146
    aget-byte v0, v1, v0

    if-ltz v0, :cond_0

    .line 147
    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzuq;->h:I

    int-to-long v0, v0

    return-wide v0

    .line 149
    :cond_0
    iget v3, p0, Lcom/google/android/gms/internal/measurement/zzuq;->f:I

    sub-int/2addr v3, v2

    const/16 v4, 0x9

    if-lt v3, v4, :cond_9

    add-int/lit8 v3, v2, 0x1

    .line 150
    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x7

    xor-int/2addr v0, v2

    if-gez v0, :cond_1

    xor-int/lit8 v0, v0, -0x80

    int-to-long v0, v0

    :goto_0
    move-wide v1, v0

    move v0, v3

    goto/16 :goto_3

    :cond_1
    add-int/lit8 v2, v3, 0x1

    .line 152
    aget-byte v3, v1, v3

    shl-int/lit8 v3, v3, 0xe

    xor-int/2addr v0, v3

    if-ltz v0, :cond_2

    xor-int/lit16 v0, v0, 0x3f80

    int-to-long v0, v0

    move-wide v9, v0

    move v0, v2

    move-wide v1, v9

    goto/16 :goto_3

    :cond_2
    add-int/lit8 v3, v2, 0x1

    .line 154
    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x15

    xor-int/2addr v0, v2

    if-gez v0, :cond_3

    const v1, -0x1fc080

    xor-int/2addr v0, v1

    int-to-long v0, v0

    goto :goto_0

    :cond_3
    int-to-long v4, v0

    add-int/lit8 v0, v3, 0x1

    .line 156
    aget-byte v2, v1, v3

    int-to-long v2, v2

    const/16 v6, 0x1c

    shl-long/2addr v2, v6

    xor-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_4

    const-wide/32 v4, 0xfe03f80

    xor-long v1, v2, v4

    goto :goto_3

    :cond_4
    add-int/lit8 v6, v0, 0x1

    .line 158
    aget-byte v0, v1, v0

    int-to-long v7, v0

    const/16 v0, 0x23

    shl-long/2addr v7, v0

    xor-long/2addr v2, v7

    cmp-long v0, v2, v4

    if-gez v0, :cond_5

    const-wide v0, -0x7f01fc080L

    xor-long/2addr v0, v2

    :goto_1
    move-wide v1, v0

    :goto_2
    move v0, v6

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v6, 0x1

    .line 160
    aget-byte v6, v1, v6

    int-to-long v6, v6

    const/16 v8, 0x2a

    shl-long/2addr v6, v8

    xor-long/2addr v2, v6

    cmp-long v6, v2, v4

    if-ltz v6, :cond_6

    const-wide v4, 0x3f80fe03f80L

    xor-long v1, v2, v4

    goto :goto_3

    :cond_6
    add-int/lit8 v6, v0, 0x1

    .line 162
    aget-byte v0, v1, v0

    int-to-long v7, v0

    const/16 v0, 0x31

    shl-long/2addr v7, v0

    xor-long/2addr v2, v7

    cmp-long v0, v2, v4

    if-gez v0, :cond_7

    const-wide v0, -0x1fc07f01fc080L

    xor-long/2addr v0, v2

    goto :goto_1

    :cond_7
    add-int/lit8 v0, v6, 0x1

    .line 164
    aget-byte v6, v1, v6

    int-to-long v6, v6

    const/16 v8, 0x38

    shl-long/2addr v6, v8

    xor-long/2addr v2, v6

    const-wide v6, 0xfe03f80fe03f80L

    xor-long/2addr v2, v6

    cmp-long v6, v2, v4

    if-gez v6, :cond_8

    add-int/lit8 v6, v0, 0x1

    .line 167
    aget-byte v0, v1, v0

    int-to-long v0, v0

    cmp-long v0, v0, v4

    if-ltz v0, :cond_9

    move-wide v1, v2

    goto :goto_2

    :cond_8
    move-wide v1, v2

    .line 168
    :goto_3
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzuq;->h:I

    return-wide v1

    .line 170
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzuo;->s()J

    move-result-wide v0

    return-wide v0
.end method

.method private final x()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzuq;->h:I

    .line 180
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzuq;->f:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 182
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzuq;->d:[B

    add-int/lit8 v2, v0, 0x4

    .line 183
    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzuq;->h:I

    .line 184
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0

    .line 181
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwk()Lcom/google/android/gms/internal/measurement/zzvt;

    move-result-object v0

    throw v0
.end method

.method private final y()J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzuq;->h:I

    .line 186
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzuq;->f:I

    sub-int/2addr v1, v0

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 188
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzuq;->d:[B

    add-int/lit8 v3, v0, 0x8

    .line 189
    iput v3, p0, Lcom/google/android/gms/internal/measurement/zzuq;->h:I

    .line 190
    aget-byte v3, v1, v0

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x10

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x18

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x4

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x20

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x5

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x28

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x6

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x30

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    int-to-long v0, v0

    and-long/2addr v0, v5

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0

    .line 187
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwk()Lcom/google/android/gms/internal/measurement/zzvt;

    move-result-object v0

    throw v0
.end method

.method private final z()V
    .locals 2

    .line 200
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzuq;->f:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzuq;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzuq;->f:I

    .line 201
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzuq;->f:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzuq;->i:I

    sub-int/2addr v0, v1

    .line 202
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzuq;->k:I

    if-le v0, v1, :cond_0

    .line 203
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzuq;->k:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzuq;->g:I

    .line 204
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzuq;->f:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzuq;->g:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzuq;->f:I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 205
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzuq;->g:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzuo;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzuq;->j:I

    return v0

    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzuq;->v()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzuq;->j:I

    .line 13
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzuq;->j:I

    ushr-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_1

    .line 18
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzuq;->j:I

    return v0

    .line 16
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzvt;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzvt;-><init>(Ljava/lang/String;)V

    .line 17
    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/measurement/zzxd;Lcom/google/android/gms/internal/measurement/zzuz;)Lcom/google/android/gms/internal/measurement/zzwt;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/internal/measurement/zzwt;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/zzxd<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzuz;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzuq;->v()I

    move-result v0

    .line 86
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzuq;->a:I

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzuq;->b:I

    if-ge v1, v2, :cond_0

    .line 88
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzuo;->d(I)I

    move-result v0

    .line 89
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzuq;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzuq;->a:I

    .line 90
    invoke-interface {p1, p0, p2}, Lcom/google/android/gms/internal/measurement/zzxd;->a(Lcom/google/android/gms/internal/measurement/zzuo;Lcom/google/android/gms/internal/measurement/zzuz;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzwt;

    const/4 p2, 0x0

    .line 91
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzuo;->a(I)V

    .line 92
    iget p2, p0, Lcom/google/android/gms/internal/measurement/zzuq;->a:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/google/android/gms/internal/measurement/zzuq;->a:I

    .line 93
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzuo;->e(I)V

    return-object p1

    .line 87
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwp()Lcom/google/android/gms/internal/measurement/zzvt;

    move-result-object p1

    throw p1
.end method

.method public final a(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzvt;
        }
    .end annotation

    .line 19
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzuq;->j:I

    if-ne v0, p1, :cond_0

    return-void

    .line 20
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwn()Lcom/google/android/gms/internal/measurement/zzvt;

    move-result-object p1

    throw p1
.end method

.method public final b()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzuq;->y()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final b(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    .line 56
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwo()Lcom/google/android/gms/internal/measurement/zzvu;

    move-result-object p1

    throw p1

    .line 54
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzuo;->f(I)V

    return v3

    :pswitch_1
    return v2

    .line 44
    :cond_0
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzuo;->a()I

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzuo;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    ushr-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, v1

    .line 51
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzuo;->a(I)V

    return v3

    .line 41
    :pswitch_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzuq;->v()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzuo;->f(I)V

    return v3

    :pswitch_4
    const/16 p1, 0x8

    .line 39
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzuo;->f(I)V

    return v3

    .line 26
    :pswitch_5
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzuq;->f:I

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzuq;->h:I

    sub-int/2addr p1, v0

    const/16 v0, 0xa

    if-lt p1, v0, :cond_3

    :goto_0
    if-ge v2, v0, :cond_2

    .line 29
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzuq;->d:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzuq;->h:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/google/android/gms/internal/measurement/zzuq;->h:I

    aget-byte p1, p1, v1

    if-gez p1, :cond_4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 31
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwm()Lcom/google/android/gms/internal/measurement/zzvt;

    move-result-object p1

    throw p1

    :cond_3
    :goto_1
    if-ge v2, v0, :cond_5

    .line 35
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzuq;->A()B

    move-result p1

    if-gez p1, :cond_4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return v3

    .line 37
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwm()Lcom/google/android/gms/internal/measurement/zzvt;

    move-result-object p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzuq;->x()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final d(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzvt;
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzuo;->u()I

    move-result v0

    add-int/2addr p1, v0

    .line 194
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzuq;->k:I

    if-gt p1, v0, :cond_0

    .line 197
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzuq;->k:I

    .line 198
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzuq;->z()V

    return v0

    .line 196
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwk()Lcom/google/android/gms/internal/measurement/zzvt;

    move-result-object p1

    throw p1

    .line 192
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwl()Lcom/google/android/gms/internal/measurement/zzvt;

    move-result-object p1

    throw p1
.end method

.method public final d()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzuq;->w()J

    move-result-wide v0

    return-wide v0
.end method

.method public final e()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzuq;->w()J

    move-result-wide v0

    return-wide v0
.end method

.method public final e(I)V
    .locals 0

    .line 207
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzuq;->k:I

    .line 208
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzuq;->z()V

    return-void
.end method

.method public final f()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzuq;->v()I

    move-result v0

    return v0
.end method

.method public final f(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 215
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzuq;->f:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzuq;->h:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    .line 216
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzuq;->h:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzuq;->h:I

    return-void

    :cond_0
    if-gez p1, :cond_1

    .line 219
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwl()Lcom/google/android/gms/internal/measurement/zzvt;

    move-result-object p1

    throw p1

    .line 220
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwk()Lcom/google/android/gms/internal/measurement/zzvt;

    move-result-object p1

    throw p1
.end method

.method public final g()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzuq;->y()J

    move-result-wide v0

    return-wide v0
.end method

.method public final h()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzuq;->x()I

    move-result v0

    return v0
.end method

.method public final i()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzuq;->w()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final j()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzuq;->v()I

    move-result v0

    if-lez v0, :cond_0

    .line 66
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzuq;->f:I

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzuq;->h:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 67
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzuq;->d:[B

    iget v3, p0, Lcom/google/android/gms/internal/measurement/zzuq;->h:I

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzvo;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 68
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzuq;->h:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzuq;->h:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    if-gez v0, :cond_2

    .line 73
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwl()Lcom/google/android/gms/internal/measurement/zzvt;

    move-result-object v0

    throw v0

    .line 74
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwk()Lcom/google/android/gms/internal/measurement/zzvt;

    move-result-object v0

    throw v0
.end method

.method public final k()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzuq;->v()I

    move-result v0

    if-lez v0, :cond_0

    .line 76
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzuq;->f:I

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzuq;->h:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzuq;->d:[B

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzuq;->h:I

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/measurement/zzyj;->b([BII)Ljava/lang/String;

    move-result-object v1

    .line 78
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzuq;->h:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzuq;->h:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    if-gtz v0, :cond_2

    .line 83
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwl()Lcom/google/android/gms/internal/measurement/zzvt;

    move-result-object v0

    throw v0

    .line 84
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwk()Lcom/google/android/gms/internal/measurement/zzvt;

    move-result-object v0

    throw v0
.end method

.method public final l()Lcom/google/android/gms/internal/measurement/zzud;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzuq;->v()I

    move-result v0

    if-lez v0, :cond_0

    .line 96
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzuq;->f:I

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzuq;->h:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzuq;->d:[B

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzuq;->h:I

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/measurement/zzud;->zzb([BII)Lcom/google/android/gms/internal/measurement/zzud;

    move-result-object v1

    .line 98
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzuq;->h:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzuq;->h:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    .line 101
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzud;->zzbtz:Lcom/google/android/gms/internal/measurement/zzud;

    return-object v0

    :cond_1
    if-lez v0, :cond_2

    .line 103
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzuq;->f:I

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzuq;->h:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_2

    .line 104
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzuq;->h:I

    .line 105
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzuq;->h:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzuq;->h:I

    .line 106
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzuq;->d:[B

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzuq;->h:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    goto :goto_0

    :cond_2
    if-gtz v0, :cond_4

    if-nez v0, :cond_3

    .line 109
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzvo;->b:[B

    .line 112
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzud;->zzi([B)Lcom/google/android/gms/internal/measurement/zzud;

    move-result-object v0

    return-object v0

    .line 110
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwl()Lcom/google/android/gms/internal/measurement/zzvt;

    move-result-object v0

    throw v0

    .line 111
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwk()Lcom/google/android/gms/internal/measurement/zzvt;

    move-result-object v0

    throw v0
.end method

.method public final m()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzuq;->v()I

    move-result v0

    return v0
.end method

.method public final n()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzuq;->v()I

    move-result v0

    return v0
.end method

.method public final o()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzuq;->x()I

    move-result v0

    return v0
.end method

.method public final p()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzuq;->y()J

    move-result-wide v0

    return-wide v0
.end method

.method public final q()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzuq;->v()I

    move-result v0

    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    xor-int/2addr v0, v1

    return v0
.end method

.method public final r()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzuq;->w()J

    move-result-wide v0

    const/4 v2, 0x1

    ushr-long v2, v0, v2

    const-wide/16 v4, 0x1

    and-long/2addr v0, v4

    neg-long v0, v0

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method final s()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    .line 173
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzuq;->A()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    .line 178
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwm()Lcom/google/android/gms/internal/measurement/zzvt;

    move-result-object v0

    throw v0
.end method

.method public final t()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzuq;->h:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzuq;->f:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final u()I
    .locals 2

    .line 211
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzuq;->h:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzuq;->i:I

    sub-int/2addr v0, v1

    return v0
.end method
