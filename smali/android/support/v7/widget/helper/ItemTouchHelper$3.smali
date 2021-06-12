.class Landroid/support/v7/widget/helper/ItemTouchHelper$3;
.super Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/helper/ItemTouchHelper;->select(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

.field final synthetic val$prevSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field final synthetic val$swipeDir:I


# direct methods
.method constructor <init>(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIFFFFLandroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    .line 645
    iput-object v0, v8, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    move-object/from16 v0, p9

    iput-object v0, v8, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->val$prevSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move/from16 v0, p10

    iput v0, v8, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->val$swipeDir:I

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;-><init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIFFFF)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 648
    invoke-super {p0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->onAnimationEnd(Landroid/animation/Animator;)V

    const-string p1, "ItemTouchHelper"

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecoverAnimation, onAnimationEnd is called for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->val$prevSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " swipeDir = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->val$swipeDir:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    iget-boolean p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->mOverridden:Z

    if-eqz p1, :cond_0

    const-string p1, "ItemTouchHelper"

    const-string v0, "this.mOverridden is true"

    .line 651
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 654
    :cond_0
    iget p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->val$swipeDir:I

    if-gtz p1, :cond_1

    .line 656
    iget-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object p1, p1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->val$prevSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 661
    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->val$prevSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "ItemTouchHelper"

    const-string v0, "itemView is detached"

    .line 662
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object p1, p1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->val$prevSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 667
    :cond_2
    iget-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object p1, p1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->val$prevSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 668
    iput-boolean p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->mIsPendingCleanup:Z

    .line 669
    iget p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->val$swipeDir:I

    if-lez p1, :cond_3

    .line 672
    iget-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->val$swipeDir:I

    invoke-virtual {p1, p0, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->postDispatchSwipe(Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;I)V

    .line 677
    :cond_3
    :goto_0
    iget-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object p1, p1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->val$prevSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne p1, v0, :cond_4

    .line 678
    iget-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->val$prevSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    :cond_4
    return-void
.end method
