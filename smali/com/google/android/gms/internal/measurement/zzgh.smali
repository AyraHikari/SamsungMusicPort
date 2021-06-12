.class public final Lcom/google/android/gms/internal/measurement/zzgh;
.super Lcom/google/android/gms/internal/measurement/zzza;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzza<",
        "Lcom/google/android/gms/internal/measurement/zzgh;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lcom/google/android/gms/internal/measurement/zzgi;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzza;-><init>()V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgi;->a()[Lcom/google/android/gms/internal/measurement/zzgi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgh;->a:[Lcom/google/android/gms/internal/measurement/zzgi;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgh;->J:Lcom/google/android/gms/internal/measurement/zzzc;

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzgh;->K:I

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

    .line 42
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzyx;->a()I

    move-result v0

    if-eqz v0, :cond_5

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    .line 45
    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzza;->a(Lcom/google/android/gms/internal/measurement/zzyx;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 48
    :cond_1
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->a(Lcom/google/android/gms/internal/measurement/zzyx;I)I

    move-result v0

    .line 49
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgh;->a:[Lcom/google/android/gms/internal/measurement/zzgi;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgh;->a:[Lcom/google/android/gms/internal/measurement/zzgi;

    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    .line 50
    new-array v0, v0, [Lcom/google/android/gms/internal/measurement/zzgi;

    if-eqz v1, :cond_3

    .line 52
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzgh;->a:[Lcom/google/android/gms/internal/measurement/zzgi;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    :cond_3
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4

    .line 54
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzgi;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzgi;-><init>()V

    aput-object v2, v0, v1

    .line 55
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/zzyx;->a(Lcom/google/android/gms/internal/measurement/zzzg;)V

    .line 56
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzyx;->a()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 58
    :cond_4
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzgi;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzgi;-><init>()V

    aput-object v2, v0, v1

    .line 59
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzyx;->a(Lcom/google/android/gms/internal/measurement/zzzg;)V

    .line 60
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgh;->a:[Lcom/google/android/gms/internal/measurement/zzgi;

    goto :goto_0

    :cond_5
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/measurement/zzyy;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgh;->a:[Lcom/google/android/gms/internal/measurement/zzgi;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgh;->a:[Lcom/google/android/gms/internal/measurement/zzgi;

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 25
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgh;->a:[Lcom/google/android/gms/internal/measurement/zzgi;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 26
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgh;->a:[Lcom/google/android/gms/internal/measurement/zzgi;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 28
    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/measurement/zzyy;->a(ILcom/google/android/gms/internal/measurement/zzzg;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 30
    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/zzza;->a(Lcom/google/android/gms/internal/measurement/zzyy;)V

    return-void
.end method

.method protected final b()I
    .locals 4

    .line 32
    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzza;->b()I

    move-result v0

    .line 33
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgh;->a:[Lcom/google/android/gms/internal/measurement/zzgi;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgh;->a:[Lcom/google/android/gms/internal/measurement/zzgi;

    array-length v1, v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 34
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzgh;->a:[Lcom/google/android/gms/internal/measurement/zzgi;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 35
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzgh;->a:[Lcom/google/android/gms/internal/measurement/zzgi;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    .line 38
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/measurement/zzyy;->b(ILcom/google/android/gms/internal/measurement/zzzg;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 9
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zzgh;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzgh;

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgh;->a:[Lcom/google/android/gms/internal/measurement/zzgi;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzgh;->a:[Lcom/google/android/gms/internal/measurement/zzgi;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/zzze;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 14
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgh;->J:Lcom/google/android/gms/internal/measurement/zzzc;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgh;->J:Lcom/google/android/gms/internal/measurement/zzzc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzc;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgh;->J:Lcom/google/android/gms/internal/measurement/zzzc;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzgh;->J:Lcom/google/android/gms/internal/measurement/zzzc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzzc;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 15
    :cond_4
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgh;->J:Lcom/google/android/gms/internal/measurement/zzzc;

    if-eqz v1, :cond_6

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzgh;->J:Lcom/google/android/gms/internal/measurement/zzzc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzc;->b()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    return v2

    :cond_6
    :goto_1
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgh;->a:[Lcom/google/android/gms/internal/measurement/zzgi;

    .line 19
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzze;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 21
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgh;->J:Lcom/google/android/gms/internal/measurement/zzzc;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgh;->J:Lcom/google/android/gms/internal/measurement/zzzc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzc;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgh;->J:Lcom/google/android/gms/internal/measurement/zzzc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzc;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method
