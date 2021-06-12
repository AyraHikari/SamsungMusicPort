.class public Luk/co/senab/photoview/Compat;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)I
    .locals 2

    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 44
    invoke-static {p0}, Luk/co/senab/photoview/Compat;->c(I)I

    move-result p0

    return p0

    .line 46
    :cond_0
    invoke-static {p0}, Luk/co/senab/photoview/Compat;->b(I)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2

    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 31
    invoke-static {p0, p1}, Luk/co/senab/photoview/Compat;->b(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x10

    .line 33
    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method private static b(I)I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    const v0, 0xff00

    and-int/2addr p0, v0

    shr-int/lit8 p0, p0, 0x8

    return p0
.end method

.method private static b(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 39
    invoke-virtual {p0, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static c(I)I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const v0, 0xff00

    and-int/2addr p0, v0

    shr-int/lit8 p0, p0, 0x8

    return p0
.end method
