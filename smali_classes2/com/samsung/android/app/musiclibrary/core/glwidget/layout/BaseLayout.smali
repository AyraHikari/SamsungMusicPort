.class public abstract Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$LayoutConfiguration;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "GLBaseLayout"


# instance fields
.field protected mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

.field protected mAligned:Z

.field protected mAnimationIsNext:Z

.field private mFirstAlign:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mHasDimensions:Z

.field protected mHeight:I

.field protected final mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

.field private final mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

.field protected mSingleScroll:Z

.field private mTouched:Z

.field protected mWidth:I

.field protected mWrapAdapter:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)V
    .locals 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mSingleScroll:Z

    .line 70
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mFirstAlign:Z

    .line 188
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 213
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    .line 77
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    .line 78
    new-instance p1, Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {p1, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mHasDimensions:Z

    return p0
.end method

.method static synthetic access$002(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mHasDimensions:Z

    return p1
.end method


# virtual methods
.method protected doRealign()V
    .locals 2

    .line 175
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mWidth:I

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->doRealign(II)V

    return-void
.end method

.method protected doRealign(II)V
    .locals 1

    .line 179
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->hasAdapter()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mHasDimensions:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 180
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mAligned:Z

    .line 181
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->realign(II)V

    const/4 p1, 0x1

    .line 182
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mAligned:Z

    .line 183
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mFirstAlign:Z

    .line 184
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->requestRender()V

    :cond_0
    return-void
.end method

.method protected abstract doReload()V
.end method

.method public getAdapterSize()I
    .locals 1

    .line 82
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->hasAdapter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->getCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAdapterWrap()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mWrapAdapter:Z

    return v0
.end method

.method public getRenderer()Landroid/opengl/GLSurfaceView$Renderer;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    return-object v0
.end method

.method public getSingleScroll()Z
    .locals 1

    .line 140
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mSingleScroll:Z

    return v0
.end method

.method protected hasAdapter()Z
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isFirstAlign()Z
    .locals 1

    .line 149
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mFirstAlign:Z

    return v0
.end method

.method public isTouched()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mTouched:Z

    return v0
.end method

.method protected abstract onDown(Landroid/view/MotionEvent;)V
.end method

.method protected abstract onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
.end method

.method protected abstract onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
.end method

.method protected abstract onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
.end method

.method protected abstract onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
.end method

.method protected abstract onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 113
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mAligned:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 116
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    .line 118
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mTouched:Z

    goto :goto_0

    .line 122
    :cond_1
    :pswitch_1
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mTouched:Z

    .line 127
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected abstract realign(II)V
.end method

.method public setAdapterWrap(Z)V
    .locals 0

    .line 90
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mWrapAdapter:Z

    .line 91
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->doRealign()V

    return-void
.end method

.method public setAnimationIsNext(Z)V
    .locals 0

    .line 145
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mAnimationIsNext:Z

    return-void
.end method

.method public setSingleScroll(Z)V
    .locals 0

    .line 136
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mSingleScroll:Z

    return-void
.end method
