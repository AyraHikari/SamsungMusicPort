.class public final Lcom/google/android/exoplayer2/upstream/DefaultAllocator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Allocator;


# instance fields
.field private final a:Z

.field private final b:I

.field private final c:[B

.field private final d:[Lcom/google/android/exoplayer2/upstream/Allocation;

.field private e:I

.field private f:I

.field private g:I

.field private h:[Lcom/google/android/exoplayer2/upstream/Allocation;


# direct methods
.method public constructor <init>(ZI)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;-><init>(ZII)V

    return-void
.end method

.method public constructor <init>(ZII)V
    .locals 5

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 62
    :goto_0
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->a(Z)V

    if-ltz p3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 63
    :goto_1
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->a(Z)V

    .line 64
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->a:Z

    .line 65
    iput p2, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->b:I

    .line 66
    iput p3, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->g:I

    add-int/lit8 p1, p3, 0x64

    .line 67
    new-array p1, p1, [Lcom/google/android/exoplayer2/upstream/Allocation;

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->h:[Lcom/google/android/exoplayer2/upstream/Allocation;

    if-lez p3, :cond_2

    mul-int p1, p3, p2

    .line 69
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->c:[B

    :goto_2
    if-ge v0, p3, :cond_3

    mul-int p1, v0, p2

    .line 72
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->h:[Lcom/google/android/exoplayer2/upstream/Allocation;

    new-instance v3, Lcom/google/android/exoplayer2/upstream/Allocation;

    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->c:[B

    invoke-direct {v3, v4, p1}, Lcom/google/android/exoplayer2/upstream/Allocation;-><init>([BI)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 75
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->c:[B

    .line 77
    :cond_3
    new-array p1, v1, [Lcom/google/android/exoplayer2/upstream/Allocation;

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->d:[Lcom/google/android/exoplayer2/upstream/Allocation;

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Lcom/google/android/exoplayer2/upstream/Allocation;
    .locals 4

    monitor-enter p0

    .line 96
    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->f:I

    .line 98
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->g:I

    if-lez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->h:[Lcom/google/android/exoplayer2/upstream/Allocation;

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->g:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->g:I

    aget-object v0, v0, v1

    .line 100
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->h:[Lcom/google/android/exoplayer2/upstream/Allocation;

    iget v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->g:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    goto :goto_0

    .line 102
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/upstream/Allocation;

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->b:I

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/Allocation;-><init>([BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 95
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(I)V
    .locals 1

    monitor-enter p0

    .line 87
    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->e:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 88
    :goto_0
    iput p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->e:I

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 86
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/google/android/exoplayer2/upstream/Allocation;)V
    .locals 2

    monitor-enter p0

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->d:[Lcom/google/android/exoplayer2/upstream/Allocation;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 110
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->d:[Lcom/google/android/exoplayer2/upstream/Allocation;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->a([Lcom/google/android/exoplayer2/upstream/Allocation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 108
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a([Lcom/google/android/exoplayer2/upstream/Allocation;)V
    .locals 7

    monitor-enter p0

    .line 115
    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->g:I

    array-length v1, p1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->h:[Lcom/google/android/exoplayer2/upstream/Allocation;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->h:[Lcom/google/android/exoplayer2/upstream/Allocation;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->h:[Lcom/google/android/exoplayer2/upstream/Allocation;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->g:I

    array-length v3, p1

    add-int/2addr v2, v3

    .line 117
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 116
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/upstream/Allocation;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->h:[Lcom/google/android/exoplayer2/upstream/Allocation;

    .line 119
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    .line 121
    iget-object v4, v3, Lcom/google/android/exoplayer2/upstream/Allocation;->a:[B

    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->c:[B

    if-eq v4, v5, :cond_2

    iget-object v4, v3, Lcom/google/android/exoplayer2/upstream/Allocation;->a:[B

    array-length v4, v4

    iget v5, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->b:I

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v4, 0x1

    :goto_2
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->a(Z)V

    .line 123
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->h:[Lcom/google/android/exoplayer2/upstream/Allocation;

    iget v5, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->g:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->g:I

    aput-object v3, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 125
    :cond_3
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->f:I

    array-length p1, p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->f:I

    .line 127
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 114
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()V
    .locals 7

    monitor-enter p0

    .line 132
    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->e:I

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->b:I

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->a(II)I

    move-result v0

    .line 133
    iget v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->f:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 134
    iget v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v2, :cond_0

    .line 136
    monitor-exit p0

    return-void

    .line 139
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->c:[B

    if-eqz v2, :cond_4

    .line 144
    iget v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->g:I

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-gt v1, v2, :cond_3

    .line 146
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->h:[Lcom/google/android/exoplayer2/upstream/Allocation;

    aget-object v3, v3, v1

    .line 147
    iget-object v4, v3, Lcom/google/android/exoplayer2/upstream/Allocation;->a:[B

    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->c:[B

    if-ne v4, v5, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    :cond_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->h:[Lcom/google/android/exoplayer2/upstream/Allocation;

    aget-object v4, v4, v2

    .line 151
    iget-object v5, v4, Lcom/google/android/exoplayer2/upstream/Allocation;->a:[B

    iget-object v6, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->c:[B

    if-eq v5, v6, :cond_2

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 154
    :cond_2
    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->h:[Lcom/google/android/exoplayer2/upstream/Allocation;

    add-int/lit8 v6, v1, 0x1

    aput-object v4, v5, v1

    .line 155
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->h:[Lcom/google/android/exoplayer2/upstream/Allocation;

    add-int/lit8 v4, v2, -0x1

    aput-object v3, v1, v2

    move v2, v4

    move v1, v6

    goto :goto_0

    .line 160
    :cond_3
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 161
    iget v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->g:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v0, v1, :cond_4

    .line 163
    monitor-exit p0

    return-void

    .line 168
    :cond_4
    :try_start_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->h:[Lcom/google/android/exoplayer2/upstream/Allocation;

    iget v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->g:I

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 169
    iput v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->g:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 170
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 131
    monitor-exit p0

    throw v0
.end method

.method public c()I
    .locals 1

    .line 179
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->b:I

    return v0
.end method

.method public declared-synchronized d()V
    .locals 1

    monitor-enter p0

    .line 81
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 82
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 80
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()I
    .locals 2

    monitor-enter p0

    .line 174
    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->f:I

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int v0, v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
