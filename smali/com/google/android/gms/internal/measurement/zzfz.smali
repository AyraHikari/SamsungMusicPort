.class public final Lcom/google/android/gms/internal/measurement/zzfz;
.super Lcom/google/android/gms/internal/measurement/zzza;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzza<",
        "Lcom/google/android/gms/internal/measurement/zzfz;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Boolean;

.field public d:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzza;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfz;->a:Ljava/lang/Integer;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfz;->b:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfz;->c:Ljava/lang/Boolean;

    .line 6
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzzj;->c:[Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->d:[Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfz;->J:Lcom/google/android/gms/internal/measurement/zzzc;

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfz;->K:I

    return-void
.end method

.method private final b(Lcom/google/android/gms/internal/measurement/zzyx;)Lcom/google/android/gms/internal/measurement/zzfz;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzyx;->a()I

    move-result v0

    if-eqz v0, :cond_9

    const/16 v1, 0x8

    if-eq v0, v1, :cond_7

    const/16 v1, 0x12

    if-eq v0, v1, :cond_6

    const/16 v1, 0x18

    if-eq v0, v1, :cond_5

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    .line 89
    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzza;->a(Lcom/google/android/gms/internal/measurement/zzyx;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 109
    :cond_1
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->a(Lcom/google/android/gms/internal/measurement/zzyx;I)I

    move-result v0

    .line 110
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->d:[Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->d:[Ljava/lang/String;

    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    .line 111
    new-array v0, v0, [Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 113
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzfz;->d:[Ljava/lang/String;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    :cond_3
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4

    .line 115
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzyx;->c()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 116
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzyx;->a()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 118
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzyx;->c()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 119
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfz;->d:[Ljava/lang/String;

    goto :goto_0

    .line 106
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzyx;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfz;->c:Ljava/lang/Boolean;

    goto :goto_0

    .line 104
    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzyx;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfz;->b:Ljava/lang/String;

    goto :goto_0

    .line 91
    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzyx;->i()I

    move-result v1

    .line 93
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzyx;->d()I

    move-result v2

    if-ltz v2, :cond_8

    const/4 v3, 0x6

    if-gt v2, v3, :cond_8

    .line 98
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/zzfz;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 97
    :cond_8
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const/16 v4, 0x29

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not a valid enum MatchType"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :catch_0
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzyx;->e(I)V

    .line 102
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzza;->a(Lcom/google/android/gms/internal/measurement/zzyx;I)Z

    goto/16 :goto_0

    :cond_9
    return-object p0
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/measurement/zzyx;)Lcom/google/android/gms/internal/measurement/zzzg;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzfz;->b(Lcom/google/android/gms/internal/measurement/zzyx;)Lcom/google/android/gms/internal/measurement/zzfz;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/android/gms/internal/measurement/zzyy;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfz;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfz;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/zzyy;->a(II)V

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfz;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 50
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzyy;->a(ILjava/lang/String;)V

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfz;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 52
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzyy;->a(IZ)V

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfz;->d:[Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfz;->d:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    .line 54
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->d:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 55
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->d:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    .line 57
    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/measurement/zzyy;->a(ILjava/lang/String;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_4
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/zzza;->a(Lcom/google/android/gms/internal/measurement/zzyy;)V

    return-void
.end method

.method protected final b()I
    .locals 6

    .line 61
    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzza;->b()I

    move-result v0

    .line 62
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->a:Ljava/lang/Integer;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->a:Ljava/lang/Integer;

    .line 64
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/zzyy;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 66
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzfz;->b:Ljava/lang/String;

    .line 67
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/zzyy;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 68
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 69
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzfz;->c:Ljava/lang/Boolean;

    .line 70
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 71
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzyy;->b(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 73
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->d:[Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->d:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_5

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 76
    :goto_0
    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzfz;->d:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_4

    .line 77
    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzfz;->d:[Ljava/lang/String;

    aget-object v5, v5, v1

    if-eqz v5, :cond_3

    add-int/lit8 v4, v4, 0x1

    .line 81
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzyy;->a(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    add-int/2addr v0, v3

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v0, v4

    :cond_5
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 12
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zzfz;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 14
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfz;

    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->a:Ljava/lang/Integer;

    if-nez v1, :cond_2

    .line 16
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzfz;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    return v2

    .line 18
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->a:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzfz;->a:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 20
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->b:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 21
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzfz;->b:Ljava/lang/String;

    if-eqz v1, :cond_5

    return v2

    .line 23
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzfz;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 25
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->c:Ljava/lang/Boolean;

    if-nez v1, :cond_6

    .line 26
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzfz;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    return v2

    .line 28
    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->c:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzfz;->c:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 30
    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->d:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzfz;->d:[Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/zzze;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 32
    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->J:Lcom/google/android/gms/internal/measurement/zzzc;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->J:Lcom/google/android/gms/internal/measurement/zzzc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzc;->b()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_0

    .line 34
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfz;->J:Lcom/google/android/gms/internal/measurement/zzzc;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzfz;->J:Lcom/google/android/gms/internal/measurement/zzzc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzzc;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 33
    :cond_a
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzfz;->J:Lcom/google/android/gms/internal/measurement/zzzc;

    if-eqz v1, :cond_c

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzfz;->J:Lcom/google/android/gms/internal/measurement/zzzc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzc;->b()Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_1

    :cond_b
    return v2

    :cond_c
    :goto_1
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 36
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->a:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 38
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 40
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->c:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 41
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->d:[Ljava/lang/String;

    .line 42
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzze;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 44
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->J:Lcom/google/android/gms/internal/measurement/zzzc;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->J:Lcom/google/android/gms/internal/measurement/zzzc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzc;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    .line 45
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->J:Lcom/google/android/gms/internal/measurement/zzzc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzc;->hashCode()I

    move-result v2

    :cond_4
    :goto_3
    add-int/2addr v0, v2

    return v0
.end method
