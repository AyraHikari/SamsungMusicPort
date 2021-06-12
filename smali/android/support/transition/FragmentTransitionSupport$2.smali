.class Landroid/support/transition/FragmentTransitionSupport$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/FragmentTransitionSupport;->scheduleHideFragmentView(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/transition/FragmentTransitionSupport;

.field final synthetic val$exitingViews:Ljava/util/ArrayList;

.field final synthetic val$fragmentView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/transition/FragmentTransitionSupport;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 0

    .line 148
    iput-object p1, p0, Landroid/support/transition/FragmentTransitionSupport$2;->this$0:Landroid/support/transition/FragmentTransitionSupport;

    iput-object p2, p0, Landroid/support/transition/FragmentTransitionSupport$2;->val$fragmentView:Landroid/view/View;

    iput-object p3, p0, Landroid/support/transition/FragmentTransitionSupport$2;->val$exitingViews:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/support/transition/Transition;)V
    .locals 0
    .param p1    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onTransitionEnd(Landroid/support/transition/Transition;)V
    .locals 3
    .param p1    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 155
    invoke-virtual {p1, p0}, Landroid/support/transition/Transition;->removeListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;

    .line 156
    iget-object p1, p0, Landroid/support/transition/FragmentTransitionSupport$2;->val$fragmentView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 157
    iget-object p1, p0, Landroid/support/transition/FragmentTransitionSupport$2;->val$exitingViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 159
    iget-object v2, p0, Landroid/support/transition/FragmentTransitionSupport$2;->val$exitingViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTransitionPause(Landroid/support/transition/Transition;)V
    .locals 0
    .param p1    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onTransitionResume(Landroid/support/transition/Transition;)V
    .locals 0
    .param p1    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onTransitionStart(Landroid/support/transition/Transition;)V
    .locals 0
    .param p1    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
