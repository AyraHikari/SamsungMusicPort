.class public Lcom/samsung/android/app/music/browse/widget/BrowseRecyclerView;
.super Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
.source "SourceFile"


# static fields
.field public static a:F


# instance fields
.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:Landroid/graphics/Path;

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 27
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/browse/widget/BrowseRecyclerView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/browse/widget/BrowseRecyclerView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a(FFFFFF)Landroid/graphics/Path;
    .locals 5

    .line 103
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/4 v1, 0x0

    cmpg-float v2, p5, v1

    if-gez v2, :cond_0

    const/4 p5, 0x0

    :cond_0
    cmpg-float v2, p6, v1

    if-gez v2, :cond_1

    const/4 p6, 0x0

    :cond_1
    sub-float p1, p3, p1

    sub-float/2addr p4, p2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, p1, v2

    cmpl-float v4, p5, v3

    if-lez v4, :cond_2

    move p5, v3

    :cond_2
    div-float v3, p4, v2

    cmpl-float v4, p6, v3

    if-lez v4, :cond_3

    move p6, v3

    :cond_3
    mul-float v3, p5, v2

    sub-float v3, p1, v3

    mul-float v2, v2, p6

    sub-float/2addr p4, v2

    add-float/2addr p2, p6

    .line 121
    invoke-virtual {v0, p3, p2}, Landroid/graphics/Path;->moveTo(FF)V

    neg-float p2, p6

    neg-float p3, p5

    .line 122
    invoke-virtual {v0, v1, p2, p3, p2}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    neg-float p5, v3

    .line 123
    invoke-virtual {v0, p5, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 124
    invoke-virtual {v0, p3, v1, p3, p6}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 125
    invoke-virtual {v0, v1, p4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 127
    invoke-virtual {v0, v1, p6}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 128
    invoke-virtual {v0, p1, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 129
    invoke-virtual {v0, v1, p2}, Landroid/graphics/Path;->rLineTo(FF)V

    neg-float p1, p4

    .line 131
    invoke-virtual {v0, v1, p1}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 133
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 89
    sget-object v0, Lcom/samsung/android/app/music/R$styleable;->MilkCornerRoundRelativeLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x0

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f100386

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    .line 91
    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 94
    sput p1, Lcom/samsung/android/app/music/browse/widget/BrowseRecyclerView;->a:F

    .line 96
    :cond_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    const/4 p1, 0x1

    .line 98
    iput-boolean p1, p0, Lcom/samsung/android/app/music/browse/widget/BrowseRecyclerView;->l:Z

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/widget/BrowseRecyclerView;->stopScroll()V

    .line 45
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 73
    iget-boolean v0, p0, Lcom/samsung/android/app/music/browse/widget/BrowseRecyclerView;->l:Z

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/widget/BrowseRecyclerView;->k:Landroid/graphics/Path;

    if-nez v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 75
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/widget/BrowseRecyclerView;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/widget/BrowseRecyclerView;->getHeight()I

    move-result v0

    int-to-float v5, v0

    sget v6, Lcom/samsung/android/app/music/browse/widget/BrowseRecyclerView;->a:F

    sget v7, Lcom/samsung/android/app/music/browse/widget/BrowseRecyclerView;->a:F

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/music/browse/widget/BrowseRecyclerView;->a(FFFFFF)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/widget/BrowseRecyclerView;->k:Landroid/graphics/Path;

    .line 78
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/widget/BrowseRecyclerView;->k:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "BrowseRecyclerView"

    const-string v1, "onDraw : clipPath not supported"

    .line 80
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/samsung/android/app/music/browse/widget/BrowseRecyclerView;->l:Z

    .line 84
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 59
    iget v2, p0, Lcom/samsung/android/app/music/browse/widget/BrowseRecyclerView;->g:F

    iget v3, p0, Lcom/samsung/android/app/music/browse/widget/BrowseRecyclerView;->i:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/app/music/browse/widget/BrowseRecyclerView;->g:F

    .line 60
    iget v2, p0, Lcom/samsung/android/app/music/browse/widget/BrowseRecyclerView;->h:F

    iget v3, p0, Lcom/samsung/android/app/music/browse/widget/BrowseRecyclerView;->j:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/app/music/browse/widget/BrowseRecyclerView;->h:F

    .line 61
    iput v0, p0, Lcom/samsung/android/app/music/browse/widget/BrowseRecyclerView;->i:F

    .line 62
    iput v1, p0, Lcom/samsung/android/app/music/browse/widget/BrowseRecyclerView;->j:F

    .line 63
    iget v0, p0, Lcom/samsung/android/app/music/browse/widget/BrowseRecyclerView;->g:F

    iget v1, p0, Lcom/samsung/android/app/music/browse/widget/BrowseRecyclerView;->h:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/samsung/android/app/music/browse/widget/BrowseRecyclerView;->h:F

    iput v0, p0, Lcom/samsung/android/app/music/browse/widget/BrowseRecyclerView;->g:F

    .line 53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/browse/widget/BrowseRecyclerView;->i:F

    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/browse/widget/BrowseRecyclerView;->j:F

    .line 68
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setPath(Landroid/graphics/Path;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/widget/BrowseRecyclerView;->k:Landroid/graphics/Path;

    return-void
.end method
