.class public abstract Lcom/samsung/android/app/musiclibrary/ui/provider/AbsCpAttrs;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static varargs a([I)I
    .locals 4

    .line 28
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v3, p0, v1

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public static b(I)I
    .locals 0

    and-int/lit8 p0, p0, 0xf

    return p0
.end method

.method public static c(I)Z
    .locals 1

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static d(I)Z
    .locals 1

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static e(I)Z
    .locals 1

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
