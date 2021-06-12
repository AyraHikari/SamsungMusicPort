.class final Lcom/google/android/gms/internal/measurement/zzzd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:Lcom/google/android/gms/internal/measurement/zzzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzzb<",
            "**>;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Object;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzzi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzd;->c:Ljava/util/List;

    return-void
.end method

.method private final b()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzzd;->a()I

    move-result v0

    new-array v0, v0, [B

    .line 113
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzyy;->a([B)Lcom/google/android/gms/internal/measurement/zzyy;

    move-result-object v1

    .line 114
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzzd;->a(Lcom/google/android/gms/internal/measurement/zzyy;)V

    return-object v0
.end method

.method private final c()Lcom/google/android/gms/internal/measurement/zzzd;
    .locals 5

    .line 116
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzzd;-><init>()V

    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzd;->a:Lcom/google/android/gms/internal/measurement/zzzb;

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzzd;->a:Lcom/google/android/gms/internal/measurement/zzzb;

    .line 118
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzd;->c:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 119
    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzzd;->c:Ljava/util/List;

    goto :goto_0

    .line 120
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzzd;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzzd;->c:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 121
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    if-eqz v1, :cond_9

    .line 122
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    instance-of v1, v1, Lcom/google/android/gms/internal/measurement/zzzg;

    if-eqz v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzzg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzg;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzzg;

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    goto/16 :goto_3

    .line 124
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    instance-of v1, v1, [B

    if-eqz v1, :cond_2

    .line 125
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    check-cast v1, [B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    goto/16 :goto_3

    .line 126
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    instance-of v1, v1, [[B

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 127
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    check-cast v1, [[B

    .line 128
    array-length v3, v1

    new-array v3, v3, [[B

    .line 129
    iput-object v3, v0, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    .line 130
    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_9

    .line 131
    aget-object v4, v1, v2

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 133
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    instance-of v1, v1, [Z

    if-eqz v1, :cond_4

    .line 134
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    check-cast v1, [Z

    invoke-virtual {v1}, [Z->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    goto :goto_3

    .line 135
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    instance-of v1, v1, [I

    if-eqz v1, :cond_5

    .line 136
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    check-cast v1, [I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    goto :goto_3

    .line 137
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    instance-of v1, v1, [J

    if-eqz v1, :cond_6

    .line 138
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    check-cast v1, [J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    goto :goto_3

    .line 139
    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    instance-of v1, v1, [F

    if-eqz v1, :cond_7

    .line 140
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    check-cast v1, [F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    goto :goto_3

    .line 141
    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    instance-of v1, v1, [D

    if-eqz v1, :cond_8

    .line 142
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    check-cast v1, [D

    invoke-virtual {v1}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    goto :goto_3

    .line 143
    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    instance-of v1, v1, [Lcom/google/android/gms/internal/measurement/zzzg;

    if-eqz v1, :cond_9

    .line 144
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    check-cast v1, [Lcom/google/android/gms/internal/measurement/zzzg;

    .line 145
    array-length v3, v1

    new-array v3, v3, [Lcom/google/android/gms/internal/measurement/zzzg;

    .line 146
    iput-object v3, v0, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    .line 147
    :goto_2
    array-length v4, v1

    if-ge v2, v4, :cond_9

    .line 148
    aget-object v4, v1, v2

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzzg;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzzg;

    aput-object v4, v3, v2
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_9
    :goto_3
    return-object v0

    :catch_0
    move-exception v0

    .line 152
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method final a()I
    .locals 6

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzd;->a:Lcom/google/android/gms/internal/measurement/zzzb;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    .line 40
    iget-boolean v3, v0, Lcom/google/android/gms/internal/measurement/zzzb;->c:Z

    if-eqz v3, :cond_1

    .line 43
    invoke-static {v2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v1, v3, :cond_3

    .line 45
    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 47
    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/measurement/zzzb;->a(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/zzzb;->a(Ljava/lang/Object;)I

    move-result v4

    goto :goto_2

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzd;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzzi;

    .line 55
    iget v3, v2, Lcom/google/android/gms/internal/measurement/zzzi;->a:I

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzyy;->d(I)I

    move-result v3

    add-int/2addr v3, v1

    .line 56
    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzzi;->b:[B

    array-length v2, v2

    add-int/2addr v3, v2

    add-int/2addr v4, v3

    goto :goto_1

    :cond_3
    :goto_2
    return v4
.end method

.method final a(Lcom/google/android/gms/internal/measurement/zzyy;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 61
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzd;->a:Lcom/google/android/gms/internal/measurement/zzzb;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    .line 62
    iget-boolean v2, v0, Lcom/google/android/gms/internal/measurement/zzzb;->c:Z

    if-eqz v2, :cond_2

    .line 64
    invoke-static {v1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 66
    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 68
    invoke-virtual {v0, v4, p1}, Lcom/google/android/gms/internal/measurement/zzzb;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzyy;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 71
    :cond_2
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzzb;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzyy;)V

    return-void

    .line 73
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzd;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzzi;

    .line 75
    iget v2, v1, Lcom/google/android/gms/internal/measurement/zzzi;->a:I

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/zzyy;->c(I)V

    .line 76
    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzzi;->b:[B

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzyy;->b([B)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method final a(Lcom/google/android/gms/internal/measurement/zzzi;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzd;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzd;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/android/gms/internal/measurement/zzzg;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 7
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzzi;->b:[B

    .line 8
    array-length v0, p1

    .line 9
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/zzyx;->a([BII)Lcom/google/android/gms/internal/measurement/zzyx;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzyx;->d()I

    move-result v1

    .line 13
    array-length p1, p1

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzyy;->a(I)I

    move-result v2

    sub-int/2addr p1, v2

    if-ne v1, p1, :cond_1

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzzg;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzzg;->a(Lcom/google/android/gms/internal/measurement/zzyx;)Lcom/google/android/gms/internal/measurement/zzzg;

    move-result-object p1

    goto :goto_0

    .line 14
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzzf;->zzyw()Lcom/google/android/gms/internal/measurement/zzzf;

    move-result-object p1

    throw p1

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    instance-of v0, v0, [Lcom/google/android/gms/internal/measurement/zzzg;

    if-eqz v0, :cond_3

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzd;->a:Lcom/google/android/gms/internal/measurement/zzzb;

    .line 18
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzzb;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/gms/internal/measurement/zzzg;

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    check-cast v0, [Lcom/google/android/gms/internal/measurement/zzzg;

    .line 20
    array-length v2, v0

    array-length v3, p1

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/gms/internal/measurement/zzzg;

    .line 21
    array-length v0, v0

    array-length v3, p1

    invoke-static {p1, v1, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v2

    goto :goto_0

    .line 24
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzd;->a:Lcom/google/android/gms/internal/measurement/zzzb;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzzb;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    .line 25
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzd;->a:Lcom/google/android/gms/internal/measurement/zzzb;

    .line 26
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzd;->a:Lcom/google/android/gms/internal/measurement/zzzb;

    .line 27
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzzd;->c:Ljava/util/List;

    return-void
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 153
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzzd;->c()Lcom/google/android/gms/internal/measurement/zzzd;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 81
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzzd;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 83
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzzd;

    .line 84
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    if-eqz v0, :cond_a

    .line 85
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzd;->a:Lcom/google/android/gms/internal/measurement/zzzb;

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzzd;->a:Lcom/google/android/gms/internal/measurement/zzzb;

    if-eq v0, v2, :cond_2

    return v1

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzd;->a:Lcom/google/android/gms/internal/measurement/zzzb;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzzb;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_3

    .line 88
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 89
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_4

    .line 90
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    check-cast v0, [B

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    check-cast p1, [B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    .line 91
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    instance-of v0, v0, [I

    if-eqz v0, :cond_5

    .line 92
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    check-cast v0, [I

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    check-cast p1, [I

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    return p1

    .line 93
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-eqz v0, :cond_6

    .line 94
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    check-cast v0, [J

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    check-cast p1, [J

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p1

    return p1

    .line 95
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    instance-of v0, v0, [F

    if-eqz v0, :cond_7

    .line 96
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    check-cast v0, [F

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    check-cast p1, [F

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p1

    return p1

    .line 97
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    instance-of v0, v0, [D

    if-eqz v0, :cond_8

    .line 98
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    check-cast v0, [D

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    check-cast p1, [D

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result p1

    return p1

    .line 99
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    instance-of v0, v0, [Z

    if-eqz v0, :cond_9

    .line 100
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    check-cast v0, [Z

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    check-cast p1, [Z

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result p1

    return p1

    .line 101
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzzd;->b:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 102
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzd;->c:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzzd;->c:Ljava/util/List;

    if-eqz v0, :cond_b

    .line 103
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzd;->c:Ljava/util/List;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzzd;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 104
    :cond_b
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzzd;->b()[B

    move-result-object v0

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzzd;->b()[B

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 106
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final hashCode()I
    .locals 2

    .line 107
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzzd;->b()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit16 v0, v0, 0x20f

    return v0

    :catch_0
    move-exception v0

    .line 110
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
