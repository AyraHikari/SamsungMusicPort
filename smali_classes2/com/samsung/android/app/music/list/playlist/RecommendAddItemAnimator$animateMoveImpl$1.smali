.class public final Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$animateMoveImpl$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->animateMoveImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $animation:Landroid/view/ViewPropertyAnimator;

.field final synthetic $deltaX:I

.field final synthetic $deltaY:I

.field final synthetic $holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field final synthetic $view:Landroid/view/View;

.field final synthetic this$0:Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "I",
            "Landroid/view/View;",
            "I",
            "Landroid/view/ViewPropertyAnimator;",
            ")V"
        }
    .end annotation

    .line 224
    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$animateMoveImpl$1;->this$0:Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$animateMoveImpl$1;->$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iput p3, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$animateMoveImpl$1;->$deltaX:I

    iput-object p4, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$animateMoveImpl$1;->$view:Landroid/view/View;

    iput p5, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$animateMoveImpl$1;->$deltaY:I

    iput-object p6, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$animateMoveImpl$1;->$animation:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    iget p1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$animateMoveImpl$1;->$deltaX:I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 231
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$animateMoveImpl$1;->$view:Landroid/view/View;

    const-string v1, "view"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 233
    :cond_0
    iget p1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$animateMoveImpl$1;->$deltaY:I

    if-eqz p1, :cond_1

    .line 234
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$animateMoveImpl$1;->$view:Landroid/view/View;

    const-string v1, "view"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$animateMoveImpl$1;->$animation:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 240
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$animateMoveImpl$1;->this$0:Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$animateMoveImpl$1;->$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 241
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$animateMoveImpl$1;->this$0:Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->access$getMoveAnimations$p(Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$animateMoveImpl$1;->$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 244
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$animateMoveImpl$1;->this$0:Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->access$dispatchFinishedWhenDone(Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$animateMoveImpl$1;->this$0:Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$animateMoveImpl$1;->$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->dispatchMoveStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
