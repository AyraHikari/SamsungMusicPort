.class Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LayoutState"
.end annotation


# instance fields
.field a:Z

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:Z

.field j:I

.field k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field l:Z

.field m:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1966
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 1918
    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->a:Z

    const/4 v1, 0x0

    .line 1954
    iput v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->h:I

    .line 1956
    iput-boolean v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->i:Z

    const/4 v1, 0x0

    .line 1960
    iput-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->k:Ljava/util/List;

    .line 1964
    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->m:Z

    return-void
.end method

.method private a(II)V
    .locals 0

    .line 2073
    iget-boolean p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->m:Z

    return-void
.end method

.method private b(ILandroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .line 2003
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->m:Z

    if-eqz v0, :cond_3

    .line 2004
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    if-ltz p1, :cond_0

    if-lt p1, p2, :cond_3

    :cond_0
    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    if-lt p1, p2, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    if-gez p1, :cond_3

    add-int/lit8 p1, p2, -0x1

    :cond_3
    :goto_0
    return p1
.end method

.method private b(Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 5

    .line 2023
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2025
    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->k:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 2026
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 2027
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->d:I

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v3

    if-ne v4, v3, :cond_0

    .line 2028
    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$State;)V

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 2

    .line 1981
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->k:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1982
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->b(Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 1984
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->d:I

    if-gt v0, v1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->d:I

    .line 1985
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object p1

    .line 1986
    :goto_0
    iget v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->d:I

    iget v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->e:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->a(ILandroid/support/v7/widget/RecyclerView$State;)V

    return-object p1
.end method

.method a(Landroid/view/View;)Landroid/view/View;
    .locals 7

    .line 2051
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 2056
    iget-object v4, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->k:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 2057
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    if-eq v4, p1, :cond_1

    .line 2058
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v6

    if-nez v6, :cond_1

    .line 2059
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v5

    iget v6, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->d:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->e:I

    mul-int v5, v5, v6

    if-ltz v5, :cond_1

    if-ge v5, v2, :cond_1

    if-nez v5, :cond_0

    move-object v1, v4

    goto :goto_1

    :cond_0
    move-object v1, v4

    move v2, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method a(ILandroid/support/v7/widget/RecyclerView$State;)V
    .locals 0

    .line 1995
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->b(ILandroid/support/v7/widget/RecyclerView$State;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->d:I

    .line 1996
    iget p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->d:I

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->a(II)V

    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 1

    const/4 v0, 0x0

    .line 2037
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$State;)V

    return-void
.end method

.method a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 1

    .line 2041
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2043
    iget p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->d:I

    iget v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->f:I

    add-int/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->a(ILandroid/support/v7/widget/RecyclerView$State;)V

    goto :goto_0

    .line 2046
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result p1

    .line 2045
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->a(ILandroid/support/v7/widget/RecyclerView$State;)V

    :goto_0
    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$State;Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutChunkResult;I)Z
    .locals 3

    .line 1970
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    .line 1971
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->m:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-le p1, v2, :cond_2

    if-lt p3, p1, :cond_1

    .line 1973
    iget p1, p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutChunkResult;->a:I

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v2

    .line 1977
    :cond_2
    iget p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->d:I

    if-ltz p2, :cond_3

    iget p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$LayoutState;->d:I

    if-ge p2, p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method
