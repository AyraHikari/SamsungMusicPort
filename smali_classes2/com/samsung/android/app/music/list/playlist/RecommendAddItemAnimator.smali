.class public final Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;
.super Landroid/support/v7/widget/SimpleItemAnimator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$MoveInfo;,
        Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$Companion;

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "RecommendAddItemAnimator"


# instance fields
.field private addAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private additionsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field private defaultInterpolator:Landroid/animation/TimeInterpolator;

.field private itemAnimatorFinishedListener:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

.field private moveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private movesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$MoveInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final pendingAdditions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingMoves:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$MoveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingRemovals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private removeAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->Companion:Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/support/v7/widget/SimpleItemAnimator;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->pendingRemovals:Ljava/util/ArrayList;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->pendingAdditions:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->pendingMoves:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->additionsList:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->movesList:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->addAnimations:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->moveAnimations:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->removeAnimations:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$animateAddImpl(Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->animateAddImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public static final synthetic access$animateMoveImpl(Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V
    .locals 0

    .line 18
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->animateMoveImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V

    return-void
.end method

.method public static final synthetic access$dispatchFinishedWhenDone(Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public static final synthetic access$getAddAnimations$p(Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;)Ljava/util/ArrayList;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->addAnimations:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getAdditionsList$p(Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;)Ljava/util/ArrayList;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->additionsList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getItemAnimatorFinishedListener$p(Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->itemAnimatorFinishedListener:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    return-object p0
.end method

.method public static final synthetic access$getMoveAnimations$p(Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;)Ljava/util/ArrayList;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->moveAnimations:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getMovesList$p(Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;)Ljava/util/ArrayList;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->movesList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getRemoveAnimations$p(Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;)Ljava/util/ArrayList;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->removeAnimations:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$setAddAnimations$p(Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;Ljava/util/ArrayList;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->addAnimations:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$setAdditionsList$p(Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;Ljava/util/ArrayList;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->additionsList:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$setItemAnimatorFinishedListener$p(Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->itemAnimatorFinishedListener:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    return-void
.end method

.method public static final synthetic access$setMoveAnimations$p(Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;Ljava/util/ArrayList;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->moveAnimations:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$setMovesList$p(Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;Ljava/util/ArrayList;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->movesList:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$setRemoveAnimations$p(Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;Ljava/util/ArrayList;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->removeAnimations:Ljava/util/ArrayList;

    return-void
.end method

.method private final animateAddImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .line 148
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 149
    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->addAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "view"

    .line 151
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 153
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 154
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    const/4 v2, 0x0

    .line 155
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 156
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->getMoveDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 157
    new-instance v2, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$animateAddImpl$$inlined$apply$lambda$1;

    invoke-direct {v2, v1, p0, p1, v0}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$animateAddImpl$$inlined$apply$lambda$1;-><init>(Landroid/view/ViewPropertyAnimator;Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/view/View;)V

    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 176
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private final animateMoveImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V
    .locals 7

    .line 210
    iget-object v4, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sub-int v3, p4, p2

    sub-int v5, p5, p3

    const/4 p2, 0x0

    if-eqz v3, :cond_0

    .line 214
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    if-eqz v5, :cond_1

    .line 217
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 222
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 223
    iget-object p2, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->moveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->getMoveDuration()J

    move-result-wide p2

    invoke-virtual {v6, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance p3, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$animateMoveImpl$1;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$animateMoveImpl$1;-><init>(Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V

    check-cast p3, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 246
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private final animateRemoveImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .line 115
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 116
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 117
    iget-object v2, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->removeAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->getRemoveDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 119
    new-instance v3, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$animateRemoveImpl$1;

    invoke-direct {v3, p0, p1, v1, v0}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$animateRemoveImpl$1;-><init>(Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    .line 118
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 133
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private final cancelAll(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    .line 439
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 440
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final dispatchFinishedWhenDone()V
    .locals 1

    .line 355
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 356
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->dispatchAnimationsFinished()V

    .line 357
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->itemAnimatorFinishedListener:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;->onAnimationsFinished()V

    :cond_0
    const/4 v0, 0x0

    .line 358
    check-cast v0, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->itemAnimatorFinishedListener:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    :cond_1
    return-void
.end method

.method private final resetAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->defaultInterpolator:Landroid/animation/TimeInterpolator;

    if-nez v0, :cond_0

    .line 335
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->defaultInterpolator:Landroid/animation/TimeInterpolator;

    .line 337
    :cond_0
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-string v1, "holder.itemView.animate()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->defaultInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 338
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->endAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method


# virtual methods
.method public animateAdd(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->resetAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 140
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "holder.itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 141
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->pendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public animateChange(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 6

    const-string v0, "oldHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne p1, p2, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 256
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->animateMove(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public animateMove(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 8

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 188
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v2, "holder.itemView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    float-to-int v1, v1

    add-int v4, p2, v1

    .line 189
    iget-object p2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "holder.itemView"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result p2

    float-to-int p2, p2

    add-int v5, p3, p2

    .line 190
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->resetAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    sub-int p2, p4, v4

    sub-int p3, p5, v5

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 194
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    if-eqz p2, :cond_1

    const-string v1, "view"

    .line 198
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationX(F)V

    :cond_1
    if-eqz p3, :cond_2

    const-string p2, "view"

    .line 201
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    neg-int p2, p3

    int-to-float p2, p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 203
    :cond_2
    iget-object p2, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->pendingMoves:Ljava/util/ArrayList;

    new-instance p3, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$MoveInfo;

    move-object v2, p3

    move-object v3, p1

    move v6, p4

    move v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$MoveInfo;-><init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public animateRemove(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->resetAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->pendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public final doWhenAnimationDone(Lkotlin/jvm/functions/Function0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 445
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->a:Lkotlinx/coroutines/GlobalScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->b()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$doWhenAnimationDone$1;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, v3}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$doWhenAnimationDone$1;-><init>(Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public endAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 8

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 267
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 269
    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->pendingMoves:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    :cond_0
    :goto_0
    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    if-ltz v1, :cond_1

    .line 270
    iget-object v3, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->pendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "pendingMoves[i]"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$MoveInfo;

    .line 271
    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$MoveInfo;->getHolder()Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-ne v3, p1, :cond_0

    const-string v3, "view"

    .line 272
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 273
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 274
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 275
    iget-object v2, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->pendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 278
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->pendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_2

    const-string v1, "view"

    .line 279
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 280
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->dispatchRemoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 282
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->pendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "view"

    .line 283
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 284
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->dispatchAddFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 287
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->movesList:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    :goto_1
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_6

    .line 288
    iget-object v4, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->movesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "movesList[i]"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/util/ArrayList;

    .line 289
    move-object v5, v4

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    :goto_2
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_5

    .line 290
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "moves[j]"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$MoveInfo;

    .line 291
    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$MoveInfo;->getHolder()Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v6

    if-ne v6, p1, :cond_4

    const-string v6, "view"

    .line 292
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 293
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 294
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 295
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 296
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 297
    iget-object v4, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->movesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    goto :goto_2

    :cond_5
    :goto_3
    goto :goto_1

    .line 303
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->additionsList:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    :goto_4
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_8

    .line 304
    iget-object v2, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->additionsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "additionsList[i]"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/util/ArrayList;

    .line 305
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "view"

    .line 306
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 307
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->dispatchAddFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 308
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 309
    iget-object v2, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->additionsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_7
    goto :goto_4

    .line 316
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->removeAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 321
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->addAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 326
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->moveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public endAnimations()V
    .locals 8

    .line 365
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->pendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 367
    iget-object v2, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->pendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "pendingMoves[i]"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$MoveInfo;

    .line 368
    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$MoveInfo;->getHolder()Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v4, "view"

    .line 369
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 370
    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 371
    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$MoveInfo;->getHolder()Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 372
    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->pendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->pendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 376
    iget-object v2, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->pendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "pendingRemovals[i]"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 377
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->dispatchRemoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 378
    iget-object v2, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->pendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->pendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    const/high16 v2, 0x3f800000    # 1.0f

    if-ltz v0, :cond_2

    .line 382
    iget-object v3, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->pendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "pendingAdditions[i]"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 383
    iget-object v4, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v5, "item.itemView"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Landroid/view/View;->setAlpha(F)V

    .line 384
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->dispatchAddFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 385
    iget-object v2, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->pendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 387
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 391
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->movesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_6

    .line 393
    iget-object v3, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->movesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "movesList[i]"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/util/ArrayList;

    .line 394
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_4
    if-ltz v4, :cond_5

    .line 396
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "moves[j]"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$MoveInfo;

    .line 397
    invoke-virtual {v5}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$MoveInfo;->getHolder()Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v6

    .line 398
    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v7, "view"

    .line 399
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 400
    invoke-virtual {v6, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 401
    invoke-virtual {v5}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$MoveInfo;->getHolder()Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 402
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 403
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 404
    iget-object v5, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->movesList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 408
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->additionsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_5
    if-ltz v0, :cond_9

    .line 410
    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->additionsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "additionsList[i]"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/ArrayList;

    .line 411
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_6
    if-ltz v3, :cond_8

    .line 413
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "additions[j]"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 414
    iget-object v5, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v6, "view"

    .line 415
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Landroid/view/View;->setAlpha(F)V

    .line 416
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->dispatchAddFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 417
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 418
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 419
    iget-object v4, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->additionsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    :cond_8
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 424
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->removeAnimations:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 425
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->moveAnimations:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 426
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->addAnimations:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 428
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->dispatchAnimationsFinished()V

    .line 430
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_b

    .line 433
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->itemAnimatorFinishedListener:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;->onAnimationsFinished()V

    :cond_a
    const/4 v0, 0x0

    .line 434
    check-cast v0, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->itemAnimatorFinishedListener:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    :cond_b
    return-void
.end method

.method public isRunning()Z
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->pendingAdditions:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->pendingMoves:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->pendingRemovals:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->moveAnimations:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->removeAnimations:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->addAnimations:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 348
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->movesList:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->additionsList:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public runPendingAnimations()V
    .locals 8

    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->pendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 47
    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->pendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 48
    iget-object v2, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->pendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    return-void

    .line 54
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->pendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const-string v5, "holder"

    .line 55
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->animateRemoveImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 57
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->pendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    .line 60
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 61
    iget-object v7, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->pendingMoves:Ljava/util/ArrayList;

    check-cast v7, Ljava/util/Collection;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 62
    iget-object v7, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->movesList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v7, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->pendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 64
    new-instance v7, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$runPendingAnimations$mover$1;

    invoke-direct {v7, p0, v6}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$runPendingAnimations$mover$1;-><init>(Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;Ljava/util/ArrayList;)V

    check-cast v7, Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 75
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$MoveInfo;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$MoveInfo;->getHolder()Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v6

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 76
    invoke-static {v6, v7, v3, v4}, Landroid/support/v4/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 78
    :cond_2
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    :cond_3
    :goto_1
    if-eqz v2, :cond_6

    .line 84
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 85
    iget-object v6, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->pendingAdditions:Ljava/util/ArrayList;

    check-cast v6, Ljava/util/Collection;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 86
    iget-object v6, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->additionsList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v6, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->pendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 88
    new-instance v6, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$runPendingAnimations$adder$1;

    invoke-direct {v6, p0, v2}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$runPendingAnimations$adder$1;-><init>(Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;Ljava/util/ArrayList;)V

    check-cast v6, Ljava/lang/Runnable;

    if-nez v0, :cond_5

    if-eqz v1, :cond_4

    goto :goto_2

    .line 99
    :cond_4
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    goto :goto_3

    .line 96
    :cond_5
    :goto_2
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 97
    invoke-static {v0, v6, v3, v4}, Landroid/support/v4/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    :cond_6
    :goto_3
    return-void
.end method
