.class public final Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$OnGetCheckBoxOffsetListener;,
        Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$Companion;


# instance fields
.field private final b:I

.field private c:I

.field private final d:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private final f:I

.field private g:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$OnGetCheckBoxOffsetListener;

.field private h:I

.field private final i:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->a:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V
    .locals 2

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->i:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    const/4 p1, -0x1

    .line 30
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->c:I

    .line 32
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 41
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->h:I

    .line 48
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->i:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "res"

    .line 49
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const-string v1, "res.configuration"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->b:I

    .line 51
    sget v0, Lcom/samsung/android/app/musiclibrary/R$dimen;->mu_list_item_checkbox_space_outer:I

    .line 50
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->f:I

    return-void
.end method

.method private final a(Landroid/support/v7/widget/RecyclerView;)I
    .locals 9

    .line 333
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 334
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 450
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 451
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "getChildAt(index)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    invoke-virtual {p1, v4}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v5

    const-string v6, "holder"

    .line 336
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    .line 337
    sget v5, Lcom/samsung/android/app/musiclibrary/R$id;->checkbox:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 338
    instance-of v6, v5, Landroid/view/ViewStub;

    if-nez v6, :cond_0

    const/4 v5, 0x0

    :cond_0
    check-cast v5, Landroid/view/ViewStub;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 339
    :cond_1
    sget v5, Lcom/samsung/android/app/musiclibrary/R$id;->checkbox:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 340
    invoke-virtual {v4, v2, v2}, Landroid/view/View;->measure(II)V

    .line 341
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->f:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->c:I

    .line 342
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->c:I

    return p1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 347
    :cond_3
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->c:I

    return p1
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;Landroid/support/v7/widget/RecyclerView;)I
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->a(Landroid/support/v7/widget/RecyclerView;)I

    move-result p0

    return p0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->i:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    return-object p0
.end method

.method private final a(Landroid/animation/Animator;)V
    .locals 2

    .line 387
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 458
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 388
    invoke-interface {v1, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;Landroid/animation/Animator;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->b(Landroid/animation/Animator;)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;Landroid/view/View;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->b(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->e:Z

    return-void
.end method

.method private final b(Landroid/support/v7/widget/RecyclerView;)I
    .locals 9

    .line 351
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->h:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 353
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    .line 354
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 454
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 455
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "getChildAt(index)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    invoke-virtual {p1, v4}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v5

    const-string v6, "holder"

    .line 356
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 358
    sget v5, Lcom/samsung/android/app/musiclibrary/R$id;->guideline_start:I

    .line 357
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/Guideline;

    if-eqz v4, :cond_2

    .line 361
    invoke-virtual {v4}, Landroid/support/constraint/Guideline;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_0

    check-cast v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    goto :goto_1

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.support.constraint.ConstraintLayout.LayoutParams"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 366
    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->a(Landroid/support/v7/widget/RecyclerView;)I

    move-result p1

    .line 367
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->b:I

    if-nez v0, :cond_3

    neg-int p1, p1

    add-int/2addr p1, v3

    goto :goto_2

    :cond_3
    sub-int/2addr p1, v3

    :goto_2
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->h:I

    .line 373
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->g:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$OnGetCheckBoxOffsetListener;

    if-eqz p1, :cond_5

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->h:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$OnGetCheckBoxOffsetListener;->a(I)V

    :cond_5
    const/4 p1, 0x0

    .line 374
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$OnGetCheckBoxOffsetListener;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->g:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$OnGetCheckBoxOffsetListener;

    .line 375
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->h:I

    return p1
.end method

.method public static final synthetic b(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->b:I

    return p0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;Landroid/support/v7/widget/RecyclerView;)I
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->b(Landroid/support/v7/widget/RecyclerView;)I

    move-result p0

    return p0
.end method

.method private final b(Landroid/animation/Animator;)V
    .locals 2

    .line 393
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 460
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 394
    invoke-interface {v1, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final b(Landroid/view/View;)V
    .locals 25

    move-object/from16 v14, p0

    move-object/from16 v0, p1

    .line 88
    iget-object v1, v14, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->i:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    invoke-direct {v14, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->a(Landroid/support/v7/widget/RecyclerView;)I

    move-result v15

    const/4 v1, 0x2

    .line 92
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v13

    const-wide/16 v1, 0x12c

    .line 93
    invoke-virtual {v13, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 94
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->c:Landroid/view/animation/Interpolator;

    check-cast v1, Landroid/animation/TimeInterpolator;

    invoke-virtual {v13, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 97
    iget-object v1, v14, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->i:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v7/widget/GridLayoutManager;

    const/16 v16, 0x0

    const/4 v12, 0x1

    if-nez v1, :cond_0

    const/16 v17, 0x1

    goto :goto_0

    :cond_0
    const/16 v17, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 100
    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->checkbox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v0, "container"

    .line 101
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getLayerType()I

    move-result v3

    .line 103
    iget v0, v14, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->b:I

    if-nez v0, :cond_1

    neg-int v0, v15

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v15

    .line 104
    :goto_1
    new-instance v10, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$let$lambda$1;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    move-object v0, v10

    move-object/from16 v4, p0

    move v5, v15

    move-object v6, v13

    move/from16 v8, v17

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$let$lambda$1;-><init>(Landroid/view/View;IILcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;ILandroid/animation/ValueAnimator;FZF)V

    check-cast v10, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v13, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 122
    :cond_2
    iget-object v0, v14, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->i:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildCount()I

    move-result v18

    if-nez v18, :cond_3

    return-void

    .line 127
    :cond_3
    iget-object v0, v14, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->i:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-direct {v14, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->b(Landroid/support/v7/widget/RecyclerView;)I

    move-result v19

    .line 129
    iget-object v0, v14, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->i:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-object v11, v0

    check-cast v11, Landroid/view/ViewGroup;

    .line 430
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v10, :cond_9

    .line 431
    invoke-virtual {v11, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "getChildAt(index)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->checkbox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 131
    iget-object v2, v14, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->i:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_8

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    .line 132
    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->animateViews:Ljava/util/List;

    .line 133
    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->animateViewLayers:Ljava/util/List;

    add-int/lit8 v3, v18, -0x1

    if-ne v9, v3, :cond_4

    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    if-eqz v1, :cond_6

    .line 136
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->getItemId()J

    move-result-wide v6

    const-wide/16 v20, 0x0

    cmp-long v0, v6, v20

    if-gez v0, :cond_5

    goto :goto_4

    .line 151
    :cond_5
    iput-boolean v12, v14, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->e:Z

    .line 152
    invoke-virtual {v1}, Landroid/view/View;->getLayerType()I

    move-result v3

    .line 153
    new-instance v20, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;

    const/16 v21, 0x0

    const/high16 v22, 0x3f800000    # 1.0f

    move-object/from16 v0, v20

    move-object/from16 v6, p0

    move/from16 v7, v18

    move-object v8, v13

    move/from16 v23, v9

    move/from16 v9, v21

    move/from16 v21, v10

    move/from16 v10, v22

    move-object/from16 v22, v11

    move/from16 v11, v19

    const/16 v24, 0x1

    move/from16 v12, v17

    move-object v14, v13

    move v13, v15

    invoke-direct/range {v0 .. v13}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;-><init>(Landroid/view/View;Ljava/util/List;ILjava/util/List;ZLcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;ILandroid/animation/ValueAnimator;FFIZI)V

    move-object/from16 v0, v20

    check-cast v0, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v14, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_5

    :cond_6
    :goto_4
    move/from16 v23, v9

    move/from16 v21, v10

    move-object/from16 v22, v11

    move-object v14, v13

    const/16 v24, 0x1

    if-eqz v5, :cond_7

    .line 138
    new-instance v9, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$forEachIndexed$lambda$1;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v2, v18

    move-object v3, v14

    move/from16 v6, v19

    move/from16 v7, v17

    move v8, v15

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$forEachIndexed$lambda$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;ILandroid/animation/ValueAnimator;FFIZI)V

    check-cast v9, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v14, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_7
    :goto_5
    add-int/lit8 v9, v23, 0x1

    move-object v13, v14

    move/from16 v10, v21

    move-object/from16 v11, v22

    const/4 v12, 0x1

    move-object/from16 v14, p0

    goto/16 :goto_2

    .line 131
    :cond_8
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.list.RecyclerCursorAdapter.ViewHolder"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    move-object v14, v13

    const-string v0, "animator"

    .line 194
    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v13, v14

    check-cast v13, Landroid/animation/Animator;

    move-object v1, v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->a(Landroid/animation/Animator;)V

    .line 195
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static final synthetic b(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;Landroid/view/View;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->c(Landroid/view/View;)V

    return-void
.end method

.method private final c(Landroid/view/View;)V
    .locals 26

    move-object/from16 v14, p0

    move-object/from16 v0, p1

    .line 205
    iget-object v1, v14, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->i:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    invoke-direct {v14, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->a(Landroid/support/v7/widget/RecyclerView;)I

    move-result v5

    const/4 v1, 0x2

    .line 209
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v15

    const-wide/16 v1, 0x12c

    .line 210
    invoke-virtual {v15, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 211
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->c:Landroid/view/animation/Interpolator;

    check-cast v1, Landroid/animation/TimeInterpolator;

    invoke-virtual {v15, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 214
    iget-object v1, v14, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->i:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v7/widget/GridLayoutManager;

    const/4 v13, 0x0

    const/4 v12, 0x1

    if-nez v1, :cond_0

    const/16 v16, 0x1

    goto :goto_0

    :cond_0
    const/16 v16, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 217
    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->checkbox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v0, "container"

    .line 218
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getLayerType()I

    move-result v3

    .line 220
    iget v0, v14, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->b:I

    if-nez v0, :cond_1

    neg-int v0, v5

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v5

    .line 221
    :goto_1
    new-instance v10, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startHideCheckBoxAnimation$$inlined$let$lambda$1;

    const/4 v7, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v0, v10

    move-object/from16 v4, p0

    move-object v6, v15

    move/from16 v8, v16

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startHideCheckBoxAnimation$$inlined$let$lambda$1;-><init>(Landroid/view/View;IILcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;ILandroid/animation/ValueAnimator;FZF)V

    check-cast v10, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v15, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 239
    :cond_2
    iget-object v0, v14, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->i:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildCount()I

    move-result v17

    if-nez v17, :cond_3

    const-string v0, "animator"

    .line 241
    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v15, Landroid/animation/Animator;

    invoke-direct {v14, v15}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->a(Landroid/animation/Animator;)V

    .line 242
    invoke-direct {v14, v15}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->b(Landroid/animation/Animator;)V

    return-void

    .line 246
    :cond_3
    iget-object v0, v14, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->i:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-direct {v14, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->b(Landroid/support/v7/widget/RecyclerView;)I

    move-result v18

    .line 247
    iget-object v0, v14, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->i:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->b()Z

    move-result v19

    .line 248
    iget-object v0, v14, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->i:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v0, v13}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setGoToTopEnabled(Z)V

    .line 250
    iget-object v0, v14, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->i:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-object v11, v0

    check-cast v11, Landroid/view/ViewGroup;

    .line 446
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v10, :cond_9

    .line 447
    invoke-virtual {v11, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "getChildAt(index)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->checkbox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 252
    iget-object v2, v14, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->i:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_8

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    .line 253
    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->animateViews:Ljava/util/List;

    .line 254
    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->animateViewLayers:Ljava/util/List;

    add-int/lit8 v3, v17, -0x1

    if-ne v9, v3, :cond_4

    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    if-eqz v1, :cond_6

    .line 257
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->getItemId()J

    move-result-wide v6

    const-wide/16 v20, 0x0

    cmp-long v0, v6, v20

    if-gez v0, :cond_5

    goto :goto_4

    .line 273
    :cond_5
    iput-boolean v12, v14, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->e:Z

    .line 274
    invoke-virtual {v1}, Landroid/widget/CheckBox;->getLayerType()I

    move-result v3

    .line 275
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 276
    invoke-virtual {v1, v13}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 277
    new-instance v20, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startHideCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;

    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v6, p0

    move/from16 v7, v17

    move-object v8, v15

    move/from16 v23, v9

    move/from16 v9, v21

    move/from16 v21, v10

    move/from16 v10, v19

    move-object/from16 v24, v11

    move/from16 v11, v22

    const/16 v22, 0x1

    move/from16 v12, v18

    const/16 v25, 0x0

    move/from16 v13, v16

    invoke-direct/range {v0 .. v13}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startHideCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;-><init>(Landroid/widget/CheckBox;Ljava/util/List;ILjava/util/List;ZLcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;ILandroid/animation/ValueAnimator;FZFIZ)V

    move-object/from16 v0, v20

    check-cast v0, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v15, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_5

    :cond_6
    :goto_4
    move/from16 v23, v9

    move/from16 v21, v10

    move-object/from16 v24, v11

    const/16 v22, 0x1

    const/16 v25, 0x0

    if-eqz v5, :cond_7

    .line 259
    new-instance v9, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startHideCheckBoxAnimation$$inlined$forEachIndexed$lambda$1;

    const/4 v6, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v2, v17

    move-object v3, v15

    move/from16 v5, v19

    move/from16 v7, v18

    move/from16 v8, v16

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startHideCheckBoxAnimation$$inlined$forEachIndexed$lambda$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;ILandroid/animation/ValueAnimator;FZFIZ)V

    check-cast v9, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v15, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_7
    :goto_5
    add-int/lit8 v9, v23, 0x1

    move/from16 v10, v21

    move-object/from16 v11, v24

    const/4 v12, 0x1

    const/4 v13, 0x0

    goto/16 :goto_2

    .line 252
    :cond_8
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.list.RecyclerCursorAdapter.ViewHolder"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    const-string v0, "animator"

    .line 328
    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v15

    check-cast v0, Landroid/animation/Animator;

    invoke-direct {v14, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->a(Landroid/animation/Animator;)V

    .line 329
    invoke-virtual {v15}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final a(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 3

    const-string v0, "selectAllRoot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->i:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    check-cast v0, Landroid/view/View;

    .line 434
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 435
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$hideCheckBox$$inlined$doOnPreDraw$1;

    invoke-direct {v2, v0, v1, p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$hideCheckBox$$inlined$doOnPreDraw$1;-><init>(Landroid/view/View;Landroid/view/ViewTreeObserver;Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;Landroid/view/View;)V

    check-cast v2, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public final a(Landroid/view/View;Z)V
    .locals 11

    const-string v0, "selectAllRoot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->i:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildCount()I

    move-result v5

    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->i:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    check-cast v0, Landroid/view/ViewGroup;

    .line 414
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v8, 0x0

    if-ge v3, v1, :cond_4

    .line 415
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const-string v6, "getChildAt(index)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->i:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v6, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v6

    const-string v7, "holder"

    .line 59
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v6

    const-wide/16 v9, 0x0

    cmp-long v6, v6, v9

    if-gez v6, :cond_0

    goto :goto_1

    .line 62
    :cond_0
    sget v6, Lcom/samsung/android/app/musiclibrary/R$id;->checkbox:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 63
    instance-of v7, v6, Landroid/view/ViewStub;

    if-nez v7, :cond_1

    move-object v6, v8

    :cond_1
    check-cast v6, Landroid/view/ViewStub;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 64
    :cond_2
    sget v6, Lcom/samsung/android/app/musiclibrary/R$id;->checkbox:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 65
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v6, 0x0

    .line 66
    invoke-virtual {v4, v6}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 70
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->i:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    .line 418
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 419
    new-instance v9, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$showCheckBox$$inlined$doOnPreDraw$1;

    move-object v1, v9

    move-object v3, v0

    move-object v4, p0

    move v6, p2

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$showCheckBox$$inlined$doOnPreDraw$1;-><init>(Landroid/view/View;Landroid/view/ViewTreeObserver;Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;IZLandroid/view/View;)V

    check-cast v9, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v9}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 83
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->i:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p1

    instance-of p2, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-nez p2, :cond_5

    move-object p1, v8

    :cond_5
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->safeNotifyDataSetChanged()V

    goto :goto_2

    .line 84
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->i:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_2
    return-void
.end method

.method public final a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$OnGetCheckBoxOffsetListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->g:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$OnGetCheckBoxOffsetListener;

    .line 380
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->h:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 381
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->g:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$OnGetCheckBoxOffsetListener;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->h:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$OnGetCheckBoxOffsetListener;->a(I)V

    :cond_0
    const/4 p1, 0x0

    .line 382
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$OnGetCheckBoxOffsetListener;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->g:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$OnGetCheckBoxOffsetListener;

    :cond_1
    return-void
.end method

.method public final a()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->e:Z

    return v0
.end method

.method public final b(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
