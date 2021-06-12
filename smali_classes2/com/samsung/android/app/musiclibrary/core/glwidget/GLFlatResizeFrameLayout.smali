.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;
.implements Lcom/samsung/android/app/musiclibrary/core/glwidget/GLParentView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$InnerView;,
        Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected final impl:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

.field private mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

.field private volatile mInTransition:Z

.field private mInTransitionRenderingMode:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;

.field private mInnerView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$InnerView;

.field private mRenderingMode:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;

.field private mTextureView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;

    .line 28
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->impl:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;)Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->mRenderingMode:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;

    return-object p1
.end method

.method static synthetic access$102(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->mInTransition:Z

    return p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;)Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$InnerView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->mInnerView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$InnerView;

    return-object p0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->impl:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->getFactory()Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$Factory;

    move-result-object v1

    invoke-virtual {v0, p0, p0, v1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->init(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$Factory;Landroid/util/AttributeSet;)V

    .line 137
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    const-class v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->mTextureView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    const/4 v0, 0x1

    .line 138
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->setFocusable(Z)V

    .line 139
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->mTextureView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->impl:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->getRenderer()Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 142
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 145
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->mTextureView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->setOpaque(Z)V

    .line 146
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->mTextureView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$InnerView;

    invoke-direct {v2, p1, p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$InnerView;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;)V

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->mInnerView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$InnerView;

    .line 148
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->mInnerView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$InnerView;

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/app/musiclibrary/R$styleable;->GLFlatResizeGalleryView:[I

    .line 151
    invoke-virtual {p1, p2, v1, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 153
    :try_start_0
    sget p2, Lcom/samsung/android/app/musiclibrary/R$styleable;->GLFlatResizeGalleryView_renderingMode:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 159
    :pswitch_0
    sget-object p2, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;->Standard:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;

    invoke-virtual {p0, p2, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->setRenderingMode(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;I)V

    goto :goto_0

    .line 156
    :pswitch_1
    sget-object p2, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;->OpenGL:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;

    invoke-virtual {p0, p2, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->setRenderingMode(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private invalidateInnerView()V
    .locals 4

    .line 312
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->mInnerView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$InnerView;

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->mTextureView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    if-eqz v0, :cond_0

    .line 314
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->mTextureView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->getRenderingThreadId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 315
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->mInnerView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$InnerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$InnerView;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method private isInTransition(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;)Z
    .locals 2

    .line 67
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->mInTransition:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->mInTransitionRenderingMode:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method private replaceVisibleView(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;Landroid/view/View;Landroid/view/View;I)V
    .locals 3

    .line 99
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 100
    invoke-virtual {p3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v0, 0x0

    if-lez p4, :cond_0

    const/4 v1, 0x1

    .line 102
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->mInTransition:Z

    .line 103
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->mInTransitionRenderingMode:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;

    .line 104
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p4

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$1;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;Landroid/view/View;Landroid/view/View;)V

    .line 105
    invoke-virtual {p4, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    .line 121
    iput-boolean p4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->mInTransition:Z

    .line 122
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->mRenderingMode:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;

    if-eqz p3, :cond_1

    const/high16 p4, 0x3f800000    # 1.0f

    .line 125
    invoke-virtual {p3, p4}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    if-eqz p2, :cond_2

    .line 129
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 131
    :cond_2
    sget-object p2, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "applied rendering mode: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public animationFinished()Z
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->impl:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->animationFinished()Z

    move-result v0

    return v0
.end method

.method public asView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public clearAccessibilityFocus()V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->impl:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->clearAccessibilityFocus()V

    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->impl:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 369
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getConfig()Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->impl:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->getConfig()Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultAlbumArt()Landroid/graphics/Bitmap;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->impl:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->getDefaultAlbumArt()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->impl:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public getSelectedItemUri()Landroid/net/Uri;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->impl:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->getSelectedItemUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public inAnimationThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->mTextureView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->mTextureView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->inAnimationThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public isFlinging()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTouched()Z
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->impl:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->isTouched()Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->mTextureView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->mTextureView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->stopRenderingThread()V

    :cond_0
    const/4 v0, 0x0

    .line 196
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->mTextureView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->impl:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->onKeyDown(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->impl:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->onKeyUp(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onPause()V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->impl:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->impl:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->onResume()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 343
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->mRenderingMode:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;->Standard:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;

    if-ne v0, v1, :cond_0

    .line 344
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->mTextureView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    if-eqz v0, :cond_1

    .line 348
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->mTextureView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->handleTouchEvent(Landroid/view/MotionEvent;)V

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->impl:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public postOnAnimationInAnimationThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->mTextureView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->mTextureView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->postOnAnimationInAnimationThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public reloadItem(I)V
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->impl:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->reloadItem(I)V

    return-void
.end method

.method public reloadView()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->impl:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->reloadView()V

    return-void
.end method

.method public requestRender()V
    .locals 2

    .line 291
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->mInTransition:Z

    if-eqz v0, :cond_0

    .line 292
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->invalidateInnerView()V

    .line 294
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->mTextureView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->mTextureView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->requestRender()V

    goto :goto_0

    .line 298
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$3;->$SwitchMap$com$samsung$android$app$musiclibrary$core$glwidget$GLFlatResizeFrameLayout$RenderingMode:[I

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->mRenderingMode:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 305
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->invalidateInnerView()V

    goto :goto_0

    .line 300
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->mTextureView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->mTextureView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->requestRender()V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public resetAnimation()V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->impl:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->impl:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->setAdapter(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;I)V

    return-void
.end method

.method public setAdapter(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;I)V
    .locals 1

    .line 215
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    .line 216
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->impl:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->setAdapter(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;I)V

    return-void
.end method

.method public setAdapterWrap(Z)V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->impl:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->setAdapterWrap(Z)V

    return-void
.end method

.method public setAnimationIsNext(Z)V
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->impl:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->setAnimationIsNext(Z)V

    return-void
.end method

.method public setDefaultAlbumArt(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->impl:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->setDefaultAlbumArt(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setOnAnimationListener(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$OnAnimationListener;)V
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->impl:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->setOnAnimationListener(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$OnAnimationListener;)V

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->impl:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->impl:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public setOnSelectedAlbumSizeChangedListener(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$OnSelectedAlbumSizeChangedListener;)V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->impl:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->setOnSelectedAlbumSizeChangedListener(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$OnSelectedAlbumSizeChangedListener;)V

    return-void
.end method

.method public setRenderingMode(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;I)V
    .locals 3

    .line 75
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "called setRenderingMode mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " delay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->mInTransition:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->mRenderingMode:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;

    if-ne p1, v0, :cond_0

    return-void

    .line 80
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->isInTransition(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    .line 81
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->LOG_TAG:Ljava/lang/String;

    const-string p2, "called setRenderingMode is InTransition"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 85
    :cond_1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$3;->$SwitchMap$com$samsung$android$app$musiclibrary$core$glwidget$GLFlatResizeFrameLayout$RenderingMode:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 91
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->mTextureView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->mInnerView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$InnerView;

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->replaceVisibleView(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;Landroid/view/View;Landroid/view/View;I)V

    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->requestRender()V

    goto :goto_0

    .line 87
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->mInnerView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$InnerView;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->mTextureView:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->replaceVisibleView(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$RenderingMode;Landroid/view/View;Landroid/view/View;I)V

    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->requestRender()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setSelection(I)V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->impl:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->setSelection(IZ)V

    return-void
.end method

.method public setSelection(IZ)V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->impl:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->setSelection(IZ)V

    return-void
.end method

.method public setSingleScroll(Z)V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->impl:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->setSingleScroll(Z)V

    return-void
.end method
