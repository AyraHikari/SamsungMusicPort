.class public final Lkotlin/random/PlatformRandomKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(II)D
    .locals 2

    int-to-long v0, p0

    const/16 p0, 0x1b

    shl-long/2addr v0, p0

    int-to-long p0, p1

    add-long/2addr v0, p0

    long-to-double p0, v0

    const-wide/high16 v0, 0x20000000000000L

    long-to-double v0, v0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static final a(I)I
    .locals 0

    .line 32
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x1f

    return p0
.end method
