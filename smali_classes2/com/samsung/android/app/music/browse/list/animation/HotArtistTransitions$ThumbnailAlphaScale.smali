.class Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$ThumbnailAlphaScale;
.super Landroid/support/transition/Fade;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ThumbnailAlphaScale"
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 3

    .line 256
    invoke-direct {p0}, Landroid/support/transition/Fade;-><init>()V

    const-wide/16 v0, 0x15e

    .line 257
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$ThumbnailAlphaScale;->setDuration(J)Landroid/support/transition/Transition;

    const-string v0, "sharedElementTarget"

    .line 258
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$ThumbnailAlphaScale;->removeTarget(Ljava/lang/String;)Landroid/support/transition/Transition;

    add-int/lit8 v0, p1, -0x5

    :goto_0
    add-int/lit8 v1, p1, 0x5

    if-ge v0, v1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 264
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thumbnail_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$ThumbnailAlphaScale;->addTarget(Ljava/lang/String;)Landroid/support/transition/Transition;

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "text_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$ThumbnailAlphaScale;->addTarget(Ljava/lang/String;)Landroid/support/transition/Transition;

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thumbnail_stroke_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$ThumbnailAlphaScale;->addTarget(Ljava/lang/String;)Landroid/support/transition/Transition;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 268
    :cond_1
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$ThumbnailAlphaScale;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/support/transition/Transition;

    return-void
.end method


# virtual methods
.method public isTransitionRequired(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Z
    .locals 0
    .param p1    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x1

    return p1
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 2

    .line 282
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/transition/Fade;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p3, "scaleX"

    const/4 p4, 0x2

    .line 284
    new-array v0, p4, [F

    fill-array-data v0, :array_0

    invoke-static {p3, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p3

    const-string v0, "scaleY"

    .line 285
    new-array v1, p4, [F

    fill-array-data v1, :array_1

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 286
    new-array p4, p4, [Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    aput-object p3, p4, v1

    const/4 p3, 0x1

    aput-object v0, p4, p3

    invoke-static {p2, p4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 287
    sget-object p3, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->d:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, p3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 288
    new-instance p3, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$ThumbnailAlphaScale$1;

    invoke-direct {p3, p0, p2}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$ThumbnailAlphaScale$1;-><init>(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$ThumbnailAlphaScale;Landroid/animation/Animator;)V

    invoke-virtual {p1, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 p2, 0x64

    .line 309
    invoke-virtual {p1, p2, p3}, Landroid/animation/Animator;->setStartDelay(J)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 2

    .line 322
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/transition/Fade;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p3, "scaleX"

    const/4 p4, 0x2

    .line 324
    new-array v0, p4, [F

    fill-array-data v0, :array_0

    invoke-static {p3, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p3

    const-string v0, "scaleY"

    .line 325
    new-array v1, p4, [F

    fill-array-data v1, :array_1

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 326
    new-array p4, p4, [Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    aput-object p3, p4, v1

    const/4 p3, 0x1

    aput-object v0, p4, p3

    invoke-static {p2, p4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 327
    sget-object p3, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->d:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, p3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 328
    new-instance p3, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$ThumbnailAlphaScale$2;

    invoke-direct {p3, p0, p2}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$ThumbnailAlphaScale$2;-><init>(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$ThumbnailAlphaScale;Landroid/animation/Animator;)V

    invoke-virtual {p1, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data
.end method
