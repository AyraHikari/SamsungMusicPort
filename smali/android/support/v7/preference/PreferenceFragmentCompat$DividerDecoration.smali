.class Landroid/support/v7/preference/PreferenceFragmentCompat$DividerDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/preference/PreferenceFragmentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DividerDecoration"
.end annotation


# instance fields
.field private mAllowDividerAfterLastItem:Z

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field final synthetic this$0:Landroid/support/v7/preference/PreferenceFragmentCompat;


# direct methods
.method private constructor <init>(Landroid/support/v7/preference/PreferenceFragmentCompat;)V
    .locals 0

    .line 886
    iput-object p1, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$DividerDecoration;->this$0:Landroid/support/v7/preference/PreferenceFragmentCompat;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 p1, 0x1

    .line 890
    iput-boolean p1, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$DividerDecoration;->mAllowDividerAfterLastItem:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/preference/PreferenceFragmentCompat;Landroid/support/v7/preference/PreferenceFragmentCompat$1;)V
    .locals 0

    .line 886
    invoke-direct {p0, p1}, Landroid/support/v7/preference/PreferenceFragmentCompat$DividerDecoration;-><init>(Landroid/support/v7/preference/PreferenceFragmentCompat;)V

    return-void
.end method

.method private canScrollUp(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 4

    .line 945
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 946
    instance-of v1, v0, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 947
    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 949
    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 951
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result p1

    if-ge v0, p1, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v0

    :cond_2
    :goto_1
    return v2
.end method

.method private shouldDrawDividerBelow(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)Z
    .locals 4

    .line 986
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 987
    instance-of v1, v0, Landroid/support/v7/preference/PreferenceViewHolder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    check-cast v0, Landroid/support/v7/preference/PreferenceViewHolder;

    .line 988
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceViewHolder;->isDividerAllowedBelow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return v2

    .line 992
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$DividerDecoration;->mAllowDividerAfterLastItem:Z

    .line 993
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result p1

    .line 994
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v3

    if-ge p1, v1, :cond_3

    add-int/2addr p1, v3

    .line 995
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 996
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 997
    instance-of p2, p1, Landroid/support/v7/preference/PreferenceViewHolder;

    if-eqz p2, :cond_2

    check-cast p1, Landroid/support/v7/preference/PreferenceViewHolder;

    .line 998
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceViewHolder;->isDividerAllowedAbove()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_1
    return v0
.end method


# virtual methods
.method public seslOnDispatchDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 11

    .line 894
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->seslOnDispatchDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 895
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result p3

    .line 896
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    .line 898
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v2

    move-object v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p3, :cond_7

    .line 900
    invoke-virtual {p2, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 901
    invoke-virtual {p2, v6}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v7

    .line 902
    instance-of v8, v7, Landroid/support/v7/preference/PreferenceViewHolder;

    if-eqz v8, :cond_0

    .line 903
    check-cast v7, Landroid/support/v7/preference/PreferenceViewHolder;

    goto :goto_1

    :cond_0
    move-object v7, v2

    :goto_1
    if-nez v3, :cond_1

    move-object v4, v7

    goto :goto_2

    :cond_1
    const/4 v8, 0x1

    if-ne v3, v8, :cond_2

    move-object v5, v7

    .line 912
    :cond_2
    :goto_2
    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    .line 913
    iget-object v9, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_3

    invoke-direct {p0, v6, p2}, Landroid/support/v7/preference/PreferenceFragmentCompat$DividerDecoration;->shouldDrawDividerBelow(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 914
    iget-object v9, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    iget v10, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$DividerDecoration;->mDividerHeight:I

    add-int/2addr v10, v8

    invoke-virtual {v9, v1, v8, v0, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 915
    iget-object v8, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 918
    :cond_3
    iget-object v8, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$DividerDecoration;->this$0:Landroid/support/v7/preference/PreferenceFragmentCompat;

    invoke-static {v8}, Landroid/support/v7/preference/PreferenceFragmentCompat;->access$300(Landroid/support/v7/preference/PreferenceFragmentCompat;)I

    move-result v8

    if-eqz v8, :cond_6

    if-eqz v7, :cond_6

    iget-boolean v8, v7, Landroid/support/v7/preference/PreferenceViewHolder;->mDrawBackground:Z

    if-nez v8, :cond_4

    goto :goto_3

    .line 922
    :cond_4
    invoke-virtual {v7}, Landroid/support/v7/preference/PreferenceViewHolder;->seslIsDrawSubheaderRound()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 923
    iget-object v8, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$DividerDecoration;->this$0:Landroid/support/v7/preference/PreferenceFragmentCompat;

    invoke-static {v8}, Landroid/support/v7/preference/PreferenceFragmentCompat;->access$400(Landroid/support/v7/preference/PreferenceFragmentCompat;)Landroid/support/v7/util/SeslSubheaderRoundedCorner;

    move-result-object v8

    iget v7, v7, Landroid/support/v7/preference/PreferenceViewHolder;->mDrawCorners:I

    invoke-virtual {v8, v7}, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->setRoundedCorners(I)V

    .line 924
    iget-object v7, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$DividerDecoration;->this$0:Landroid/support/v7/preference/PreferenceFragmentCompat;

    invoke-static {v7}, Landroid/support/v7/preference/PreferenceFragmentCompat;->access$400(Landroid/support/v7/preference/PreferenceFragmentCompat;)Landroid/support/v7/util/SeslSubheaderRoundedCorner;

    move-result-object v7

    invoke-virtual {v7, v6, p1}, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 926
    :cond_5
    iget-object v8, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$DividerDecoration;->this$0:Landroid/support/v7/preference/PreferenceFragmentCompat;

    invoke-static {v8}, Landroid/support/v7/preference/PreferenceFragmentCompat;->access$500(Landroid/support/v7/preference/PreferenceFragmentCompat;)Landroid/support/v7/util/SeslRoundedCorner;

    move-result-object v8

    iget v7, v7, Landroid/support/v7/preference/PreferenceViewHolder;->mDrawCorners:I

    invoke-virtual {v8, v7}, Landroid/support/v7/util/SeslRoundedCorner;->setRoundedCorners(I)V

    .line 927
    iget-object v7, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$DividerDecoration;->this$0:Landroid/support/v7/preference/PreferenceFragmentCompat;

    invoke-static {v7}, Landroid/support/v7/preference/PreferenceFragmentCompat;->access$500(Landroid/support/v7/preference/PreferenceFragmentCompat;)Landroid/support/v7/util/SeslRoundedCorner;

    move-result-object v7

    invoke-virtual {v7, v6, p1}, Landroid/support/v7/util/SeslRoundedCorner;->drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V

    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 931
    :cond_7
    iget-object p3, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$DividerDecoration;->this$0:Landroid/support/v7/preference/PreferenceFragmentCompat;

    invoke-static {p3}, Landroid/support/v7/preference/PreferenceFragmentCompat;->access$300(Landroid/support/v7/preference/PreferenceFragmentCompat;)I

    move-result p3

    if-eqz p3, :cond_a

    .line 932
    iget-object p3, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$DividerDecoration;->this$0:Landroid/support/v7/preference/PreferenceFragmentCompat;

    invoke-static {p3}, Landroid/support/v7/preference/PreferenceFragmentCompat;->access$300(Landroid/support/v7/preference/PreferenceFragmentCompat;)I

    move-result p3

    const/4 v0, 0x2

    if-ne p3, v0, :cond_9

    if-eqz v4, :cond_9

    .line 933
    invoke-direct {p0, p2}, Landroid/support/v7/preference/PreferenceFragmentCompat$DividerDecoration;->canScrollUp(Landroid/support/v7/widget/RecyclerView;)Z

    move-result p2

    if-nez p2, :cond_9

    invoke-virtual {v4}, Landroid/support/v7/preference/PreferenceViewHolder;->seslIsDrawSubheaderRound()Z

    move-result p2

    if-nez p2, :cond_9

    if-eqz v5, :cond_8

    if-eqz v5, :cond_9

    .line 935
    invoke-virtual {v5}, Landroid/support/v7/preference/PreferenceViewHolder;->seslGetDrawCorners()I

    move-result p2

    const/4 p3, 0x3

    if-eq p2, p3, :cond_9

    .line 936
    :cond_8
    iget-object p2, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$DividerDecoration;->this$0:Landroid/support/v7/preference/PreferenceFragmentCompat;

    invoke-static {p2}, Landroid/support/v7/preference/PreferenceFragmentCompat;->access$600(Landroid/support/v7/preference/PreferenceFragmentCompat;)Landroid/support/v7/util/SeslRoundedCorner;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/v7/util/SeslRoundedCorner;->drawRoundedCorner(Landroid/graphics/Canvas;)V

    return-void

    .line 939
    :cond_9
    iget-object p2, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$DividerDecoration;->this$0:Landroid/support/v7/preference/PreferenceFragmentCompat;

    invoke-static {p2}, Landroid/support/v7/preference/PreferenceFragmentCompat;->access$700(Landroid/support/v7/preference/PreferenceFragmentCompat;)Landroid/support/v7/util/SeslRoundedCorner;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/v7/util/SeslRoundedCorner;->drawRoundedCorner(Landroid/graphics/Canvas;)V

    :cond_a
    return-void
.end method

.method public setAllowDividerAfterLastItem(Z)V
    .locals 0

    .line 1019
    iput-boolean p1, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$DividerDecoration;->mAllowDividerAfterLastItem:Z

    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1005
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$DividerDecoration;->mDividerHeight:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1007
    iput v0, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$DividerDecoration;->mDividerHeight:I

    .line 1009
    :goto_0
    iput-object p1, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 1010
    iget-object p1, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$DividerDecoration;->this$0:Landroid/support/v7/preference/PreferenceFragmentCompat;

    invoke-static {p1}, Landroid/support/v7/preference/PreferenceFragmentCompat;->access$200(Landroid/support/v7/preference/PreferenceFragmentCompat;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->invalidateItemDecorations()V

    return-void
.end method

.method public setDividerHeight(I)V
    .locals 0

    .line 1014
    iput p1, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$DividerDecoration;->mDividerHeight:I

    .line 1015
    iget-object p1, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$DividerDecoration;->this$0:Landroid/support/v7/preference/PreferenceFragmentCompat;

    invoke-static {p1}, Landroid/support/v7/preference/PreferenceFragmentCompat;->access$200(Landroid/support/v7/preference/PreferenceFragmentCompat;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->invalidateItemDecorations()V

    return-void
.end method
