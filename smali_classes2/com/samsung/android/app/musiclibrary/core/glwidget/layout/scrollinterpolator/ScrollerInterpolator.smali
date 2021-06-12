.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;


# instance fields
.field private mDistanceX:I

.field private mDistanceY:I

.field private mDx:I

.field private mDy:I

.field private mFlingMode:Z

.field private mScroller:Landroid/widget/Scroller;

.field private mVelocityX:F

.field private mVelocityY:F

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->mScroller:Landroid/widget/Scroller;

    return-void
.end method


# virtual methods
.method public finished()Z
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    return v0
.end method

.method public getDx()F
    .locals 1

    .line 84
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->mDx:I

    int-to-float v0, v0

    return v0
.end method

.method public getDy()F
    .locals 1

    .line 89
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->mDy:I

    int-to-float v0, v0

    return v0
.end method

.method public setFriction(F)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, p1}, Landroid/widget/Scroller;->setFriction(F)V

    return-void
.end method

.method public setParamsDistance(FF)V
    .locals 0

    float-to-int p1, p1

    .line 104
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->mDistanceX:I

    float-to-int p1, p2

    .line 105
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->mDistanceY:I

    const/4 p1, 0x0

    .line 106
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->mFlingMode:Z

    return-void
.end method

.method public setParamsVelocity(FF)V
    .locals 0

    .line 98
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->mVelocityX:F

    .line 99
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->mVelocityY:F

    const/4 p1, 0x1

    .line 100
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->mFlingMode:Z

    return-void
.end method

.method public start()V
    .locals 17

    move-object/from16 v0, p0

    .line 51
    iget-boolean v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->mFlingMode:Z

    if-eqz v1, :cond_0

    .line 52
    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->mScroller:Landroid/widget/Scroller;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->mVelocityX:F

    float-to-int v5, v1

    iget v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->mVelocityY:F

    float-to-int v6, v1

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    const/high16 v9, -0x80000000

    const v10, 0x7fffffff

    invoke-virtual/range {v2 .. v10}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0

    .line 55
    :cond_0
    iget-object v11, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->mScroller:Landroid/widget/Scroller;

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget v14, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->mDistanceX:I

    iget v15, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->mDistanceY:I

    const/16 v16, 0x190

    invoke-virtual/range {v11 .. v16}, Landroid/widget/Scroller;->startScroll(IIIII)V

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->mX:I

    .line 63
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->mY:I

    return-void
.end method

.method public update()Z
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    .line 73
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    .line 74
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    .line 75
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->mX:I

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->mDx:I

    .line 76
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->mY:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->mDy:I

    .line 77
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->mX:I

    .line 78
    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->mY:I

    return v0
.end method
