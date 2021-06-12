.class public Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter$Util;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter;
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

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    if-nez p0, :cond_0

    return-object p2

    :cond_0
    if-eqz p1, :cond_1

    .line 34
    invoke-interface {p1, p0, p2}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter;->convert(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    :cond_1
    return-object p2
.end method

.method public static resizeArtwork(Landroid/content/res/Resources;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p2    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 46
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 47
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    if-le v0, p0, :cond_1

    const/4 p2, 0x1

    .line 49
    invoke-static {p1, p0, p0, p2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_1
    return-object p1
.end method
