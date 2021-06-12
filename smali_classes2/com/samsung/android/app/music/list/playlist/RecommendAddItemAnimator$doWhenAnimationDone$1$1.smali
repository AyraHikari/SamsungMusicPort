.class final Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$doWhenAnimationDone$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$doWhenAnimationDone$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$doWhenAnimationDone$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$doWhenAnimationDone$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$doWhenAnimationDone$1$1;->this$0:Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$doWhenAnimationDone$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationsFinished()V
    .locals 2

    const-string v0, "RecommendAddItemAnimator"

    const-string v1, "doWhenAnimationDone() invokes block "

    .line 447
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$doWhenAnimationDone$1$1;->this$0:Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$doWhenAnimationDone$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$doWhenAnimationDone$1;->this$0:Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->access$getItemAnimatorFinishedListener$p(Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$doWhenAnimationDone$1$1;->this$0:Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$doWhenAnimationDone$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$doWhenAnimationDone$1;->$block:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method
