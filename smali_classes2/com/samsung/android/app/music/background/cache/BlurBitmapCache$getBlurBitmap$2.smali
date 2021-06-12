.class public final Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/background/cache/BlurBitmapCache;->a(Landroid/content/Context;Lcom/samsung/android/app/music/background/cache/BlurBitmapCacheClient;FFZLandroid/os/Looper;Lkotlin/jvm/functions/Function2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/background/cache/BlurBitmapCacheClient;

.field final synthetic b:Z

.field final synthetic c:F

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:F

.field final synthetic f:Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$SearchKey;

.field final synthetic g:Landroid/os/Looper;

.field final synthetic h:Lkotlin/jvm/functions/Function2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/background/cache/BlurBitmapCacheClient;ZFLandroid/content/Context;FLcom/samsung/android/app/music/background/cache/BlurBitmapCache$SearchKey;Landroid/os/Looper;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2;->a:Lcom/samsung/android/app/music/background/cache/BlurBitmapCacheClient;

    iput-boolean p2, p0, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2;->b:Z

    iput p3, p0, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2;->c:F

    iput-object p4, p0, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2;->d:Landroid/content/Context;

    iput p5, p0, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2;->e:F

    iput-object p6, p0, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2;->f:Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$SearchKey;

    iput-object p7, p0, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2;->g:Landroid/os/Looper;

    iput-object p8, p0, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2;->h:Lkotlin/jvm/functions/Function2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p2, v0

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p2

    float-to-int v0, v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->c(II)I

    move-result v0

    .line 186
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p2

    float-to-int p2, v2

    invoke-static {p2, v1}, Lkotlin/ranges/RangesKt;->c(II)I

    move-result p2

    .line 187
    invoke-static {p1, v0, p2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string p2, "Bitmap.createScaledBitma\u2026idth, scaledHeight, true)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    return-object p1
.end method

.method private final a(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2;->g:Landroid/os/Looper;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache;->a:Lcom/samsung/android/app/music/background/cache/BlurBitmapCache;

    invoke-static {v0}, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache;->a(Lcom/samsung/android/app/music/background/cache/BlurBitmapCache;)Landroid/os/Handler;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2;->g:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 176
    :goto_0
    new-instance v1, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2$publishBlurredBitmap$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2$publishBlurredBitmap$1;-><init>(Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2;Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2;Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 140
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2;->a(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private final b(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 4

    .line 193
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 194
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    .line 196
    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->c(II)I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-static {v0, v2}, Lkotlin/ranges/RangesKt;->c(II)I

    move-result v2

    :goto_0
    const/4 v3, 0x0

    if-le v0, v2, :cond_1

    sub-int/2addr v0, v2

    .line 197
    div-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-le v1, v2, :cond_2

    sub-int/2addr v1, v2

    .line 198
    div-int/lit8 v3, v1, 0x2

    .line 199
    :cond_2
    invoke-static {p1, v0, v3, v2, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v0, "cropBitmap"

    .line 206
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public onPublishArtwork(Landroid/net/Uri;Landroid/graphics/Bitmap;J)V
    .locals 2

    const-wide/16 p3, 0x0

    .line 152
    invoke-virtual {p0, p1, p3, p4}, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2;->onStillUsedArtwork(Landroid/net/Uri;J)Z

    move-result p3

    if-nez p3, :cond_0

    const-string p1, "BlurBitmapCache"

    .line 153
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2;->a:Lcom/samsung/android/app/music/background/cache/BlurBitmapCacheClient;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", drop no longer used request during publish"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p2, :cond_2

    .line 157
    iget-boolean p3, p0, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2;->b:Z

    if-eqz p3, :cond_1

    .line 159
    iget p3, p0, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2;->c:F

    .line 157
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2;->b(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_0

    .line 160
    :cond_1
    iget p3, p0, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2;->c:F

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 161
    :goto_0
    sget-object p3, Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator;->a:Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator;

    iget-object p4, p0, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2;->d:Landroid/content/Context;

    iget v0, p0, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2;->e:F

    new-instance v1, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2$onPublishArtwork$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2$onPublishArtwork$1;-><init>(Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2;Landroid/net/Uri;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p3, p4, p2, v0, v1}, Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator;->a(Landroid/content/Context;Landroid/graphics/Bitmap;FLkotlin/jvm/functions/Function1;)V

    goto :goto_1

    :cond_2
    const-string p2, "BlurBitmapCache"

    .line 166
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2;->a:Lcom/samsung/android/app/music/background/cache/BlurBitmapCacheClient;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ", return default, failed to load"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->getInstance()Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2;->d:Landroid/content/Context;

    invoke-virtual {p2, p3}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->getDefaultBlurBackground(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-nez p2, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 167
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2;->a(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    :goto_1
    return-void
.end method

.method public onStartBackgroundRequest(Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public onStillUsedArtwork(Landroid/net/Uri;J)Z
    .locals 1

    .line 144
    iget-object p2, p0, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2;->a:Lcom/samsung/android/app/music/background/cache/BlurBitmapCacheClient;

    invoke-interface {p2}, Lcom/samsung/android/app/music/background/cache/BlurBitmapCacheClient;->a()Landroid/net/Uri;

    move-result-object p2

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p2, "BlurBitmapCache"

    .line 146
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$getBlurBitmap$2;->a:Lcom/samsung/android/app/music/background/cache/BlurBitmapCacheClient;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", drop no longer user request"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return p1
.end method
