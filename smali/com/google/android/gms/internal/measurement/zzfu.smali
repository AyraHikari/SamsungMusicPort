.class public final Lcom/google/android/gms/internal/measurement/zzfu;
.super Lcom/google/android/gms/internal/measurement/zzza;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzza<",
        "Lcom/google/android/gms/internal/measurement/zzfu;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile d:[Lcom/google/android/gms/internal/measurement/zzfu;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:[Lcom/google/android/gms/internal/measurement/zzfy;

.field public c:[Lcom/google/android/gms/internal/measurement/zzfv;

.field private e:Ljava/lang/Boolean;

.field private f:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzza;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfu;->a:Ljava/lang/Integer;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfy;->a()[Lcom/google/android/gms/internal/measurement/zzfy;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfu;->b:[Lcom/google/android/gms/internal/measurement/zzfy;

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfv;->a()[Lcom/google/android/gms/internal/measurement/zzfv;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfu;->c:[Lcom/google/android/gms/internal/measurement/zzfv;

    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfu;->e:Ljava/lang/Boolean;

    .line 13
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfu;->f:Ljava/lang/Boolean;

    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfu;->J:Lcom/google/android/gms/internal/measurement/zzzc;

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfu;->K:I

    return-void
.end method

.method public static a()[Lcom/google/android/gms/internal/measurement/zzfu;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfu;->d:[Lcom/google/android/gms/internal/measurement/zzfu;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzze;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzfu;->d:[Lcom/google/android/gms/internal/measurement/zzfu;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Lcom/google/android/gms/internal/measurement/zzfu;

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzfu;->d:[Lcom/google/android/gms/internal/measurement/zzfu;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfu;->d:[Lcom/google/android/gms/internal/measurement/zzfu;

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/measurement/zzyx;)Lcom/google/android/gms/internal/measurement/zzzg;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzyx;->a()I

    move-result v0

    if-eqz v0, :cond_c

    const/16 v1, 0x8

    if-eq v0, v1, :cond_b

    const/16 v1, 0x12

    const/4 v2, 0x0

    if-eq v0, v1, :cond_7

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1

    .line 112
    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzza;->a(Lcom/google/android/gms/internal/measurement/zzyx;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 150
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzyx;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfu;->f:Ljava/lang/Boolean;

    goto :goto_0

    .line 148
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzyx;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfu;->e:Ljava/lang/Boolean;

    goto :goto_0

    .line 134
    :cond_3
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->a(Lcom/google/android/gms/internal/measurement/zzyx;I)I

    move-result v0

    .line 135
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfu;->c:[Lcom/google/android/gms/internal/measurement/zzfv;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfu;->c:[Lcom/google/android/gms/internal/measurement/zzfv;

    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    .line 136
    new-array v0, v0, [Lcom/google/android/gms/internal/measurement/zzfv;

    if-eqz v1, :cond_5

    .line 138
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzfu;->c:[Lcom/google/android/gms/internal/measurement/zzfv;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    :cond_5
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_6

    .line 140
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzfv;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzfv;-><init>()V

    aput-object v2, v0, v1

    .line 141
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/zzyx;->a(Lcom/google/android/gms/internal/measurement/zzzg;)V

    .line 142
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzyx;->a()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 144
    :cond_6
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzfv;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzfv;-><init>()V

    aput-object v2, v0, v1

    .line 145
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzyx;->a(Lcom/google/android/gms/internal/measurement/zzzg;)V

    .line 146
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfu;->c:[Lcom/google/android/gms/internal/measurement/zzfv;

    goto :goto_0

    .line 119
    :cond_7
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->a(Lcom/google/android/gms/internal/measurement/zzyx;I)I

    move-result v0

    .line 120
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfu;->b:[Lcom/google/android/gms/internal/measurement/zzfy;

    if-nez v1, :cond_8

    const/4 v1, 0x0

    goto :goto_3

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfu;->b:[Lcom/google/android/gms/internal/measurement/zzfy;

    array-length v1, v1

    :goto_3
    add-int/2addr v0, v1

    .line 121
    new-array v0, v0, [Lcom/google/android/gms/internal/measurement/zzfy;

    if-eqz v1, :cond_9

    .line 123
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzfu;->b:[Lcom/google/android/gms/internal/measurement/zzfy;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    :cond_9
    :goto_4
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_a

    .line 125
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzfy;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzfy;-><init>()V

    aput-object v2, v0, v1

    .line 126
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/zzyx;->a(Lcom/google/android/gms/internal/measurement/zzzg;)V

    .line 127
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzyx;->a()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 129
    :cond_a
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzfy;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzfy;-><init>()V

    aput-object v2, v0, v1

    .line 130
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzyx;->a(Lcom/google/android/gms/internal/measurement/zzzg;)V

    .line 131
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfu;->b:[Lcom/google/android/gms/internal/measurement/zzfy;

    goto/16 :goto_0

    .line 115
    :cond_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzyx;->d()I

    move-result v0

    .line 116
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfu;->a:Ljava/lang/Integer;

    goto/16 :goto_0

    :cond_c
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/measurement/zzyy;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfu;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfu;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/zzyy;->a(II)V

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfu;->b:[Lcom/google/android/gms/internal/measurement/zzfy;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfu;->b:[Lcom/google/android/gms/internal/measurement/zzfy;

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 62
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzfu;->b:[Lcom/google/android/gms/internal/measurement/zzfy;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 63
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzfu;->b:[Lcom/google/android/gms/internal/measurement/zzfy;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    const/4 v3, 0x2

    .line 65
    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/measurement/zzyy;->a(ILcom/google/android/gms/internal/measurement/zzzg;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfu;->c:[Lcom/google/android/gms/internal/measurement/zzfv;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfu;->c:[Lcom/google/android/gms/internal/measurement/zzfv;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 68
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfu;->c:[Lcom/google/android/gms/internal/measurement/zzfv;

    array-length v0, v0

    if-ge v1, v0, :cond_4

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfu;->c:[Lcom/google/android/gms/internal/measurement/zzfv;

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    const/4 v2, 0x3

    .line 71
    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/measurement/zzyy;->a(ILcom/google/android/gms/internal/measurement/zzzg;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 73
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfu;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    const/4 v0, 0x4

    .line 74
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfu;->e:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzyy;->a(IZ)V

    .line 75
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfu;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    const/4 v0, 0x5

    .line 76
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfu;->f:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzyy;->a(IZ)V

    .line 77
    :cond_6
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/zzza;->a(Lcom/google/android/gms/internal/measurement/zzyy;)V

    return-void
.end method

.method protected final b()I
    .locals 6

    .line 79
    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzza;->b()I

    move-result v0

    .line 80
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfu;->a:Ljava/lang/Integer;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfu;->a:Ljava/lang/Integer;

    .line 82
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/zzyy;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfu;->b:[Lcom/google/android/gms/internal/measurement/zzfy;

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfu;->b:[Lcom/google/android/gms/internal/measurement/zzfy;

    array-length v1, v1

    if-lez v1, :cond_3

    move v1, v0

    const/4 v0, 0x0

    .line 84
    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzfu;->b:[Lcom/google/android/gms/internal/measurement/zzfy;

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 85
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzfu;->b:[Lcom/google/android/gms/internal/measurement/zzfy;

    aget-object v4, v4, v0

    if-eqz v4, :cond_1

    const/4 v5, 0x2

    .line 88
    invoke-static {v5, v4}, Lcom/google/android/gms/internal/measurement/zzyy;->b(ILcom/google/android/gms/internal/measurement/zzzg;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 90
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfu;->c:[Lcom/google/android/gms/internal/measurement/zzfv;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfu;->c:[Lcom/google/android/gms/internal/measurement/zzfv;

    array-length v1, v1

    if-lez v1, :cond_5

    .line 91
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfu;->c:[Lcom/google/android/gms/internal/measurement/zzfv;

    array-length v1, v1

    if-ge v3, v1, :cond_5

    .line 92
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfu;->c:[Lcom/google/android/gms/internal/measurement/zzfv;

    aget-object v1, v1, v3

    if-eqz v1, :cond_4

    const/4 v4, 0x3

    .line 95
    invoke-static {v4, v1}, Lcom/google/android/gms/internal/measurement/zzyy;->b(ILcom/google/android/gms/internal/measurement/zzzg;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 97
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfu;->e:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    const/4 v1, 0x4

    .line 98
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzfu;->e:Ljava/lang/Boolean;

    .line 99
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 100
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzyy;->b(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 102
    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfu;->f:Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    const/4 v1, 0x5

    .line 103
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzfu;->f:Ljava/lang/Boolean;

    .line 104
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 105
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzyy;->b(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_7
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 19
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zzfu;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 21
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfu;

    .line 22
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfu;->a:Ljava/lang/Integer;

    if-nez v1, :cond_2

    .line 23
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzfu;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    return v2

    .line 25
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfu;->a:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzfu;->a:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 27
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfu;->b:[Lcom/google/android/gms/internal/measurement/zzfy;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzfu;->b:[Lcom/google/android/gms/internal/measurement/zzfy;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/zzze;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 29
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfu;->c:[Lcom/google/android/gms/internal/measurement/zzfv;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzfu;->c:[Lcom/google/android/gms/internal/measurement/zzfv;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/zzze;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 31
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfu;->e:Ljava/lang/Boolean;

    if-nez v1, :cond_6

    .line 32
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzfu;->e:Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    return v2

    .line 34
    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfu;->e:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzfu;->e:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 36
    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfu;->f:Ljava/lang/Boolean;

    if-nez v1, :cond_8

    .line 37
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzfu;->f:Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    return v2

    .line 39
    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfu;->f:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzfu;->f:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 41
    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfu;->J:Lcom/google/android/gms/internal/measurement/zzzc;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfu;->J:Lcom/google/android/gms/internal/measurement/zzzc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzc;->b()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_0

    .line 43
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfu;->J:Lcom/google/android/gms/internal/measurement/zzzc;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzfu;->J:Lcom/google/android/gms/internal/measurement/zzzc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzzc;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 42
    :cond_b
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzfu;->J:Lcom/google/android/gms/internal/measurement/zzzc;

    if-eqz v1, :cond_d

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzfu;->J:Lcom/google/android/gms/internal/measurement/zzzc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzc;->b()Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_1

    :cond_c
    return v2

    :cond_d
    :goto_1
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 46
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfu;->a:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfu;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 47
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfu;->b:[Lcom/google/android/gms/internal/measurement/zzfy;

    .line 48
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzze;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 49
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfu;->c:[Lcom/google/android/gms/internal/measurement/zzfv;

    .line 50
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzze;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 52
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfu;->e:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfu;->e:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 54
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfu;->f:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfu;->f:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 56
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfu;->J:Lcom/google/android/gms/internal/measurement/zzzc;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfu;->J:Lcom/google/android/gms/internal/measurement/zzzc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzc;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    .line 57
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfu;->J:Lcom/google/android/gms/internal/measurement/zzzc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzc;->hashCode()I

    move-result v2

    :cond_4
    :goto_3
    add-int/2addr v0, v2

    return v0
.end method
