.class public abstract Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;
.super Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "ListModel:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;",
        ">",
        "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout<",
        "T",
        "ListModel;",
        ">;"
    }
.end annotation


# instance fields
.field private mDownAdapterIndex:I

.field private mFlingInterpolator:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;

.field private mKinematicInterpolator:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;

.field private mScrollInterpolator:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator<",
            "T",
            "ListModel;",
            ">;"
        }
    .end annotation
.end field

.field private mUseVelocityTracker:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)V
    .locals 1

    .line 41
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)V

    const/4 p1, 0x1

    .line 36
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mUseVelocityTracker:Z

    .line 265
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mScrollInterpolator:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;

    .line 268
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    .line 269
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mFlingInterpolator:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;

    .line 271
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;

    invoke-direct {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mKinematicInterpolator:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;

    return-void
.end method

.method private findModelDelta(ILjava/lang/Iterable;Ljava/lang/Iterable;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Iterable<",
            "T",
            "ListModel;",
            ">;",
            "Ljava/lang/Iterable<",
            "T",
            "ListModel;",
            ">;)I"
        }
    .end annotation

    .line 168
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    add-int/lit8 v1, v1, -0x1

    .line 170
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getAdapterIndex()I

    move-result v2

    if-ne v2, p1, :cond_0

    return v1

    .line 175
    :cond_1
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    add-int/lit8 v0, v0, 0x1

    .line 177
    invoke-virtual {p3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getAdapterIndex()I

    move-result p3

    if-ne p3, p1, :cond_2

    return v0

    :cond_3
    const p1, 0x7fffffff

    return p1
.end method

.method private getTrackerVelocity()F
    .locals 4

    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    const-string v1, "SMUSIC-BaseScrollListLayout"

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTrackerVelocity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private limitVelocityTo(FFF)F
    .locals 3

    .line 247
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, p3

    if-lez v2, :cond_1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_0

    return p3

    :cond_0
    neg-float p1, p3

    return p1

    :cond_1
    cmpg-float p3, v0, p2

    if-gez p3, :cond_3

    cmpl-float p1, p1, v1

    if-lez p1, :cond_2

    return p2

    :cond_2
    neg-float p1, p2

    return p1

    :cond_3
    return p1
.end method


# virtual methods
.method protected getFlingAnimation(FF)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;
    .locals 6

    .line 104
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mSingleScroll:Z

    if-eqz v0, :cond_8

    .line 105
    iget p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mDownAdapterIndex:I

    .line 110
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getChildDelta(I)F

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getMaxSelectedDelta()F

    move-result v1

    div-float/2addr v0, v1

    .line 113
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3fc999999999999aL    # 0.2

    const/4 v5, 0x0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_4

    cmpg-float v1, p1, v5

    if-gez v1, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    cmpl-float v1, p1, v5

    if-lez v1, :cond_1

    add-int/lit8 p2, p2, -0x1

    .line 119
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mWrapAdapter:Z

    if-eqz v1, :cond_2

    .line 120
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->getCount()I

    move-result v1

    add-int/2addr p2, v1

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->getCount()I

    move-result v1

    rem-int/2addr p2, v1

    goto :goto_1

    :cond_2
    if-gez p2, :cond_3

    const/4 p2, 0x0

    goto :goto_1

    .line 123
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le p2, v1, :cond_4

    .line 124
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->getCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    .line 128
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getSelection()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getChildDelta(I)F

    move-result v1

    .line 129
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getSelection()I

    move-result v2

    if-eq v2, p2, :cond_5

    .line 130
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getMaxSelectedDelta()F

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float/2addr v2, v1

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getMaxSelectedDelta()F

    move-result v1

    add-float/2addr v1, v2

    .line 131
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getSelection()I

    move-result v2

    if-le v2, p2, :cond_5

    neg-float v1, v1

    .line 135
    :cond_5
    sget-boolean v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->DEBUG_SCROLL:Z

    if-eqz v2, :cond_6

    const-string v2, "SMUSIC-BaseScrollListLayout"

    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFlingAnimation goto: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " getSelected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getSelection()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " gotoDistance: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getChildDelta(I)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " getSelectedDistance: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getSelection()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getChildDelta(I)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " distance: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " velocityX: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " fraction: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_6
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_7

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_7

    .line 144
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mKinematicInterpolator:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;

    const v2, 0x44bb8000    # 1500.0f

    const v3, 0x459c4000    # 5000.0f

    .line 145
    invoke-direct {p0, p1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->limitVelocityTo(FFF)F

    move-result p1

    neg-float v1, v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->setParamsVelocity(FF)V

    .line 146
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mKinematicInterpolator:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->setGotoIndex(I)V

    .line 147
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mKinematicInterpolator:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;

    return-object p1

    :cond_7
    const/4 p1, 0x0

    return-object p1

    .line 151
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mFlingInterpolator:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->setParamsVelocity(FF)V

    .line 152
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mFlingInterpolator:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;

    return-object p1
.end method

.method protected getScrollAnimation(FF)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mScrollInterpolator:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->setParams(FF)V

    .line 159
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mScrollInterpolator:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;

    return-object p1
.end method

.method protected getToChildAnimation(I)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;
    .locals 4

    .line 186
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getSelection()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getChildDelta(I)F

    move-result v0

    neg-float v0, v0

    .line 187
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getSelection()I

    move-result v0

    sub-int/2addr v0, p1

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mWidth:I

    mul-int v0, v0, v1

    int-to-float v0, v0

    .line 189
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->DEBUG_SCROLL:Z

    if-eqz v1, :cond_0

    const-string v1, "SMUSIC-BaseScrollListLayout"

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update delta getSelection():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getSelection()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " adapterIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " delta: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getSelection()I

    move-result v1

    if-eq p1, v1, :cond_2

    .line 196
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mAnimationIsNext:Z

    if-eqz v1, :cond_1

    .line 197
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getRightFromSelected()Ljava/lang/Iterable;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    .line 198
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getLeftFromSelected()Ljava/lang/Iterable;

    move-result-object v2

    .line 197
    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->findModelDelta(ILjava/lang/Iterable;Ljava/lang/Iterable;)I

    move-result v1

    goto :goto_0

    .line 200
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getLeftFromSelected()Ljava/lang/Iterable;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    .line 201
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getRightFromSelected()Ljava/lang/Iterable;

    move-result-object v2

    .line 200
    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->findModelDelta(ILjava/lang/Iterable;Ljava/lang/Iterable;)I

    move-result v1

    neg-int v1, v1

    .line 203
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getMaxSelectedDelta()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v2, v2, v3

    int-to-float v1, v1

    mul-float v2, v2, v1

    add-float/2addr v0, v2

    .line 205
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mKinematicInterpolator:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;

    const v2, 0x3e99999a    # 0.3f

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->setParamsDistance(FF)V

    .line 206
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mKinematicInterpolator:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->setGotoIndex(I)V

    .line 207
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mKinematicInterpolator:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;

    return-object p1
.end method

.method protected getToChildAnimation1(I)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;
    .locals 4

    .line 211
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getSelection()I

    move-result v0

    sub-int/2addr v0, p1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getMaxSelectedDelta()F

    move-result v1

    mul-float v0, v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    .line 212
    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mWrapAdapter:Z

    if-eqz v2, :cond_3

    .line 214
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getAdapterSize()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getSelection()I

    move-result v2

    if-nez v2, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getMaxSelectedDelta()F

    move-result v0

    mul-float v0, v0, v1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 216
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getSelection()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getAdapterSize()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_1

    .line 217
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getMaxSelectedDelta()F

    move-result v0

    neg-float v0, v0

    mul-float v0, v0, v1

    .line 220
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getSelection()I

    move-result v2

    if-eq p1, v2, :cond_3

    .line 221
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mAnimationIsNext:Z

    if-eqz v0, :cond_2

    .line 222
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getMaxSelectedDelta()F

    move-result v0

    neg-float v0, v0

    mul-float v0, v0, v1

    goto :goto_1

    .line 224
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getMaxSelectedDelta()F

    move-result v0

    mul-float v0, v0, v1

    .line 229
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getSelection()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getChildDelta(I)F

    move-result v1

    neg-float v1, v1

    add-float/2addr v0, v1

    .line 230
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 231
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getSelection()I

    move-result v0

    sub-int/2addr v0, p1

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mWidth:I

    mul-int v0, v0, v1

    int-to-float v0, v0

    .line 232
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->DEBUG_SCROLL:Z

    if-eqz v1, :cond_4

    const-string v1, "SMUSIC-BaseScrollListLayout"

    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update delta getSelection():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getSelection()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " adapterIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " delta: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mKinematicInterpolator:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;

    const v2, 0x3e99999a    # 0.3f

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->setParamsDistance(FF)V

    .line 238
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mKinematicInterpolator:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->setGotoIndex(I)V

    .line 239
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mKinematicInterpolator:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;

    return-object p1
.end method

.method protected getTouchUpAnimation(FF)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;
    .locals 3

    .line 80
    iget-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mSingleScroll:Z

    if-eqz p2, :cond_0

    .line 81
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mKinematicInterpolator:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;

    .line 82
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getTrackerVelocity()F

    move-result v0

    const v1, 0x44bb8000    # 1500.0f

    const v2, 0x459c4000    # 5000.0f

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->limitVelocityTo(FFF)F

    move-result v0

    invoke-virtual {p2, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->setParamsVelocity(FF)V

    goto :goto_0

    .line 85
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mKinematicInterpolator:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;

    .line 86
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getTrackerVelocity()F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    const/high16 v2, 0x44fa0000    # 2000.0f

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->limitVelocityTo(FFF)F

    move-result v0

    invoke-virtual {p2, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->setParamsVelocity(FF)V

    .line 89
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mKinematicInterpolator:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;

    return-object p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 46
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->hasAdapter()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 49
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 50
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mUseVelocityTracker:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_1

    .line 51
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 53
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 55
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getSelection()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mDownAdapterIndex:I

    .line 56
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mScrollInterpolator:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mDownAdapterIndex:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->setDownAdapterIndex(I)V

    .line 57
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mUseVelocityTracker:Z

    if-eqz v1, :cond_4

    .line 58
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 59
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 64
    :cond_2
    :pswitch_1
    sget-boolean p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->DEBUG_SCROLL:Z

    if-eqz p1, :cond_3

    const-string p1, "SMUSIC-BaseScrollListLayout"

    const-string v1, "onTouchEvent up"

    .line 65
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_4

    .line 68
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 69
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_4
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected setFriction(F)V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->mFlingInterpolator:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollerInterpolator;->setFriction(F)V

    return-void
.end method
