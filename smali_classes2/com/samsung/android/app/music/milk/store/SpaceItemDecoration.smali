.class public Lcom/samsung/android/app/music/milk/store/SpaceItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private c:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;II)V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/SpaceItemDecoration;->c:Landroid/graphics/Rect;

    .line 16
    iput p2, p0, Lcom/samsung/android/app/music/milk/store/SpaceItemDecoration;->a:I

    .line 17
    iput p3, p0, Lcom/samsung/android/app/music/milk/store/SpaceItemDecoration;->b:I

    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    .line 66
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/LinearLayoutManager;

    .line 68
    invoke-virtual {p1}, Landroid/support/v7/widget/LinearLayoutManager;->getReverseLayout()Z

    move-result p1

    return p1

    .line 70
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "PaddingItemDecoration can only be used with a MusicLinearLayoutManager."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b(Landroid/support/v7/widget/RecyclerView;)I
    .locals 1

    .line 76
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/LinearLayoutManager;

    .line 78
    invoke-virtual {p1}, Landroid/support/v7/widget/LinearLayoutManager;->getOrientation()I

    move-result p1

    return p1

    .line 80
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "PaddingItemDecoration can only be used with a MusicLinearLayoutManager."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 3

    .line 22
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 24
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return-void

    .line 29
    :cond_0
    invoke-direct {p0, p3}, Lcom/samsung/android/app/music/milk/store/SpaceItemDecoration;->b(Landroid/support/v7/widget/RecyclerView;)I

    move-result v0

    .line 30
    invoke-virtual {p4}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result p4

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/SpaceItemDecoration;->c:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 39
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/SpaceItemDecoration;->c:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-nez p2, :cond_1

    .line 41
    iget p2, p0, Lcom/samsung/android/app/music/milk/store/SpaceItemDecoration;->a:I

    add-int/2addr p2, v0

    move v1, p2

    :goto_0
    const/4 p2, 0x0

    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    if-lez p4, :cond_2

    add-int/lit8 p4, p4, -0x1

    if-ne p2, p4, :cond_2

    .line 44
    iget p2, p0, Lcom/samsung/android/app/music/milk/store/SpaceItemDecoration;->b:I

    add-int/2addr p2, v2

    move v2, p2

    :cond_2
    move v1, v0

    goto :goto_0

    .line 48
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/SpaceItemDecoration;->c:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 49
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/SpaceItemDecoration;->c:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-nez p2, :cond_5

    .line 51
    iget p2, p0, Lcom/samsung/android/app/music/milk/store/SpaceItemDecoration;->a:I

    add-int/2addr p2, v0

    move v0, p2

    :cond_4
    move p2, v2

    :goto_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    if-lez p4, :cond_4

    add-int/lit8 p4, p4, -0x1

    if-ne p2, p4, :cond_4

    .line 54
    iget p2, p0, Lcom/samsung/android/app/music/milk/store/SpaceItemDecoration;->b:I

    add-int/2addr p2, v2

    goto :goto_1

    .line 58
    :goto_2
    invoke-direct {p0, p3}, Lcom/samsung/android/app/music/milk/store/SpaceItemDecoration;->a(Landroid/support/v7/widget/RecyclerView;)Z

    move-result p3

    if-nez p3, :cond_6

    .line 59
    invoke-virtual {p1, v1, v0, v2, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3

    .line 61
    :cond_6
    invoke-virtual {p1, v2, p2, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_3
    return-void
.end method
