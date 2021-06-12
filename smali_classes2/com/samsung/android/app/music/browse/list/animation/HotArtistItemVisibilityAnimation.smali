.class public Lcom/samsung/android/app/music/browse/list/animation/HotArtistItemVisibilityAnimation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper$ItemVisibilityAnimation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/View;)I
    .locals 2

    const p1, 0x7f13015d

    .line 109
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-double p1, p1

    const-wide v0, 0x3ff570a3d70a3d71L    # 1.34

    div-double/2addr p1, v0

    double-to-int p1, p1

    return p1
.end method

.method public a(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f13015d

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f130139

    .line 34
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f13015f

    .line 35
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 41
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 42
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    const p1, 0x3f59999a    # 0.85f

    .line 43
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils;->a(Landroid/view/View;F)V

    .line 44
    invoke-static {v2, p1}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils;->a(Landroid/view/View;F)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "HotArtistItemVisibilityAnimation"

    const-string v0, "onPrepareViewAnimations. thumbnail or text is null"

    .line 37
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/view/View;Landroid/view/View;)I
    .locals 3

    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    const v0, 0x7f13015d

    .line 117
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "HotArtistItemVisibilityAnimation"

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBaselineBottom. thumbnail is null. view - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    .line 122
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    .line 123
    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    return p1
.end method

.method public b(Landroid/view/View;)Landroid/animation/Animator;
    .locals 6

    const v0, 0x7f130139

    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f13015d

    .line 50
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f13015f

    .line 51
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v1, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 57
    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->a:Landroid/view/animation/Interpolator;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {p1, v5, v4}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils;->b(Landroid/view/View;FLandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->b:Landroid/view/animation/Interpolator;

    invoke-static {v1, v5, p1}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils;->a(Landroid/view/View;FLandroid/view/animation/Interpolator;)Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 59
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->b:Landroid/view/animation/Interpolator;

    invoke-static {v2, v5, p1}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils;->a(Landroid/view/View;FLandroid/view/animation/Interpolator;)Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 61
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 62
    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v1, 0x12c

    .line 63
    invoke-virtual {p1, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 64
    new-instance v1, Lcom/samsung/android/app/music/browse/list/animation/HotArtistItemVisibilityAnimation$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistItemVisibilityAnimation$1;-><init>(Lcom/samsung/android/app/music/browse/list/animation/HotArtistItemVisibilityAnimation;Landroid/animation/AnimatorSet;Landroid/view/View;)V

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Landroid/view/View;)Landroid/animation/Animator;
    .locals 6

    const v0, 0x7f130139

    .line 88
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f13015d

    .line 89
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f13015f

    .line 90
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v1, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 96
    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->a:Landroid/view/animation/Interpolator;

    const/4 v5, 0x0

    invoke-static {p1, v5, v4}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils;->b(Landroid/view/View;FLandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->b:Landroid/view/animation/Interpolator;

    const v4, 0x3f59999a    # 0.85f

    invoke-static {v1, v4, p1}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils;->a(Landroid/view/View;FLandroid/view/animation/Interpolator;)Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 98
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->b:Landroid/view/animation/Interpolator;

    invoke-static {v2, v4, p1}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils;->a(Landroid/view/View;FLandroid/view/animation/Interpolator;)Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 100
    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 101
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 102
    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v0, 0x12c

    .line 103
    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Landroid/view/View;)V
    .locals 4

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f13015d

    .line 131
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f130139

    .line 132
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f13015f

    .line 133
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 140
    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 141
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils;->a(Landroid/view/View;F)V

    .line 142
    invoke-static {v3, v1}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils;->a(Landroid/view/View;F)V

    return-void

    :cond_2
    :goto_0
    const-string p1, "HotArtistItemVisibilityAnimation"

    const-string v0, "reset. thumbnail or text is null"

    .line 135
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
