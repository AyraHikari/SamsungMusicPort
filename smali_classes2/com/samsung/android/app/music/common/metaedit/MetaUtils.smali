.class public Lcom/samsung/android/app/music/common/metaedit/MetaUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(B)Ljava/lang/String;
    .locals 4

    .line 17
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%8s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x2

    invoke-static {p0, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x20

    const/16 v1, 0x30

    .line 18
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 6

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    and-int/lit16 v4, v3, 0xf0

    shr-int/lit8 v4, v4, 0x4

    const/16 v5, 0x10

    .line 10
    invoke-static {v4, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v3, v3, 0xf

    .line 11
    invoke-static {v3, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(II)[B
    .locals 2

    const v0, 0xfffffff

    and-int/2addr p0, v0

    .line 45
    new-array p1, p1, [B

    .line 46
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    and-int/lit8 v1, p0, 0x7f

    int-to-byte v1, v1

    .line 47
    aput-byte v1, p1, v0

    shr-int/lit8 p0, p0, 0x7

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static b([B)I
    .locals 5

    .line 34
    array-length v0, p0

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ltz v1, :cond_0

    .line 37
    aget-byte v3, p0, v1

    and-int/lit8 v3, v3, 0x7f

    sub-int v4, v0, v1

    add-int/lit8 v4, v4, -0x1

    mul-int/lit8 v4, v4, 0x7

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public static b(II)[B
    .locals 2

    .line 63
    new-array p1, p1, [B

    .line 64
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    .line 65
    aput-byte v1, p1, v0

    shr-int/lit8 p0, p0, 0x8

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static c([B)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 56
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 57
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    array-length v3, p0

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr v3, v0

    mul-int/lit8 v3, v3, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method
