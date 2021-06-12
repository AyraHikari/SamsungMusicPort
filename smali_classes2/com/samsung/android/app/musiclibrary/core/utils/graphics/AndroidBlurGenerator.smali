.class public Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_BLUR_RADIUS:F = 25.0f

.field private static final TAG:Ljava/lang/String; = "AndroidBlurGenerator"


# instance fields
.field private final mBlurSize:I

.field private mBufferBitmap:Landroid/graphics/Bitmap;

.field private final mBufferCanvas:Landroid/graphics/Canvas;

.field private final mBufferPaint:Landroid/graphics/Paint;

.field private final mContext:Landroid/content/Context;

.field private volatile mIsReleased:Z

.field private mRenderScript:Landroid/renderscript/RenderScript;

.field private final mRenderScriptLock:Ljava/lang/Object;

.field private mScript:Landroid/renderscript/ScriptIntrinsicBlur;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mBufferPaint:Landroid/graphics/Paint;

    .line 28
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mBufferCanvas:Landroid/graphics/Canvas;

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mIsReleased:Z

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mRenderScriptLock:Ljava/lang/Object;

    .line 47
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mContext:Landroid/content/Context;

    .line 48
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mBlurSize:I

    return-void
.end method

.method private convertToARGB8(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    .line 136
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int v0, v0, v1

    mul-int/lit8 v0, v0, 0x4

    .line 137
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mBufferBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mBufferBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v1

    if-lt v1, v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mBufferBitmap:Landroid/graphics/Bitmap;

    .line 138
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mBufferBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mBufferBitmap:Landroid/graphics/Bitmap;

    .line 148
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mBufferBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mBufferCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mBufferBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 152
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mBufferCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mBufferPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 142
    :cond_3
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mBufferBitmap:Landroid/graphics/Bitmap;

    .line 157
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mBufferBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private ensureRenderScript()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mRenderScript:Landroid/renderscript/RenderScript;

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mRenderScript:Landroid/renderscript/RenderScript;

    .line 126
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mRenderScript:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mRenderScript:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mScript:Landroid/renderscript/ScriptIntrinsicBlur;

    .line 127
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mBufferPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method private getBlurBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 60
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mBlurSize:I

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mBlurSize:I

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 62
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->convertToARGB8(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 71
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int v0, v0, v1

    mul-int/lit8 v0, v0, 0x4

    if-eqz p2, :cond_2

    .line 74
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v1

    if-gt v1, v0, :cond_2

    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 82
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mRenderScriptLock:Ljava/lang/Object;

    monitor-enter v0

    .line 83
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mIsReleased:Z

    if-eqz v1, :cond_3

    .line 84
    monitor-exit v0

    return-object p1

    .line 86
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->ensureRenderScript()V

    .line 87
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mRenderScript:Landroid/renderscript/RenderScript;

    sget-object v3, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    .line 88
    invoke-static {v1, p1, v3, v2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object p1

    .line 93
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mRenderScript:Landroid/renderscript/RenderScript;

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v1

    .line 97
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mScript:Landroid/renderscript/ScriptIntrinsicBlur;

    const/high16 v3, 0x41c80000    # 25.0f

    invoke-virtual {v2, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 101
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mScript:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v2, p1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 105
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mScript:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v2, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 109
    invoke-virtual {v1, p2}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 113
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->destroy()V

    .line 114
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    .line 115
    monitor-exit v0

    return-object p2

    :catchall_0
    move-exception p1

    .line 116
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public getBlurBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->getBlurBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public release()V
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mRenderScriptLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 162
    :try_start_0
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mIsReleased:Z

    .line 166
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mScript:Landroid/renderscript/ScriptIntrinsicBlur;

    const/4 v2, 0x0

    .line 167
    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mScript:Landroid/renderscript/ScriptIntrinsicBlur;

    if-eqz v1, :cond_0

    .line 169
    invoke-virtual {v1}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mRenderScript:Landroid/renderscript/RenderScript;

    .line 176
    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mRenderScript:Landroid/renderscript/RenderScript;

    if-eqz v1, :cond_1

    .line 178
    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->destroy()V

    .line 183
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
