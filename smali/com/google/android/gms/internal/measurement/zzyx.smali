.class public final Lcom/google/android/gms/internal/measurement/zzyx;
.super Ljava/lang/Object;


# instance fields
.field private final a:[B

.field private final b:I

.field private final c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Lcom/google/android/gms/internal/measurement/zzuo;


# direct methods
.method private constructor <init>([BII)V
    .locals 1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 115
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzyx;->h:I

    const/16 v0, 0x40

    .line 116
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzyx;->j:I

    const/high16 v0, 0x4000000

    .line 117
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzyx;->k:I

    .line 118
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzyx;->a:[B

    .line 119
    iput p2, p0, Lcom/google/android/gms/internal/measurement/zzyx;->b:I

    add-int/2addr p3, p2

    .line 120
    iput p3, p0, Lcom/google/android/gms/internal/measurement/zzyx;->d:I

    iput p3, p0, Lcom/google/android/gms/internal/measurement/zzyx;->c:I

    .line 121
    iput p2, p0, Lcom/google/android/gms/internal/measurement/zzyx;->f:I

    return-void
.end method

.method public static a([B)Lcom/google/android/gms/internal/measurement/zzyx;
    .locals 2

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/zzyx;->a([BII)Lcom/google/android/gms/internal/measurement/zzyx;

    move-result-object p0

    return-object p0
.end method

.method public static a([BII)Lcom/google/android/gms/internal/measurement/zzyx;
    .locals 1

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzyx;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0, p2}, Lcom/google/android/gms/internal/measurement/zzyx;-><init>([BII)V

    return-object p1
.end method

.method private final f(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_2

    .line 184
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzyx;->f:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzyx;->h:I

    if-gt v0, v1, :cond_1

    .line 187
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzyx;->d:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzyx;->f:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    .line 188
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzyx;->f:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzyx;->f:I

    return-void

    .line 189
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzzf;->zzyw()Lcom/google/android/gms/internal/measurement/zzzf;

    move-result-object p1

    throw p1

    .line 185
    :cond_1
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzyx;->h:I

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzyx;->f:I

    sub-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzyx;->f(I)V

    .line 186
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzzf;->zzyw()Lcom/google/android/gms/internal/measurement/zzzf;

    move-result-object p1

    throw p1

    .line 183
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzzf;->zzyx()Lcom/google/android/gms/internal/measurement/zzzf;

    move-result-object p1

    throw p1
.end method

.method private final j()V
    .locals 2

    .line 149
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzyx;->d:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzyx;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzyx;->d:I

    .line 150
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzyx;->d:I

    .line 151
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzyx;->h:I

    if-le v0, v1, :cond_0

    .line 152
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzyx;->h:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzyx;->e:I

    .line 153
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzyx;->d:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzyx;->e:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzyx;->d:I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 154
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzyx;->e:I

    return-void
.end method

.method private final k()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzyx;->f:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzyx;->d:I

    if-eq v0, v1, :cond_0

    .line 181
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyx;->a:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzyx;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzyx;->f:I

    aget-byte v0, v0, v1

    return v0

    .line 180
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzzf;->zzyw()Lcom/google/android/gms/internal/measurement/zzzf;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public final a()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzyx;->f:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzyx;->d:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzyx;->g:I

    return v0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzyx;->d()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzyx;->g:I

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzyx;->g:I

    if-eqz v0, :cond_1

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzyx;->g:I

    return v0

    .line 9
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzzf;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzzf;-><init>(Ljava/lang/String;)V

    .line 10
    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/measurement/zzxd;)Lcom/google/android/gms/internal/measurement/zzvm;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/measurement/zzvm<",
            "TT;*>;>(",
            "Lcom/google/android/gms/internal/measurement/zzxd<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyx;->l:Lcom/google/android/gms/internal/measurement/zzuo;

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyx;->a:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzyx;->b:I

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzyx;->c:I

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzuo;->a([BII)Lcom/google/android/gms/internal/measurement/zzuo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyx;->l:Lcom/google/android/gms/internal/measurement/zzuo;

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyx;->l:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->u()I

    move-result v0

    .line 127
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzyx;->f:I

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzyx;->b:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1

    .line 132
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzyx;->l:Lcom/google/android/gms/internal/measurement/zzuo;

    sub-int/2addr v1, v0

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/zzuo;->f(I)V

    .line 133
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyx;->l:Lcom/google/android/gms/internal/measurement/zzuo;

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzyx;->j:I

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzyx;->i:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzuo;->c(I)I

    .line 134
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyx;->l:Lcom/google/android/gms/internal/measurement/zzuo;

    .line 135
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzuz;->b()Lcom/google/android/gms/internal/measurement/zzuz;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzuo;->a(Lcom/google/android/gms/internal/measurement/zzxd;Lcom/google/android/gms/internal/measurement/zzuz;)Lcom/google/android/gms/internal/measurement/zzwt;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzvm;

    .line 136
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzyx;->g:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzyx;->b(I)Z

    return-object p1

    .line 129
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v2, "CodedInputStream read ahead of CodedInputByteBufferNano: %s > %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 130
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    .line 131
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzvt; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 139
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzzf;

    const-string v1, ""

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzzf;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public final a(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzzf;
        }
    .end annotation

    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzyx;->g:I

    if-ne v0, p1, :cond_0

    return-void

    .line 13
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzzf;

    const-string v0, "Protocol message end-group tag did not match expected tag."

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/zzzf;-><init>(Ljava/lang/String;)V

    .line 14
    throw p1
.end method

.method public final a(Lcom/google/android/gms/internal/measurement/zzzg;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzyx;->d()I

    move-result v0

    .line 60
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzyx;->i:I

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzyx;->j:I

    if-ge v1, v2, :cond_0

    .line 62
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzyx;->c(I)I

    move-result v0

    .line 63
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzyx;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzyx;->i:I

    .line 64
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/zzzg;->a(Lcom/google/android/gms/internal/measurement/zzyx;)Lcom/google/android/gms/internal/measurement/zzzg;

    const/4 p1, 0x0

    .line 65
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzyx;->a(I)V

    .line 66
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzyx;->i:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzyx;->i:I

    .line 67
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzyx;->d(I)V

    return-void

    .line 61
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzzf;->zzyz()Lcom/google/android/gms/internal/measurement/zzzf;

    move-result-object p1

    throw p1
.end method

.method public final a(Lcom/google/android/gms/internal/measurement/zzzg;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzyx;->i:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzyx;->j:I

    if-ge v0, v1, :cond_0

    .line 52
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzyx;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzyx;->i:I

    .line 53
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/zzzg;->a(Lcom/google/android/gms/internal/measurement/zzyx;)Lcom/google/android/gms/internal/measurement/zzzg;

    shl-int/lit8 p1, p2, 0x3

    or-int/lit8 p1, p1, 0x4

    .line 56
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzyx;->a(I)V

    .line 57
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzyx;->i:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzyx;->i:I

    return-void

    .line 51
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzzf;->zzyz()Lcom/google/android/gms/internal/measurement/zzzf;

    move-result-object p1

    throw p1
.end method

.method public final a(II)[B
    .locals 3

    if-nez p2, :cond_0

    .line 165
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzzj;->d:[B

    return-object p1

    .line 166
    :cond_0
    new-array v0, p2, [B

    .line 167
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzyx;->b:I

    add-int/2addr v1, p1

    .line 168
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzyx;->a:[B

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method final b(II)V
    .locals 3

    .line 172
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzyx;->f:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzyx;->b:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_1

    if-ltz p1, :cond_0

    .line 176
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzyx;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzyx;->f:I

    .line 177
    iput p2, p0, Lcom/google/android/gms/internal/measurement/zzyx;->g:I

    return-void

    .line 175
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const/16 v0, 0x18

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Bad position "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 173
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzyx;->f:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzyx;->b:I

    sub-int/2addr v0, v1

    const/16 v1, 0x32

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Position "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is beyond current "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final b()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzyx;->d()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 39
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzzf;

    const-string v0, "Protocol message tag had invalid wire type."

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/zzzf;-><init>(Ljava/lang/String;)V

    .line 40
    throw p1

    .line 37
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzyx;->f()I

    return v1

    :pswitch_1
    const/4 p1, 0x0

    return p1

    .line 27
    :cond_0
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzyx;->a()I

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzyx;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    ushr-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x4

    .line 34
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzyx;->a(I)V

    return v1

    .line 24
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzyx;->d()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzyx;->f(I)V

    return v1

    .line 22
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzyx;->g()J

    return v1

    .line 20
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzyx;->d()I

    return v1

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

.method public final c(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzzf;
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 142
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzyx;->f:I

    add-int/2addr p1, v0

    .line 143
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzyx;->h:I

    if-gt p1, v0, :cond_0

    .line 146
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzyx;->h:I

    .line 147
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzyx;->j()V

    return v0

    .line 145
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzzf;->zzyw()Lcom/google/android/gms/internal/measurement/zzzf;

    move-result-object p1

    throw p1

    .line 141
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzzf;->zzyx()Lcom/google/android/gms/internal/measurement/zzzf;

    move-result-object p1

    throw p1
.end method

.method public final c()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzyx;->d()I

    move-result v0

    if-ltz v0, :cond_1

    .line 45
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzyx;->d:I

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzyx;->f:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 47
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzyx;->a:[B

    iget v3, p0, Lcom/google/android/gms/internal/measurement/zzyx;->f:I

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzze;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 48
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzyx;->f:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzyx;->f:I

    return-object v1

    .line 46
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzzf;->zzyw()Lcom/google/android/gms/internal/measurement/zzzf;

    move-result-object v0

    throw v0

    .line 44
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzzf;->zzyx()Lcom/google/android/gms/internal/measurement/zzzf;

    move-result-object v0

    throw v0
.end method

.method public final d()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzyx;->k()B

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    and-int/lit8 v0, v0, 0x7f

    .line 73
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzyx;->k()B

    move-result v1

    if-ltz v1, :cond_1

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    goto :goto_1

    :cond_1
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    .line 76
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzyx;->k()B

    move-result v1

    if-ltz v1, :cond_2

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    goto :goto_1

    :cond_2
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    .line 79
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzyx;->k()B

    move-result v1

    if-ltz v1, :cond_3

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    goto :goto_1

    :cond_3
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    .line 82
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzyx;->k()B

    move-result v1

    shl-int/lit8 v2, v1, 0x1c

    or-int/2addr v0, v2

    if-gez v1, :cond_6

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_5

    .line 85
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzyx;->k()B

    move-result v2

    if-ltz v2, :cond_4

    return v0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzzf;->zzyy()Lcom/google/android/gms/internal/measurement/zzzf;

    move-result-object v0

    throw v0

    :cond_6
    :goto_1
    return v0
.end method

.method public final d(I)V
    .locals 0

    .line 156
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzyx;->h:I

    .line 157
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzyx;->j()V

    return-void
.end method

.method public final e()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v0, v3, :cond_1

    .line 93
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzyx;->k()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v1

    :cond_0
    add-int/lit8 v0, v0, 0x7

    goto :goto_0

    .line 99
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzzf;->zzyy()Lcom/google/android/gms/internal/measurement/zzzf;

    move-result-object v0

    throw v0
.end method

.method public final e(I)V
    .locals 1

    .line 170
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzyx;->g:I

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzyx;->b(II)V

    return-void
.end method

.method public final f()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzyx;->k()B

    move-result v0

    .line 101
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzyx;->k()B

    move-result v1

    .line 102
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzyx;->k()B

    move-result v2

    .line 103
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzyx;->k()B

    move-result v3

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, v3, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public final g()J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzyx;->k()B

    move-result v0

    .line 106
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzyx;->k()B

    move-result v1

    .line 107
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzyx;->k()B

    move-result v2

    .line 108
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzyx;->k()B

    move-result v3

    .line 109
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzyx;->k()B

    move-result v4

    .line 110
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzyx;->k()B

    move-result v5

    .line 111
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzyx;->k()B

    move-result v6

    .line 112
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzyx;->k()B

    move-result v7

    int-to-long v8, v0

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    int-to-long v0, v1

    and-long/2addr v0, v10

    const/16 v12, 0x8

    shl-long/2addr v0, v12

    or-long/2addr v0, v8

    int-to-long v8, v2

    and-long/2addr v8, v10

    const/16 v2, 0x10

    shl-long/2addr v8, v2

    or-long/2addr v0, v8

    int-to-long v2, v3

    and-long/2addr v2, v10

    const/16 v8, 0x18

    shl-long/2addr v2, v8

    or-long/2addr v0, v2

    int-to-long v2, v4

    and-long/2addr v2, v10

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v5

    and-long/2addr v2, v10

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v6

    and-long/2addr v2, v10

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v7

    and-long/2addr v2, v10

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final h()I
    .locals 2

    .line 159
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzyx;->h:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 161
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzyx;->f:I

    .line 162
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzyx;->h:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public final i()I
    .locals 2

    .line 163
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzyx;->f:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzyx;->b:I

    sub-int/2addr v0, v1

    return v0
.end method
