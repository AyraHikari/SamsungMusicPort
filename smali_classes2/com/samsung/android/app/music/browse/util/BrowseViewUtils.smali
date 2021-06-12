.class public final Lcom/samsung/android/app/music/browse/util/BrowseViewUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$Condition;,
        Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$OnNImageViewLoaderCompleted;
    }
.end annotation


# direct methods
.method private static a()Landroid/transition/TransitionSet;
    .locals 3

    .line 119
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    const/4 v1, 0x1

    .line 120
    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 121
    new-instance v1, Landroid/transition/Fade;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/transition/Fade;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v1

    new-instance v2, Landroid/transition/ChangeBounds;

    invoke-direct {v2}, Landroid/transition/ChangeBounds;-><init>()V

    invoke-virtual {v1, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    return-object v0
.end method

.method public static a(Landroid/view/View;FLandroid/view/animation/Interpolator;)Ljava/util/Collection;
    .locals 5
    .param p2    # Landroid/view/animation/Interpolator;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "F",
            "Landroid/view/animation/Interpolator;",
            ")",
            "Ljava/util/Collection<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .line 560
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "scaleX"

    const/4 v2, 0x1

    .line 561
    new-array v3, v2, [F

    const/4 v4, 0x0

    aput p1, v3, v4

    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-string v3, "scaleY"

    .line 562
    new-array v2, v2, [F

    aput p1, v2, v4

    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 564
    invoke-virtual {v1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 565
    invoke-virtual {p0, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 567
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 568
    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;I)V
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 70
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 71
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getPaddingLeft()I

    move-result p2

    .line 72
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getPaddingRight()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getPaddingBottom()I

    move-result v1

    .line 71
    invoke-virtual {p1, p2, p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setPadding(IIII)V

    const/4 p0, 0x0

    .line 73
    invoke-virtual {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setClipToPadding(Z)V

    .line 75
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p0

    instance-of p0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;

    if-eqz p0, :cond_0

    .line 77
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;

    .line 78
    new-instance p2, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$1;

    invoke-direct {p2, p1, p0}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/high16 v0, 0x7f050000

    .line 97
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    move-result-object p0

    .line 98
    invoke-virtual {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 99
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->scheduleLayoutAnimation()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;[Landroid/net/Uri;Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;Ljava/util/Map;Ljava/util/Map;Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$OnNImageViewLoaderCompleted;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;",
            ">;[",
            "Landroid/net/Uri;",
            "Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;",
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$OnNImageViewLoaderCompleted;",
            ")V"
        }
    .end annotation

    .line 322
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 323
    new-instance p6, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$3;

    invoke-direct {p6, p0, p4, p5, v0}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$3;-><init>(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Ljava/lang/ref/WeakReference;)V

    const p0, 0x7f1000b6

    .line 364
    invoke-static {p0, p3, p2, p1, p6}, Lcom/samsung/android/app/music/browse/viewholder/NImageViewPublisherKt;->a(ILandroid/view/View;[Landroid/net/Uri;Ljava/util/List;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static a(Landroid/support/v4/app/Fragment;Ljava/lang/Runnable;J)V
    .locals 2

    .line 516
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 521
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$7;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$7;-><init>(Landroid/support/v4/app/Fragment;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    :goto_0
    const-string p0, "BrowseViewUtils"

    const-string p1, "runWithDelay. activity or runnable is null"

    .line 517
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V
    .locals 2
    .param p0    # Landroid/support/v4/app/FragmentManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 106
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p0

    const v0, 0x7f130125

    invoke-virtual {p0, v0, p2, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p0

    if-eqz p3, :cond_0

    .line 109
    invoke-static {}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils;->a()Landroid/transition/TransitionSet;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/support/v4/app/Fragment;->setExitTransition(Ljava/lang/Object;)V

    .line 111
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils;->b()Landroid/transition/TransitionSet;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/support/v4/app/Fragment;->setEnterTransition(Ljava/lang/Object;)V

    const-string p1, "BrowseViewUtils"

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "replaceFragmentWithFadeTransition. prev - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", next - "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public static a(Landroid/view/View;)V
    .locals 2

    .line 375
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x7f060000

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    .line 377
    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 378
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public static a(Landroid/view/View;F)V
    .locals 0

    .line 555
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 556
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public static a(Landroid/view/View;I)V
    .locals 3

    .line 369
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050007

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    int-to-long v1, p1

    .line 370
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 371
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private static a(Landroid/view/View;Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const v0, 0x7f13017f

    .line 229
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    const v0, 0x7f1000b6

    .line 231
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->a(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object p1

    sget v0, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->c:I

    .line 232
    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->a(Landroid/widget/ImageView;I)V

    return-void
.end method

.method public static a(Landroid/view/View;Lcom/samsung/android/app/music/browse/data/BrowseContentData;)V
    .locals 4

    const/4 v0, 0x4

    .line 133
    new-array v0, v0, [Landroid/net/Uri;

    .line 134
    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->k()Ljava/util/List;

    move-result-object p1

    .line 136
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    .line 137
    invoke-virtual {v2}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->e()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 139
    invoke-virtual {v2}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->c()Ljava/lang/String;

    move-result-object v3

    :cond_1
    if-eqz v3, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 142
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v0, v1

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 145
    invoke-static {p0, v0, p1}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils;->a(Landroid/view/View;[Landroid/net/Uri;Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$OnNImageViewLoaderCompleted;)V

    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 473
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 474
    new-instance v1, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$5;

    invoke-direct {v1, p1, v0, p0}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$5;-><init>(Ljava/lang/Runnable;Landroid/view/ViewTreeObserver;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 486
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_1
    :goto_0
    const-string p0, "BrowseViewUtils"

    const-string p1, "doOnPreDraw. view or listener is null"

    .line 470
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$Condition;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/Runnable;",
            "Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$Condition<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 447
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 448
    new-instance v1, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$4;

    invoke-direct {v1, p2, p0, p1, v0}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$4;-><init>(Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$Condition;Landroid/view/View;Ljava/lang/Runnable;Landroid/view/ViewTreeObserver;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "BrowseViewUtils"

    const-string p1, "doOnPreDraw. view or listener is null"

    .line 444
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/view/View;ZLjava/lang/Runnable;)V
    .locals 1

    if-eqz p0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 500
    :cond_0
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 501
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void

    .line 504
    :cond_1
    new-instance p1, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$6;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$6;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 512
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    :cond_2
    :goto_0
    const-string p0, "BrowseViewUtils"

    const-string p1, "doOnLayout. view or listener is null. "

    .line 497
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/view/View;[Landroid/net/Uri;)V
    .locals 11

    if-eqz p1, :cond_1

    .line 286
    array-length v0, p1

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const v0, 0x7f130180

    .line 290
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

    const v1, 0x7f130182

    .line 291
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

    const v2, 0x7f130181

    .line 292
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

    const v3, 0x7f130183

    .line 293
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

    .line 295
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 296
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-wide/16 v6, 0xe6

    .line 302
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v8, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v6, 0x82

    .line 303
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v8, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v8, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v6, 0x1e

    .line 305
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v8, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const/16 v4, 0x1e

    .line 308
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v9, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x82

    .line 309
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v9, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xe6

    .line 311
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v0, 0x7f13017f

    .line 314
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

    const/4 v10, 0x0

    move-object v6, p1

    .line 313
    invoke-static/range {v4 .. v10}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils;->a(Landroid/content/Context;Ljava/util/List;[Landroid/net/Uri;Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;Ljava/util/Map;Ljava/util/Map;Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$OnNImageViewLoaderCompleted;)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "BrowseViewUtils"

    const-string p1, "updateTopChartView size is zero"

    .line 287
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/view/View;[Landroid/net/Uri;Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$OnNImageViewLoaderCompleted;)V
    .locals 5

    if-eqz p1, :cond_3

    .line 236
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f130180

    .line 240
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f130182

    .line 241
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f130181

    .line 242
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f130183

    .line 243
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f13017f

    .line 244
    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    .line 246
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 247
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_1

    .line 250
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v3, :cond_2

    .line 253
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    :cond_2
    invoke-static {v4, p1, p0, p2}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils;->a(Ljava/util/List;[Landroid/net/Uri;Landroid/widget/ImageView;Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$OnNImageViewLoaderCompleted;)V

    return-void

    :cond_3
    :goto_0
    const-string p0, "BrowseViewUtils"

    const-string p1, "updateSplitView size is zero"

    .line 237
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/util/List;[Landroid/net/Uri;Landroid/widget/ImageView;Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$OnNImageViewLoaderCompleted;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;[",
            "Landroid/net/Uri;",
            "Landroid/widget/ImageView;",
            "Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$OnNImageViewLoaderCompleted;",
            ")V"
        }
    .end annotation

    .line 261
    new-instance v0, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$2;

    invoke-direct {v0, p3}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$2;-><init>(Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$OnNImageViewLoaderCompleted;)V

    const p3, 0x7f1000b6

    .line 276
    invoke-static {p3, p2, p1, p0, v0}, Lcom/samsung/android/app/music/browse/viewholder/NImageViewPublisherKt;->a(ILandroid/view/View;[Landroid/net/Uri;Ljava/util/List;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static a(Landroid/view/View;Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/TrackModel;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 176
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_5

    .line 180
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-ge v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    .line 181
    :goto_0
    new-array v4, v1, [Landroid/net/Uri;

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_6

    .line 183
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/music/model/base/TrackModel;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/model/base/TrackModel;->getImgList()Ljava/util/List;

    move-result-object v6

    const/16 v7, 0x258

    const/16 v8, 0xc8

    invoke-static {v6, v7, v8}, Lcom/samsung/android/app/music/util/ImageUtils;->a(Ljava/util/List;II)Ljava/lang/String;

    move-result-object v6

    .line 185
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 186
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/music/model/base/TrackModel;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/model/base/TrackModel;->getLargeSizeImageUrl()Ljava/lang/String;

    move-result-object v6

    .line 188
    :cond_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 189
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/music/model/base/TrackModel;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/model/base/TrackModel;->getImageUrl()Ljava/lang/String;

    move-result-object v6

    :cond_3
    if-eqz v6, :cond_5

    .line 191
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_2

    .line 194
    :cond_4
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    aput-object v6, v4, v5

    goto :goto_3

    .line 192
    :cond_5
    :goto_2
    sget-object v6, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    aput-object v6, v4, v5

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    if-ge v1, v3, :cond_7

    .line 198
    aget-object p1, v4, v0

    invoke-static {p0, p1}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils;->a(Landroid/view/View;Landroid/net/Uri;)V

    goto :goto_4

    :cond_7
    const/4 p1, 0x0

    .line 200
    invoke-static {p0, v4, p1}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils;->a(Landroid/view/View;[Landroid/net/Uri;Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$OnNImageViewLoaderCompleted;)V

    :goto_4
    return v2

    :cond_8
    :goto_5
    const-string p0, "BrowseViewUtils"

    const-string p1, "image is null or size"

    .line 177
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static a(Landroid/view/View;Ljava/util/List;Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$OnNImageViewLoaderCompleted;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/TrackModel;",
            ">;",
            "Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$OnNImageViewLoaderCompleted;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 151
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    goto :goto_2

    .line 155
    :cond_0
    new-array v1, v2, [Landroid/net/Uri;

    :goto_0
    if-ge v0, v2, :cond_4

    .line 157
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/model/base/TrackModel;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/base/TrackModel;->getImgList()Ljava/util/List;

    move-result-object v3

    const/16 v4, 0x258

    const/16 v5, 0xc8

    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/music/util/ImageUtils;->a(Ljava/util/List;II)Ljava/lang/String;

    move-result-object v3

    .line 159
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 160
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/model/base/TrackModel;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/base/TrackModel;->getLargeSizeImageUrl()Ljava/lang/String;

    move-result-object v3

    .line 162
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 163
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/model/base/TrackModel;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/base/TrackModel;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    .line 165
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x0

    .line 166
    aput-object v3, v1, v0

    goto :goto_1

    .line 168
    :cond_3
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :cond_4
    invoke-static {p0, v1, p2}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils;->a(Landroid/view/View;[Landroid/net/Uri;Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$OnNImageViewLoaderCompleted;)V

    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_2
    const-string p0, "BrowseViewUtils"

    const-string p1, "image is null or size is less than 4"

    .line 152
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static b(Landroid/view/View;FLandroid/view/animation/Interpolator;)Landroid/animation/Animator;
    .locals 3
    .param p2    # Landroid/view/animation/Interpolator;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "alpha"

    const/4 v1, 0x1

    .line 573
    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 575
    invoke-virtual {p0, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_0
    return-object p0
.end method

.method public static b(Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v0, 0x1

    .line 534
    invoke-virtual {p0, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 535
    invoke-virtual {p0}, Landroid/view/View;->buildDrawingCache()V

    .line 536
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "BrowseViewUtils"

    const-string v0, "getCachedDrawable. drawing cache is  null"

    .line 541
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 544
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 545
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 546
    invoke-virtual {p0, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    if-nez v0, :cond_1

    const-string p0, "BrowseViewUtils"

    const-string v0, "getCachedDrawable. cache null"

    .line 548
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 551
    :cond_1
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method private static b()Landroid/transition/TransitionSet;
    .locals 4

    .line 126
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    const/4 v1, 0x1

    .line 127
    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 128
    new-instance v2, Landroid/transition/ChangeBounds;

    invoke-direct {v2}, Landroid/transition/ChangeBounds;-><init>()V

    invoke-virtual {v0, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v2

    new-instance v3, Landroid/transition/Fade;

    invoke-direct {v3, v1}, Landroid/transition/Fade;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    return-object v0
.end method

.method public static b(Landroid/view/View;Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/ArtistModel;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 206
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_5

    .line 210
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-ge v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    .line 211
    :goto_0
    new-array v4, v1, [Landroid/net/Uri;

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_4

    .line 213
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/music/model/base/ArtistModel;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/model/base/ArtistModel;->getImageUrl()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 214
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    .line 217
    :cond_2
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    aput-object v6, v4, v5

    goto :goto_3

    .line 215
    :cond_3
    :goto_2
    sget-object v6, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    aput-object v6, v4, v5

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    if-ge v1, v3, :cond_5

    .line 221
    aget-object p1, v4, v0

    invoke-static {p0, p1}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils;->a(Landroid/view/View;Landroid/net/Uri;)V

    goto :goto_4

    :cond_5
    const/4 p1, 0x0

    .line 223
    invoke-static {p0, v4, p1}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils;->a(Landroid/view/View;[Landroid/net/Uri;Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$OnNImageViewLoaderCompleted;)V

    :goto_4
    return v2

    :cond_6
    :goto_5
    const-string p0, "BrowseViewUtils"

    const-string p1, "image is null or size is less than 4"

    .line 207
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method
