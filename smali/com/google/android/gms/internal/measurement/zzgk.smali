.class public final Lcom/google/android/gms/internal/measurement/zzgk;
.super Lcom/google/android/gms/internal/measurement/zzza;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzza<",
        "Lcom/google/android/gms/internal/measurement/zzgk;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Lcom/google/android/gms/internal/measurement/zzgk;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:[J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzza;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgk;->a:Ljava/lang/Integer;

    .line 10
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzzj;->b:[J

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgk;->b:[J

    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgk;->J:Lcom/google/android/gms/internal/measurement/zzzc;

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzgk;->K:I

    return-void
.end method

.method public static a()[Lcom/google/android/gms/internal/measurement/zzgk;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgk;->c:[Lcom/google/android/gms/internal/measurement/zzgk;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzze;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzgk;->c:[Lcom/google/android/gms/internal/measurement/zzgk;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Lcom/google/android/gms/internal/measurement/zzgk;

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzgk;->c:[Lcom/google/android/gms/internal/measurement/zzgk;

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
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgk;->c:[Lcom/google/android/gms/internal/measurement/zzgk;

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/measurement/zzyx;)Lcom/google/android/gms/internal/measurement/zzzg;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzyx;->a()I

    move-result v0

    if-eqz v0, :cond_b

    const/16 v1, 0x8

    if-eq v0, v1, :cond_a

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    .line 65
    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzza;->a(Lcom/google/android/gms/internal/measurement/zzyx;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 88
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzyx;->d()I

    move-result v0

    .line 89
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzyx;->c(I)I

    move-result v0

    .line 91
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzyx;->i()I

    move-result v1

    const/4 v3, 0x0

    .line 92
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzyx;->h()I

    move-result v4

    if-lez v4, :cond_2

    .line 94
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzyx;->e()J

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 96
    :cond_2
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzyx;->e(I)V

    .line 97
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgk;->b:[J

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgk;->b:[J

    array-length v1, v1

    :goto_2
    add-int/2addr v3, v1

    .line 98
    new-array v3, v3, [J

    if-eqz v1, :cond_4

    .line 100
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzgk;->b:[J

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    :cond_4
    :goto_3
    array-length v2, v3

    if-ge v1, v2, :cond_5

    .line 103
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzyx;->e()J

    move-result-wide v4

    .line 104
    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 106
    :cond_5
    iput-object v3, p0, Lcom/google/android/gms/internal/measurement/zzgk;->b:[J

    .line 107
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzyx;->d(I)V

    goto :goto_0

    .line 72
    :cond_6
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->a(Lcom/google/android/gms/internal/measurement/zzyx;I)I

    move-result v0

    .line 73
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgk;->b:[J

    if-nez v1, :cond_7

    const/4 v1, 0x0

    goto :goto_4

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgk;->b:[J

    array-length v1, v1

    :goto_4
    add-int/2addr v0, v1

    .line 74
    new-array v0, v0, [J

    if-eqz v1, :cond_8

    .line 76
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzgk;->b:[J

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    :cond_8
    :goto_5
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_9

    .line 79
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzyx;->e()J

    move-result-wide v2

    .line 80
    aput-wide v2, v0, v1

    .line 81
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzyx;->a()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 84
    :cond_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzyx;->e()J

    move-result-wide v2

    .line 85
    aput-wide v2, v0, v1

    .line 86
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgk;->b:[J

    goto/16 :goto_0

    .line 68
    :cond_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzyx;->d()I

    move-result v0

    .line 69
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgk;->a:Ljava/lang/Integer;

    goto/16 :goto_0

    :cond_b
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/measurement/zzyy;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgk;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgk;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/zzyy;->a(II)V

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgk;->b:[J

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgk;->b:[J

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 41
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgk;->b:[J

    array-length v1, v1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x2

    .line 42
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzgk;->b:[J

    aget-wide v3, v2, v0

    invoke-virtual {p1, v1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzyy;->b(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/zzza;->a(Lcom/google/android/gms/internal/measurement/zzyy;)V

    return-void
.end method

.method protected final b()I
    .locals 7

    .line 46
    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzza;->b()I

    move-result v0

    .line 47
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgk;->a:Ljava/lang/Integer;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgk;->a:Ljava/lang/Integer;

    .line 49
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/zzyy;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgk;->b:[J

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgk;->b:[J

    array-length v1, v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 52
    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzgk;->b:[J

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 53
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzgk;->b:[J

    aget-wide v5, v4, v1

    .line 55
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/measurement/zzyy;->a(J)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v0, v3

    .line 59
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgk;->b:[J

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 16
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zzgk;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 18
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzgk;

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgk;->a:Ljava/lang/Integer;

    if-nez v1, :cond_2

    .line 20
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgk;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    return v2

    .line 22
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgk;->a:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzgk;->a:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 24
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgk;->b:[J

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzgk;->b:[J

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/zzze;->a([J[J)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 26
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgk;->J:Lcom/google/android/gms/internal/measurement/zzzc;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgk;->J:Lcom/google/android/gms/internal/measurement/zzzc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzc;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    .line 28
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgk;->J:Lcom/google/android/gms/internal/measurement/zzzc;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzgk;->J:Lcom/google/android/gms/internal/measurement/zzzc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzzc;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 27
    :cond_6
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgk;->J:Lcom/google/android/gms/internal/measurement/zzzc;

    if-eqz v1, :cond_8

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzgk;->J:Lcom/google/android/gms/internal/measurement/zzzc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzc;->b()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_7
    return v2

    :cond_8
    :goto_1
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 31
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgk;->a:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgk;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 32
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgk;->b:[J

    .line 33
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzze;->a([J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 35
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgk;->J:Lcom/google/android/gms/internal/measurement/zzzc;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgk;->J:Lcom/google/android/gms/internal/measurement/zzzc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzc;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 36
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgk;->J:Lcom/google/android/gms/internal/measurement/zzzc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzc;->hashCode()I

    move-result v2

    :cond_2
    :goto_1
    add-int/2addr v0, v2

    return v0
.end method
