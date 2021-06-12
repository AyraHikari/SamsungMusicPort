.class public abstract Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;
.super Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$AnimateToChild;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "ListModel:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;",
        ">",
        "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout<",
        "T",
        "ListModel;",
        ">;"
    }
.end annotation


# static fields
.field public static DEBUG_SCROLL:Z = true

.field public static final LOG_TAG:Ljava/lang/String; = "SMUSIC-BaseScrollListLayout"


# instance fields
.field private mAnimateAdapterIndex:I

.field private mAnimationRunnable:Ljava/lang/Runnable;

.field private volatile mCurAnimation:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

.field private volatile mFlinging:Z

.field private mScheduled:Z

.field protected mStopped:Z

.field private mTouchUpAnimation:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)V

    const/4 p1, -0x1

    .line 48
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mAnimateAdapterIndex:I

    .line 305
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mAnimationRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->doAnimateToChild(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mCurAnimation:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->scheduleAnimation(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;)V

    return-void
.end method

.method static synthetic access$302(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;I)I
    .locals 0

    .line 31
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mAnimateAdapterIndex:I

    return p1
.end method

.method static synthetic access$402(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mFlinging:Z

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->onTouchUp()V

    return-void
.end method

.method private doAnimateToChild(I)V
    .locals 4

    .line 192
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->DEBUG_SCROLL:Z

    if-eqz v0, :cond_0

    const-string v0, "SMUSIC-BaseScrollListLayout"

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animateToChild adapterIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mAnimateAdapterIndex:I

    if-ne v0, p1, :cond_1

    return-void

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->loadedAdapterIndex(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 201
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->stopAnimation()V

    .line 202
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->getSelection()I

    move-result v0

    sub-int v0, p1, v0

    if-lez v0, :cond_2

    .line 207
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->getSelection()I

    move-result v2

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getSelectedModelIndex()I

    move-result v0

    sub-int/2addr v2, v0

    goto :goto_0

    .line 209
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->getSelection()I

    move-result v2

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    .line 210
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getModelsCount()I

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getSelectedModelIndex()I

    move-result v3

    sub-int/2addr v0, v3

    sub-int/2addr v0, v1

    add-int/2addr v2, v0

    .line 212
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->getAdapterWrap()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    if-eqz v0, :cond_3

    .line 213
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    .line 214
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->getCount()I

    move-result v0

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->getCount()I

    move-result v0

    rem-int/2addr v2, v0

    goto :goto_1

    :cond_3
    if-gez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_1

    .line 218
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    .line 219
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, v1

    if-le v2, v0, :cond_5

    .line 220
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->getCount()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    .line 223
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->setSelectedAdapterIndex(I)V

    .line 225
    :cond_6
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mFlinging:Z

    .line 226
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->getToChildAnimation(I)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->startAnimation(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;)V

    .line 227
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mAnimateAdapterIndex:I

    return-void
.end method

.method private isCurAnimationFinished()Z
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mCurAnimation:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mCurAnimation:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;->finished()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private onTouchUp()V
    .locals 4

    .line 235
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->getSelection()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->getChildDelta(I)F

    move-result v0

    .line 236
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->DEBUG_SCROLL:Z

    if-eqz v1, :cond_0

    const-string v1, "SMUSIC-BaseScrollListLayout"

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouchUp childDelta: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->isCurAnimationFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->isTouched()Z

    move-result v1

    if-nez v1, :cond_1

    neg-float v0, v0

    .line 241
    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->getTouchUpAnimation(FF)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mTouchUpAnimation:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

    .line 242
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mTouchUpAnimation:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->startAnimation(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;)V

    goto :goto_0

    .line 244
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mFlinging:Z

    if-nez v0, :cond_2

    .line 245
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->stopAnimation()V

    :cond_2
    :goto_0
    return-void
.end method

.method private scheduleAnimation(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;)V
    .locals 3

    .line 158
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->DEBUG_SCROLL:Z

    if-eqz v0, :cond_0

    const-string v0, "SMUSIC-BaseScrollListLayout"

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheduleAnimation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mCurAnimation:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

    .line 162
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mScheduled:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 163
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mScheduled:Z

    .line 164
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->postOnAnimationInAnimationThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected animateToChild(I)V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$AnimateToChild;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$AnimateToChild;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->inAnimationThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public animationFinished()Z
    .locals 4

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mCurAnimation:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mCurAnimation:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;->finished()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 110
    :goto_1
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->DEBUG_SCROLL:Z

    if-eqz v1, :cond_2

    const-string v1, "SMUSIC-BaseScrollListLayout"

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "animationFinished: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0
.end method

.method protected abstract getFlingAnimation(FF)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;
.end method

.method protected abstract getScrollAnimation(FF)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;
.end method

.method protected abstract getToChildAnimation(I)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;
.end method

.method protected abstract getTouchUpAnimation(FF)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;
.end method

.method protected abstract handleScroll(FF)Z
.end method

.method isAnimateToChild()Z
    .locals 2

    .line 301
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mAnimateAdapterIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mCurAnimation:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mCurAnimation:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

    .line 302
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;->finished()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFlinging()Z
    .locals 3

    .line 170
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->DEBUG_SCROLL:Z

    if-eqz v0, :cond_0

    const-string v0, "SMUSIC-BaseScrollListLayout"

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFlinging: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mFlinging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mFlinging:Z

    return v0
.end method

.method protected onDown(Landroid/view/MotionEvent;)V
    .locals 1

    .line 183
    sget-boolean p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->DEBUG_SCROLL:Z

    if-eqz p1, :cond_0

    const-string p1, "SMUSIC-BaseScrollListLayout"

    const-string v0, "onDown"

    .line 184
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mFlinging:Z

    if-eqz p1, :cond_1

    .line 187
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->stopAnimation()V

    :cond_1
    return-void
.end method

.method protected onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 1

    .line 260
    sget-boolean p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->DEBUG_SCROLL:Z

    if-eqz p1, :cond_0

    const-string p1, "SMUSIC-BaseScrollListLayout"

    .line 261
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onFling velocityX: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " velocityY: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x1

    .line 263
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mFlinging:Z

    .line 264
    invoke-virtual {p0, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->getFlingAnimation(FF)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->startAnimation(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;)V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 76
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mStopped:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mStopped:Z

    .line 86
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->fireOnAnimationFinished()V

    .line 87
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->fireOnSelectedAlbumSizeChanged()V

    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->hasAdapter()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mWidth:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mHeight:I

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 89
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mAligned:Z

    .line 90
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mWidth:I

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mHeight:I

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->realign(II)V

    .line 91
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mAligned:Z

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x0

    .line 104
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mStopped:Z

    return-void
.end method

.method protected onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 1

    .line 271
    sget-boolean p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->DEBUG_SCROLL:Z

    if-eqz p1, :cond_0

    const-string p1, "SMUSIC-BaseScrollListLayout"

    .line 272
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onScroll distanceX: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " distanceY: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->startAnimation()V

    .line 275
    invoke-virtual {p0, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->getScrollAnimation(FF)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

    move-result-object p1

    .line 276
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;->start()V

    .line 277
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;->update()Z

    .line 278
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;->getDx()F

    move-result p2

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;->getDy()F

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->handleScroll(FF)Z

    .line 279
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->requestRender()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 56
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    sget-boolean p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->DEBUG_SCROLL:Z

    if-eqz p1, :cond_1

    const-string p1, "SMUSIC-BaseScrollListLayout"

    const-string v1, "onTouchEvent up"

    .line 61
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->onTouchUp()V

    :goto_0
    return v0
.end method

.method public startAnimation()V
    .locals 1

    const/4 v0, 0x0

    .line 133
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->startAnimation(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;)V

    return-void
.end method

.method public startAnimation(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;)V
    .locals 3

    .line 137
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->DEBUG_SCROLL:Z

    if-eqz v0, :cond_0

    const-string v0, "SMUSIC-BaseScrollListLayout"

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAnimation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, -0x1

    .line 141
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mAnimateAdapterIndex:I

    .line 143
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mCurAnimation:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mCurAnimation:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mCurAnimation:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;->stop()V

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 147
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mFlinging:Z

    goto :goto_0

    .line 149
    :cond_2
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;->start()V

    .line 150
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->scheduleAnimation(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;)V

    .line 154
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->fireOnAnimationStarted()V

    return-void
.end method

.method public stopAnimation()V
    .locals 2

    .line 118
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->DEBUG_SCROLL:Z

    if-eqz v0, :cond_0

    const-string v0, "SMUSIC-BaseScrollListLayout"

    const-string v1, "stopAnimation"

    .line 119
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mFlinging:Z

    .line 122
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mCurAnimation:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mCurAnimation:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;->stop()V

    .line 125
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->unscheduleAnimation()V

    .line 128
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->fireOnAnimationFinished()V

    .line 129
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->fireOnSelectedAlbumSizeChanged()V

    return-void
.end method

.method unscheduleAnimation()V
    .locals 1

    const/4 v0, 0x0

    .line 283
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mScheduled:Z

    return-void
.end method
