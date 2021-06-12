.class final Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$runPendingAnimations$adder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->runPendingAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $additions:Ljava/util/ArrayList;

.field final synthetic this$0:Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$runPendingAnimations$adder$1;->this$0:Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$runPendingAnimations$adder$1;->$additions:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$runPendingAnimations$adder$1;->$additions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 90
    iget-object v2, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$runPendingAnimations$adder$1;->this$0:Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;

    const-string v3, "holder"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v1}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->access$animateAddImpl(Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$runPendingAnimations$adder$1;->$additions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$runPendingAnimations$adder$1;->this$0:Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->access$getAdditionsList$p(Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$runPendingAnimations$adder$1;->$additions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
