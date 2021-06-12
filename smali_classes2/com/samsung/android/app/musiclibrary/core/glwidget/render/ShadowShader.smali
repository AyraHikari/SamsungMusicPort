.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowShader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mAlphaHandler:I

.field private mColorHandler:I

.field private mCoordHandler:I

.field private mHandler:I

.field private mModelMatrixHandler:I

.field private mPVMatrixHandler:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget v0, Lcom/samsung/android/app/musiclibrary/R$raw;->music_core_gradient_vertex_shader:I

    sget v1, Lcom/samsung/android/app/musiclibrary/R$raw;->music_core_gradient_fragment_shader:I

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShaderCompiler;->compile(Landroid/content/Context;[Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowShader;->mHandler:I

    .line 43
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowShader;->use()V

    .line 44
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowShader;->mHandler:I

    const-string v0, "aCoord"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowShader;->mCoordHandler:I

    .line 45
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowShader;->mHandler:I

    const-string v0, "aColor"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowShader;->mColorHandler:I

    .line 46
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowShader;->mHandler:I

    const-string v0, "uModelMatrix"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowShader;->mModelMatrixHandler:I

    .line 47
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowShader;->mHandler:I

    const-string v0, "uPVMatrix"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowShader;->mPVMatrixHandler:I

    .line 48
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowShader;->mHandler:I

    const-string v0, "uOpacity"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowShader;->mAlphaHandler:I

    return-void
.end method

.method private draw(I)V
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 92
    invoke-static {v0, v1, p1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method private setAlpha(F)V
    .locals 1

    .line 64
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowShader;->mAlphaHandler:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    return-void
.end method

.method private setModelMatrix([FI)V
    .locals 3

    .line 56
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowShader;->mModelMatrixHandler:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    return-void
.end method

.method private setPVMatrix([F)V
    .locals 3

    .line 60
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowShader;->mPVMatrixHandler:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v2, v1, p1, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    return-void
.end method

.method private use()V
    .locals 1

    .line 52
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowShader;->mHandler:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method


# virtual methods
.method public render([F[Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;I)V
    .locals 6

    if-nez p2, :cond_0

    return-void

    .line 72
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowShader;->use()V

    .line 73
    invoke-virtual {p3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;->bind()V

    .line 74
    iget p3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowShader;->mCoordHandler:I

    invoke-static {p3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 75
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowShader;->mCoordHandler:I

    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 76
    invoke-virtual {p4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;->bind()V

    .line 77
    iget p3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowShader;->mColorHandler:I

    invoke-static {p3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 78
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowShader;->mColorHandler:I

    const/4 v1, 0x4

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 80
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowShader;->setPVMatrix([F)V

    .line 82
    array-length p1, p2

    const/4 p3, 0x0

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p1, :cond_2

    aget-object v0, p2, p4

    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 84
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getMatrix()[F

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowShader;->setModelMatrix([FI)V

    .line 85
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getAlpha()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowShader;->setAlpha(F)V

    .line 86
    invoke-direct {p0, p5}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowShader;->draw(I)V

    :cond_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
