.class public final Lcom/google/android/gms/internal/measurement/zzga;
.super Lcom/google/android/gms/internal/measurement/zzza;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzza<",
        "Lcom/google/android/gms/internal/measurement/zzga;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile e:[Lcom/google/android/gms/internal/measurement/zzga;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Boolean;

.field public c:Ljava/lang/Boolean;

.field public d:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzza;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzga;->a:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzga;->b:Ljava/lang/Boolean;

    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzga;->c:Ljava/lang/Boolean;

    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzga;->d:Ljava/lang/Integer;

    .line 13
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzga;->J:Lcom/google/android/gms/internal/measurement/zzzc;

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzga;->K:I

    return-void
.end method

.method public static a()[Lcom/google/android/gms/internal/measurement/zzga;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzga;->e:[Lcom/google/android/gms/internal/measurement/zzga;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzze;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzga;->e:[Lcom/google/android/gms/internal/measurement/zzga;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Lcom/google/android/gms/internal/measurement/zzga;

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzga;->e:[Lcom/google/android/gms/internal/measurement/zzga;

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
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzga;->e:[Lcom/google/android/gms/internal/measurement/zzga;

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/measurement/zzyx;)Lcom/google/android/gms/internal/measurement/zzzg;
    .locals 2
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

    if-eqz v0, :cond_5

    const/16 v1, 0xa

    if-eq v0, v1, :cond_4

    const/16 v1, 0x10

    if-eq v0, v1, :cond_3

    const/16 v1, 0x18

    if-eq v0, v1, :cond_2

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    .line 89
    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzza;->a(Lcom/google/android/gms/internal/measurement/zzyx;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 98
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzyx;->d()I

    move-result v0

    .line 99
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzga;->d:Ljava/lang/Integer;

    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzyx;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzga;->c:Ljava/lang/Boolean;

    goto :goto_0

    .line 93
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzyx;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzga;->b:Ljava/lang/Boolean;

    goto :goto_0

    .line 91
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzyx;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzga;->a:Ljava/lang/String;

    goto :goto_0

    :cond_5
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/measurement/zzyy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzga;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 58
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzga;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzyy;->a(ILjava/lang/String;)V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzga;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 60
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzga;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzyy;->a(IZ)V

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzga;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 62
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzga;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzyy;->a(IZ)V

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzga;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 64
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzga;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzyy;->a(II)V

    .line 65
    :cond_3
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/zzza;->a(Lcom/google/android/gms/internal/measurement/zzyy;)V

    return-void
.end method

.method protected final b()I
    .locals 4

    .line 67
    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzza;->b()I

    move-result v0

    .line 68
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzga;->a:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzga;->a:Ljava/lang/String;

    .line 70
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/zzyy;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzga;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 72
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzga;->b:Ljava/lang/Boolean;

    .line 73
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 74
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzyy;->b(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 76
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzga;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 77
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzga;->c:Ljava/lang/Boolean;

    .line 78
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 79
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzyy;->b(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 81
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzga;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    .line 82
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzga;->d:Ljava/lang/Integer;

    .line 83
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzyy;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 18
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zzga;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 20
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzga;

    .line 21
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzga;->a:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 22
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzga;->a:Ljava/lang/String;

    if-eqz v1, :cond_3

    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzga;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzga;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 26
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzga;->b:Ljava/lang/Boolean;

    if-nez v1, :cond_4

    .line 27
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzga;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    return v2

    .line 29
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzga;->b:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzga;->b:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 31
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzga;->c:Ljava/lang/Boolean;

    if-nez v1, :cond_6

    .line 32
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzga;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    return v2

    .line 34
    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzga;->c:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzga;->c:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 36
    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzga;->d:Ljava/lang/Integer;

    if-nez v1, :cond_8

    .line 37
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzga;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_9

    return v2

    .line 39
    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzga;->d:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzga;->d:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 41
    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzga;->J:Lcom/google/android/gms/internal/measurement/zzzc;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzga;->J:Lcom/google/android/gms/internal/measurement/zzzc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzc;->b()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_0

    .line 43
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzga;->J:Lcom/google/android/gms/internal/measurement/zzzc;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzga;->J:Lcom/google/android/gms/internal/measurement/zzzc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzzc;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 42
    :cond_b
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzga;->J:Lcom/google/android/gms/internal/measurement/zzzc;

    if-eqz v1, :cond_d

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzga;->J:Lcom/google/android/gms/internal/measurement/zzzc;

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
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzga;->a:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzga;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 48
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzga;->b:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzga;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 50
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzga;->c:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzga;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 52
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzga;->d:Ljava/lang/Integer;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzga;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 54
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzga;->J:Lcom/google/android/gms/internal/measurement/zzzc;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzga;->J:Lcom/google/android/gms/internal/measurement/zzzc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzc;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_4

    .line 55
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzga;->J:Lcom/google/android/gms/internal/measurement/zzzc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzc;->hashCode()I

    move-result v2

    :cond_5
    :goto_4
    add-int/2addr v0, v2

    return v0
.end method
