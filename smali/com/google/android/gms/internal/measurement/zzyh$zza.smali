.class final Lcom/google/android/gms/internal/measurement/zzyh$zza;
.super Lcom/google/android/gms/internal/measurement/zzyh$zzd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzyh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zza"
.end annotation


# direct methods
.method constructor <init>(Lsun/misc/Unsafe;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzyh$zzd;-><init>(Lsun/misc/Unsafe;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;J)B
    .locals 1

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzyh;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzyh;->g(Ljava/lang/Object;J)B

    move-result p1

    return p1

    .line 9
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzyh;->h(Ljava/lang/Object;J)B

    move-result p1

    return p1
.end method

.method public final a(JB)V
    .locals 2

    const-wide/16 v0, -0x1

    and-long/2addr p1, v0

    long-to-int p1, p1

    .line 5
    invoke-static {p1, p3}, Llibcore/io/Memory;->pokeByte(IB)V

    return-void
.end method

.method public final a(Ljava/lang/Object;JB)V
    .locals 1

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzyh;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/zzyh;->a(Ljava/lang/Object;JB)V

    return-void

    .line 12
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/zzyh;->b(Ljava/lang/Object;JB)V

    return-void
.end method

.method public final a(Ljava/lang/Object;JD)V
    .locals 6

    .line 25
    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzyh$zzd;->a(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public final a(Ljava/lang/Object;JF)V
    .locals 0

    .line 22
    invoke-static {p4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/zzyh$zzd;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final a(Ljava/lang/Object;JZ)V
    .locals 1

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzyh;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/zzyh;->b(Ljava/lang/Object;JZ)V

    return-void

    .line 19
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/zzyh;->c(Ljava/lang/Object;JZ)V

    return-void
.end method

.method public final a([BJJJ)V
    .locals 2

    const-wide/16 v0, -0x1

    and-long/2addr p4, v0

    long-to-int p4, p4

    long-to-int p2, p2

    long-to-int p3, p6

    .line 31
    invoke-static {p4, p1, p2, p3}, Llibcore/io/Memory;->pokeByteArray(I[BII)V

    return-void
.end method

.method public final b(Ljava/lang/Object;J)Z
    .locals 1

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzyh;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzyh;->i(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 16
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzyh;->j(Ljava/lang/Object;J)Z

    move-result p1

    return p1
.end method

.method public final c(Ljava/lang/Object;J)F
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzyh$zzd;->e(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    return p1
.end method

.method public final d(Ljava/lang/Object;J)D
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzyh$zzd;->f(Ljava/lang/Object;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    return-wide p1
.end method
