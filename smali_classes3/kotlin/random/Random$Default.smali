.class public final Lkotlin/random/Random$Default;
.super Lkotlin/random/Random;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/random/Random;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Default"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 240
    invoke-direct {p0}, Lkotlin/random/Random;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 240
    invoke-direct {p0}, Lkotlin/random/Random$Default;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    .line 244
    invoke-static {}, Lkotlin/random/Random;->g()Lkotlin/random/Random;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlin/random/Random;->a(I)I

    move-result p1

    return p1
.end method

.method public a(II)I
    .locals 1

    .line 247
    invoke-static {}, Lkotlin/random/Random;->g()Lkotlin/random/Random;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lkotlin/random/Random;->a(II)I

    move-result p1

    return p1
.end method

.method public a(JJ)J
    .locals 1

    .line 251
    invoke-static {}, Lkotlin/random/Random;->g()Lkotlin/random/Random;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lkotlin/random/Random;->a(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public a([B)[B
    .locals 1

    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    invoke-static {}, Lkotlin/random/Random;->g()Lkotlin/random/Random;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlin/random/Random;->a([B)[B

    move-result-object p1

    return-object p1
.end method

.method public a([BII)[B
    .locals 1

    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    invoke-static {}, Lkotlin/random/Random;->g()Lkotlin/random/Random;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lkotlin/random/Random;->a([BII)[B

    move-result-object p1

    return-object p1
.end method

.method public b()I
    .locals 1

    .line 245
    invoke-static {}, Lkotlin/random/Random;->g()Lkotlin/random/Random;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/random/Random;->b()I

    move-result v0

    return v0
.end method

.method public b(I)I
    .locals 1

    .line 246
    invoke-static {}, Lkotlin/random/Random;->g()Lkotlin/random/Random;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlin/random/Random;->b(I)I

    move-result p1

    return p1
.end method

.method public c()J
    .locals 2

    .line 249
    invoke-static {}, Lkotlin/random/Random;->g()Lkotlin/random/Random;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/random/Random;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public d()Z
    .locals 1

    .line 253
    invoke-static {}, Lkotlin/random/Random;->g()Lkotlin/random/Random;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/random/Random;->d()Z

    move-result v0

    return v0
.end method

.method public e()D
    .locals 2

    .line 255
    invoke-static {}, Lkotlin/random/Random;->g()Lkotlin/random/Random;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/random/Random;->e()D

    move-result-wide v0

    return-wide v0
.end method

.method public f()F
    .locals 1

    .line 259
    invoke-static {}, Lkotlin/random/Random;->g()Lkotlin/random/Random;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/random/Random;->f()F

    move-result v0

    return v0
.end method
