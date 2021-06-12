.class public final Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$animateRemoveImpl$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->animateRemoveImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $animation:Landroid/view/ViewPropertyAnimator;

.field final synthetic $holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field final synthetic $view:Landroid/view/View;

.field final synthetic this$0:Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "Landroid/view/ViewPropertyAnimator;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$animateRemoveImpl$1;->this$0:Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$animateRemoveImpl$1;->$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iput-object p3, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$animateRemoveImpl$1;->$animation:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$animateRemoveImpl$1;->$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$animateRemoveImpl$1;->$animation:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 126
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$animateRemoveImpl$1;->$view:Landroid/view/View;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 127
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$animateRemoveImpl$1;->this$0:Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$animateRemoveImpl$1;->$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->dispatchRemoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 128
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$animateRemoveImpl$1;->this$0:Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->access$getRemoveAnimations$p(Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$animateRemoveImpl$1;->$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 131
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$animateRemoveImpl$1;->this$0:Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->access$dispatchFinishedWhenDone(Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$animateRemoveImpl$1;->this$0:Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$animateRemoveImpl$1;->$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->dispatchRemoveStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
