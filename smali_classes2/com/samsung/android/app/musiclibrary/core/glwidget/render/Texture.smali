.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;
.super Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static final NOT_INITIALIZED:I = -0x1


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapByteCount:I

.field private mMipmaps:Z

.field private mName:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3

    .line 53
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;-><init>()V

    const/4 v0, 0x1

    .line 54
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, v0, v1

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mName:[I

    .line 55
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mMipmaps:Z

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 69
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->release()V

    .line 70
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getByteCount()I
    .locals 1

    .line 133
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mBitmapByteCount:I

    return v0
.end method

.method public invalidate()V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mName:[I

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, v0, v1

    return-void
.end method

.method public name()I
    .locals 6

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mName:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    .line 87
    :cond_0
    monitor-enter p0

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mName:[I

    aget v0, v0, v1

    const/4 v3, 0x1

    const/16 v4, 0xde1

    if-ne v0, v2, :cond_2

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mName:[I

    invoke-static {v3, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 91
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Texture created: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mName:[I

    aget v5, v5, v1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mName:[I

    aget v0, v0, v1

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 93
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mMipmaps:Z

    const/16 v2, 0x2601

    const/16 v5, 0x2801

    if-eqz v0, :cond_1

    const/16 v0, 0x2703

    .line 94
    invoke-static {v4, v5, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    goto :goto_0

    .line 97
    :cond_1
    invoke-static {v4, v5, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    :goto_0
    const/16 v0, 0x2800

    .line 100
    invoke-static {v4, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2802

    const v2, 0x812f

    .line 102
    invoke-static {v4, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2803

    .line 104
    invoke-static {v4, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    goto :goto_1

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mName:[I

    aget v0, v0, v1

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 109
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 110
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Texture sendBitmap: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mName:[I

    aget v5, v5, v1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " w: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mBitmap:Landroid/graphics/Bitmap;

    .line 111
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " h: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mBitmap:Landroid/graphics/Bitmap;

    .line 112
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 110
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xcf5

    .line 113
    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v4, v1, v0, v1}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 115
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mMipmaps:Z

    if-eqz v0, :cond_4

    .line 116
    invoke-static {v4}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    goto :goto_2

    .line 119
    :cond_3
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to assign recycled bitmap to texture: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    const/4 v0, 0x0

    .line 121
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mBitmap:Landroid/graphics/Bitmap;

    .line 123
    :cond_5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mName:[I

    aget v0, v0, v1

    return v0

    :catchall_0
    move-exception v0

    .line 123
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public readName()I
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mName:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public declared-synchronized release()V
    .locals 5

    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mName:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 75
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Texture released: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mName:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 76
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mName:[I

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mName:[I

    aput v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 73
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sendBitmap(Landroid/graphics/Bitmap;)V
    .locals 3

    monitor-enter p0

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mBitmap:Landroid/graphics/Bitmap;

    if-eq p1, v0, :cond_0

    .line 60
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mBitmap:Landroid/graphics/Bitmap;

    .line 61
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->mBitmapByteCount:I

    goto :goto_0

    .line 63
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "skip bitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 58
    monitor-exit p0

    throw p1
.end method
