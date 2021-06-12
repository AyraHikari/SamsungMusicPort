.class public final Lcom/google/android/gms/internal/measurement/zzgb;
.super Lcom/google/android/gms/internal/measurement/zzza;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzza<",
        "Lcom/google/android/gms/internal/measurement/zzgb;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Long;

.field public b:Ljava/lang/String;

.field public c:[Lcom/google/android/gms/internal/measurement/zzgc;

.field public d:[Lcom/google/android/gms/internal/measurement/zzga;

.field public e:[Lcom/google/android/gms/internal/measurement/zzfu;

.field private f:Ljava/lang/Integer;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzza;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgb;->a:Ljava/lang/Long;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgb;->b:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgb;->f:Ljava/lang/Integer;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgc;->a()[Lcom/google/android/gms/internal/measurement/zzgc;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->c:[Lcom/google/android/gms/internal/measurement/zzgc;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzga;->a()[Lcom/google/android/gms/internal/measurement/zzga;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->d:[Lcom/google/android/gms/internal/measurement/zzga;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfu;->a()[Lcom/google/android/gms/internal/measurement/zzfu;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->e:[Lcom/google/android/gms/internal/measurement/zzfu;

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgb;->g:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgb;->J:Lcom/google/android/gms/internal/measurement/zzzc;

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzgb;->K:I

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/measurement/zzyx;)Lcom/google/android/gms/internal/measurement/zzzg;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzyx;->a()I

    move-result v0

    if-eqz v0, :cond_11

    const/16 v1, 0x8

    if-eq v0, v1, :cond_10

    const/16 v1, 0x12

    if-eq v0, v1, :cond_f

    const/16 v1, 0x18

    if-eq v0, v1, :cond_e

    const/16 v1, 0x22

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_6

    const/16 v1, 0x32

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_1

    .line 133
    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzza;->a(Lcom/google/android/gms/internal/measurement/zzyx;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 190
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzyx;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgb;->g:Ljava/lang/String;

    goto :goto_0

    .line 176
    :cond_2
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->a(Lcom/google/android/gms/internal/measurement/zzyx;I)I

    move-result v0

    .line 177
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->e:[Lcom/google/android/gms/internal/measurement/zzfu;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->e:[Lcom/google/android/gms/internal/measurement/zzfu;

    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    .line 178
    new-array v0, v0, [Lcom/google/android/gms/internal/measurement/zzfu;

    if-eqz v1, :cond_4

    .line 180
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzgb;->e:[Lcom/google/android/gms/internal/measurement/zzfu;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    :cond_4
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_5

    .line 182
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzfu;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzfu;-><init>()V

    aput-object v2, v0, v1

    .line 183
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/zzyx;->a(Lcom/google/android/gms/internal/measurement/zzzg;)V

    .line 184
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzyx;->a()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 186
    :cond_5
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzfu;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzfu;-><init>()V

    aput-object v2, v0, v1

    .line 187
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzyx;->a(Lcom/google/android/gms/internal/measurement/zzzg;)V

    .line 188
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgb;->e:[Lcom/google/android/gms/internal/measurement/zzfu;

    goto :goto_0

    .line 161
    :cond_6
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->a(Lcom/google/android/gms/internal/measurement/zzyx;I)I

    move-result v0

    .line 162
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->d:[Lcom/google/android/gms/internal/measurement/zzga;

    if-nez v1, :cond_7

    const/4 v1, 0x0

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->d:[Lcom/google/android/gms/internal/measurement/zzga;

    array-length v1, v1

    :goto_3
    add-int/2addr v0, v1

    .line 163
    new-array v0, v0, [Lcom/google/android/gms/internal/measurement/zzga;

    if-eqz v1, :cond_8

    .line 165
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzgb;->d:[Lcom/google/android/gms/internal/measurement/zzga;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    :cond_8
    :goto_4
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_9

    .line 167
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzga;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzga;-><init>()V

    aput-object v2, v0, v1

    .line 168
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/zzyx;->a(Lcom/google/android/gms/internal/measurement/zzzg;)V

    .line 169
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzyx;->a()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 171
    :cond_9
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzga;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzga;-><init>()V

    aput-object v2, v0, v1

    .line 172
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzyx;->a(Lcom/google/android/gms/internal/measurement/zzzg;)V

    .line 173
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgb;->d:[Lcom/google/android/gms/internal/measurement/zzga;

    goto/16 :goto_0

    .line 146
    :cond_a
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->a(Lcom/google/android/gms/internal/measurement/zzyx;I)I

    move-result v0

    .line 147
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->c:[Lcom/google/android/gms/internal/measurement/zzgc;

    if-nez v1, :cond_b

    const/4 v1, 0x0

    goto :goto_5

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->c:[Lcom/google/android/gms/internal/measurement/zzgc;

    array-length v1, v1

    :goto_5
    add-int/2addr v0, v1

    .line 148
    new-array v0, v0, [Lcom/google/android/gms/internal/measurement/zzgc;

    if-eqz v1, :cond_c

    .line 150
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzgb;->c:[Lcom/google/android/gms/internal/measurement/zzgc;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    :cond_c
    :goto_6
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_d

    .line 152
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzgc;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzgc;-><init>()V

    aput-object v2, v0, v1

    .line 153
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/zzyx;->a(Lcom/google/android/gms/internal/measurement/zzzg;)V

    .line 154
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzyx;->a()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 156
    :cond_d
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzgc;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzgc;-><init>()V

    aput-object v2, v0, v1

    .line 157
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzyx;->a(Lcom/google/android/gms/internal/measurement/zzzg;)V

    .line 158
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgb;->c:[Lcom/google/android/gms/internal/measurement/zzgc;

    goto/16 :goto_0

    .line 142
    :cond_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzyx;->d()I

    move-result v0

    .line 143
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgb;->f:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 139
    :cond_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzyx;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgb;->b:Ljava/lang/String;

    goto/16 :goto_0

    .line 136
    :cond_10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzyx;->e()J

    move-result-wide v0

    .line 137
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgb;->a:Ljava/lang/Long;

    goto/16 :goto_0

    :cond_11
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/measurement/zzyy;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgb;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgb;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/internal/measurement/zzyy;->b(IJ)V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgb;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 69
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzyy;->a(ILjava/lang/String;)V

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgb;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 71
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzyy;->a(II)V

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgb;->c:[Lcom/google/android/gms/internal/measurement/zzgc;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgb;->c:[Lcom/google/android/gms/internal/measurement/zzgc;

    array-length v0, v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    .line 73
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzgb;->c:[Lcom/google/android/gms/internal/measurement/zzgc;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 74
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzgb;->c:[Lcom/google/android/gms/internal/measurement/zzgc;

    aget-object v2, v2, v0

    if-eqz v2, :cond_3

    const/4 v3, 0x4

    .line 76
    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/measurement/zzyy;->a(ILcom/google/android/gms/internal/measurement/zzzg;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgb;->d:[Lcom/google/android/gms/internal/measurement/zzga;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgb;->d:[Lcom/google/android/gms/internal/measurement/zzga;

    array-length v0, v0

    if-lez v0, :cond_6

    const/4 v0, 0x0

    .line 79
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzgb;->d:[Lcom/google/android/gms/internal/measurement/zzga;

    array-length v2, v2

    if-ge v0, v2, :cond_6

    .line 80
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzgb;->d:[Lcom/google/android/gms/internal/measurement/zzga;

    aget-object v2, v2, v0

    if-eqz v2, :cond_5

    const/4 v3, 0x5

    .line 82
    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/measurement/zzyy;->a(ILcom/google/android/gms/internal/measurement/zzzg;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 84
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgb;->e:[Lcom/google/android/gms/internal/measurement/zzfu;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgb;->e:[Lcom/google/android/gms/internal/measurement/zzfu;

    array-length v0, v0

    if-lez v0, :cond_8

    .line 85
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgb;->e:[Lcom/google/android/gms/internal/measurement/zzfu;

    array-length v0, v0

    if-ge v1, v0, :cond_8

    .line 86
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgb;->e:[Lcom/google/android/gms/internal/measurement/zzfu;

    aget-object v0, v0, v1

    if-eqz v0, :cond_7

    const/4 v2, 0x6

    .line 88
    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/measurement/zzyy;->a(ILcom/google/android/gms/internal/measurement/zzzg;)V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 90
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgb;->g:Ljava/lang/String;

    if-eqz v0, :cond_9

    const/4 v0, 0x7

    .line 91
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzyy;->a(ILjava/lang/String;)V

    .line 92
    :cond_9
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/zzza;->a(Lcom/google/android/gms/internal/measurement/zzyy;)V

    return-void
.end method

.method protected final b()I
    .locals 5

    .line 94
    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzza;->b()I

    move-result v0

    .line 95
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->a:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->a:Ljava/lang/Long;

    .line 97
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/measurement/zzyy;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 99
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzgb;->b:Ljava/lang/String;

    .line 100
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzyy;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->f:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 102
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzgb;->f:Ljava/lang/Integer;

    .line 103
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzyy;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 104
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->c:[Lcom/google/android/gms/internal/measurement/zzgc;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->c:[Lcom/google/android/gms/internal/measurement/zzgc;

    array-length v1, v1

    if-lez v1, :cond_5

    move v1, v0

    const/4 v0, 0x0

    .line 105
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzgb;->c:[Lcom/google/android/gms/internal/measurement/zzgc;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 106
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzgb;->c:[Lcom/google/android/gms/internal/measurement/zzgc;

    aget-object v3, v3, v0

    if-eqz v3, :cond_3

    const/4 v4, 0x4

    .line 109
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/measurement/zzyy;->b(ILcom/google/android/gms/internal/measurement/zzzg;)I

    move-result v3

    add-int/2addr v1, v3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 111
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->d:[Lcom/google/android/gms/internal/measurement/zzga;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->d:[Lcom/google/android/gms/internal/measurement/zzga;

    array-length v1, v1

    if-lez v1, :cond_8

    move v1, v0

    const/4 v0, 0x0

    .line 112
    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzgb;->d:[Lcom/google/android/gms/internal/measurement/zzga;

    array-length v3, v3

    if-ge v0, v3, :cond_7

    .line 113
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzgb;->d:[Lcom/google/android/gms/internal/measurement/zzga;

    aget-object v3, v3, v0

    if-eqz v3, :cond_6

    const/4 v4, 0x5

    .line 116
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/measurement/zzyy;->b(ILcom/google/android/gms/internal/measurement/zzzg;)I

    move-result v3

    add-int/2addr v1, v3

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    move v0, v1

    .line 118
    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->e:[Lcom/google/android/gms/internal/measurement/zzfu;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->e:[Lcom/google/android/gms/internal/measurement/zzfu;

    array-length v1, v1

    if-lez v1, :cond_a

    .line 119
    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->e:[Lcom/google/android/gms/internal/measurement/zzfu;

    array-length v1, v1

    if-ge v2, v1, :cond_a

    .line 120
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->e:[Lcom/google/android/gms/internal/measurement/zzfu;

    aget-object v1, v1, v2

    if-eqz v1, :cond_9

    const/4 v3, 0x6

    .line 123
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/measurement/zzyy;->b(ILcom/google/android/gms/internal/measurement/zzzg;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 125
    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->g:Ljava/lang/String;

    if-eqz v1, :cond_b

    const/4 v1, 0x7

    .line 126
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzgb;->g:Ljava/lang/String;

    .line 127
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzyy;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 15
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zzgb;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 17
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzgb;

    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->a:Ljava/lang/Long;

    if-nez v1, :cond_2

    .line 19
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgb;->a:Ljava/lang/Long;

    if-eqz v1, :cond_3

    return v2

    .line 21
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->a:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzgb;->a:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 23
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->b:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 24
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgb;->b:Ljava/lang/String;

    if-eqz v1, :cond_5

    return v2

    .line 26
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzgb;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 28
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->f:Ljava/lang/Integer;

    if-nez v1, :cond_6

    .line 29
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgb;->f:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    return v2

    .line 31
    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->f:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzgb;->f:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 33
    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->c:[Lcom/google/android/gms/internal/measurement/zzgc;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzgb;->c:[Lcom/google/android/gms/internal/measurement/zzgc;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/zzze;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 35
    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->d:[Lcom/google/android/gms/internal/measurement/zzga;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzgb;->d:[Lcom/google/android/gms/internal/measurement/zzga;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/zzze;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 37
    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->e:[Lcom/google/android/gms/internal/measurement/zzfu;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzgb;->e:[Lcom/google/android/gms/internal/measurement/zzfu;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/zzze;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 39
    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->g:Ljava/lang/String;

    if-nez v1, :cond_b

    .line 40
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgb;->g:Ljava/lang/String;

    if-eqz v1, :cond_c

    return v2

    .line 42
    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzgb;->g:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 44
    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->J:Lcom/google/android/gms/internal/measurement/zzzc;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->J:Lcom/google/android/gms/internal/measurement/zzzc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzc;->b()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_0

    .line 46
    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgb;->J:Lcom/google/android/gms/internal/measurement/zzzc;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzgb;->J:Lcom/google/android/gms/internal/measurement/zzzc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzzc;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 45
    :cond_e
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgb;->J:Lcom/google/android/gms/internal/measurement/zzzc;

    if-eqz v1, :cond_10

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzgb;->J:Lcom/google/android/gms/internal/measurement/zzzc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzc;->b()Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_1

    :cond_f
    return v2

    :cond_10
    :goto_1
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 49
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->a:Ljava/lang/Long;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 51
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 53
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->f:Ljava/lang/Integer;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 54
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->c:[Lcom/google/android/gms/internal/measurement/zzgc;

    .line 55
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzze;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 56
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->d:[Lcom/google/android/gms/internal/measurement/zzga;

    .line 57
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzze;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 58
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->e:[Lcom/google/android/gms/internal/measurement/zzfu;

    .line 59
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzze;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 61
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->g:Ljava/lang/String;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 63
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->J:Lcom/google/android/gms/internal/measurement/zzzc;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->J:Lcom/google/android/gms/internal/measurement/zzzc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzc;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_4

    .line 64
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->J:Lcom/google/android/gms/internal/measurement/zzzc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzc;->hashCode()I

    move-result v2

    :cond_5
    :goto_4
    add-int/2addr v0, v2

    return v0
.end method
