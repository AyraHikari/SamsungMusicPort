.class public Lcom/samsung/android/app/music/milk/compat/DisplayCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 2

    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    .line 10
    invoke-virtual {p0, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    :goto_0
    return-void
.end method
