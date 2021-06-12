.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false

.field public static final DEF_FOG:Ljava/lang/String; = "Fog"

.field public static final DEF_GREYSCALE:Ljava/lang/String; = "Greyscale"

.field public static final DEF_HSV_CORRECTION:Ljava/lang/String; = "HSVCorrection"

.field public static final DEF_MUTABLE_TEXTURES:Ljava/lang/String; = "MutableTextures"

.field public static final DEF_QUAD_OPACITY_MASK:Ljava/lang/String; = "QuadOpacityMask"

.field public static final DEF_RENDERING_OPACITY:Ljava/lang/String; = "RenderingOpacity"

.field private static final LOG_TAG:Ljava/lang/String; = "GLGalleryShader"

.field public static final MAX_TEXTURES_COUNT:I = 0x20


# instance fields
.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mCoordHandler:I

.field private mDefines:[Ljava/lang/String;

.field private mFogColor:[F

.field private mFogColorHandler:I

.field private mFogFar:F

.field private mFogFarHandler:I

.field private mFogNear:F

.field private mFogNearHandler:I

.field private mHSVCorrection:I

.field private mHandler:I

.field private mHasMutableTextures:Z

.field private mLastAlpha:F

.field private mLastTextureName:I

.field private mLastTextureUnit:I

.field private mModelMatrixHandler:I

.field private mModelRatioHandler:I

.field private mOpacityHandler:I

.field private mPVMatrixHandler:I

.field private mQuadOpacityMaskTexture:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;

.field private mQuadOpacityMaskTextureHandler:I

.field private final mQuadTextureUnit:I

.field private mRenderingOpacity:F

.field private mRenderingOpacityHandler:I

.field private mTextures:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache;

.field private mTexturesHandler:I

.field mTexturesPool:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool<",
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;",
            ">;"
        }
    .end annotation
.end field

.field private mUseFog:Z

.field private mUseHSVCorrection:Z

.field private mUseQuadOpacityMask:Z

.field private mUseRenderingOpacity:Z

.field private mViewportSize:[F

.field private mViewportSizeHandler:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 7

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 94
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mHandler:I

    const/4 v1, 0x4

    .line 96
    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mFogColor:[F

    const/4 v1, 0x2

    .line 104
    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mViewportSize:[F

    .line 402
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;)V

    const/16 v3, 0x20

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;-><init>(ILcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement$Factory;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mTexturesPool:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;

    .line 146
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mDefines:[Ljava/lang/String;

    .line 147
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mDefines:[Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz p2, :cond_5

    .line 148
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mDefines:[Ljava/lang/String;

    array-length v2, p2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_5

    aget-object v5, p2, v4

    const-string v6, "Fog"

    .line 149
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 150
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mUseFog:Z

    goto :goto_1

    :cond_0
    const-string v6, "QuadOpacityMask"

    .line 151
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 152
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mUseQuadOpacityMask:Z

    goto :goto_1

    :cond_1
    const-string v6, "RenderingOpacity"

    .line 153
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 154
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mUseRenderingOpacity:Z

    goto :goto_1

    :cond_2
    const-string v6, "HSVCorrection"

    .line 155
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 156
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mUseHSVCorrection:Z

    goto :goto_1

    :cond_3
    const-string v6, "MutableTextures"

    .line 157
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 158
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mHasMutableTextures:Z

    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 163
    :cond_5
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mContext:Ljava/lang/ref/WeakReference;

    .line 165
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mHandler:I

    .line 167
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache;

    iget-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mHasMutableTextures:Z

    invoke-direct {p1, v3, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache;-><init>(IZ)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mTextures:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache;

    .line 169
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mQuadTextureUnit:I

    return-void
.end method

.method private bindTexture(ILcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;)V
    .locals 1

    .line 249
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mLastTextureUnit:I

    if-eq p1, v0, :cond_0

    .line 250
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mLastTextureUnit:I

    .line 251
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    :cond_0
    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 255
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->name()I

    move-result p1

    .line 257
    :cond_1
    iget p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mLastTextureName:I

    if-eq p1, p2, :cond_2

    .line 258
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mLastTextureName:I

    const/16 p2, 0xde1

    .line 259
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    :cond_2
    return-void
.end method

.method private compileIfNessary()V
    .locals 3

    .line 264
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mHandler:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 265
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    .line 267
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->LOG_TAG:Ljava/lang/String;

    const-string v1, "No context to compile shader!"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 271
    :cond_0
    sget v1, Lcom/samsung/android/app/musiclibrary/R$raw;->music_core_glwidget_fog_texture_model_vertex_shader:I

    .line 272
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShaderCompiler;->loadShader(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 274
    sget v2, Lcom/samsung/android/app/musiclibrary/R$raw;->music_core_glwidget_fog_texture_model_fragment_shader:I

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShaderCompiler;->loadShader(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 277
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mDefines:[Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShaderCompiler;->compile([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mHandler:I

    .line 279
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->use()V

    .line 281
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mHandler:I

    const-string v1, "aCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mCoordHandler:I

    .line 282
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mHandler:I

    const-string v1, "uModelMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mModelMatrixHandler:I

    .line 283
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mHandler:I

    const-string v1, "uModelRatio"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mModelRatioHandler:I

    .line 284
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mHandler:I

    const-string v1, "uPVMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mPVMatrixHandler:I

    .line 286
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mHandler:I

    const-string v1, "uTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mTexturesHandler:I

    .line 287
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mHandler:I

    const-string v1, "uOpacity"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mOpacityHandler:I

    .line 288
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mHandler:I

    const-string v1, "uFogColor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mFogColorHandler:I

    .line 289
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mHandler:I

    const-string v1, "uFogNear"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mFogNearHandler:I

    .line 290
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mHandler:I

    const-string v1, "uFogFar"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mFogFarHandler:I

    .line 291
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mHandler:I

    const-string v1, "uRenderingOpacity"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mRenderingOpacityHandler:I

    .line 293
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mHandler:I

    const-string v1, "uViewportSize"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mViewportSizeHandler:I

    .line 294
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mHandler:I

    const-string v1, "uQuadOpacityMaskTexture"

    .line 295
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mQuadOpacityMaskTextureHandler:I

    .line 296
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mHandler:I

    const-string v1, "uHSVCorrection"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mHSVCorrection:I

    .line 298
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->use()V

    return-void
.end method

.method private drawTriangleStrip(I)V
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 389
    invoke-static {v0, v1, p1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method private resetState()V
    .locals 1

    const/4 v0, -0x1

    .line 243
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mLastTextureName:I

    .line 244
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mLastTextureUnit:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 245
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mLastAlpha:F

    return-void
.end method

.method private setAlpha(F)V
    .locals 1

    .line 382
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mLastAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 383
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mLastAlpha:F

    .line 384
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mOpacityHandler:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    :cond_0
    return-void
.end method

.method private setHSV([F)V
    .locals 4

    .line 378
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mHSVCorrection:I

    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x1

    aget v2, p1, v2

    const/4 v3, 0x2

    aget p1, p1, v3

    invoke-static {v0, v1, v2, p1}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    return-void
.end method

.method private setModelMatrix([FI)V
    .locals 3

    .line 366
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mModelMatrixHandler:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    return-void
.end method

.method private setModelRatio(F)V
    .locals 1

    .line 370
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mModelRatioHandler:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    return-void
.end method

.method private setPVMatrix([F)V
    .locals 3

    .line 374
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mPVMatrixHandler:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v2, v1, p1, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    return-void
.end method

.method private updateTexture(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;)V
    .locals 1

    .line 393
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mTextures:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache;->obtain(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;)Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;

    move-result-object p1

    const v0, 0x84c0

    .line 396
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->bindTexture(ILcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;)V

    goto :goto_0

    .line 398
    :cond_0
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->LOG_TAG:Ljava/lang/String;

    const-string v0, "trying to render null bitmap!"

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private use()V
    .locals 1

    .line 302
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mHandler:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method


# virtual methods
.method public beginFrame([F)V
    .locals 4

    .line 208
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->resetState()V

    .line 210
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->compileIfNessary()V

    .line 212
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->bindVertexAttribArrays()V

    .line 213
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mUseFog:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 214
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mFogColorHandler:I

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mFogColor:[F

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    .line 215
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mFogNearHandler:I

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mFogNear:F

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 216
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mFogFarHandler:I

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mFogFar:F

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 218
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mUseRenderingOpacity:Z

    if-eqz v0, :cond_1

    .line 219
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mRenderingOpacityHandler:I

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mRenderingOpacity:F

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 221
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mUseQuadOpacityMask:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mQuadOpacityMaskTexture:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;

    if-eqz v0, :cond_2

    .line 223
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mQuadOpacityMaskTextureHandler:I

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mQuadTextureUnit:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 224
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mViewportSizeHandler:I

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mViewportSize:[F

    invoke-static {v0, v2, v3, v1}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    const v0, 0x84c0

    .line 226
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mQuadTextureUnit:I

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mQuadOpacityMaskTexture:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->bindTexture(ILcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;)V

    .line 229
    :cond_2
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mTexturesHandler:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 231
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->setPVMatrix([F)V

    return-void
.end method

.method public bindVertexAttribArrays()V
    .locals 7

    .line 238
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mCoordHandler:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 239
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mCoordHandler:I

    const/4 v2, 0x3

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    return-void
.end method

.method public renderBitmaps([Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;I)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 344
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->use()V

    .line 345
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    if-eqz v3, :cond_2

    .line 346
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 347
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getMatrix()[F

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->setModelMatrix([FI)V

    .line 348
    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->updateTexture(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;)V

    .line 349
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getAlpha()F

    move-result v4

    invoke-direct {p0, v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->setAlpha(F)V

    .line 350
    iget-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mUseHSVCorrection:Z

    if-eqz v4, :cond_1

    .line 351
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getHSVCorrection()[F

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->setHSV([F)V

    .line 353
    :cond_1
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->drawTriangleStrip(I)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public renderBitmaps([Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;Lcom/samsung/android/app/musiclibrary/core/glwidget/render/IVBOCache;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 312
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->use()V

    const/4 v0, 0x0

    .line 314
    array-length v1, p1

    const/4 v2, 0x0

    move-object v3, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_4

    aget-object v4, p1, v0

    if-eqz v4, :cond_3

    .line 315
    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 316
    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getMatrix()[F

    move-result-object v5

    invoke-direct {p0, v5, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->setModelMatrix([FI)V

    .line 317
    invoke-direct {p0, v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->updateTexture(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;)V

    .line 318
    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getAlpha()F

    move-result v5

    invoke-direct {p0, v5}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->setAlpha(F)V

    .line 319
    iget-boolean v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mUseHSVCorrection:Z

    if-eqz v5, :cond_1

    .line 320
    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getHSVCorrection()[F

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->setHSV([F)V

    .line 322
    :cond_1
    invoke-interface {p2, v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/IVBOCache;->getVBO(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;)Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;

    move-result-object v5

    .line 323
    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 324
    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;->bind()V

    .line 326
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->bindVertexAttribArrays()V

    move-object v3, v5

    .line 328
    :cond_2
    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getModelRatio()F

    move-result v4

    invoke-direct {p0, v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->setModelRatio(F)V

    .line 329
    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;->getLength()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->drawTriangleStrip(I)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public resetMutableTexturesCache()V
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mTextures:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache;->resetMutableCache()V

    return-void
.end method

.method public setFogColor(FFFF)V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mFogColor:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 174
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mFogColor:[F

    const/4 v0, 0x1

    aput p2, p1, v0

    .line 175
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mFogColor:[F

    const/4 p2, 0x2

    aput p3, p1, p2

    .line 176
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mFogColor:[F

    const/4 p2, 0x3

    aput p4, p1, p2

    return-void
.end method

.method public setFogDistance(FF)V
    .locals 0

    .line 180
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mFogNear:F

    .line 181
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mFogFar:F

    return-void
.end method

.method public setQuadOpacityMaskTexture(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mQuadOpacityMaskTexture:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mTexturesPool:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->obtain()Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mQuadOpacityMaskTexture:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mQuadOpacityMaskTexture:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->sendBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setRenderingOpacity(F)V
    .locals 0

    .line 185
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mRenderingOpacity:F

    return-void
.end method

.method public setViewportSize(FF)V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mViewportSize:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 190
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mViewportSize:[F

    const/4 v0, 0x1

    aput p2, p1, v0

    return-void
.end method
