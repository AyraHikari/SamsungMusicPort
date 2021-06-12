.class public Lcom/samsung/android/app/musiclibrary/ui/widget/round/TransparentRoundHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:Landroid/graphics/Path;

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/round/TransparentRoundHelper;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(FFFFFF)Landroid/graphics/Path;
    .locals 5

    .line 82
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

    sub-float/2addr p1, v3

    mul-float v2, v2, p6

    sub-float/2addr p4, v2

    add-float/2addr p2, p6

    .line 100
    invoke-virtual {v0, p3, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 103
    iget p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/round/TransparentRoundHelper;->c:I

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_4

    neg-float p2, p6

    neg-float p3, p5

    .line 104
    invoke-virtual {v0, v1, p2, p3, p2}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    goto :goto_0

    :cond_4
    neg-float p2, p6

    .line 106
    invoke-virtual {v0, v1, p2}, Landroid/graphics/Path;->rLineTo(FF)V

    neg-float p2, p5

    .line 107
    invoke-virtual {v0, p2, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    :goto_0
    neg-float p2, p1

    .line 109
    invoke-virtual {v0, p2, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 112
    iget p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/round/TransparentRoundHelper;->c:I

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    neg-float p2, p5

    .line 113
    invoke-virtual {v0, p2, v1, p2, p6}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    goto :goto_1

    :cond_5
    neg-float p2, p5

    .line 115
    invoke-virtual {v0, p2, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 116
    invoke-virtual {v0, v1, p6}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 118
    :goto_1
    invoke-virtual {v0, v1, p4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 121
    iget p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/round/TransparentRoundHelper;->c:I

    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_6

    .line 122
    invoke-virtual {v0, v1, p6, p5, p6}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    goto :goto_2

    .line 124
    :cond_6
    invoke-virtual {v0, v1, p6}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 125
    invoke-virtual {v0, p5, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 127
    :goto_2
    invoke-virtual {v0, p1, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 130
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/round/TransparentRoundHelper;->c:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_7

    neg-float p1, p6

    .line 131
    invoke-virtual {v0, p5, v1, v1, p1}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    goto :goto_3

    .line 133
    :cond_7
    invoke-virtual {v0, p5, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    neg-float p1, p6

    .line 134
    invoke-virtual {v0, v1, p1}, Landroid/graphics/Path;->rLineTo(FF)V

    :goto_3
    neg-float p1, p4

    .line 136
    invoke-virtual {v0, v1, p1}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 138
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    const/high16 v1, 0x41d00000    # 26.0f

    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/round/TransparentRoundHelper;->a:F

    .line 77
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/round/TransparentRoundHelper;->d:Z

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 10

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/round/TransparentRoundHelper;->b:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    const-string v1, "TransparentRoundHelper"

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ensureRoundedCornerPath. view width - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", height - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", radius - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/round/TransparentRoundHelper;->a:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    int-to-float v6, v0

    int-to-float v7, p1

    .line 66
    iget v8, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/round/TransparentRoundHelper;->a:F

    iget v9, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/round/TransparentRoundHelper;->a:F

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/app/musiclibrary/ui/widget/round/TransparentRoundHelper;->a(FFFFFF)Landroid/graphics/Path;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/round/TransparentRoundHelper;->b:Landroid/graphics/Path;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/round/TransparentRoundHelper;->b:Landroid/graphics/Path;

    return-void
.end method

.method public a(I)V
    .locals 3

    and-int/lit8 v0, p1, -0x10

    if-nez v0, :cond_0

    .line 36
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/round/TransparentRoundHelper;->c:I

    return-void

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Use wrong rounded corners to the param, corners = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/round/TransparentRoundHelper;->d:Z

    if-eqz v0, :cond_0

    .line 49
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/round/TransparentRoundHelper;->a(Landroid/view/View;)V

    .line 51
    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/round/TransparentRoundHelper;->b:Landroid/graphics/Path;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "TransparentRoundHelper"

    const-string p2, "onDraw : clipPath not supported"

    .line 53
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/round/TransparentRoundHelper;->d:Z

    :cond_0
    :goto_0
    return-void
.end method
