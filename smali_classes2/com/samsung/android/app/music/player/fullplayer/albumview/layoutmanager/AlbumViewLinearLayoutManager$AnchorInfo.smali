.class Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnchorInfo"
.end annotation


# instance fields
.field a:Landroid/support/v7/widget/OrientationHelper;

.field b:I

.field c:I

.field d:Z

.field e:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1761
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1762
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->a()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, -0x1

    .line 1766
    iput v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->b:I

    const/high16 v0, -0x80000000

    .line 1767
    iput v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->c:I

    const/4 v0, 0x0

    .line 1768
    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->d:Z

    .line 1769
    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->e:Z

    return-void
.end method

.method a(Landroid/view/View;I)V
    .locals 4

    .line 1789
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->a:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpaceChange()I

    move-result v0

    if-ltz v0, :cond_0

    .line 1791
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->b(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 1793
    :cond_0
    iput p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->b:I

    .line 1801
    iget-boolean p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->d:Z

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 1802
    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->a:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p2}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p2

    sub-int/2addr p2, v0

    .line 1803
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->a:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    sub-int/2addr p2, v0

    .line 1805
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->a:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->c:I

    if-lez p2, :cond_2

    .line 1807
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->a:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v0

    .line 1808
    iget v2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->c:I

    sub-int/2addr v2, v0

    .line 1809
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->a:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    .line 1810
    iget-object v3, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->a:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p1, v0

    .line 1811
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    add-int/2addr v0, p1

    sub-int/2addr v2, v0

    if-gez v2, :cond_2

    .line 1814
    iget p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->c:I

    neg-int v0, v2

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->c:I

    goto :goto_0

    .line 1818
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->a:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p2

    .line 1819
    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->a:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    sub-int v2, p2, v2

    .line 1820
    iput p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->c:I

    if-lez v2, :cond_2

    .line 1822
    iget-object v3, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->a:Landroid/support/v7/widget/OrientationHelper;

    .line 1823
    invoke-virtual {v3, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    add-int/2addr p2, v3

    .line 1824
    iget-object v3, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->a:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    sub-int/2addr v3, v0

    .line 1825
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->a:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    sub-int/2addr v3, p1

    .line 1826
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->a:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p1}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p1

    .line 1827
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr p1, v0

    sub-int/2addr p1, p2

    if-gez p1, :cond_2

    .line 1830
    iget p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->c:I

    neg-int p1, p1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->c:I

    :cond_2
    :goto_0
    return-void
.end method

.method a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$State;)Z
    .locals 1

    .line 1783
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 1784
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v0

    if-ltz v0, :cond_0

    .line 1785
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result p1

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result p2

    if-ge p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method b()V
    .locals 1

    .line 1773
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->a:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->a:Landroid/support/v7/widget/OrientationHelper;

    .line 1774
    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->c:I

    return-void
.end method

.method b(Landroid/view/View;I)V
    .locals 1

    .line 1838
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->d:Z

    if-eqz v0, :cond_0

    .line 1839
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->a:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->a:Landroid/support/v7/widget/OrientationHelper;

    .line 1840
    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpaceChange()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->c:I

    goto :goto_0

    .line 1842
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->a:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->c:I

    .line 1845
    :goto_0
    iput p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->b:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnchorInfo{mPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCoordinate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLayoutFromEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$AnchorInfo;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
