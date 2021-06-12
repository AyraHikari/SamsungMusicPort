.class public Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration$ItemGuidelineHolder;,
        Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration$DefaultDecorationValidater;,
        Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration$IDecorationValidater;,
        Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration$Builder;
    }
.end annotation


# instance fields
.field a:Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration$IDecorationValidater;

.field private b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

.field private c:I

.field private d:I

.field private final e:I

.field private final f:I

.field private g:I

.field private h:I


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration$Builder;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x1

    .line 27
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration;->g:I

    .line 32
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration$DefaultDecorationValidater;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration$DefaultDecorationValidater;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration;->a:Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration$IDecorationValidater;

    .line 35
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration$Builder;->a(Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration$Builder;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .line 36
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration$Builder;->b(Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration;->e:I

    .line 37
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration$Builder;->c(Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration$Builder;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration;->f:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration$Builder;Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration$1;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration;-><init>(Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration$Builder;)V

    return-void
.end method

.method private a(I)V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .line 43
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    .line 44
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v1

    .line 45
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanSizeLookup()Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result p1

    div-int/2addr v1, p1

    iput v1, p0, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration;->g:I

    .line 48
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getMeasuredWidth()I

    move-result p1

    iget v0, p0, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration;->g:I

    rem-int/2addr p1, v0

    .line 49
    div-int/lit8 v0, p1, 0x2

    sub-int/2addr p1, v0

    .line 51
    iget v1, p0, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration;->e:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration;->c:I

    .line 52
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration;->d:I

    .line 53
    iget p1, p0, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration;->c:I

    iget v0, p0, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration;->d:I

    add-int/2addr p1, v0

    iget v0, p0, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration;->f:I

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration;->g:I

    add-int/lit8 v1, v1, -0x1

    mul-int v0, v0, v1

    add-int/2addr p1, v0

    iget v0, p0, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration;->g:I

    div-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration;->h:I

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration$IDecorationValidater;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration;->a:Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration$IDecorationValidater;

    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 4

    .line 64
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p4

    check-cast p4, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration;->a:Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration$IDecorationValidater;

    invoke-interface {v0, p4}, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration$IDecorationValidater;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 68
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 69
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    .line 70
    instance-of v2, v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    .line 71
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getHeaderViewCount()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 72
    :goto_0
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    if-ge p2, v1, :cond_2

    return-void

    .line 76
    :cond_2
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration;->a(I)V

    .line 77
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result p2

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result p3

    div-int/2addr p2, p3

    .line 78
    instance-of p3, p4, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration$ItemGuidelineHolder;

    if-eqz p3, :cond_6

    .line 80
    check-cast p4, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration$ItemGuidelineHolder;

    .line 81
    invoke-interface {p4}, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration$ItemGuidelineHolder;->a()Landroid/support/constraint/Guideline;

    move-result-object p1

    .line 82
    invoke-interface {p4}, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration$ItemGuidelineHolder;->b()Landroid/support/constraint/Guideline;

    move-result-object p3

    if-eqz p1, :cond_5

    if-nez p2, :cond_3

    .line 86
    iget p2, p0, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration;->c:I

    :goto_1
    move v3, p2

    goto :goto_2

    .line 87
    :cond_3
    iget p4, p0, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration;->g:I

    add-int/lit8 p4, p4, -0x1

    if-ne p2, p4, :cond_4

    .line 88
    iget p2, p0, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration;->h:I

    iget p4, p0, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration;->d:I

    sub-int/2addr p2, p4

    goto :goto_1

    .line 90
    :cond_4
    iget p4, p0, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration;->f:I

    iget v0, p0, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration;->h:I

    sub-int/2addr p4, v0

    mul-int p2, p2, p4

    iget p4, p0, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration;->c:I

    add-int/2addr p2, p4

    goto :goto_1

    .line 92
    :goto_2
    invoke-virtual {p1, v3}, Landroid/support/constraint/Guideline;->setGuidelineBegin(I)V

    :cond_5
    if-eqz p3, :cond_9

    .line 95
    iget p1, p0, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration;->h:I

    sub-int/2addr p1, v3

    invoke-virtual {p3, p1}, Landroid/support/constraint/Guideline;->setGuidelineEnd(I)V

    goto :goto_4

    :cond_6
    if-nez p2, :cond_7

    .line 99
    iget p2, p0, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration;->c:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_3

    .line 100
    :cond_7
    iget p3, p0, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration;->g:I

    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_8

    .line 101
    iget p2, p0, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration;->h:I

    iget p3, p0, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration;->d:I

    sub-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_3

    .line 103
    :cond_8
    iget p3, p0, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration;->f:I

    iget p4, p0, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration;->h:I

    sub-int/2addr p3, p4

    mul-int p2, p2, p3

    iget p3, p0, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration;->c:I

    add-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 105
    :goto_3
    iget p2, p0, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration;->h:I

    iget p3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->right:I

    :cond_9
    :goto_4
    return-void
.end method
