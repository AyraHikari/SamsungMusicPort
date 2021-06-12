.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private volatile mBitmap:Landroid/graphics/Bitmap;

.field private volatile mCanvas:Landroid/graphics/Canvas;

.field protected mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;II)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;->mView:Landroid/view/View;

    .line 61
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;->mView:Landroid/view/View;

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 62
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;->mView:Landroid/view/View;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;->mView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;->mView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p2, p3}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private drawToBitmap()V
    .locals 3

    .line 83
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;->ensureBitmap()V

    .line 84
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;->ensureCanvas()V

    .line 86
    monitor-enter p0

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;->mCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 91
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private ensureBitmap()V
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 134
    monitor-enter p0

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;->mBitmap:Landroid/graphics/Bitmap;

    .line 139
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private ensureCanvas()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;->mCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 120
    monitor-enter p0

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;->mCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 122
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;->mCanvas:Landroid/graphics/Canvas;

    .line 124
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isDirty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 74
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;->drawToBitmap()V

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;->mView:Landroid/view/View;

    return-object v0
.end method

.method public release()V
    .locals 2

    .line 101
    monitor-enter p0

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;->mCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 103
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;->mCanvas:Landroid/graphics/Canvas;

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 106
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/BitmapView;->mBitmap:Landroid/graphics/Bitmap;

    .line 108
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
