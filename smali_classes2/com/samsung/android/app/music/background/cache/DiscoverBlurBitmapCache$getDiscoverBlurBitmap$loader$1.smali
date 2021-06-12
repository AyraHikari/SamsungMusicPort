.class final Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$getDiscoverBlurBitmap$loader$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache;->a(Landroid/content/Context;Lcom/samsung/android/app/music/background/cache/DiscoverBlurClient;IFFLkotlin/jvm/functions/Function2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/samsung/android/app/music/background/cache/DiscoverBlurClient;",
        "Lcom/samsung/android/app/music/background/cache/NUriLoader$Result;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $blurRadius:F

.field final synthetic $callback:Lkotlin/jvm/functions/Function2;

.field final synthetic $client:Lcom/samsung/android/app/music/background/cache/DiscoverBlurClient;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $destBitmapSize:I

.field final synthetic $scaleK:F

.field final synthetic $searchKey:Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$SearchKey;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/background/cache/DiscoverBlurClient;Lkotlin/jvm/functions/Function2;IFLandroid/content/Context;FLcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$SearchKey;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$getDiscoverBlurBitmap$loader$1;->$client:Lcom/samsung/android/app/music/background/cache/DiscoverBlurClient;

    iput-object p2, p0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$getDiscoverBlurBitmap$loader$1;->$callback:Lkotlin/jvm/functions/Function2;

    iput p3, p0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$getDiscoverBlurBitmap$loader$1;->$destBitmapSize:I

    iput p4, p0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$getDiscoverBlurBitmap$loader$1;->$scaleK:F

    iput-object p5, p0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$getDiscoverBlurBitmap$loader$1;->$context:Landroid/content/Context;

    iput p6, p0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$getDiscoverBlurBitmap$loader$1;->$blurRadius:F

    iput-object p7, p0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$getDiscoverBlurBitmap$loader$1;->$searchKey:Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$SearchKey;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 118
    check-cast p1, Lcom/samsung/android/app/music/background/cache/DiscoverBlurClient;

    check-cast p2, Lcom/samsung/android/app/music/background/cache/NUriLoader$Result;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$getDiscoverBlurBitmap$loader$1;->invoke(Lcom/samsung/android/app/music/background/cache/DiscoverBlurClient;Lcom/samsung/android/app/music/background/cache/NUriLoader$Result;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/samsung/android/app/music/background/cache/DiscoverBlurClient;Lcom/samsung/android/app/music/background/cache/NUriLoader$Result;)V
    .locals 8

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "result"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Lcom/samsung/android/app/music/background/cache/NUriLoader$Result;->a()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 147
    invoke-virtual {p2}, Lcom/samsung/android/app/music/background/cache/NUriLoader$Result;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 148
    invoke-virtual {p2}, Lcom/samsung/android/app/music/background/cache/NUriLoader$Result;->c()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 149
    invoke-virtual {p2}, Lcom/samsung/android/app/music/background/cache/NUriLoader$Result;->d()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 218
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 163
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCacheKt;->a()Ljava/lang/String;

    move-result-object p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDiscoverBlurBitmap client="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$getDiscoverBlurBitmap$loader$1;->$client:Lcom/samsung/android/app/music/background/cache/DiscoverBlurClient;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", loading completed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :goto_0
    iget p2, p0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$getDiscoverBlurBitmap$loader$1;->$destBitmapSize:I

    int-to-float p2, p2

    iget v3, p0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$getDiscoverBlurBitmap$loader$1;->$scaleK:F

    div-float/2addr p2, v3

    float-to-int p2, p2

    .line 166
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    const-string v4, "fullSizeDestBitmap"

    .line 167
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float p2, p2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr p2, v5

    .line 171
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, p2, v5

    .line 172
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float v6, p2, v6

    const/4 v7, 0x0

    .line 169
    invoke-virtual {v4, p1, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 175
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    sub-float p1, p2, p1

    invoke-virtual {v4, v0, p2, p1, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 176
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    sub-float p1, p2, p1

    invoke-virtual {v4, v1, p1, p2, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 177
    invoke-virtual {v4, v2, p2, p2, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 181
    iget p1, p0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$getDiscoverBlurBitmap$loader$1;->$destBitmapSize:I

    iget p2, p0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$getDiscoverBlurBitmap$loader$1;->$destBitmapSize:I

    const/4 v0, 0x1

    invoke-static {v3, p1, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 182
    sget-object p2, Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator;->a:Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator;

    iget-object v0, p0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$getDiscoverBlurBitmap$loader$1;->$context:Landroid/content/Context;

    const-string v1, "destBitmap"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$getDiscoverBlurBitmap$loader$1;->$blurRadius:F

    new-instance v2, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$getDiscoverBlurBitmap$loader$1$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$getDiscoverBlurBitmap$loader$1$5;-><init>(Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$getDiscoverBlurBitmap$loader$1;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p2, v0, p1, v1, v2}, Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator;->a(Landroid/content/Context;Landroid/graphics/Bitmap;FLkotlin/jvm/functions/Function1;)V

    return-void

    .line 155
    :cond_2
    :goto_1
    sget-object p1, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache;->a:Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache;

    invoke-static {p1}, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache;->a(Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$getDiscoverBlurBitmap$loader$1$1;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$getDiscoverBlurBitmap$loader$1$1;-><init>(Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCache$getDiscoverBlurBitmap$loader$1;Lcom/samsung/android/app/music/background/cache/NUriLoader$Result;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
