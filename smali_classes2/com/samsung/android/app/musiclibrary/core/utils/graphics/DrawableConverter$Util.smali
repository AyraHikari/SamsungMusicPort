.class public Lcom/samsung/android/app/musiclibrary/core/utils/graphics/DrawableConverter$Util;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/utils/graphics/DrawableConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Util"
.end annotation


# static fields
.field private static final DEBUG_TSP:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Landroid/content/res/Resources;Lcom/samsung/android/app/musiclibrary/core/utils/graphics/DrawableConverter;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p2    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 45
    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/DrawableConverter$Util;->convert(Landroid/content/res/Resources;Lcom/samsung/android/app/musiclibrary/core/utils/graphics/DrawableConverter;II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Landroid/content/res/Resources;Lcom/samsung/android/app/musiclibrary/core/utils/graphics/DrawableConverter;II)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p2    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 53
    :cond_0
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 56
    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_1
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 59
    instance-of p3, p2, Landroid/graphics/drawable/VectorDrawable;

    if-eqz p3, :cond_2

    if-eqz v0, :cond_2

    .line 60
    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object p3

    goto :goto_0

    .line 61
    :cond_2
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p3

    :goto_0
    if-eqz p3, :cond_3

    .line 63
    invoke-interface {p1, p0, p3}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/DrawableConverter;->convertBitmapToDrawable(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :cond_3
    return-object p2
.end method

.method public static convert(Landroid/content/res/Resources;Lcom/samsung/android/app/musiclibrary/core/utils/graphics/DrawableConverter;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    .line 33
    invoke-interface {p1, p0, p2}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/DrawableConverter;->convertBitmapToDrawable(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    .line 35
    :cond_1
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p1, p0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object p0, p1

    :goto_0
    return-object p0
.end method
