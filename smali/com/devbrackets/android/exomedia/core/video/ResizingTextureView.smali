.class public Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Lcom/devbrackets/android/exomedia/core/video/ClearableSurface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$GlobalLayoutMatrixListener;,
        Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$AttachedListener;,
        Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$OnSizeChangeListener;
    }
.end annotation


# static fields
.field private static final k:[I

.field private static final l:[I


# instance fields
.field protected a:Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$OnSizeChangeListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected b:Landroid/graphics/Point;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected c:Landroid/graphics/Point;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected d:Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected e:Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$AttachedListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected f:Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$GlobalLayoutMatrixListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final g:Ljava/util/concurrent/locks/ReentrantLock;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected h:I
    .annotation build Landroid/support/annotation/IntRange;
        from = 0x0L
        to = 0x167L
    .end annotation
.end field

.field protected i:I
    .annotation build Landroid/support/annotation/IntRange;
        from = 0x0L
        to = 0x167L
    .end annotation
.end field

.field protected j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xd

    .line 67
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->k:[I

    const/4 v0, 0x3

    .line 84
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->l:[I

    return-void

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3040
        0x4
        0x3038
        0x0
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 119
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 96
    new-instance p1, Landroid/graphics/Point;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->b:Landroid/graphics/Point;

    .line 98
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->c:Landroid/graphics/Point;

    .line 101
    new-instance p1, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;

    invoke-direct {p1}, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;-><init>()V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->d:Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;

    .line 104
    new-instance p1, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$AttachedListener;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$AttachedListener;-><init>(Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$1;)V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->e:Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$AttachedListener;

    .line 106
    new-instance p1, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$GlobalLayoutMatrixListener;

    invoke-direct {p1, p0, v1}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$GlobalLayoutMatrixListener;-><init>(Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$1;)V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->f:Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$GlobalLayoutMatrixListener;

    .line 108
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->g:Ljava/util/concurrent/locks/ReentrantLock;

    .line 111
    iput v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->h:I

    .line 113
    iput v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->i:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 123
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    new-instance p1, Landroid/graphics/Point;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->b:Landroid/graphics/Point;

    .line 98
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, p2, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->c:Landroid/graphics/Point;

    .line 101
    new-instance p1, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;

    invoke-direct {p1}, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;-><init>()V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->d:Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;

    .line 104
    new-instance p1, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$AttachedListener;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$AttachedListener;-><init>(Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$1;)V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->e:Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$AttachedListener;

    .line 106
    new-instance p1, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$GlobalLayoutMatrixListener;

    invoke-direct {p1, p0, v0}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$GlobalLayoutMatrixListener;-><init>(Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$1;)V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->f:Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$GlobalLayoutMatrixListener;

    .line 108
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->g:Ljava/util/concurrent/locks/ReentrantLock;

    .line 111
    iput p2, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->h:I

    .line 113
    iput p2, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->i:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 127
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    new-instance p1, Landroid/graphics/Point;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->b:Landroid/graphics/Point;

    .line 98
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, p2, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->c:Landroid/graphics/Point;

    .line 101
    new-instance p1, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;

    invoke-direct {p1}, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;-><init>()V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->d:Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;

    .line 104
    new-instance p1, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$AttachedListener;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$AttachedListener;-><init>(Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$1;)V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->e:Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$AttachedListener;

    .line 106
    new-instance p1, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$GlobalLayoutMatrixListener;

    invoke-direct {p1, p0, p3}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$GlobalLayoutMatrixListener;-><init>(Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$1;)V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->f:Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$GlobalLayoutMatrixListener;

    .line 108
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->g:Ljava/util/concurrent/locks/ReentrantLock;

    .line 111
    iput p2, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->h:I

    .line 113
    iput p2, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->i:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 132
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 96
    new-instance p1, Landroid/graphics/Point;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->b:Landroid/graphics/Point;

    .line 98
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, p2, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->c:Landroid/graphics/Point;

    .line 101
    new-instance p1, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;

    invoke-direct {p1}, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;-><init>()V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->d:Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;

    .line 104
    new-instance p1, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$AttachedListener;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$AttachedListener;-><init>(Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$1;)V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->e:Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$AttachedListener;

    .line 106
    new-instance p1, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$GlobalLayoutMatrixListener;

    invoke-direct {p1, p0, p3}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$GlobalLayoutMatrixListener;-><init>(Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$1;)V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->f:Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$GlobalLayoutMatrixListener;

    .line 108
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->g:Ljava/util/concurrent/locks/ReentrantLock;

    .line 111
    iput p2, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->h:I

    .line 113
    iput p2, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->i:I

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x167L
        .end annotation
    .end param

    if-eqz p2, :cond_0

    move v0, p1

    goto :goto_0

    .line 319
    :cond_0
    iget v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->h:I

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->i:I

    :goto_1
    invoke-virtual {p0, v0, p1}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->b(II)V

    return-void
.end method

.method protected a(II)Z
    .locals 3

    .line 260
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->d:Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;

    invoke-virtual {v0, p1, p2}, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->a(II)V

    .line 261
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->g()V

    .line 263
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->c:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 264
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->c:Landroid/graphics/Point;

    iput p2, v0, Landroid/graphics/Point;->y:I

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 270
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-lt v1, v2, :cond_2

    .line 271
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 273
    invoke-virtual {v1, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v0
.end method

.method public b(II)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x167L
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x167L
        .end annotation
    .end param

    .line 330
    iput p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->h:I

    .line 331
    iput p2, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->i:I

    .line 333
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->d:Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;

    add-int/2addr p1, p2

    rem-int/lit16 p1, p1, 0x168

    invoke-virtual {v0, p0, p1}, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->a(Landroid/view/View;I)V

    return-void
.end method

.method protected c(II)V
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->b:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->b:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-ne v0, p2, :cond_0

    return-void

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->b:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 367
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->b:Landroid/graphics/Point;

    iput p2, v0, Landroid/graphics/Point;->y:I

    .line 369
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->g()V

    .line 371
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->a:Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$OnSizeChangeListener;

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->a:Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$OnSizeChangeListener;

    invoke-interface {v0, p1, p2}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$OnSizeChangeListener;->a(II)V

    :cond_1
    return-void
.end method

.method public f()V
    .locals 10

    .line 225
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 230
    :cond_0
    :try_start_0
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    .line 231
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v7

    const/4 v1, 0x0

    .line 232
    invoke-interface {v0, v7, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    const/4 v8, 0x1

    .line 234
    new-array v9, v8, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 235
    sget-object v3, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->k:[I

    array-length v5, v9

    new-array v6, v8, [I

    move-object v1, v0

    move-object v2, v7

    move-object v4, v9

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    const/4 v1, 0x0

    .line 236
    aget-object v2, v9, v1

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v4, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->l:[I

    invoke-interface {v0, v7, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    .line 237
    aget-object v3, v9, v1

    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v4

    new-array v5, v8, [I

    const/16 v6, 0x3038

    aput v6, v5, v1

    invoke-interface {v0, v7, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    .line 239
    invoke-interface {v0, v7, v1, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 240
    invoke-interface {v0, v7, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 241
    invoke-interface {v0, v7, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 242
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v7, v1, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 243
    invoke-interface {v0, v7, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 245
    invoke-interface {v0, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ResizingTextureView"

    const-string v2, "Error clearing surface"

    .line 247
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method protected g()V
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 345
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->e:Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$AttachedListener;

    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_0

    .line 348
    :cond_0
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->f:Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$GlobalLayoutMatrixListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 351
    :goto_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public getScaleType()Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->d:Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->b()Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;

    move-result-object v0

    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 205
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->g()V

    .line 206
    invoke-super {p0, p1}, Landroid/view/TextureView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 137
    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->j:Z

    if-nez v0, :cond_0

    .line 138
    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onMeasure(II)V

    .line 139
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->c(II)V

    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->c:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-static {v0, p1}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->getDefaultSize(II)I

    move-result v0

    .line 144
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->c:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v1, p2}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->getDefaultSize(II)I

    move-result v1

    .line 146
    iget-object v2, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->c:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-lez v2, :cond_a

    iget-object v2, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->c:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-gtz v2, :cond_1

    goto/16 :goto_2

    .line 152
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 153
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 154
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 155
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_3

    if-ne v1, v2, :cond_3

    .line 162
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->c:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    mul-int v0, v0, p2

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->c:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    mul-int v1, v1, p1

    if-ge v0, v1, :cond_2

    .line 163
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->c:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    mul-int p1, p1, p2

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->c:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    div-int/2addr p1, v0

    goto/16 :goto_1

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->c:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    mul-int v0, v0, p2

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->c:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    mul-int v1, v1, p1

    if-le v0, v1, :cond_9

    .line 165
    iget-object p2, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->c:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    mul-int p2, p2, p1

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->c:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    div-int/2addr p2, v0

    goto :goto_1

    :cond_3
    const/high16 v3, -0x80000000

    if-ne v0, v2, :cond_5

    .line 170
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->c:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    mul-int v0, v0, p1

    iget-object v2, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->c:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    div-int/2addr v0, v2

    if-ne v1, v3, :cond_4

    if-le v0, p2, :cond_4

    goto :goto_1

    :cond_4
    move p2, v0

    goto :goto_1

    :cond_5
    if-ne v1, v2, :cond_7

    .line 178
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->c:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    mul-int v1, v1, p2

    iget-object v2, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->c:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    div-int/2addr v1, v2

    if-ne v0, v3, :cond_6

    if-le v1, p1, :cond_6

    goto :goto_1

    :cond_6
    move p1, v1

    goto :goto_1

    .line 185
    :cond_7
    iget-object v2, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->c:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 186
    iget-object v4, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->c:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    if-ne v1, v3, :cond_8

    if-le v4, p2, :cond_8

    .line 190
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->c:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    mul-int v1, v1, p2

    iget-object v2, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->c:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    div-int/2addr v1, v2

    goto :goto_0

    :cond_8
    move v1, v2

    move p2, v4

    :goto_0
    if-ne v0, v3, :cond_6

    if-le v1, p1, :cond_6

    .line 195
    iget-object p2, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->c:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    mul-int p2, p2, p1

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->c:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    div-int/2addr p2, v0

    .line 199
    :cond_9
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->setMeasuredDimension(II)V

    .line 200
    invoke-virtual {p0, p1, p2}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->c(II)V

    return-void

    .line 147
    :cond_a
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->setMeasuredDimension(II)V

    .line 148
    invoke-virtual {p0, v0, v1}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->c(II)V

    return-void
.end method

.method public setMeasureBasedOnAspectRatioEnabled(Z)V
    .locals 0

    .line 308
    iput-boolean p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->j:Z

    .line 309
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->requestLayout()V

    return-void
.end method

.method public setOnSizeChangeListener(Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$OnSizeChangeListener;)V
    .locals 0
    .param p1    # Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$OnSizeChangeListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 215
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->a:Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$OnSizeChangeListener;

    return-void
.end method

.method public setScaleType(Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;)V
    .locals 1
    .param p1    # Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 288
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->d:Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;

    invoke-virtual {v0, p0, p1}, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->a(Landroid/view/View;Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;)Z

    return-void
.end method
