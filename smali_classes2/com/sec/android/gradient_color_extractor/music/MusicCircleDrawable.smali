.class public Lcom/sec/android/gradient_color_extractor/music/MusicCircleDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# static fields
.field private static a:Landroid/graphics/Bitmap;


# instance fields
.field private b:Landroid/graphics/Paint;

.field private c:I

.field private d:I

.field private final e:Landroid/graphics/Rect;

.field private final f:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 34
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0xff

    .line 27
    iput v0, p0, Lcom/sec/android/gradient_color_extractor/music/MusicCircleDrawable;->c:I

    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lcom/sec/android/gradient_color_extractor/music/MusicCircleDrawable;->d:I

    .line 30
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gradient_color_extractor/music/MusicCircleDrawable;->e:Landroid/graphics/Rect;

    .line 31
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gradient_color_extractor/music/MusicCircleDrawable;->f:Landroid/graphics/Rect;

    .line 35
    sget-object v0, Lcom/sec/android/gradient_color_extractor/music/MusicCircleDrawable;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/gradient_color_extractor/music/MusicCircleDrawable;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    :cond_0
    invoke-static {p1}, Lcom/sec/android/gradient_color_extractor/music/MusicCircleDrawable;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    sput-object p1, Lcom/sec/android/gradient_color_extractor/music/MusicCircleDrawable;->a:Landroid/graphics/Bitmap;

    .line 39
    :cond_1
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gradient_color_extractor/music/MusicCircleDrawable;->b:Landroid/graphics/Paint;

    .line 40
    iget-object p1, p0, Lcom/sec/android/gradient_color_extractor/music/MusicCircleDrawable;->e:Landroid/graphics/Rect;

    sget-object v0, Lcom/sec/android/gradient_color_extractor/music/MusicCircleDrawable;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sget-object v1, Lcom/sec/android/gradient_color_extractor/music/MusicCircleDrawable;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 42
    sget-object p1, Lcom/sec/android/gradient_color_extractor/music/MusicCircleDrawable;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    sget-object v0, Lcom/sec/android/gradient_color_extractor/music/MusicCircleDrawable;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-super {p0, v2, v2, p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method private static a(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 13

    .line 183
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x0

    .line 184
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 185
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "radial_gradient_dithered_2048_2_16_compressed.gm"

    .line 189
    invoke-virtual {p0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    :try_start_1
    invoke-static {p0, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 194
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v2

    goto :goto_3

    :catch_1
    move-exception v0

    move-object p0, v2

    .line 192
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 194
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-object v0, v2

    .line 197
    :catch_3
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    .line 198
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    mul-int v2, p0, v11

    .line 199
    new-array v12, v2, [I

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v0

    move-object v4, v12

    move v6, p0

    move v9, p0

    move v10, v11

    .line 200
    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 201
    :goto_2
    array-length v2, v12

    if-ge v1, v2, :cond_0

    const v2, 0xffffff

    .line 202
    aget v3, v12, v1

    shl-int/lit8 v3, v3, 0x8

    const/high16 v4, -0x1000000

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v12, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 204
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 206
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v11, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, v12

    move v5, p0

    move v8, p0

    move v9, v11

    .line 207
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v0

    :catchall_1
    move-exception v0

    .line 194
    :goto_3
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    throw v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 161
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 163
    invoke-virtual {p0}, Lcom/sec/android/gradient_color_extractor/music/MusicCircleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 166
    sget-object v0, Lcom/sec/android/gradient_color_extractor/music/MusicCircleDrawable;->a:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sec/android/gradient_color_extractor/music/MusicCircleDrawable;->e:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sec/android/gradient_color_extractor/music/MusicCircleDrawable;->f:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/gradient_color_extractor/music/MusicCircleDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/high16 v0, 0x42b40000    # 90.0f

    .line 168
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 169
    sget-object v1, Lcom/sec/android/gradient_color_extractor/music/MusicCircleDrawable;->a:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/sec/android/gradient_color_extractor/music/MusicCircleDrawable;->e:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/gradient_color_extractor/music/MusicCircleDrawable;->f:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/sec/android/gradient_color_extractor/music/MusicCircleDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 171
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 172
    sget-object v1, Lcom/sec/android/gradient_color_extractor/music/MusicCircleDrawable;->a:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/sec/android/gradient_color_extractor/music/MusicCircleDrawable;->e:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/gradient_color_extractor/music/MusicCircleDrawable;->f:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/sec/android/gradient_color_extractor/music/MusicCircleDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 174
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 175
    sget-object v0, Lcom/sec/android/gradient_color_extractor/music/MusicCircleDrawable;->a:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sec/android/gradient_color_extractor/music/MusicCircleDrawable;->e:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sec/android/gradient_color_extractor/music/MusicCircleDrawable;->f:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/gradient_color_extractor/music/MusicCircleDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 177
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/sec/android/gradient_color_extractor/music/MusicCircleDrawable;->c:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 3

    .line 75
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 76
    iget-object v0, p0, Lcom/sec/android/gradient_color_extractor/music/MusicCircleDrawable;->f:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 87
    iput p1, p0, Lcom/sec/android/gradient_color_extractor/music/MusicCircleDrawable;->c:I

    .line 88
    iget-object v0, p0, Lcom/sec/android/gradient_color_extractor/music/MusicCircleDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setBounds(IIII)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 64
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 53
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/sec/android/gradient_color_extractor/music/MusicCircleDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setTint(I)V
    .locals 3

    .line 108
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 109
    iput p1, p0, Lcom/sec/android/gradient_color_extractor/music/MusicCircleDrawable;->d:I

    .line 110
    iget-object p1, p0, Lcom/sec/android/gradient_color_extractor/music/MusicCircleDrawable;->b:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget v1, p0, Lcom/sec/android/gradient_color_extractor/music/MusicCircleDrawable;->d:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
