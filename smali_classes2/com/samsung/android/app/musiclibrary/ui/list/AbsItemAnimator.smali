.class public abstract Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;
.super Landroid/support/v7/widget/SimpleItemAnimator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$VpaListenerAdapter;,
        Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;,
        Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$MoveInfo;
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$MoveInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$MoveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/animation/TimeInterpolator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/support/v7/widget/SimpleItemAnimator;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->a:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->i:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->j:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->k:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->b:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->c:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->d:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->e:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->f:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->g:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->h:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Ljava/util/List;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;",
            ">;",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ")V"
        }
    .end annotation

    .line 401
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 402
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;

    .line 403
    invoke-direct {p0, v1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->a(Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 404
    iget-object v2, v1, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-nez v2, :cond_0

    .line 405
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 4

    .line 422
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, p2, :cond_0

    .line 423
    iput-object v2, p1, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    goto :goto_0

    .line 424
    :cond_0
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-ne v0, p2, :cond_1

    .line 425
    iput-object v2, p1, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v3, 0x1

    .line 430
    :goto_0
    iget-object p1, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Landroid/support/v13/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 431
    iget-object p1, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v13/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 432
    iget-object p1, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, v0}, Landroid/support/v13/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 433
    invoke-virtual {p0, p2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->dispatchChangeFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    return v1

    :cond_1
    return v3
.end method

.method private b(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .line 184
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 185
    invoke-static {v0}, Landroid/support/v13/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->getRemoveDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$4;

    invoke-direct {v2, p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$4;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 201
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method private b(Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;)V
    .locals 1

    .line 412
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->a(Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    .line 415
    :cond_0
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_1

    .line 416
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->a(Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    :cond_1
    return-void
.end method

.method private c(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 524
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->a(Landroid/view/View;)V

    .line 525
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->endAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .line 553
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 554
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->dispatchAnimationsFinished()V

    :cond_0
    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .line 215
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 216
    invoke-static {v0}, Landroid/support/v13/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    .line 217
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 220
    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 222
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->getAddDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$5;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$5;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;ZLandroid/support/v4/view/ViewPropertyAnimatorCompat;)V

    .line 223
    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 243
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V
    .locals 7

    .line 269
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sub-int v4, p4, p2

    sub-int v5, p5, p3

    const/4 p2, 0x0

    if-eqz v4, :cond_0

    .line 273
    invoke-static {v0}, Landroid/support/v13/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    :cond_0
    if-eqz v5, :cond_1

    .line 276
    invoke-static {v0}, Landroid/support/v13/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 281
    :cond_1
    invoke-static {v0}, Landroid/support/v13/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    .line 282
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->f:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->getMoveDuration()J

    move-result-wide p2

    invoke-virtual {v6, p2, p3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p2

    new-instance p3, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$6;

    move-object v1, p3

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$6;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;IILandroid/support/v4/view/ViewPropertyAnimatorCompat;)V

    invoke-virtual {p2, p3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 315
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->l:Landroid/animation/TimeInterpolator;

    if-nez v0, :cond_0

    .line 532
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->l:Landroid/animation/TimeInterpolator;

    .line 535
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->l:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method a(Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;)V
    .locals 5

    .line 348
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 349
    :cond_0
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 350
    :goto_0
    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_1

    .line 351
    iget-object v1, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    :cond_1
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 354
    invoke-static {v0}, Landroid/support/v13/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->getChangeDuration()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 355
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->h:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    iget v3, p1, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;->e:I

    iget v4, p1, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;->c:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 357
    iget v3, p1, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;->f:I

    iget v4, p1, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;->d:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 358
    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$7;

    invoke-direct {v4, p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$7;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 374
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    :cond_2
    if-eqz v1, :cond_3

    .line 377
    invoke-static {v1}, Landroid/support/v13/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 378
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->h:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->getChangeDuration()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 380
    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$8;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$8;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 396
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    :cond_3
    return-void
.end method

.method a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    .line 645
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 646
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v13/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public animateAdd(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    .line 206
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->c(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 207
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v13/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public animateChange(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 9

    if-ne p1, p2, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 324
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->animateMove(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z

    move-result p1

    return p1

    .line 326
    :cond_0
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v13/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v0

    .line 327
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v13/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v1

    .line 328
    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v13/view/ViewCompat;->getAlpha(Landroid/view/View;)F

    move-result v2

    .line 329
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->c(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    sub-int v3, p5, p3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    float-to-int v3, v3

    sub-int v4, p6, p4

    int-to-float v4, v4

    sub-float/2addr v4, v1

    float-to-int v4, v4

    .line 333
    iget-object v5, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v5, v0}, Landroid/support/v13/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 334
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/v13/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 335
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/support/v13/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    if-eqz p2, :cond_1

    .line 338
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->c(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 339
    iget-object v0, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int v1, v3

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/support/v13/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 340
    iget-object v0, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int v1, v4

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/support/v13/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 341
    iget-object v0, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v13/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->k:Ljava/util/ArrayList;

    new-instance v8, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;-><init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public animateMove(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 7

    .line 248
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    int-to-float p2, p2

    .line 249
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v13/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v1

    add-float/2addr p2, v1

    float-to-int v3, p2

    int-to-float p2, p3

    .line 250
    iget-object p3, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p3}, Landroid/support/v13/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result p3

    add-float/2addr p2, p3

    float-to-int v4, p2

    .line 251
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->c(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    sub-int p2, p4, v3

    sub-int p3, p5, v4

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 255
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    if-eqz p2, :cond_1

    neg-int p2, p2

    int-to-float p2, p2

    .line 259
    invoke-static {v0, p2}, Landroid/support/v13/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    :cond_1
    if-eqz p3, :cond_2

    neg-int p2, p3

    int-to-float p2, p2

    .line 262
    invoke-static {v0, p2}, Landroid/support/v13/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 264
    :cond_2
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->j:Ljava/util/ArrayList;

    new-instance p3, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$MoveInfo;

    move-object v1, p3

    move-object v2, p1

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$MoveInfo;-><init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public animateRemove(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 178
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->c(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public canReuseUpdatedViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z
    .locals 1
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 669
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/SimpleItemAnimator;->canReuseUpdatedViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public endAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 7

    .line 439
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 441
    invoke-static {v0}, Landroid/support/v13/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 443
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    const/4 v2, 0x0

    if-ltz v1, :cond_1

    .line 444
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->j:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$MoveInfo;

    .line 445
    iget-object v3, v3, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$MoveInfo;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-ne v3, p1, :cond_0

    .line 446
    invoke-static {v0, v2}, Landroid/support/v13/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 447
    invoke-static {v0, v2}, Landroid/support/v13/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 448
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 449
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 452
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->k:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->a(Ljava/util/List;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 453
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_2

    .line 454
    invoke-static {v0, v3}, Landroid/support/v13/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 455
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->dispatchRemoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 457
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 458
    invoke-static {v0, v3}, Landroid/support/v13/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 459
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->dispatchAddFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 462
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_5

    .line 463
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 464
    invoke-direct {p0, v4, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->a(Ljava/util/List;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 465
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 466
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 469
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2
    if-ltz v1, :cond_8

    .line 470
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 471
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_3
    if-ltz v5, :cond_7

    .line 472
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$MoveInfo;

    .line 473
    iget-object v6, v6, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$MoveInfo;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-ne v6, p1, :cond_6

    .line 474
    invoke-static {v0, v2}, Landroid/support/v13/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 475
    invoke-static {v0, v2}, Landroid/support/v13/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 476
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 477
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 478
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 479
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    :cond_7
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 485
    :cond_8
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_5
    if-ltz v1, :cond_a

    .line 486
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 487
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 488
    invoke-static {v0, v3}, Landroid/support/v13/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 489
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->dispatchAddFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 490
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 491
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_9
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    .line 498
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 504
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 510
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 516
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 520
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->a()V

    return-void
.end method

.method public endAnimations()V
    .locals 7

    .line 560
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 562
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$MoveInfo;

    .line 563
    iget-object v3, v2, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$MoveInfo;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 564
    invoke-static {v3, v1}, Landroid/support/v13/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 565
    invoke-static {v3, v1}, Landroid/support/v13/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 566
    iget-object v1, v2, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$MoveInfo;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 567
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 571
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 572
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->dispatchRemoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 573
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 575
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    const/high16 v2, 0x3f800000    # 1.0f

    if-ltz v0, :cond_2

    .line 577
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 578
    iget-object v4, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 579
    invoke-static {v4, v2}, Landroid/support/v13/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 580
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->dispatchAddFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 581
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 583
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_3

    .line 585
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->k:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;

    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->b(Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 587
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 588
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 592
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_4
    if-ltz v0, :cond_7

    .line 594
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 595
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_5
    if-ltz v4, :cond_6

    .line 597
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$MoveInfo;

    .line 598
    iget-object v6, v5, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$MoveInfo;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 599
    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 600
    invoke-static {v6, v1}, Landroid/support/v13/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 601
    invoke-static {v6, v1}, Landroid/support/v13/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 602
    iget-object v5, v5, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$MoveInfo;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 603
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 604
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 605
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 609
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_a

    .line 611
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 612
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_7
    if-ltz v3, :cond_9

    .line 614
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 615
    iget-object v5, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 616
    invoke-static {v5, v2}, Landroid/support/v13/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 617
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->dispatchAddFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 618
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 619
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 620
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v3, v3, -0x1

    goto :goto_7

    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 624
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_d

    .line 626
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 627
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_9
    if-ltz v2, :cond_c

    .line 629
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;

    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->b(Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;)V

    .line 630
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 631
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    :cond_c
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 636
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->g:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->a(Ljava/util/List;)V

    .line 637
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->f:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->a(Ljava/util/List;)V

    .line 638
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->e:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->a(Ljava/util/List;)V

    .line 639
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->h:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->a(Ljava/util/List;)V

    .line 641
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->dispatchAnimationsFinished()V

    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 540
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->j:Ljava/util/ArrayList;

    .line 541
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->f:Ljava/util/ArrayList;

    .line 542
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->e:Ljava/util/ArrayList;

    .line 543
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->c:Ljava/util/ArrayList;

    .line 544
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

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

.method public runPendingAnimations()V
    .locals 10

    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 88
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 89
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 90
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->i:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez v3, :cond_0

    if-nez v2, :cond_0

    return-void

    .line 96
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 97
    invoke-direct {p0, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->b(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 99
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 102
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 103
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->j:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 104
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->j:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 106
    new-instance v6, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$1;

    invoke-direct {v6, p0, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;Ljava/util/ArrayList;)V

    if-eqz v0, :cond_2

    .line 118
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$MoveInfo;

    iget-object v5, v5, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$MoveInfo;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 119
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->getRemoveDuration()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Landroid/support/v13/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 121
    :cond_2
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    :cond_3
    :goto_1
    if-eqz v2, :cond_5

    .line 126
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 127
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->k:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 128
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->d:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->k:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 130
    new-instance v6, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$2;

    invoke-direct {v6, p0, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;Ljava/util/ArrayList;)V

    if-eqz v0, :cond_4

    .line 141
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;

    iget-object v5, v5, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 142
    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->getRemoveDuration()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Landroid/support/v13/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_2

    .line 144
    :cond_4
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    :cond_5
    :goto_2
    if-eqz v3, :cond_b

    .line 149
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 150
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 151
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->i:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 153
    new-instance v5, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$3;

    invoke-direct {v5, p0, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$3;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;Ljava/util/ArrayList;)V

    if-nez v0, :cond_7

    if-nez v1, :cond_7

    if-eqz v2, :cond_6

    goto :goto_3

    .line 171
    :cond_6
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    goto :goto_6

    :cond_7
    :goto_3
    const-wide/16 v6, 0x0

    if-eqz v0, :cond_8

    .line 164
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->getRemoveDuration()J

    move-result-wide v8

    goto :goto_4

    :cond_8
    move-wide v8, v6

    :goto_4
    if-eqz v1, :cond_9

    .line 165
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->getMoveDuration()J

    move-result-wide v0

    goto :goto_5

    :cond_9
    move-wide v0, v6

    :goto_5
    if-eqz v2, :cond_a

    .line 166
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->getChangeDuration()J

    move-result-wide v6

    .line 167
    :cond_a
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-long/2addr v8, v0

    .line 168
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 169
    invoke-static {v0, v5, v8, v9}, Landroid/support/v13/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    :cond_b
    :goto_6
    return-void
.end method
