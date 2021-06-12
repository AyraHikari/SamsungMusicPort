.class public final Lcom/samsung/android/app/music/service/observer/artwork/MediaSessionArtworkConverter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter;


# instance fields
.field private a:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    if-nez p2, :cond_1

    .line 20
    iget-object p2, p0, Lcom/samsung/android/app/music/service/observer/artwork/MediaSessionArtworkConverter;->a:Landroid/graphics/Bitmap;

    if-nez p2, :cond_0

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 22
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->getInstance()Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->getDefaultBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    const v0, 0x7f1000b7

    .line 21
    invoke-static {p2, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter$Util;->resizeArtwork(Landroid/content/res/Resources;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/artwork/MediaSessionArtworkConverter;->a:Landroid/graphics/Bitmap;

    .line 25
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/service/observer/artwork/MediaSessionArtworkConverter;->a:Landroid/graphics/Bitmap;

    return-object p1

    .line 27
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
