.class Landroid/support/v7/widget/RecyclerView$2;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;Landroid/os/Looper;)V
    .locals 0

    .line 794
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 797
    iget v1, v1, Landroid/os/Message;->what:I

    if-eqz v1, :cond_0

    goto/16 :goto_14

    .line 799
    :cond_0
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-nez v1, :cond_1

    const-string v1, "SeslRecyclerView"

    const-string v2, "No adapter attached; skipping MSG_HOVERSCROLL_MOVE"

    .line 800
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 805
    :cond_1
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->access$002(Landroid/support/v7/widget/RecyclerView;J)J

    .line 806
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->access$000(Landroid/support/v7/widget/RecyclerView;)J

    move-result-wide v2

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->access$200(Landroid/support/v7/widget/RecyclerView;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->access$102(Landroid/support/v7/widget/RecyclerView;J)J

    .line 808
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->access$300(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->access$000(Landroid/support/v7/widget/RecyclerView;)J

    move-result-wide v1

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$400(Landroid/support/v7/widget/RecyclerView;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$500(Landroid/support/v7/widget/RecyclerView;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    goto/16 :goto_14

    .line 810
    :cond_2
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->access$600(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->access$000(Landroid/support/v7/widget/RecyclerView;)J

    move-result-wide v1

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$400(Landroid/support/v7/widget/RecyclerView;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$700(Landroid/support/v7/widget/RecyclerView;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_3

    goto/16 :goto_14

    .line 814
    :cond_3
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->access$300(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->access$800(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 815
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->access$900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 816
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1, v2}, Landroid/support/v7/widget/RecyclerView;->access$1002(Landroid/support/v7/widget/RecyclerView;I)I

    .line 817
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->access$900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    move-result-object v1

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v3, v2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 820
    :cond_4
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1, v2}, Landroid/support/v7/widget/RecyclerView;->access$802(Landroid/support/v7/widget/RecyclerView;Z)Z

    .line 823
    :cond_5
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    .line 827
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    .line 828
    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v4

    .line 829
    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v5

    const/4 v6, 0x0

    if-ne v5, v2, :cond_6

    const/4 v5, 0x1

    goto :goto_0

    :cond_6
    const/4 v5, 0x0

    .line 832
    :goto_0
    iget-object v7, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v7}, Landroid/support/v7/widget/RecyclerView;->access$1100(Landroid/support/v7/widget/RecyclerView;)I

    move-result v7

    add-int/2addr v7, v1

    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v8

    if-ge v7, v8, :cond_7

    const/4 v7, 0x1

    goto :goto_1

    :cond_7
    const/4 v7, 0x0

    :goto_1
    if-nez v7, :cond_c

    if-lez v1, :cond_c

    .line 835
    iget-object v7, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    add-int/lit8 v9, v1, -0x1

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    invoke-virtual {v7, v8, v9}, Landroid/support/v7/widget/RecyclerView;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    if-eqz v4, :cond_a

    if-eqz v5, :cond_9

    .line 836
    iget-object v7, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    if-ge v7, v8, :cond_8

    goto :goto_2

    :cond_8
    const/4 v7, 0x0

    goto :goto_3

    :cond_9
    iget-object v7, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    .line 837
    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->getRight()I

    move-result v8

    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    if-gt v7, v8, :cond_b

    iget-object v7, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    .line 838
    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v8

    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    if-le v7, v8, :cond_8

    goto :goto_2

    :cond_a
    iget-object v7, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    .line 839
    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->getBottom()I

    move-result v8

    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-gt v7, v8, :cond_b

    iget-object v7, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    .line 840
    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v8

    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v7, v8, :cond_8

    :cond_b
    :goto_2
    const/4 v7, 0x1

    .line 844
    :cond_c
    :goto_3
    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v8}, Landroid/support/v7/widget/RecyclerView;->access$1100(Landroid/support/v7/widget/RecyclerView;)I

    move-result v8

    if-lez v8, :cond_d

    const/4 v8, 0x1

    goto :goto_4

    :cond_d
    const/4 v8, 0x0

    :goto_4
    if-nez v8, :cond_12

    if-lez v1, :cond_12

    .line 848
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8, v6}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    invoke-virtual {v1, v8, v9}, Landroid/support/v7/widget/RecyclerView;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    if-eqz v4, :cond_f

    if-eqz v5, :cond_e

    .line 849
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->getRight()I

    move-result v8

    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    if-gt v1, v8, :cond_10

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    .line 850
    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v8

    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    if-le v1, v8, :cond_11

    goto :goto_5

    :cond_e
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    if-ge v1, v8, :cond_11

    goto :goto_5

    :cond_f
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    if-ge v1, v8, :cond_11

    :cond_10
    :goto_5
    const/4 v8, 0x1

    goto :goto_6

    :cond_11
    const/4 v8, 0x0

    .line 855
    :cond_12
    :goto_6
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v9}, Landroid/support/v7/widget/RecyclerView;->access$1300(Landroid/support/v7/widget/RecyclerView;)F

    move-result v9

    iget-object v10, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    .line 856
    invoke-static {v10}, Landroid/support/v7/widget/RecyclerView;->access$1400(Landroid/support/v7/widget/RecyclerView;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 855
    invoke-static {v2, v9, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v9, v10

    float-to-int v9, v9

    invoke-static {v1, v9}, Landroid/support/v7/widget/RecyclerView;->access$1202(Landroid/support/v7/widget/RecyclerView;I)I

    .line 858
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->access$100(Landroid/support/v7/widget/RecyclerView;)J

    move-result-wide v11

    const-wide/16 v13, 0x2

    const-wide/16 v15, 0x4

    cmp-long v1, v11, v13

    if-lez v1, :cond_13

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->access$100(Landroid/support/v7/widget/RecyclerView;)J

    move-result-wide v11

    cmp-long v1, v11, v15

    if-gez v1, :cond_13

    .line 859
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v9}, Landroid/support/v7/widget/RecyclerView;->access$1200(Landroid/support/v7/widget/RecyclerView;)I

    move-result v9

    iget-object v11, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v11}, Landroid/support/v7/widget/RecyclerView;->access$1200(Landroid/support/v7/widget/RecyclerView;)I

    move-result v11

    int-to-double v11, v11

    const-wide v13, 0x3fb999999999999aL    # 0.1

    mul-double v11, v11, v13

    double-to-int v11, v11

    add-int/2addr v9, v11

    invoke-static {v1, v9}, Landroid/support/v7/widget/RecyclerView;->access$1202(Landroid/support/v7/widget/RecyclerView;I)I

    goto :goto_7

    .line 860
    :cond_13
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->access$100(Landroid/support/v7/widget/RecyclerView;)J

    move-result-wide v11

    const-wide/16 v13, 0x5

    cmp-long v1, v11, v15

    if-ltz v1, :cond_14

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->access$100(Landroid/support/v7/widget/RecyclerView;)J

    move-result-wide v11

    cmp-long v1, v11, v13

    if-gez v1, :cond_14

    .line 861
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v9}, Landroid/support/v7/widget/RecyclerView;->access$1200(Landroid/support/v7/widget/RecyclerView;)I

    move-result v9

    iget-object v11, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v11}, Landroid/support/v7/widget/RecyclerView;->access$1200(Landroid/support/v7/widget/RecyclerView;)I

    move-result v11

    int-to-double v11, v11

    const-wide v13, 0x3fc999999999999aL    # 0.2

    mul-double v11, v11, v13

    double-to-int v11, v11

    add-int/2addr v9, v11

    invoke-static {v1, v9}, Landroid/support/v7/widget/RecyclerView;->access$1202(Landroid/support/v7/widget/RecyclerView;I)I

    goto :goto_7

    .line 862
    :cond_14
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->access$100(Landroid/support/v7/widget/RecyclerView;)J

    move-result-wide v11

    cmp-long v1, v11, v13

    if-ltz v1, :cond_15

    .line 863
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v9}, Landroid/support/v7/widget/RecyclerView;->access$1200(Landroid/support/v7/widget/RecyclerView;)I

    move-result v9

    iget-object v11, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v11}, Landroid/support/v7/widget/RecyclerView;->access$1200(Landroid/support/v7/widget/RecyclerView;)I

    move-result v11

    int-to-double v11, v11

    const-wide v13, 0x3fd3333333333333L    # 0.3

    mul-double v11, v11, v13

    double-to-int v11, v11

    add-int/2addr v9, v11

    invoke-static {v1, v9}, Landroid/support/v7/widget/RecyclerView;->access$1202(Landroid/support/v7/widget/RecyclerView;I)I

    .line 866
    :cond_15
    :goto_7
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->access$1500(Landroid/support/v7/widget/RecyclerView;)I

    move-result v1

    const/4 v9, 0x2

    if-ne v1, v9, :cond_19

    if-eqz v4, :cond_16

    if-eqz v5, :cond_16

    .line 868
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->access$1200(Landroid/support/v7/widget/RecyclerView;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 870
    :cond_16
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->access$1200(Landroid/support/v7/widget/RecyclerView;)I

    move-result v1

    mul-int/lit8 v1, v1, -0x1

    .line 872
    :goto_8
    iget-object v11, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v11}, Landroid/support/v7/widget/RecyclerView;->access$1600(Landroid/support/v7/widget/RecyclerView;)Landroid/view/View;

    move-result-object v11

    if-nez v11, :cond_17

    iget-object v11, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v11}, Landroid/support/v7/widget/RecyclerView;->access$1700(Landroid/support/v7/widget/RecyclerView;)Landroid/view/View;

    move-result-object v11

    if-nez v11, :cond_18

    :cond_17
    iget-object v11, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v11}, Landroid/support/v7/widget/RecyclerView;->access$1800(Landroid/support/v7/widget/RecyclerView;)I

    move-result v11

    iget-object v12, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v12}, Landroid/support/v7/widget/RecyclerView;->access$1500(Landroid/support/v7/widget/RecyclerView;)I

    move-result v12

    if-eq v11, v12, :cond_1d

    iget-object v11, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v11}, Landroid/support/v7/widget/RecyclerView;->access$1900(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v11

    if-ne v11, v2, :cond_1d

    .line 874
    :cond_18
    iget-object v11, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v12, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v12}, Landroid/support/v7/widget/RecyclerView;->access$1700(Landroid/support/v7/widget/RecyclerView;)Landroid/view/View;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/support/v7/widget/RecyclerView;->access$1602(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Landroid/view/View;

    .line 875
    iget-object v11, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v12, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v12}, Landroid/support/v7/widget/RecyclerView;->access$2100(Landroid/support/v7/widget/RecyclerView;)I

    move-result v12

    invoke-static {v11, v12}, Landroid/support/v7/widget/RecyclerView;->access$2002(Landroid/support/v7/widget/RecyclerView;I)I

    .line 876
    iget-object v11, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v12, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v12}, Landroid/support/v7/widget/RecyclerView;->access$2300(Landroid/support/v7/widget/RecyclerView;)I

    move-result v12

    invoke-static {v11, v12}, Landroid/support/v7/widget/RecyclerView;->access$2202(Landroid/support/v7/widget/RecyclerView;I)I

    .line 877
    iget-object v11, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v12, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v12}, Landroid/support/v7/widget/RecyclerView;->access$1500(Landroid/support/v7/widget/RecyclerView;)I

    move-result v12

    invoke-static {v11, v12}, Landroid/support/v7/widget/RecyclerView;->access$1802(Landroid/support/v7/widget/RecyclerView;I)I

    .line 878
    iget-object v11, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v11, v2}, Landroid/support/v7/widget/RecyclerView;->access$1902(Landroid/support/v7/widget/RecyclerView;Z)Z

    goto :goto_a

    :cond_19
    if-eqz v4, :cond_1a

    if-eqz v5, :cond_1a

    .line 882
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->access$1200(Landroid/support/v7/widget/RecyclerView;)I

    move-result v1

    mul-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 884
    :cond_1a
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->access$1200(Landroid/support/v7/widget/RecyclerView;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    .line 887
    :goto_9
    iget-object v11, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v11}, Landroid/support/v7/widget/RecyclerView;->access$1600(Landroid/support/v7/widget/RecyclerView;)Landroid/view/View;

    move-result-object v11

    if-nez v11, :cond_1b

    iget-object v11, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v11}, Landroid/support/v7/widget/RecyclerView;->access$2400(Landroid/support/v7/widget/RecyclerView;)Landroid/view/View;

    move-result-object v11

    if-nez v11, :cond_1c

    :cond_1b
    iget-object v11, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v11}, Landroid/support/v7/widget/RecyclerView;->access$1800(Landroid/support/v7/widget/RecyclerView;)I

    move-result v11

    iget-object v12, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v12}, Landroid/support/v7/widget/RecyclerView;->access$1500(Landroid/support/v7/widget/RecyclerView;)I

    move-result v12

    if-eq v11, v12, :cond_1d

    iget-object v11, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v11}, Landroid/support/v7/widget/RecyclerView;->access$1900(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v11

    if-ne v11, v2, :cond_1d

    .line 889
    :cond_1c
    iget-object v11, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v12, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v12}, Landroid/support/v7/widget/RecyclerView;->access$2400(Landroid/support/v7/widget/RecyclerView;)Landroid/view/View;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/support/v7/widget/RecyclerView;->access$1602(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Landroid/view/View;

    .line 890
    iget-object v11, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v12, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v12}, Landroid/support/v7/widget/RecyclerView;->access$2500(Landroid/support/v7/widget/RecyclerView;)I

    move-result v12

    invoke-static {v11, v12}, Landroid/support/v7/widget/RecyclerView;->access$2002(Landroid/support/v7/widget/RecyclerView;I)I

    .line 891
    iget-object v11, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v12, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v12}, Landroid/support/v7/widget/RecyclerView;->access$2600(Landroid/support/v7/widget/RecyclerView;)I

    move-result v12

    invoke-static {v11, v12}, Landroid/support/v7/widget/RecyclerView;->access$2202(Landroid/support/v7/widget/RecyclerView;I)I

    .line 892
    iget-object v11, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v12, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v12}, Landroid/support/v7/widget/RecyclerView;->access$1500(Landroid/support/v7/widget/RecyclerView;)I

    move-result v12

    invoke-static {v11, v12}, Landroid/support/v7/widget/RecyclerView;->access$1802(Landroid/support/v7/widget/RecyclerView;I)I

    .line 893
    iget-object v11, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v11, v2}, Landroid/support/v7/widget/RecyclerView;->access$1902(Landroid/support/v7/widget/RecyclerView;Z)Z

    .line 897
    :cond_1d
    :goto_a
    iget-object v11, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v12, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v12}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v12

    sub-int/2addr v12, v2

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    if-nez v11, :cond_1e

    goto/16 :goto_14

    :cond_1e
    if-gez v1, :cond_1f

    if-nez v8, :cond_20

    :cond_1f
    if-lez v1, :cond_2a

    if-eqz v7, :cond_2a

    .line 904
    :cond_20
    iget-object v7, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    if-eqz v4, :cond_21

    const/4 v9, 0x1

    :cond_21
    invoke-virtual {v7, v9, v2}, Landroid/support/v7/widget/RecyclerView;->startNestedScroll(II)Z

    .line 905
    iget-object v10, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    if-eqz v4, :cond_23

    if-eqz v5, :cond_22

    neg-int v7, v1

    move v11, v7

    goto :goto_b

    :cond_22
    move v11, v1

    goto :goto_b

    :cond_23
    const/4 v11, 0x0

    :goto_b
    if-eqz v3, :cond_24

    move v12, v1

    goto :goto_c

    :cond_24
    const/4 v12, 0x0

    :goto_c
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual/range {v10 .. v15}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v7

    if-nez v7, :cond_28

    .line 906
    iget-object v7, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    if-eqz v4, :cond_26

    if-eqz v5, :cond_25

    neg-int v4, v1

    goto :goto_d

    :cond_25
    move v4, v1

    goto :goto_d

    :cond_26
    const/4 v4, 0x0

    :goto_d
    if-eqz v3, :cond_27

    goto :goto_e

    :cond_27
    const/4 v1, 0x0

    :goto_e
    const/4 v3, 0x0

    invoke-virtual {v7, v4, v1, v3}, Landroid/support/v7/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    .line 907
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 910
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->access$2700(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 911
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->access$2800(Landroid/support/v7/widget/RecyclerView;)I

    move-result v2

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)I

    move-result v3

    invoke-static {v1, v2, v3, v6}, Landroid/support/v7/widget/RecyclerView;->access$3000(Landroid/support/v7/widget/RecyclerView;IIZ)V

    goto :goto_f

    .line 915
    :cond_28
    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2, v1}, Landroid/support/v7/widget/RecyclerView;->access$3100(Landroid/support/v7/widget/RecyclerView;I)V

    .line 918
    :cond_29
    :goto_f
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->access$3300(Landroid/support/v7/widget/RecyclerView;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->access$3200(Landroid/support/v7/widget/RecyclerView;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_14

    .line 921
    :cond_2a
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v1

    if-eqz v1, :cond_2c

    if-ne v1, v2, :cond_2b

    .line 922
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    .line 923
    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->access$3400(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v1

    if-nez v1, :cond_2b

    goto :goto_10

    :cond_2b
    const/4 v1, 0x0

    goto :goto_11

    :cond_2c
    :goto_10
    const/4 v1, 0x1

    :goto_11
    if-eqz v1, :cond_32

    .line 925
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$3500(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v3

    if-nez v3, :cond_32

    if-eqz v4, :cond_2d

    .line 927
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->ensureLeftGlow()V

    .line 928
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->ensureRightGlow()V

    goto :goto_12

    .line 930
    :cond_2d
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->ensureTopGlow()V

    .line 931
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->ensureBottomGlow()V

    .line 933
    :goto_12
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$1500(Landroid/support/v7/widget/RecyclerView;)I

    move-result v3

    const v5, 0x3ecccccd    # 0.4f

    if-ne v3, v9, :cond_2f

    if-eqz v4, :cond_2e

    .line 935
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$3600(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v4/widget/SeslEdgeEffect;

    move-result-object v3

    invoke-virtual {v3, v5, v10, v6}, Landroid/support/v4/widget/SeslEdgeEffect;->onPullCallOnRelease(FFI)V

    .line 936
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$3700(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v4/widget/SeslEdgeEffect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/widget/SeslEdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_31

    .line 937
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$3700(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v4/widget/SeslEdgeEffect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/widget/SeslEdgeEffect;->onRelease()V

    goto :goto_13

    .line 940
    :cond_2e
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$3800(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v4/widget/SeslEdgeEffect;

    move-result-object v3

    invoke-virtual {v3, v5, v10, v6}, Landroid/support/v4/widget/SeslEdgeEffect;->onPullCallOnRelease(FFI)V

    .line 941
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$3900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v4/widget/SeslEdgeEffect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/widget/SeslEdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_31

    .line 942
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$3900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v4/widget/SeslEdgeEffect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/widget/SeslEdgeEffect;->onRelease()V

    goto :goto_13

    .line 945
    :cond_2f
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$1500(Landroid/support/v7/widget/RecyclerView;)I

    move-result v3

    if-ne v3, v2, :cond_31

    if-eqz v4, :cond_30

    .line 947
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$3700(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v4/widget/SeslEdgeEffect;

    move-result-object v3

    invoke-virtual {v3, v5, v10, v6}, Landroid/support/v4/widget/SeslEdgeEffect;->onPullCallOnRelease(FFI)V

    .line 948
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$3600(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v4/widget/SeslEdgeEffect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/widget/SeslEdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_31

    .line 949
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$3600(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v4/widget/SeslEdgeEffect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/widget/SeslEdgeEffect;->onRelease()V

    goto :goto_13

    .line 952
    :cond_30
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$3900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v4/widget/SeslEdgeEffect;

    move-result-object v3

    invoke-virtual {v3, v5, v10, v6}, Landroid/support/v4/widget/SeslEdgeEffect;->onPullCallOnRelease(FFI)V

    .line 953
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3, v2}, Landroid/support/v7/widget/RecyclerView;->access$4000(Landroid/support/v7/widget/RecyclerView;I)V

    .line 954
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3, v2}, Landroid/support/v7/widget/RecyclerView;->access$4100(Landroid/support/v7/widget/RecyclerView;I)V

    .line 955
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$3800(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v4/widget/SeslEdgeEffect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/widget/SeslEdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_31

    .line 956
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$3800(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v4/widget/SeslEdgeEffect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/widget/SeslEdgeEffect;->onRelease()V

    .line 960
    :cond_31
    :goto_13
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 961
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3, v2}, Landroid/support/v7/widget/RecyclerView;->access$3502(Landroid/support/v7/widget/RecyclerView;Z)Z

    .line 964
    :cond_32
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$4200(Landroid/support/v7/widget/RecyclerView;)I

    move-result v3

    if-ne v3, v2, :cond_33

    .line 965
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    :cond_33
    if-nez v1, :cond_34

    .line 968
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->access$3500(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 969
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1, v2}, Landroid/support/v7/widget/RecyclerView;->access$3502(Landroid/support/v7/widget/RecyclerView;Z)Z

    :cond_34
    :goto_14
    return-void
.end method
