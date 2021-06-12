.class public final Lcom/samsung/android/app/music/service/observer/artwork/EdgePanelArtworkConverter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 24
    invoke-static {p2, v0}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/service/observer/artwork/EdgePanelArtworkConverter;->b(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private b(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    const v0, 0x7f1003f1

    const v1, 0x7f1003ef

    .line 30
    invoke-static {v0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter;->createFromResource(III)Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter;

    move-result-object v0

    .line 32
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter;->convert(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public convert(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 18
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/service/observer/artwork/EdgePanelArtworkConverter;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
