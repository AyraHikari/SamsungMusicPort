.class public Landroid/support/v7/widget/LinearLayoutManager;
.super Landroid/support/v7/widget/RecyclerView$LayoutManager;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;
.implements Landroid/support/v7/widget/helper/ItemTouchHelper$ViewDropHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;,
        Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;,
        Landroid/support/v7/widget/LinearLayoutManager$SavedState;,
        Landroid/support/v7/widget/LinearLayoutManager$LayoutState;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field public static final HORIZONTAL:I = 0x0

.field public static final INVALID_OFFSET:I = -0x80000000

.field private static final MAX_SCROLL_FACTOR:F = 0.33333334f

.field private static final TAG:Ljava/lang/String; = "SeslLinearLayoutManager"

.field public static final VERTICAL:I = 0x1


# instance fields
.field final mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

.field private mInitialPrefetchItemCount:I

.field private mLastStackFromEnd:Z

.field private final mLayoutChunkResult:Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;

.field private mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

.field mOrientation:I

.field mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

.field mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

.field mPendingScrollPosition:I

.field mPendingScrollPositionOffset:I

.field private mRecycleChildrenOnDetach:Z

.field mReverseLayout:Z

.field mShouldReverseLayout:Z

.field private mSmoothScrollbarEnabled:Z

.field mStackFromEnd:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 155
    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    .line 165
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;-><init>()V

    const/4 p1, 0x1

    .line 68
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 102
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 109
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 115
    iput-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 p1, -0x1

    .line 121
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    const/high16 p1, -0x80000000

    .line 127
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    const/4 p1, 0x0

    .line 131
    iput-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 137
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {p1}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    .line 142
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;

    invoke-direct {p1}, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutChunkResult:Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;

    const/4 p1, 0x2

    .line 147
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mInitialPrefetchItemCount:I

    .line 166
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 167
    invoke-virtual {p0, p3}, Landroid/support/v7/widget/LinearLayoutManager;->setReverseLayout(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 179
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;-><init>()V

    const/4 v0, 0x1

    .line 68
    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x0

    .line 95
    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 102
    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 109
    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 115
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v0, -0x1

    .line 121
    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    const/high16 v0, -0x80000000

    .line 127
    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    const/4 v0, 0x0

    .line 131
    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 137
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {v0}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    .line 142
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;

    invoke-direct {v0}, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutChunkResult:Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;

    const/4 v0, 0x2

    .line 147
    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mInitialPrefetchItemCount:I

    .line 180
    invoke-static {p1, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;

    move-result-object p1

    .line 181
    iget p2, p1, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->orientation:I

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 182
    iget-boolean p2, p1, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->setReverseLayout(Z)V

    .line 183
    iget-boolean p1, p1, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->stackFromEnd:Z

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    return-void
.end method

.method private computeScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 6

    .line 1135
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1138
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1139
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    .line 1140
    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/2addr v0, v2

    .line 1141
    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    move-object v0, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, p0

    .line 1139
    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/ScrollbarHelper;->computeScrollExtent(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$LayoutManager;Z)I

    move-result p1

    return p1
.end method

.method private computeScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 7

    .line 1124
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1127
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1128
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    .line 1129
    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/2addr v0, v2

    .line 1130
    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    iget-boolean v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    move-object v0, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, p0

    .line 1128
    invoke-static/range {v0 .. v6}, Landroid/support/v7/widget/ScrollbarHelper;->computeScrollOffset(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$LayoutManager;ZZ)I

    move-result p1

    return p1
.end method

.method private computeScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 6

    .line 1146
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1149
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1150
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    .line 1151
    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/2addr v0, v2

    .line 1152
    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    move-object v0, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, p0

    .line 1150
    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/ScrollbarHelper;->computeScrollRange(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$LayoutManager;Z)I

    move-result p1

    return p1
.end method

.method private findFirstPartiallyOrCompletelyInvisibleChild(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 0

    .line 1846
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Landroid/support/v7/widget/LinearLayoutManager;->findOnePartiallyOrCompletelyInvisibleChild(II)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private findFirstReferenceChild(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 6

    .line 1791
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v4

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v5

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/LinearLayoutManager;->findReferenceChild(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;III)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;
    .locals 2

    .line 1747
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1748
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 1751
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;
    .locals 2

    .line 1729
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    .line 1730
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 1733
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private findLastPartiallyOrCompletelyInvisibleChild(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 0

    .line 1851
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/4 p2, -0x1

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->findOnePartiallyOrCompletelyInvisibleChild(II)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private findLastReferenceChild(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 7

    .line 1795
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v6

    const/4 v5, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Landroid/support/v7/widget/LinearLayoutManager;->findReferenceChild(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;III)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private findPartiallyOrCompletelyInvisibleChildClosestToEnd(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 1

    .line 1832
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstPartiallyOrCompletelyInvisibleChild(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 1833
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->findLastPartiallyOrCompletelyInvisibleChild(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private findPartiallyOrCompletelyInvisibleChildClosestToStart(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 1

    .line 1840
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->findLastPartiallyOrCompletelyInvisibleChild(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 1841
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstPartiallyOrCompletelyInvisibleChild(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private findReferenceChildClosestToEnd(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 1

    .line 1769
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstReferenceChild(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 1770
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->findLastReferenceChild(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private findReferenceChildClosestToStart(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 1

    .line 1786
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->findLastReferenceChild(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 1787
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstReferenceChild(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private fixLayoutEndGap(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)I
    .locals 1

    .line 913
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    sub-int/2addr v0, p1

    if-lez v0, :cond_1

    neg-int v0, v0

    .line 916
    invoke-virtual {p0, v0, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->scrollBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p2

    neg-int p2, p2

    add-int/2addr p1, p2

    if-eqz p4, :cond_0

    .line 924
    iget-object p3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p3}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p3

    sub-int/2addr p3, p1

    if-lez p3, :cond_0

    .line 926
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/OrientationHelper;->offsetChildren(I)V

    add-int/2addr p3, p2

    return p3

    :cond_0
    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private fixLayoutStartGap(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)I
    .locals 1

    .line 938
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    sub-int v0, p1, v0

    if-lez v0, :cond_1

    .line 942
    invoke-virtual {p0, v0, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->scrollBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p2

    neg-int p2, p2

    add-int/2addr p1, p2

    if-eqz p4, :cond_0

    .line 949
    iget-object p3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p3}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p3

    sub-int/2addr p1, p3

    if-lez p1, :cond_0

    .line 951
    iget-object p3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    neg-int p4, p1

    invoke-virtual {p3, p4}, Landroid/support/v7/widget/OrientationHelper;->offsetChildren(I)V

    sub-int/2addr p2, p1

    return p2

    :cond_0
    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private getChildClosestToEnd()Landroid/view/View;
    .locals 1

    .line 1717
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getChildClosestToStart()Landroid/view/View;
    .locals 1

    .line 1707
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private layoutForPredictiveAnimations(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 707
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView$State;->willRunPredictiveAnimations()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v3

    if-nez v3, :cond_8

    .line 708
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 713
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->getScrapList()Ljava/util/List;

    move-result-object v3

    .line 714
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    .line 715
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v7, v4, :cond_5

    .line 717
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 718
    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_2

    .line 721
    :cond_1
    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v11

    const/4 v12, 0x1

    if-ge v11, v6, :cond_2

    const/4 v11, 0x1

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    .line 722
    :goto_1
    iget-boolean v13, v0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    const/4 v14, -0x1

    if-eq v11, v13, :cond_3

    const/4 v12, -0x1

    :cond_3
    if-ne v12, v14, :cond_4

    .line 725
    iget-object v11, v0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11, v10}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v10

    add-int/2addr v8, v10

    goto :goto_2

    .line 727
    :cond_4
    iget-object v11, v0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11, v10}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v10

    add-int/2addr v9, v10

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 735
    :cond_5
    iget-object v4, v0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput-object v3, v4, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-lez v8, :cond_6

    .line 737
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v3

    .line 738
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    move/from16 v4, p3

    invoke-direct {p0, v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 739
    iget-object v3, v0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput v8, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 740
    iget-object v3, v0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput v5, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 741
    iget-object v3, v0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {v3}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->assignPositionFromScrapList()V

    .line 742
    iget-object v3, v0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, v1, v3, v2, v5}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    :cond_6
    if-lez v9, :cond_7

    .line 746
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v3

    .line 747
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    move/from16 v4, p4

    invoke-direct {p0, v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 748
    iget-object v3, v0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput v9, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 749
    iget-object v3, v0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput v5, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 750
    iget-object v3, v0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {v3}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->assignPositionFromScrapList()V

    .line 751
    iget-object v3, v0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, v1, v3, v2, v5}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    .line 753
    :cond_7
    iget-object v1, v0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    return-void

    :cond_8
    :goto_3
    return-void
.end method

.method private logChildren()V
    .locals 5

    const-string v0, "SeslLinearLayoutManager"

    const-string v1, "internal representation of views on the screen"

    .line 2040
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2041
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2042
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "SeslLinearLayoutManager"

    .line 2043
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", coord:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 2044
    invoke-virtual {v4, v1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2043
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "SeslLinearLayoutManager"

    const-string v1, "=============="

    .line 2046
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private recycleByLayoutState(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;)V
    .locals 2

    .line 1494
    iget-boolean v0, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mInfinite:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1497
    :cond_0
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1498
    iget p2, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->recycleViewsFromEnd(Landroid/support/v7/widget/RecyclerView$Recycler;I)V

    goto :goto_0

    .line 1500
    :cond_1
    iget p2, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->recycleViewsFromStart(Landroid/support/v7/widget/RecyclerView$Recycler;I)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method private recycleChildren(Landroid/support/v7/widget/RecyclerView$Recycler;II)V
    .locals 0

    if-ne p2, p3, :cond_0

    return-void

    :cond_0
    if-le p3, p2, :cond_1

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-lt p3, p2, :cond_2

    .line 1385
    invoke-virtual {p0, p3, p1}, Landroid/support/v7/widget/LinearLayoutManager;->removeAndRecycleViewAt(ILandroid/support/v7/widget/RecyclerView$Recycler;)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-le p2, p3, :cond_2

    .line 1389
    invoke-virtual {p0, p2, p1}, Landroid/support/v7/widget/LinearLayoutManager;->removeAndRecycleViewAt(ILandroid/support/v7/widget/RecyclerView$Recycler;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private recycleViewsFromEnd(Landroid/support/v7/widget/RecyclerView$Recycler;I)V
    .locals 5

    .line 1450
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-gez p2, :cond_0

    return-void

    .line 1458
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getEnd()I

    move-result v1

    sub-int/2addr v1, p2

    .line 1459
    iget-boolean p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_6

    .line 1461
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1462
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    if-lt v4, v1, :cond_2

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1463
    invoke-virtual {v4, v3}, Landroid/support/v7/widget/OrientationHelper;->getTransformedStartWithDecoration(Landroid/view/View;)I

    move-result v3

    if-ge v3, v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1465
    :cond_2
    :goto_1
    invoke-direct {p0, p1, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->recycleChildren(Landroid/support/v7/widget/RecyclerView$Recycler;II)V

    return-void

    :cond_3
    add-int/lit8 v0, v0, -0x1

    move p2, v0

    :goto_2
    if-ltz p2, :cond_6

    .line 1471
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1472
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    if-lt v3, v1, :cond_5

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1473
    invoke-virtual {v3, v2}, Landroid/support/v7/widget/OrientationHelper;->getTransformedStartWithDecoration(Landroid/view/View;)I

    move-result v2

    if-ge v2, v1, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    .line 1475
    :cond_5
    :goto_3
    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->recycleChildren(Landroid/support/v7/widget/RecyclerView$Recycler;II)V

    return-void

    :cond_6
    return-void
.end method

.method private recycleViewsFromStart(Landroid/support/v7/widget/RecyclerView$Recycler;I)V
    .locals 5

    if-gez p2, :cond_0

    return-void

    .line 1414
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    .line 1415
    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_6

    .line 1417
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1418
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    if-gt v3, p2, :cond_2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1419
    invoke-virtual {v3, v2}, Landroid/support/v7/widget/OrientationHelper;->getTransformedEndWithDecoration(Landroid/view/View;)I

    move-result v2

    if-le v2, p2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1421
    :cond_2
    :goto_1
    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->recycleChildren(Landroid/support/v7/widget/RecyclerView$Recycler;II)V

    return-void

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_6

    .line 1427
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1428
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    if-gt v4, p2, :cond_5

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1429
    invoke-virtual {v4, v3}, Landroid/support/v7/widget/OrientationHelper;->getTransformedEndWithDecoration(Landroid/view/View;)I

    move-result v3

    if-le v3, p2, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1431
    :cond_5
    :goto_3
    invoke-direct {p0, p1, v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->recycleChildren(Landroid/support/v7/widget/RecyclerView$Recycler;II)V

    return-void

    :cond_6
    return-void
.end method

.method private resolveShouldLayoutReverse()V
    .locals 2

    .line 358
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 361
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    goto :goto_1

    .line 359
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    :goto_1
    return-void
.end method

.method private updateAnchorFromChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)Z
    .locals 4

    .line 786
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 789
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 790
    invoke-virtual {p3, v0, p2}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->isViewValidAsAnchor(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 791
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p3, v0, p1}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->assignFromViewAndKeepVisibleRect(Landroid/view/View;I)V

    return v2

    .line 794
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-eq v0, v3, :cond_2

    return v1

    .line 797
    :cond_2
    iget-boolean v0, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_3

    .line 798
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->findReferenceChildClosestToEnd(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 799
    :cond_3
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->findReferenceChildClosestToStart(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_8

    .line 801
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p3, p1, v0}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->assignFromView(Landroid/view/View;I)V

    .line 804
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result p2

    if-nez p2, :cond_7

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->supportsPredictiveItemAnimations()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 806
    iget-object p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 807
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p2

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 808
    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    if-ge p2, v0, :cond_4

    iget-object p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 809
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    iget-object p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 810
    invoke-virtual {p2}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p2

    if-ge p1, p2, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    if-eqz v1, :cond_7

    .line 812
    iget-boolean p1, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 813
    invoke-virtual {p1}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p1

    goto :goto_1

    :cond_6
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 814
    invoke-virtual {p1}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p1

    :goto_1
    iput p1, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    :cond_7
    return v2

    :cond_8
    return v1
.end method

.method private updateAnchorFromPendingData(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)Z
    .locals 4

    .line 827
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto/16 :goto_6

    .line 831
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    const/high16 v3, -0x80000000

    if-ltz v0, :cond_e

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    if-lt v0, p1, :cond_1

    goto/16 :goto_5

    .line 842
    :cond_1
    iget p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    iput p1, p2, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 843
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {p1}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->hasValidAnchor()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 846
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget-boolean p1, p1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iput-boolean p1, p2, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 847
    iget-boolean p1, p2, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz p1, :cond_2

    .line 848
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p1}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p1

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    sub-int/2addr p1, v1

    iput p1, p2, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_0

    .line 851
    :cond_2
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p1}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p1

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    add-int/2addr p1, v1

    iput p1, p2, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    :goto_0
    return v0

    .line 857
    :cond_3
    iget p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    if-ne p1, v3, :cond_c

    .line 858
    iget p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 860
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v2

    .line 861
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v3

    if-le v2, v3, :cond_4

    .line 863
    invoke-virtual {p2}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    return v0

    .line 866
    :cond_4
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 867
    invoke-virtual {v3}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    sub-int/2addr v2, v3

    if-gez v2, :cond_5

    .line 869
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p1}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p1

    iput p1, p2, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 870
    iput-boolean v1, p2, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    return v0

    .line 873
    :cond_5
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 874
    invoke-virtual {v2, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    if-gez v1, :cond_6

    .line 876
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p1}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p1

    iput p1, p2, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 877
    iput-boolean v0, p2, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    return v0

    .line 880
    :cond_6
    iget-boolean v1, p2, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 881
    invoke-virtual {v1, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 882
    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpaceChange()I

    move-result v1

    add-int/2addr p1, v1

    goto :goto_1

    :cond_7
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 883
    invoke-virtual {v1, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    :goto_1
    iput p1, p2, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_3

    .line 885
    :cond_8
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result p1

    if-lez p1, :cond_b

    .line 887
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    .line 888
    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-ge v2, p1, :cond_9

    const/4 p1, 0x1

    goto :goto_2

    :cond_9
    const/4 p1, 0x0

    :goto_2
    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-ne p1, v2, :cond_a

    const/4 v1, 0x1

    :cond_a
    iput-boolean v1, p2, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 891
    :cond_b
    invoke-virtual {p2}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    :goto_3
    return v0

    .line 896
    :cond_c
    iget-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iput-boolean p1, p2, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 898
    iget-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz p1, :cond_d

    .line 899
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p1}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p1

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr p1, v1

    iput p1, p2, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_4

    .line 902
    :cond_d
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p1}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p1

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    add-int/2addr p1, v1

    iput p1, p2, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    :goto_4
    return v0

    .line 832
    :cond_e
    :goto_5
    iput v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 833
    iput v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    return v1

    :cond_f
    :goto_6
    return v1
.end method

.method private updateAnchorInfoForLayout(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)V
    .locals 1

    .line 758
    invoke-direct {p0, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->updateAnchorFromPendingData(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 765
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->updateAnchorFromChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 774
    :cond_1
    invoke-virtual {p3}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 775
    iget-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iput p1, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    return-void
.end method

.method private updateLayoutState(IIZLandroid/support/v7/widget/RecyclerView$State;)V
    .locals 4

    .line 1191
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->resolveIsInfinite()Z

    move-result v1

    iput-boolean v1, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mInfinite:Z

    .line 1192
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p4}, Landroid/support/v7/widget/LinearLayoutManager;->getExtraLayoutSpace(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p4

    iput p4, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 1193
    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput p1, p4, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 p4, -0x1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1196
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v1, p1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2}, Landroid/support/v7/widget/OrientationHelper;->getEndPadding()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 1198
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object p1

    .line 1200
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x1

    :goto_0
    iput p4, v1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 1202
    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v0, v1

    iput v0, p4, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 1203
    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    iput v0, p4, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1205
    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p4, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1206
    invoke-virtual {p4}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p4

    sub-int/2addr p1, p4

    goto :goto_1

    .line 1209
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object p1

    .line 1210
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v2, v1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 1211
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v2, :cond_2

    const/4 p4, 0x1

    :cond_2
    iput p4, v1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 1213
    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v0, v1

    iput v0, p4, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 1214
    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    iput v0, p4, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1215
    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p4, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    neg-int p1, p1

    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1216
    invoke-virtual {p4}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p4

    add-int/2addr p1, p4

    .line 1218
    :goto_1
    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput p2, p4, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-eqz p3, :cond_3

    .line 1220
    iget-object p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget p3, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    sub-int/2addr p3, p1

    iput p3, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1222
    :cond_3
    iget-object p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput p1, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    return-void
.end method

.method private updateLayoutStateToFillEnd(II)V
    .locals 3

    .line 963
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    sub-int/2addr v1, p2

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 964
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 966
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput p1, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 967
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput v2, p1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 968
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput p2, p1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 969
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    const/high16 p2, -0x80000000

    iput p2, p1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    return-void
.end method

.method private updateLayoutStateToFillEnd(Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)V
    .locals 1

    .line 959
    iget v0, p1, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    iget p1, p1, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    return-void
.end method

.method private updateLayoutStateToFillStart(II)V
    .locals 2

    .line 977
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    sub-int v1, p2, v1

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 978
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput p1, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 979
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iput v0, p1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 981
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput v1, p1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 982
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput p2, p1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 983
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    const/high16 p2, -0x80000000

    iput p2, p1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    return-void
.end method

.method private updateLayoutStateToFillStart(Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)V
    .locals 1

    .line 973
    iget v0, p1, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    iget p1, p1, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    return-void
.end method


# virtual methods
.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1

    .line 1365
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 1366
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 1

    .line 291
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canScrollVertically()Z
    .locals 2

    .line 299
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public collectAdjacentPrefetchPositions(IILandroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 1

    .line 1323
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    .line 1324
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result p2

    if-eqz p2, :cond_3

    if-nez p1, :cond_1

    goto :goto_2

    .line 1329
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    const/4 p2, 0x1

    if-lez p1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    .line 1331
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 1332
    invoke-direct {p0, v0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutState(IIZLandroid/support/v7/widget/RecyclerView$State;)V

    .line 1333
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p3, p1, p4}, Landroid/support/v7/widget/LinearLayoutManager;->collectPrefetchPositionsForLayoutState(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V

    return-void

    :cond_3
    :goto_2
    return-void
.end method

.method public collectInitialPrefetchPositions(ILandroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 5

    .line 1243
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->hasValidAnchor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1245
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 1246
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    goto :goto_0

    .line 1248
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 1249
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 1250
    iget v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-ne v3, v1, :cond_2

    if-eqz v0, :cond_1

    add-int/lit8 v3, p1, -0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1253
    :cond_2
    iget v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    :goto_0
    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    :goto_1
    const/4 v0, 0x0

    .line 1261
    :goto_2
    iget v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mInitialPrefetchItemCount:I

    if-ge v0, v4, :cond_4

    if-ltz v3, :cond_4

    if-ge v3, p1, :cond_4

    .line 1263
    invoke-interface {p2, v3, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    add-int/2addr v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method collectPrefetchPositionsForLayoutState(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 1

    .line 1232
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    if-ltz v0, :cond_0

    .line 1233
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    if-ge v0, p1, :cond_0

    const/4 p1, 0x0

    .line 1234
    iget p2, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-interface {p3, v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    :cond_0
    return-void
.end method

.method public computeHorizontalScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 0

    .line 1105
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->computeScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public computeHorizontalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 0

    .line 1095
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->computeScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public computeHorizontalScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 0

    .line 1115
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->computeScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 3

    .line 460
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 463
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-ge p1, v1, :cond_1

    const/4 v0, 0x1

    .line 464
    :cond_1
    iget-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eq v0, p1, :cond_2

    const/4 v2, -0x1

    .line 465
    :cond_2
    iget p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    const/4 v0, 0x0

    if-nez p1, :cond_3

    .line 466
    new-instance p1, Landroid/graphics/PointF;

    int-to-float v1, v2

    invoke-direct {p1, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1

    .line 468
    :cond_3
    new-instance p1, Landroid/graphics/PointF;

    int-to-float v1, v2

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method

.method public computeVerticalScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 0

    .line 1110
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->computeScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public computeVerticalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 0

    .line 1100
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->computeScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public computeVerticalScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 0

    .line 1120
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->computeScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method convertFocusDirectionToLayoutDirection(I)I
    .locals 4

    const/16 v0, 0x11

    const/4 v1, -0x1

    const/high16 v2, -0x80000000

    if-eq p1, v0, :cond_a

    const/16 v0, 0x21

    const/4 v3, 0x1

    if-eq p1, v0, :cond_8

    const/16 v0, 0x42

    if-eq p1, v0, :cond_6

    const/16 v0, 0x82

    if-eq p1, v0, :cond_4

    packed-switch p1, :pswitch_data_0

    return v2

    .line 1672
    :pswitch_0
    iget p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-ne p1, v3, :cond_0

    return v3

    .line 1674
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    return v3

    .line 1664
    :pswitch_1
    iget p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-ne p1, v3, :cond_2

    return v1

    .line 1666
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result p1

    if-eqz p1, :cond_3

    return v3

    :cond_3
    return v1

    .line 1683
    :cond_4
    iget p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-ne p1, v3, :cond_5

    const/4 v2, 0x1

    :cond_5
    return v2

    .line 1689
    :cond_6
    iget p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-nez p1, :cond_7

    const/4 v2, 0x1

    :cond_7
    return v2

    .line 1680
    :cond_8
    iget p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-ne p1, v3, :cond_9

    goto :goto_0

    :cond_9
    const/high16 v1, -0x80000000

    :goto_0
    return v1

    .line 1686
    :cond_a
    iget p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-nez p1, :cond_b

    goto :goto_1

    :cond_b
    const/high16 v1, -0x80000000

    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method createLayoutState()Landroid/support/v7/widget/LinearLayoutManager$LayoutState;
    .locals 1

    .line 1003
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-direct {v0}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;-><init>()V

    return-object v0
.end method

.method ensureLayoutState()V
    .locals 1

    .line 992
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    if-nez v0, :cond_0

    .line 993
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->createLayoutState()Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    :cond_0
    return-void
.end method

.method fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I
    .locals 7

    .line 1518
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1519
    iget v1, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    .line 1521
    iget v1, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-gez v1, :cond_0

    .line 1522
    iget v1, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget v3, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v1, v3

    iput v1, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1524
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->recycleByLayoutState(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;)V

    .line 1526
    :cond_1
    iget v1, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    iget v3, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    add-int/2addr v1, v3

    .line 1527
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutChunkResult:Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;

    .line 1528
    :cond_2
    iget-boolean v4, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mInfinite:Z

    if-nez v4, :cond_3

    if-lez v1, :cond_9

    :cond_3
    invoke-virtual {p2, p3}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->hasMore(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1529
    invoke-virtual {v3}, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->resetInternal()V

    .line 1533
    invoke-virtual {p0, p1, p3, p2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->layoutChunk(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;)V

    .line 1537
    iget-boolean v4, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    if-eqz v4, :cond_4

    goto :goto_0

    .line 1540
    :cond_4
    iget v4, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    iget v5, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    iget v6, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    mul-int v5, v5, v6

    add-int/2addr v4, v5

    iput v4, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1547
    iget-boolean v4, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget-object v4, v4, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-nez v4, :cond_5

    .line 1548
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1549
    :cond_5
    iget v4, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    iget v5, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v4, v5

    iput v4, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1551
    iget v4, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v1, v4

    .line 1554
    :cond_6
    iget v4, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    if-eq v4, v2, :cond_8

    .line 1555
    iget v4, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget v5, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr v4, v5

    iput v4, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1556
    iget v4, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-gez v4, :cond_7

    .line 1557
    iget v4, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget v5, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v4, v5

    iput v4, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1559
    :cond_7
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->recycleByLayoutState(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;)V

    :cond_8
    if-eqz p4, :cond_2

    .line 1561
    iget-boolean v4, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    if-eqz v4, :cond_2

    .line 1568
    :cond_9
    :goto_0
    iget p1, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public findFirstCompletelyVisibleItemPosition()I
    .locals 3

    .line 1890
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 1891
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public findFirstVisibleItemPosition()I
    .locals 3

    .line 1873
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 1874
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public findLastCompletelyVisibleItemPosition()I
    .locals 4

    .line 1930
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v1, v3}, Landroid/support/v7/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1931
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    :goto_0
    return v2
.end method

.method public findLastVisibleItemPosition()I
    .locals 4

    .line 1913
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Landroid/support/v7/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1914
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    :goto_0
    return v2
.end method

.method findOnePartiallyOrCompletelyInvisibleChild(II)Landroid/view/View;
    .locals 3

    .line 1962
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    if-le p2, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    if-ge p2, p1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 1965
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 1969
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1970
    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    if-ge v0, v1, :cond_3

    const/16 v0, 0x4104

    const/16 v1, 0x4004

    goto :goto_1

    :cond_3
    const/16 v0, 0x1041

    const/16 v1, 0x1001

    .line 1981
    :goto_1
    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-nez v2, :cond_4

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mHorizontalBoundCheck:Landroid/support/v7/widget/ViewBoundsCheck;

    .line 1982
    invoke-virtual {v2, p1, p2, v0, v1}, Landroid/support/v7/widget/ViewBoundsCheck;->findOneViewWithinBoundFlags(IIII)Landroid/view/View;

    move-result-object p1

    goto :goto_2

    :cond_4
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mVerticalBoundCheck:Landroid/support/v7/widget/ViewBoundsCheck;

    .line 1984
    invoke-virtual {v2, p1, p2, v0, v1}, Landroid/support/v7/widget/ViewBoundsCheck;->findOneViewWithinBoundFlags(IIII)Landroid/view/View;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method findOneVisibleChild(IIZZ)Landroid/view/View;
    .locals 1

    .line 1940
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    const/16 v0, 0x140

    if-eqz p3, :cond_0

    const/16 p3, 0x6003

    goto :goto_0

    :cond_0
    const/16 p3, 0x140

    :goto_0
    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 1954
    :goto_1
    iget p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-nez p4, :cond_2

    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mHorizontalBoundCheck:Landroid/support/v7/widget/ViewBoundsCheck;

    .line 1955
    invoke-virtual {p4, p1, p2, p3, v0}, Landroid/support/v7/widget/ViewBoundsCheck;->findOneViewWithinBoundFlags(IIII)Landroid/view/View;

    move-result-object p1

    goto :goto_2

    :cond_2
    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mVerticalBoundCheck:Landroid/support/v7/widget/ViewBoundsCheck;

    .line 1957
    invoke-virtual {p4, p1, p2, p3, v0}, Landroid/support/v7/widget/ViewBoundsCheck;->findOneViewWithinBoundFlags(IIII)Landroid/view/View;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method findReferenceChild(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;III)Landroid/view/View;
    .locals 5

    .line 1801
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1804
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p1}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p1

    .line 1805
    iget-object p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p2}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p2

    if-le p4, p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    const/4 v1, 0x0

    move-object v2, v1

    :goto_1
    if-eq p3, p4, :cond_5

    .line 1808
    invoke-virtual {p0, p3}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1809
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    if-ltz v4, :cond_4

    if-ge v4, p5, :cond_4

    .line 1811
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v2, :cond_4

    move-object v2, v3

    goto :goto_3

    .line 1815
    :cond_1
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    if-ge v4, p2, :cond_3

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1816
    invoke-virtual {v4, v3}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    if-ge v4, p1, :cond_2

    goto :goto_2

    :cond_2
    return-object v3

    :cond_3
    :goto_2
    if-nez v1, :cond_4

    move-object v1, v3

    :cond_4
    :goto_3
    add-int/2addr p3, v0

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    move-object v1, v2

    :goto_4
    return-object v1
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 2

    .line 403
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v1, 0x0

    .line 407
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    sub-int v1, p1, v1

    if-ltz v1, :cond_1

    if-ge v1, v0, :cond_1

    .line 410
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 411
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    if-ne v1, p1, :cond_1

    return-object v0

    .line 416
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public generateDefaultLayoutParams()Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 2

    .line 196
    new-instance v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected getExtraLayoutSpace(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 0

    .line 440
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->hasTargetScrollPosition()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 441
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p1}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getInitialPrefetchItemCount()I
    .locals 1

    .line 1317
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mInitialPrefetchItemCount:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 326
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    return v0
.end method

.method public getRecycleChildrenOnDetach()Z
    .locals 1

    .line 208
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

    return v0
.end method

.method public getReverseLayout()Z
    .locals 1

    .line 372
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    return v0
.end method

.method public getStackFromEnd()Z
    .locals 1

    .line 315
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    return v0
.end method

.method public isAutoMeasureEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isLayoutRTL()Z
    .locals 2

    .line 988
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1

    .line 1185
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method layoutChunk(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;)V
    .locals 7

    .line 1573
    invoke-virtual {p3, p1}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->next(Landroid/support/v7/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 1580
    iput-boolean p2, p4, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    return-void

    .line 1583
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 1584
    iget-object v0, p3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 1585
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iget v3, p3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v3, v1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-ne v0, v3, :cond_2

    .line 1587
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 1589
    :cond_2
    invoke-virtual {p0, p1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_2

    .line 1592
    :cond_3
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iget v3, p3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v3, v1, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-ne v0, v3, :cond_5

    .line 1594
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->addDisappearingView(Landroid/view/View;)V

    goto :goto_2

    .line 1596
    :cond_5
    invoke-virtual {p0, p1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->addDisappearingView(Landroid/view/View;I)V

    .line 1599
    :goto_2
    invoke-virtual {p0, p1, v2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 1600
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v0

    iput v0, p4, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 1602
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-ne v0, p2, :cond_8

    .line 1603
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1604
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 1605
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v2

    sub-int v2, v0, v2

    goto :goto_3

    .line 1607
    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getPaddingLeft()I

    move-result v2

    .line 1608
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v2

    .line 1610
    :goto_3
    iget v3, p3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v3, v1, :cond_7

    .line 1611
    iget v1, p3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1612
    iget p3, p3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    iget v3, p4, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr p3, v3

    move v3, p3

    move v4, v0

    move v5, v1

    goto :goto_4

    .line 1614
    :cond_7
    iget v1, p3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1615
    iget p3, p3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    iget v3, p4, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr p3, v3

    move v5, p3

    move v4, v0

    move v3, v1

    goto :goto_4

    .line 1618
    :cond_8
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getPaddingTop()I

    move-result v0

    .line 1619
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v0

    .line 1621
    iget v3, p3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v3, v1, :cond_9

    .line 1622
    iget v1, p3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1623
    iget p3, p3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    iget v3, p4, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr p3, v3

    move v3, v0

    move v4, v1

    move v5, v2

    move v2, p3

    goto :goto_4

    .line 1625
    :cond_9
    iget v1, p3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1626
    iget p3, p3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    iget v3, p4, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr p3, v3

    move v4, p3

    move v3, v0

    move v5, v2

    move v2, v1

    :goto_4
    move-object v0, p0

    move-object v1, p1

    .line 1631
    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/LinearLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 1638
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->isItemChanged()Z

    move-result p3

    if-eqz p3, :cond_b

    .line 1639
    :cond_a
    iput-boolean p2, p4, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    .line 1641
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->hasFocusable()Z

    move-result p1

    iput-boolean p1, p4, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    return-void
.end method

.method onAnchorReady(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;I)V
    .locals 0

    return-void
.end method

.method public onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 0

    .line 230
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 231
    iget-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

    if-eqz p1, :cond_0

    .line 232
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->removeAndRecycleAllViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 233
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$Recycler;->clear()V

    :cond_0
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 3

    .line 1991
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 1992
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1996
    :cond_0
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result p1

    const/high16 p2, -0x80000000

    if-ne p1, p2, :cond_1

    return-object v0

    .line 2000
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 2001
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    const v1, 0x3eaaaaab

    .line 2002
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-int v1, v2

    const/4 v2, 0x0

    .line 2003
    invoke-direct {p0, p1, v1, v2, p4}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutState(IIZLandroid/support/v7/widget/RecyclerView$State;)V

    .line 2004
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput p2, v1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 2005
    iget-object p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput-boolean v2, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 2006
    iget-object p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    const/4 v1, 0x1

    invoke-virtual {p0, p3, p2, p4, v1}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    .line 2014
    invoke-direct {p0, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->findPartiallyOrCompletelyInvisibleChildClosestToStart(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p3

    goto :goto_0

    .line 2016
    :cond_2
    invoke-direct {p0, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->findPartiallyOrCompletelyInvisibleChildClosestToEnd(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p3

    :goto_0
    if-ne p1, p2, :cond_3

    .line 2022
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object p1

    goto :goto_1

    .line 2024
    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object p1

    .line 2026
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->hasFocusable()Z

    move-result p2

    if-eqz p2, :cond_5

    if-nez p3, :cond_4

    return-object v0

    :cond_4
    return-object p1

    :cond_5
    return-object p3
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 239
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 240
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 241
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 242
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    :cond_0
    return-void
.end method

.method public onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 8

    .line 487
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-eq v0, v1, :cond_1

    .line 488
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 489
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->removeAndRecycleAllViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    return-void

    .line 493
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->hasValidAnchor()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 494
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 497
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 498
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 500
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 502
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 503
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    iget-boolean v3, v3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mValid:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    iget v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-ne v3, v1, :cond_5

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_6

    .line 510
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 511
    invoke-virtual {v5}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    if-ge v3, v5, :cond_4

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 512
    invoke-virtual {v3, v0}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 513
    invoke-virtual {v5}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    if-gt v3, v5, :cond_6

    .line 525
    :cond_4
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v3, v0, v5}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->assignFromViewAndKeepVisibleRect(Landroid/view/View;I)V

    goto :goto_1

    .line 505
    :cond_5
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->reset()V

    .line 506
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    xor-int/2addr v3, v5

    iput-boolean v3, v0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 508
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/LinearLayoutManager;->updateAnchorInfoForLayout(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)V

    .line 509
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    iput-boolean v4, v0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mValid:Z

    .line 535
    :cond_6
    :goto_1
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->getExtraLayoutSpace(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    .line 538
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLastScrollDelta:I

    if-ltz v3, :cond_7

    move v3, v0

    const/4 v0, 0x0

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    .line 545
    :goto_2
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    add-int/2addr v0, v5

    .line 546
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5}, Landroid/support/v7/widget/OrientationHelper;->getEndPadding()I

    move-result v5

    add-int/2addr v3, v5

    .line 547
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v5

    if-eqz v5, :cond_a

    iget v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-eq v5, v1, :cond_a

    iget v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    const/high16 v6, -0x80000000

    if-eq v5, v6, :cond_a

    .line 552
    iget v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p0, v5}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 556
    iget-boolean v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v6, :cond_8

    .line 557
    iget-object v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v6}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v6

    iget-object v7, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 558
    invoke-virtual {v7, v5}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v6, v5

    .line 559
    iget v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr v6, v5

    goto :goto_3

    .line 561
    :cond_8
    iget-object v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v6, v5}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 562
    invoke-virtual {v6}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v6

    sub-int/2addr v5, v6

    .line 563
    iget v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr v6, v5

    :goto_3
    if-lez v6, :cond_9

    add-int/2addr v0, v6

    goto :goto_4

    :cond_9
    sub-int/2addr v3, v6

    .line 575
    :cond_a
    :goto_4
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    iget-boolean v5, v5, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v5, :cond_c

    .line 576
    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v5, :cond_d

    :cond_b
    const/4 v1, 0x1

    goto :goto_5

    .line 579
    :cond_c
    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v5, :cond_b

    .line 583
    :cond_d
    :goto_5
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    invoke-virtual {p0, p1, p2, v5, v1}, Landroid/support/v7/widget/LinearLayoutManager;->onAnchorReady(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;I)V

    .line 584
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->detachAndScrapAttachedViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 585
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->resolveIsInfinite()Z

    move-result v5

    iput-boolean v5, v1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mInfinite:Z

    .line 586
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v5

    iput-boolean v5, v1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mIsPreLayout:Z

    .line 587
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    iget-boolean v1, v1, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v1, :cond_f

    .line 589
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillStart(Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)V

    .line 590
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 591
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1, v0, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    .line 592
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 593
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 594
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v5, v5, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v5, :cond_e

    .line 595
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v5, v5, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v3, v5

    .line 598
    :cond_e
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {p0, v5}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)V

    .line 599
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput v3, v5, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 600
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v5, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget-object v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v6, v6, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v5, v6

    iput v5, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 601
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1, v3, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    .line 602
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 604
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v5, v5, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v5, :cond_11

    .line 606
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v5, v5, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 607
    invoke-direct {p0, v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 608
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput v5, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 609
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1, v0, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    .line 610
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    goto :goto_6

    .line 614
    :cond_f
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)V

    .line 615
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput v3, v1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 616
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1, v1, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    .line 617
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v3, v1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 618
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 619
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v5, v5, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v5, :cond_10

    .line 620
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v5, v5, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v0, v5

    .line 623
    :cond_10
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {p0, v5}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillStart(Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)V

    .line 624
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput v0, v5, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 625
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v5, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget-object v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v6, v6, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v5, v6

    iput v5, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 626
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1, v0, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    .line 627
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 629
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v5, v5, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v5, :cond_11

    .line 630
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v5, v5, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 632
    invoke-direct {p0, v1, v3}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 633
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput v5, v1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 634
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1, v1, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    .line 635
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v3, v1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 642
    :cond_11
    :goto_6
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_13

    .line 646
    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    xor-int/2addr v1, v5

    if-eqz v1, :cond_12

    .line 647
    invoke-direct {p0, v3, p1, p2, v4}, Landroid/support/v7/widget/LinearLayoutManager;->fixLayoutEndGap(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v3, v1

    .line 650
    invoke-direct {p0, v0, p1, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->fixLayoutStartGap(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v3, v1

    goto :goto_7

    .line 654
    :cond_12
    invoke-direct {p0, v0, p1, p2, v4}, Landroid/support/v7/widget/LinearLayoutManager;->fixLayoutStartGap(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v3, v1

    .line 657
    invoke-direct {p0, v3, p1, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->fixLayoutEndGap(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v3, v1

    .line 662
    :cond_13
    :goto_7
    invoke-direct {p0, p1, p2, v0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->layoutForPredictiveAnimations(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V

    .line 663
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result p1

    if-nez p1, :cond_14

    .line 664
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p1}, Landroid/support/v7/widget/OrientationHelper;->onLayoutComplete()V

    goto :goto_8

    .line 666
    :cond_14
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    invoke-virtual {p1}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->reset()V

    .line 668
    :goto_8
    iget-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    iput-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    return-void
.end method

.method public onLayoutCompleted(Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0

    .line 677
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onLayoutCompleted(Landroid/support/v7/widget/RecyclerView$State;)V

    const/4 p1, 0x0

    .line 678
    iput-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    const/4 p1, -0x1

    .line 679
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    const/high16 p1, -0x80000000

    .line 680
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 681
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    invoke-virtual {p1}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->reset()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 275
    instance-of v0, p1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 276
    check-cast p1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iput-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 277
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->requestLayout()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 248
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 249
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;-><init>(Landroid/support/v7/widget/LinearLayoutManager$SavedState;)V

    return-object v0

    .line 251
    :cond_0
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-direct {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;-><init>()V

    .line 252
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 253
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 254
    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    xor-int/2addr v1, v2

    .line 255
    iput-boolean v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    if-eqz v1, :cond_1

    .line 257
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v1

    .line 258
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 259
    invoke-virtual {v3, v1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 260
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    goto :goto_0

    .line 262
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v1

    .line 263
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 264
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 265
    invoke-virtual {v2}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    goto :goto_0

    .line 268
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->invalidateAnchor()V

    :goto_0
    return-object v0
.end method

.method public prepareForDrop(Landroid/view/View;Landroid/view/View;II)V
    .locals 3
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    const-string p3, "Cannot drop a view during a scroll or layout calculation"

    .line 2110
    invoke-virtual {p0, p3}, Landroid/support/v7/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 2111
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 2112
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 2113
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p3

    .line 2114
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p4

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ge p3, p4, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, -0x1

    .line 2117
    :goto_0
    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v2, :cond_2

    if-ne p3, v1, :cond_1

    .line 2119
    iget-object p3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 2120
    invoke-virtual {p3}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p3

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 2121
    invoke-virtual {v0, p2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p2

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 2122
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result p1

    add-int/2addr p2, p1

    sub-int/2addr p3, p2

    .line 2119
    invoke-virtual {p0, p4, p3}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1

    .line 2124
    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 2125
    invoke-virtual {p1}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p1

    iget-object p3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 2126
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p1, p2

    .line 2124
    invoke-virtual {p0, p4, p1}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1

    :cond_2
    if-ne p3, v0, :cond_3

    .line 2130
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p4, p1}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1

    .line 2132
    :cond_3
    iget-object p3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 2133
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p2

    iget-object p3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 2134
    invoke-virtual {p3, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p2, p1

    .line 2132
    invoke-virtual {p0, p4, p2}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :goto_1
    return-void
.end method

.method resolveIsInfinite()Z
    .locals 1

    .line 1226
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getMode()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1227
    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getEnd()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method scrollBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 5

    .line 1337
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 1340
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 1341
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    if-lez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 1343
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1344
    invoke-direct {p0, v0, v3, v2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutState(IIZLandroid/support/v7/widget/RecyclerView$State;)V

    .line 1345
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v2, v2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    .line 1346
    invoke-virtual {p0, p2, v4, p3, v1}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    move-result p2

    add-int/2addr v2, p2

    if-gez v2, :cond_2

    return v1

    :cond_2
    if-le v3, v2, :cond_3

    mul-int p1, v0, v2

    .line 1354
    :cond_3
    iget-object p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    neg-int p3, p1

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/OrientationHelper;->offsetChildren(I)V

    .line 1358
    iget-object p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput p1, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLastScrollDelta:I

    .line 1359
    iget-object p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->showGoToTop()V

    return p1

    :cond_4
    :goto_1
    return v1
.end method

.method public scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 2

    .line 1075
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1078
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->scrollBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public scrollToPosition(I)V
    .locals 0

    .line 1022
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    const/high16 p1, -0x80000000

    .line 1023
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 1024
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz p1, :cond_0

    .line 1025
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {p1}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->invalidateAnchor()V

    .line 1028
    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz p1, :cond_1

    .line 1029
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->showGoToTop()V

    .line 1032
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->requestLayout()V

    return-void
.end method

.method public scrollToPositionWithOffset(II)V
    .locals 0

    .line 1055
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 1056
    iput p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 1057
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz p1, :cond_0

    .line 1058
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {p1}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->invalidateAnchor()V

    .line 1061
    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz p1, :cond_1

    .line 1062
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->showGoToTop()V

    .line 1065
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->requestLayout()V

    return-void
.end method

.method public scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .line 1087
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1090
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->scrollBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public setInitialPrefetchItemCount(I)V
    .locals 0

    .line 1301
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mInitialPrefetchItemCount:I

    return-void
.end method

.method public setOrientation(I)V
    .locals 3

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 337
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 340
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 342
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    if-nez v0, :cond_3

    .line 344
    :cond_2
    invoke-static {p0, p1}, Landroid/support/v7/widget/OrientationHelper;->createOrientationHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;I)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 345
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    iput-object v1, v0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 346
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    .line 347
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->requestLayout()V

    :cond_3
    return-void
.end method

.method public setRecycleChildrenOnDetach(Z)V
    .locals 0

    .line 225
    iput-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

    return-void
.end method

.method public setReverseLayout(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 390
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 391
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 394
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 395
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->requestLayout()V

    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0

    .line 1174
    iput-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    return-void
.end method

.method public setStackFromEnd(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 306
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 307
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 310
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 311
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->requestLayout()V

    return-void
.end method

.method shouldMeasureTwice()Z
    .locals 2

    .line 1646
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getHeightMode()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    .line 1647
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getWidthMode()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 1648
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->hasFlexibleChildInBothOrientations()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
    .locals 1

    .line 450
    new-instance p2, Landroid/support/v7/widget/LinearSmoothScroller;

    .line 451
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 452
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->showGoToTop()V

    .line 453
    invoke-virtual {p2, p3}, Landroid/support/v7/widget/LinearSmoothScroller;->setTargetPosition(I)V

    .line 454
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    const-string p1, "SeslLinearLayoutManager"

    .line 455
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SS pos to : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 2

    .line 2101
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method validateChildOrder()V
    .locals 8

    const-string v0, "SeslLinearLayoutManager"

    .line 2060
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "validating child count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2064
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 2065
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    .line 2066
    iget-boolean v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    .line 2067
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 2068
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2069
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    .line 2070
    iget-object v7, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v7, v5}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    if-ge v6, v2, :cond_2

    .line 2072
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->logChildren()V

    .line 2073
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "detected invalid position. loc invalid? "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v5, v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    if-gt v5, v3, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2077
    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->logChildren()V

    .line 2078
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "detected invalid location"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/4 v4, 0x1

    .line 2082
    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 2083
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2084
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    .line 2085
    iget-object v7, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v7, v5}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    if-ge v6, v2, :cond_6

    .line 2087
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->logChildren()V

    .line 2088
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "detected invalid position. loc invalid? "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v5, v3, :cond_5

    const/4 v0, 0x1

    :cond_5
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    if-lt v5, v3, :cond_7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2092
    :cond_7
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->logChildren()V

    .line 2093
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "detected invalid location"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    return-void
.end method
