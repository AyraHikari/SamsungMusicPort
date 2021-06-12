.class public Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;
.super Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransitionTarget"
.end annotation


# instance fields
.field private a:Landroid/support/v4/app/Fragment;

.field private b:Z

.field private c:Z

.field private d:Landroid/view/View;

.field private e:Lcom/samsung/android/app/music/browse/widget/RoundedImageView;

.field private f:Lcom/samsung/android/app/music/browse/widget/RoundedImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:Z

.field private k:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 356
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;-><init>()V

    .line 373
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->h:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;)I
    .locals 2

    .line 356
    iget v0, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->k:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->k:I

    return v0
.end method

.method private a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Landroid/view/View;)V
    .locals 1

    .line 418
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->a(Landroid/app/Activity;Landroid/os/Bundle;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "HotArtistTransitionHelper.Target"

    const-string v0, "startTransitionIfPossible. start transition"

    .line 419
    invoke-static {p2, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->a(Landroid/support/v4/app/Fragment;Landroid/view/View;)V

    return-void

    :cond_0
    const-string p1, "HotArtistTransitionHelper.Target"

    const-string p2, "startTransitionIfPossible. don\'t do transition"

    .line 423
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/support/v4/app/Fragment;Landroid/view/View;)V
    .locals 4

    .line 432
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "HotArtistTransitionHelper.Target"

    .line 433
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "postponeTransitionWithTarget. args - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    .line 435
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->startPostponedEnterTransition()V

    return-void

    :cond_0
    const v1, 0x7f13019e

    .line 439
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-nez v2, :cond_1

    .line 441
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->startPostponedEnterTransition()V

    return-void

    .line 445
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->a:Landroid/support/v4/app/Fragment;

    const v2, 0x7f130143

    .line 446
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->d:Landroid/view/View;

    .line 447
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->g:Landroid/widget/ImageView;

    const v1, 0x7f13019f

    .line 448
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/browse/widget/RoundedImageView;

    iput-object v1, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->f:Lcom/samsung/android/app/music/browse/widget/RoundedImageView;

    const v1, 0x7f13015e

    .line 449
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/browse/widget/RoundedImageView;

    iput-object v1, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->e:Lcom/samsung/android/app/music/browse/widget/RoundedImageView;

    .line 450
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->b(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Landroid/view/View;)V

    const/4 p1, 0x5

    .line 452
    new-array p1, p1, [I

    fill-array-data p1, :array_0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->a([I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f130143
        0x7f13015e
        0x7f13019c
        0x7f130150
        0x7f13019e
    .end array-data
.end method

.method private varargs a([I)V
    .locals 4
    .param p1    # [I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .line 457
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 458
    iget-object v3, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->h:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;)I
    .locals 0

    .line 356
    iget p0, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->k:I

    return p0
.end method

.method private b(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Landroid/view/View;)V
    .locals 7

    .line 463
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    if-nez p3, :cond_0

    const-string p1, "HotArtistTransitionHelper.Target"

    const-string p2, "initializeTransitionTarget. activity is null"

    .line 464
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 467
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    .line 468
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    const-string v0, "HotArtistTransitionHelper.Target"

    .line 469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeTransitionTarget. window w - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", h - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p3, :cond_4

    if-gtz p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const-string v0, "key_view_width"

    .line 475
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "key_view_height"

    .line 476
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    int-to-float p1, p1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float p1, p1, v1

    int-to-float v2, p3

    div-float/2addr p1, v2

    const/high16 v3, 0x3fc00000    # 1.5f

    const/high16 v4, 0x40200000    # 2.5f

    cmpl-float v5, p1, v4

    if-lez v5, :cond_2

    sub-float v4, p1, v4

    add-float/2addr v3, v4

    const-string v4, "HotArtistTransitionHelper.Target"

    .line 483
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initializeTransitionTarget. height too long. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    mul-float v2, v2, v3

    float-to-int p1, v2

    .line 503
    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 504
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 505
    iput p2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float p2, p1

    mul-float p2, p2, v1

    .line 507
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v3, v3

    div-float/2addr p2, v3

    .line 509
    instance-of v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_3

    .line 510
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 513
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int v4, p3, v4

    div-int/lit8 v4, v4, 0x2

    .line 514
    invoke-static {v4}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$TransitionOptions;->a(I)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 515
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr p3, v2

    div-int/lit8 p3, p3, 0x2

    .line 516
    invoke-static {p3}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$TransitionOptions;->b(I)I

    move-result p3

    iput p3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 517
    iget-object p3, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->d:Landroid/view/View;

    invoke-virtual {p3, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 518
    iget-object p3, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->d:Landroid/view/View;

    invoke-virtual {p3, p2}, Landroid/view/View;->setScaleX(F)V

    .line 519
    iget-object p3, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->d:Landroid/view/View;

    invoke-virtual {p3, p2}, Landroid/view/View;->setScaleY(F)V

    .line 521
    iget-object p3, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->f:Lcom/samsung/android/app/music/browse/widget/RoundedImageView;

    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Lcom/samsung/android/app/music/browse/widget/RoundedImageView;->setType(I)V

    .line 522
    iget-object p3, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->e:Lcom/samsung/android/app/music/browse/widget/RoundedImageView;

    invoke-virtual {p3, v2}, Lcom/samsung/android/app/music/browse/widget/RoundedImageView;->setType(I)V

    .line 523
    iget-object p3, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->g:Landroid/widget/ImageView;

    invoke-static {}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->a()Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionOverlayViewInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionOverlayViewInfo;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 524
    iget-object p3, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->g:Landroid/widget/ImageView;

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    const-string p3, "HotArtistTransitionHelper.Target"

    .line 525
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeTransitionTarget. targetWidth - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", width - "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", scale - "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", left margin - "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", top margin - "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;)Landroid/support/v4/app/Fragment;
    .locals 0

    .line 356
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->a:Landroid/support/v4/app/Fragment;

    return-object p0
.end method

.method private c()V
    .locals 3

    .line 533
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->a:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->c:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->b:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "HotArtistTransitionHelper.Target"

    const-string v1, "startPostponedEnterTransition. view is null"

    .line 541
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->startPostponedEnterTransition()V

    return-void

    .line 546
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->i:Z

    if-eqz v0, :cond_2

    const-string v0, "HotArtistTransitionHelper.Target"

    const-string v1, "startPostponedEnterTransition. already started."

    .line 547
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v0, "HotArtistTransitionHelper.Target"

    const-string v1, "startPostponedEnterTransition."

    .line 551
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 552
    iput-boolean v0, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->i:Z

    .line 554
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->e()V

    .line 555
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->d()V

    return-void

    :cond_3
    :goto_0
    const-string v0, "HotArtistTransitionHelper.Target"

    .line 534
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPostponedEnterTransition. fragment null or ready to transition ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " or data loaded ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;)Landroid/view/View;
    .locals 0

    .line 356
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->d:Landroid/view/View;

    return-object p0
.end method

.method private d()V
    .locals 3

    .line 559
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->k:I

    .line 560
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 561
    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 562
    new-instance v2, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget$1;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget$1;-><init>(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;Landroid/view/View;)V

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private e()V
    .locals 3

    .line 581
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->e:Lcom/samsung/android/app/music/browse/widget/RoundedImageView;

    new-instance v1, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget$2;-><init>(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;)V

    new-instance v2, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget$3;-><init>(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;)V

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils;->a(Landroid/view/View;Ljava/lang/Runnable;Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$Condition;)V

    .line 594
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f130186

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "HotArtistTransitionHelper.Target"

    const-string v1, "captureEndViewAfterTransitionCompleted. list header is null"

    .line 599
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 602
    :cond_1
    new-instance v1, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget$4;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget$4;-><init>(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;Landroid/view/View;)V

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "HotArtistTransitionHelper.Target"

    const-string v1, "targetViewLoaded."

    .line 382
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 383
    iput-boolean v0, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->c:Z

    .line 384
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->c()V

    return-void
.end method

.method protected a(Landroid/app/Activity;Landroid/os/Bundle;)Z
    .locals 1

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    const-string v0, "key_view_width"

    .line 427
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "key_view_height"

    .line 428
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-lez p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method public b()V
    .locals 2

    const-string v0, "HotArtistTransitionHelper.Target"

    const-string v1, "dataLoaded."

    .line 388
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 389
    iput-boolean v0, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->b:Z

    .line 390
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->c()V

    return-void
.end method

.method public onFragmentCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 395
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;->onFragmentCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .line 396
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->a(Landroid/app/Activity;Landroid/os/Bundle;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 397
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->postponeEnterTransition()V

    :cond_0
    const/4 p1, 0x0

    .line 399
    iput-boolean p1, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->j:Z

    return-void
.end method

.method public onFragmentStarted(Landroid/support/v4/app/Fragment;)V
    .locals 2
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 404
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;->onFragmentStarted(Landroid/support/v4/app/Fragment;)V

    .line 405
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "HotArtistTransitionHelper.Target"

    const-string v0, "onFragmentStarted. view is null"

    .line 407
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 410
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->j:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 413
    iput-boolean v1, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->j:Z

    .line 414
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, p1, v1, v0}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Landroid/view/View;)V

    return-void
.end method
