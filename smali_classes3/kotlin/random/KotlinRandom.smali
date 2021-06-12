.class final Lkotlin/random/KotlinRandom;
.super Ljava/util/Random;
.source "SourceFile"


# instance fields
.field private final impl:Lkotlin/random/Random;


# direct methods
.method public constructor <init>(Lkotlin/random/Random;)V
    .locals 1

    const-string v0, "impl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lkotlin/random/KotlinRandom;->impl:Lkotlin/random/Random;

    return-void
.end method


# virtual methods
.method public final getImpl()Lkotlin/random/Random;
    .locals 1

    .line 65
    iget-object v0, p0, Lkotlin/random/KotlinRandom;->impl:Lkotlin/random/Random;

    return-object v0
.end method

.method protected next(I)I
    .locals 1

    .line 66
    iget-object v0, p0, Lkotlin/random/KotlinRandom;->impl:Lkotlin/random/Random;

    invoke-virtual {v0, p1}, Lkotlin/random/Random;->a(I)I

    move-result p1

    return p1
.end method

.method public nextBoolean()Z
    .locals 1

    .line 69
    iget-object v0, p0, Lkotlin/random/KotlinRandom;->impl:Lkotlin/random/Random;

    invoke-virtual {v0}, Lkotlin/random/Random;->d()Z

    move-result v0

    return v0
.end method

.method public nextBytes([B)V
    .locals 1

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lkotlin/random/KotlinRandom;->impl:Lkotlin/random/Random;

    invoke-virtual {v0, p1}, Lkotlin/random/Random;->a([B)[B

    return-void
.end method

.method public nextDouble()D
    .locals 2

    .line 72
    iget-object v0, p0, Lkotlin/random/KotlinRandom;->impl:Lkotlin/random/Random;

    invoke-virtual {v0}, Lkotlin/random/Random;->e()D

    move-result-wide v0

    return-wide v0
.end method

.method public nextFloat()F
    .locals 1

    .line 71
    iget-object v0, p0, Lkotlin/random/KotlinRandom;->impl:Lkotlin/random/Random;

    invoke-virtual {v0}, Lkotlin/random/Random;->f()F

    move-result v0

    return v0
.end method

.method public nextInt()I
    .locals 1

    .line 67
    iget-object v0, p0, Lkotlin/random/KotlinRandom;->impl:Lkotlin/random/Random;

    invoke-virtual {v0}, Lkotlin/random/Random;->b()I

    move-result v0

    return v0
.end method

.method public nextInt(I)I
    .locals 1

    .line 68
    iget-object v0, p0, Lkotlin/random/KotlinRandom;->impl:Lkotlin/random/Random;

    invoke-virtual {v0, p1}, Lkotlin/random/Random;->b(I)I

    move-result p1

    return p1
.end method

.method public nextLong()J
    .locals 2

    .line 70
    iget-object v0, p0, Lkotlin/random/KotlinRandom;->impl:Lkotlin/random/Random;

    invoke-virtual {v0}, Lkotlin/random/Random;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public setSeed(J)V
    .locals 0

    .line 79
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Setting seed is not supported."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method
