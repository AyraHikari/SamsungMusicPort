.class public abstract Lkotlin/random/Random;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/random/Random$Companion;,
        Lkotlin/random/Random$Default;
    }
.end annotation


# static fields
.field public static final a:Lkotlin/random/Random$Companion;

.field public static final b:Lkotlin/random/Random$Default;

.field private static final c:Lkotlin/random/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/random/Random$Default;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/random/Random$Default;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/random/Random;->b:Lkotlin/random/Random$Default;

    .line 242
    sget-object v0, Lkotlin/internal/PlatformImplementationsKt;->a:Lkotlin/internal/PlatformImplementations;

    invoke-virtual {v0}, Lkotlin/internal/PlatformImplementations;->a()Lkotlin/random/Random;

    move-result-object v0

    sput-object v0, Lkotlin/random/Random;->c:Lkotlin/random/Random;

    .line 268
    sget-object v0, Lkotlin/random/Random$Companion;->c:Lkotlin/random/Random$Companion;

    sput-object v0, Lkotlin/random/Random;->a:Lkotlin/random/Random$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic g()Lkotlin/random/Random;
    .locals 1

    .line 20
    sget-object v0, Lkotlin/random/Random;->c:Lkotlin/random/Random;

    return-object v0
.end method


# virtual methods
.method public abstract a(I)I
.end method

.method public a(II)I
    .locals 3

    .line 57
    invoke-static {p1, p2}, Lkotlin/random/RandomKt;->b(II)V

    sub-int v0, p2, p1

    if-gtz v0, :cond_2

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 74
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lkotlin/random/Random;->b()I

    move-result v0

    if-le p1, v0, :cond_1

    goto :goto_0

    :cond_1
    if-le p2, v0, :cond_0

    return v0

    :cond_2
    :goto_1
    neg-int p2, v0

    and-int/2addr p2, v0

    if-ne p2, v0, :cond_3

    .line 61
    invoke-static {v0}, Lkotlin/random/PlatformRandomKt;->a(I)I

    move-result p2

    .line 62
    invoke-virtual {p0, p2}, Lkotlin/random/Random;->a(I)I

    move-result p2

    goto :goto_2

    .line 66
    :cond_3
    invoke-virtual {p0}, Lkotlin/random/Random;->b()I

    move-result p2

    ushr-int/lit8 p2, p2, 0x1

    .line 67
    rem-int v1, p2, v0

    sub-int/2addr p2, v1

    add-int/lit8 v2, v0, -0x1

    add-int/2addr p2, v2

    if-ltz p2, :cond_3

    move p2, v1

    :goto_2
    add-int/2addr p1, p2

    return p1
.end method

.method public a(JJ)J
    .locals 9

    .line 106
    invoke-static {p1, p2, p3, p4}, Lkotlin/random/RandomKt;->a(JJ)V

    sub-long v0, p3, p1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    neg-long p3, v0

    and-long/2addr p3, v0

    const/4 v4, 0x1

    cmp-long p3, p3, v0

    if-nez p3, :cond_2

    long-to-int p3, v0

    const/16 p4, 0x20

    ushr-long/2addr v0, p4

    long-to-int v0, v0

    const-wide v1, 0xffffffffL

    if-eqz p3, :cond_0

    .line 115
    invoke-static {p3}, Lkotlin/random/PlatformRandomKt;->a(I)I

    move-result p3

    .line 117
    invoke-virtual {p0, p3}, Lkotlin/random/Random;->a(I)I

    move-result p3

    int-to-long p3, p3

    and-long/2addr p3, v1

    goto :goto_0

    :cond_0
    if-ne v0, v4, :cond_1

    .line 121
    invoke-virtual {p0}, Lkotlin/random/Random;->b()I

    move-result p3

    int-to-long p3, p3

    and-long/2addr p3, v1

    goto :goto_0

    .line 123
    :cond_1
    invoke-static {v0}, Lkotlin/random/PlatformRandomKt;->a(I)I

    move-result p3

    .line 124
    invoke-virtual {p0, p3}, Lkotlin/random/Random;->a(I)I

    move-result p3

    int-to-long v0, p3

    shl-long p3, v0, p4

    invoke-virtual {p0}, Lkotlin/random/Random;->b()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr p3, v0

    goto :goto_0

    .line 130
    :cond_2
    invoke-virtual {p0}, Lkotlin/random/Random;->c()J

    move-result-wide p3

    ushr-long/2addr p3, v4

    .line 131
    rem-long v5, p3, v0

    sub-long/2addr p3, v5

    const-wide/16 v7, 0x1

    sub-long v7, v0, v7

    add-long/2addr p3, v7

    cmp-long p3, p3, v2

    if-ltz p3, :cond_2

    move-wide p3, v5

    :goto_0
    const/4 v0, 0x0

    add-long/2addr p1, p3

    return-wide p1

    .line 138
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lkotlin/random/Random;->c()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_4

    goto :goto_1

    :cond_4
    cmp-long v2, p3, v0

    if-lez v2, :cond_3

    return-wide v0
.end method

.method public a([B)[B
    .locals 2

    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lkotlin/random/Random;->a([BII)[B

    move-result-object p1

    return-object p1
.end method

.method public a([BII)[B
    .locals 6

    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    if-lt v0, p2, :cond_2

    array-length v0, p1

    if-gez p3, :cond_1

    goto :goto_0

    :cond_1
    if-lt v0, p3, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_7

    if-gt p2, p3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_6

    sub-int v0, p3, p2

    .line 199
    div-int/lit8 v0, v0, 0x4

    move v2, p2

    const/4 p2, 0x0

    :goto_3
    if-ge p2, v0, :cond_4

    .line 203
    invoke-virtual {p0}, Lkotlin/random/Random;->b()I

    move-result v3

    int-to-byte v4, v3

    .line 204
    aput-byte v4, p1, v2

    add-int/lit8 v4, v2, 0x1

    ushr-int/lit8 v5, v3, 0x8

    int-to-byte v5, v5

    .line 205
    aput-byte v5, p1, v4

    add-int/lit8 v4, v2, 0x2

    ushr-int/lit8 v5, v3, 0x10

    int-to-byte v5, v5

    .line 206
    aput-byte v5, p1, v4

    add-int/lit8 v4, v2, 0x3

    ushr-int/lit8 v3, v3, 0x18

    int-to-byte v3, v3

    .line 207
    aput-byte v3, p1, v4

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_4
    sub-int/2addr p3, v2

    mul-int/lit8 p2, p3, 0x8

    .line 212
    invoke-virtual {p0, p2}, Lkotlin/random/Random;->a(I)I

    move-result p2

    :goto_4
    if-ge v1, p3, :cond_5

    add-int v0, v2, v1

    mul-int/lit8 v3, v1, 0x8

    ushr-int v3, p2, v3

    int-to-byte v3, v3

    .line 214
    aput-byte v3, p1, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    return-object p1

    .line 197
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fromIndex ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") must be not greater than toIndex ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    .line 196
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fromIndex ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") or toIndex ("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") are out of range: 0.."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
.end method

.method public b()I
    .locals 1

    const/16 v0, 0x20

    .line 36
    invoke-virtual {p0, v0}, Lkotlin/random/Random;->a(I)I

    move-result v0

    return v0
.end method

.method public b(I)I
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, v0, p1}, Lkotlin/random/Random;->a(II)I

    move-result p1

    return p1
.end method

.method public c()J
    .locals 4

    .line 85
    invoke-virtual {p0}, Lkotlin/random/Random;->b()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-virtual {p0}, Lkotlin/random/Random;->b()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public d()Z
    .locals 2

    const/4 v0, 0x1

    .line 147
    invoke-virtual {p0, v0}, Lkotlin/random/Random;->a(I)I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()D
    .locals 2

    const/16 v0, 0x1a

    .line 152
    invoke-virtual {p0, v0}, Lkotlin/random/Random;->a(I)I

    move-result v0

    const/16 v1, 0x1b

    invoke-virtual {p0, v1}, Lkotlin/random/Random;->a(I)I

    move-result v1

    invoke-static {v0, v1}, Lkotlin/random/PlatformRandomKt;->a(II)D

    move-result-wide v0

    return-wide v0
.end method

.method public f()F
    .locals 2

    const/16 v0, 0x18

    .line 187
    invoke-virtual {p0, v0}, Lkotlin/random/Random;->a(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x1000000

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method
