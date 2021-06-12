.class public final Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$animateAddImpl$$inlined$apply$lambda$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->animateAddImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $holder$inlined:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field final synthetic $this_apply:Landroid/view/ViewPropertyAnimator;

.field final synthetic $view$inlined:Landroid/view/View;

.field final synthetic this$0:Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;


# direct methods
.method constructor <init>(Landroid/view/ViewPropertyAnimator;Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$animateAddImpl$$inlined$apply$lambda$1;->$this_apply:Landroid/view/ViewPropertyAnimator;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$animateAddImpl$$inlined$apply$lambda$1;->this$0:Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;

    iput-object p3, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$animateAddImpl$$inlined$apply$lambda$1;->$holder$inlined:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iput-object p4, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$animateAddImpl$$inlined$apply$lambda$1;->$view$inlined:Landroid/view/View;

    .line 157
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$animateAddImpl$$inlined$apply$lambda$1;->$view$inlined:Landroid/view/View;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 164
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$animateAddImpl$$inlined$apply$lambda$1;->$view$inlined:Landroid/view/View;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$animateAddImpl$$inlined$apply$lambda$1;->$this_apply:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 169
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$animateAddImpl$$inlined$apply$lambda$1;->this$0:Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$animateAddImpl$$inlined$apply$lambda$1;->$holder$inlined:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->dispatchAddFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 170
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$animateAddImpl$$inlined$apply$lambda$1;->this$0:Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->access$getAddAnimations$p(Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$animateAddImpl$$inlined$apply$lambda$1;->$holder$inlined:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 173
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$animateAddImpl$$inlined$apply$lambda$1;->this$0:Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->access$dispatchFinishedWhenDone(Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$animateAddImpl$$inlined$apply$lambda$1;->this$0:Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$animateAddImpl$$inlined$apply$lambda$1;->$holder$inlined:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->dispatchAddStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
