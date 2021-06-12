.class public Landroid/support/v4/media/MediaBrowserCompatUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areSameOptions(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-nez p0, :cond_2

    const-string p0, "android.media.browse.extra.PAGE"

    .line 35
    invoke-virtual {p1, p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v2, :cond_1

    const-string p0, "android.media.browse.extra.PAGE_SIZE"

    .line 36
    invoke-virtual {p1, p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    if-nez p1, :cond_4

    const-string p1, "android.media.browse.extra.PAGE"

    .line 38
    invoke-virtual {p0, p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_3

    const-string p1, "android.media.browse.extra.PAGE_SIZE"

    .line 39
    invoke-virtual {p0, p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_4
    const-string v3, "android.media.browse.extra.PAGE"

    .line 41
    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "android.media.browse.extra.PAGE"

    .line 42
    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v3, v4, :cond_5

    const-string v3, "android.media.browse.extra.PAGE_SIZE"

    .line 43
    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    const-string v3, "android.media.browse.extra.PAGE_SIZE"

    .line 44
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p0, p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method public static hasDuplicatedItems(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 6

    const/4 v0, -0x1

    if-nez p0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const-string v1, "android.media.browse.extra.PAGE"

    .line 49
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    :goto_0
    if-nez p1, :cond_1

    const/4 v2, -0x1

    goto :goto_1

    :cond_1
    const-string v2, "android.media.browse.extra.PAGE"

    .line 50
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    :goto_1
    if-nez p0, :cond_2

    const/4 p0, -0x1

    goto :goto_2

    :cond_2
    const-string v3, "android.media.browse.extra.PAGE_SIZE"

    .line 52
    invoke-virtual {p0, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    :goto_2
    if-nez p1, :cond_3

    const/4 p1, -0x1

    goto :goto_3

    :cond_3
    const-string v3, "android.media.browse.extra.PAGE_SIZE"

    .line 54
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    :goto_3
    const v3, 0x7fffffff

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v1, v0, :cond_5

    if-ne p0, v0, :cond_4

    goto :goto_4

    :cond_4
    mul-int v1, v1, p0

    add-int/2addr p0, v1

    sub-int/2addr p0, v4

    goto :goto_5

    :cond_5
    :goto_4
    const p0, 0x7fffffff

    const/4 v1, 0x0

    :goto_5
    if-eq v2, v0, :cond_7

    if-ne p1, v0, :cond_6

    goto :goto_6

    :cond_6
    mul-int v0, p1, v2

    add-int/2addr p1, v0

    add-int/lit8 v3, p1, -0x1

    goto :goto_7

    :cond_7
    :goto_6
    const/4 v0, 0x0

    :goto_7
    if-lt p0, v0, :cond_8

    if-lt v3, v1, :cond_8

    goto :goto_8

    :cond_8
    const/4 v4, 0x0

    :goto_8
    return v4
.end method
