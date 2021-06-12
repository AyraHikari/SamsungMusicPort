.class public final Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache$DefaultDrawableCacheHolder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "DefaultDrawableCache"

.field private static final sDefaultBitmapLock:Ljava/lang/Object;

.field private static final sDefaultBlurBitmapLock:Ljava/lang/Object;


# instance fields
.field private volatile mDefaultBitmap:Landroid/graphics/Bitmap;

.field private volatile mDefaultBlurBitmap:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->sDefaultBitmapLock:Ljava/lang/Object;

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->sDefaultBlurBitmapLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBitmapFromDrawable(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 84
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 89
    sget-object p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Drawable is null"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 92
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/support/samsung/graphics/spr/SprCompat;->isSpr(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    invoke-static {p0}, Lcom/samsung/android/app/music/support/samsung/graphics/spr/SprCompat;->getBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 94
    :cond_1
    instance-of v1, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_2

    .line 95
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 98
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 99
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-lez v1, :cond_4

    if-gtz v2, :cond_3

    goto :goto_0

    .line 104
    :cond_3
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 105
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    .line 106
    invoke-virtual {p0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 107
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0

    .line 101
    :cond_4
    :goto_0
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "w: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " h: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " drawable: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 114
    sget-object p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Drawable is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    if-gtz p1, :cond_1

    .line 118
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " drawable: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 121
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 122
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    .line 123
    invoke-virtual {p0, v2, v2, p1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 124
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public static getInstance()Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;
    .locals 1

    .line 31
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache$DefaultDrawableCacheHolder;->sInstance:Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;

    return-object v0
.end method


# virtual methods
.method public getDefaultBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->mDefaultBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 36
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->mDefaultBitmap:Landroid/graphics/Bitmap;

    return-object p1

    .line 38
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->sDefaultBitmapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 39
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->mDefaultBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 40
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->mDefaultBitmap:Landroid/graphics/Bitmap;

    monitor-exit v0

    return-object p1

    .line 46
    :cond_1
    sget v1, Lcom/samsung/android/app/musiclibrary/R$drawable;->music_player_default_cover:I

    .line 47
    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/samsung/android/app/musiclibrary/R$dimen;->bitmap_size_middle:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 46
    invoke-static {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->mDefaultBitmap:Landroid/graphics/Bitmap;

    .line 53
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->mDefaultBitmap:Landroid/graphics/Bitmap;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 54
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getDefaultBlurBackground(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4

    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->mDefaultBlurBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 59
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->mDefaultBlurBitmap:Landroid/graphics/Bitmap;

    return-object p1

    .line 61
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->sDefaultBlurBitmapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->mDefaultBlurBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 63
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->mDefaultBlurBitmap:Landroid/graphics/Bitmap;

    monitor-exit v0

    return-object p1

    .line 69
    :cond_1
    sget v1, Lcom/samsung/android/app/musiclibrary/R$drawable;->music_blur_default_bg:I

    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->getBitmapFromDrawable(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_2

    .line 71
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Try to get a default bitmap from resource but fail"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    :cond_2
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->mDefaultBlurBitmap:Landroid/graphics/Bitmap;

    .line 79
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 80
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
