.class public Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;
.super Landroid/view/SurfaceView;
.source "SourceFile"

# interfaces
.implements Lcom/devbrackets/android/exomedia/core/video/ClearableSurface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$GlobalLayoutMatrixListener;,
        Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$AttachedListener;,
        Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$OnSizeChangeListener;
    }
.end annotation


# static fields
.field private static final k:[I

.field private static final l:[I


# instance fields
.field protected a:Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$OnSizeChangeListener;
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

.field protected e:Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$AttachedListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected f:Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$GlobalLayoutMatrixListener;
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

    .line 66
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->k:[I

    const/4 v0, 0x3

    .line 83
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->l:[I

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

    .line 120
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 95
    new-instance p1, Landroid/graphics/Point;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->b:Landroid/graphics/Point;

    .line 97
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->c:Landroid/graphics/Point;

    .line 100
    new-instance p1, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;

    invoke-direct {p1}, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;-><init>()V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->d:Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;

    .line 103
    new-instance p1, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$AttachedListener;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$AttachedListener;-><init>(Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$1;)V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->e:Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$AttachedListener;

    .line 105
    new-instance p1, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$GlobalLayoutMatrixListener;

    invoke-direct {p1, p0, v1}, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$GlobalLayoutMatrixListener;-><init>(Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$1;)V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->f:Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$GlobalLayoutMatrixListener;

    .line 107
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->g:Ljava/util/concurrent/locks/ReentrantLock;

    .line 110
    iput v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->h:I

    .line 112
    iput v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->i:I

    .line 117
    iput-boolean v1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->j:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 124
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    new-instance p1, Landroid/graphics/Point;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->b:Landroid/graphics/Point;

    .line 97
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, p2, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->c:Landroid/graphics/Point;

    .line 100
    new-instance p1, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;

    invoke-direct {p1}, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;-><init>()V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->d:Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;

    .line 103
    new-instance p1, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$AttachedListener;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$AttachedListener;-><init>(Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$1;)V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->e:Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$AttachedListener;

    .line 105
    new-instance p1, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$GlobalLayoutMatrixListener;

    invoke-direct {p1, p0, v0}, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$GlobalLayoutMatrixListener;-><init>(Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$1;)V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->f:Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$GlobalLayoutMatrixListener;

    .line 107
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->g:Ljava/util/concurrent/locks/ReentrantLock;

    .line 110
    iput p2, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->h:I

    .line 112
    iput p2, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->i:I

    .line 117
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->j:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 128
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    new-instance p1, Landroid/graphics/Point;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->b:Landroid/graphics/Point;

    .line 97
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, p2, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->c:Landroid/graphics/Point;

    .line 100
    new-instance p1, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;

    invoke-direct {p1}, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;-><init>()V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->d:Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;

    .line 103
    new-instance p1, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$AttachedListener;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$AttachedListener;-><init>(Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$1;)V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->e:Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$AttachedListener;

    .line 105
    new-instance p1, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$GlobalLayoutMatrixListener;

    invoke-direct {p1, p0, p3}, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$GlobalLayoutMatrixListener;-><init>(Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$1;)V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->f:Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$GlobalLayoutMatrixListener;

    .line 107
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->g:Ljava/util/concurrent/locks/ReentrantLock;

    .line 110
    iput p2, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->h:I

    .line 112
    iput p2, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->i:I

    .line 117
    iput-boolean p3, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->j:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 133
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 95
    new-instance p1, Landroid/graphics/Point;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->b:Landroid/graphics/Point;

    .line 97
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, p2, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->c:Landroid/graphics/Point;

    .line 100
    new-instance p1, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;

    invoke-direct {p1}, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;-><init>()V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->d:Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;

    .line 103
    new-instance p1, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$AttachedListener;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$AttachedListener;-><init>(Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$1;)V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->e:Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$AttachedListener;

    .line 105
    new-instance p1, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$GlobalLayoutMatrixListener;

    invoke-direct {p1, p0, p3}, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$GlobalLayoutMatrixListener;-><init>(Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$1;)V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->f:Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$GlobalLayoutMatrixListener;

    .line 107
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->g:Ljava/util/concurrent/locks/ReentrantLock;

    .line 110
    iput p2, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->h:I

    .line 112
    iput p2, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->i:I

    .line 117
    iput-boolean p3, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->j:Z

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

    .line 303
    :cond_0
    iget v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->h:I

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->i:I

    :goto_1
    invoke-virtual {p0, v0, p1}, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->b(II)V

    return-void
.end method

.method protected a(II)Z
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->d:Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;

    invoke-virtual {v0, p1, p2}, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->a(II)V

    .line 258
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->g()V

    .line 260
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->c:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 261
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->c:Landroid/graphics/Point;

    iput p2, v0, Landroid/graphics/Point;->y:I

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
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

    .line 314
    iput p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->h:I

    .line 315
    iput p2, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->i:I

    .line 317
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->d:Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;

    add-int/2addr p1, p2

    rem-int/lit16 p1, p1, 0x168

    invoke-virtual {v0, p0, p1}, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->a(Landroid/view/View;I)V

    return-void
.end method

.method protected c(II)V
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->b:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->b:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-ne v0, p2, :cond_0

    return-void

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->b:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 351
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->b:Landroid/graphics/Point;

    iput p2, v0, Landroid/graphics/Point;->y:I

    .line 353
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->g()V

    .line 355
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->a:Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$OnSizeChangeListener;

    if-eqz v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->a:Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$OnSizeChangeListener;

    invoke-interface {v0, p1, p2}, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$OnSizeChangeListener;->a(II)V

    :cond_1
    return-void
.end method

.method public f()V
    .locals 10

    .line 227
    :try_start_0
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    .line 228
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v7

    const/4 v1, 0x0

    .line 229
    invoke-interface {v0, v7, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    const/4 v8, 0x1

    .line 231
    new-array v9, v8, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 232
    sget-object v3, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->k:[I

    array-length v5, v9

    new-array v6, v8, [I

    move-object v1, v0

    move-object v2, v7

    move-object v4, v9

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    const/4 v1, 0x0

    .line 233
    aget-object v2, v9, v1

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v4, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->l:[I

    invoke-interface {v0, v7, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    .line 234
    aget-object v3, v9, v1

    new-array v4, v8, [I

    const/16 v5, 0x3038

    aput v5, v4, v1

    invoke-interface {v0, v7, v3, p0, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    .line 236
    invoke-interface {v0, v7, v1, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 237
    invoke-interface {v0, v7, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 238
    invoke-interface {v0, v7, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 239
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v7, v1, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 240
    invoke-interface {v0, v7, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 242
    invoke-interface {v0, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ResizingSurfaceView"

    const-string v2, "Error clearing surface"

    .line 244
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method protected g()V
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 329
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->e:Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$AttachedListener;

    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_0

    .line 332
    :cond_0
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->f:Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$GlobalLayoutMatrixListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 335
    :goto_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public getScaleType()Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->d:Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->b()Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;

    move-result-object v0

    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 206
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->g()V

    .line 207
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 138
    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->j:Z

    if-nez v0, :cond_0

    .line 139
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onMeasure(II)V

    .line 140
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->c(II)V

    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->c:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-static {v0, p1}, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->getDefaultSize(II)I

    move-result v0

    .line 145
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->c:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v1, p2}, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->getDefaultSize(II)I

    move-result v1

    .line 147
    iget-object v2, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->c:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-lez v2, :cond_a

    iget-object v2, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->c:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-gtz v2, :cond_1

    goto/16 :goto_2

    .line 153
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 154
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 155
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 156
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_3

    if-ne v1, v2, :cond_3

    .line 163
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->c:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    mul-int v0, v0, p2

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->c:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    mul-int v1, v1, p1

    if-ge v0, v1, :cond_2

    .line 164
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->c:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    mul-int p1, p1, p2

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->c:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    div-int/2addr p1, v0

    goto/16 :goto_1

    .line 165
    :cond_2
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->c:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    mul-int v0, v0, p2

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->c:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    mul-int v1, v1, p1

    if-le v0, v1, :cond_9

    .line 166
    iget-object p2, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->c:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    mul-int p2, p2, p1

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->c:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    div-int/2addr p2, v0

    goto :goto_1

    :cond_3
    const/high16 v3, -0x80000000

    if-ne v0, v2, :cond_5

    .line 171
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->c:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    mul-int v0, v0, p1

    iget-object v2, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->c:Landroid/graphics/Point;

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

    .line 179
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->c:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    mul-int v1, v1, p2

    iget-object v2, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->c:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    div-int/2addr v1, v2

    if-ne v0, v3, :cond_6

    if-le v1, p1, :cond_6

    goto :goto_1

    :cond_6
    move p1, v1

    goto :goto_1

    .line 186
    :cond_7
    iget-object v2, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->c:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 187
    iget-object v4, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->c:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    if-ne v1, v3, :cond_8

    if-le v4, p2, :cond_8

    .line 191
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->c:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    mul-int v1, v1, p2

    iget-object v2, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->c:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    div-int/2addr v1, v2

    goto :goto_0

    :cond_8
    move v1, v2

    move p2, v4

    :goto_0
    if-ne v0, v3, :cond_6

    if-le v1, p1, :cond_6

    .line 196
    iget-object p2, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->c:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    mul-int p2, p2, p1

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->c:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    div-int/2addr p2, v0

    .line 200
    :cond_9
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->setMeasuredDimension(II)V

    .line 201
    invoke-virtual {p0, p1, p2}, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->c(II)V

    return-void

    .line 148
    :cond_a
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->setMeasuredDimension(II)V

    .line 149
    invoke-virtual {p0, v0, v1}, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->c(II)V

    return-void
.end method

.method public setMeasureBasedOnAspectRatioEnabled(Z)V
    .locals 0

    .line 292
    iput-boolean p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->j:Z

    .line 293
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->requestLayout()V

    return-void
.end method

.method public setOnSizeChangeListener(Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$OnSizeChangeListener;)V
    .locals 0
    .param p1    # Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$OnSizeChangeListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 216
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->a:Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$OnSizeChangeListener;

    return-void
.end method

.method public setScaleType(Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;)V
    .locals 1
    .param p1    # Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 272
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->d:Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;

    invoke-virtual {v0, p0, p1}, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->a(Landroid/view/View;Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;)Z

    return-void
.end method
