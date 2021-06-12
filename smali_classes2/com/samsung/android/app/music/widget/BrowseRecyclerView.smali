.class public Lcom/samsung/android/app/music/widget/BrowseRecyclerView;
.super Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/Roundable;


# instance fields
.field private a:Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Integer;)V
    .locals 1

    .line 72
    iget-object p2, p0, Lcom/samsung/android/app/music/widget/BrowseRecyclerView;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;

    if-nez p2, :cond_0

    .line 73
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;

    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-direct {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;-><init>([I)V

    iput-object p2, p0, Lcom/samsung/android/app/music/widget/BrowseRecyclerView;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;

    .line 74
    iget-object p2, p0, Lcom/samsung/android/app/music/widget/BrowseRecyclerView;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;->a(I)V

    .line 75
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/BrowseRecyclerView;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/widget/BrowseRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    :cond_0
    return-void
.end method

.method protected attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .locals 2

    .line 36
    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/BrowseRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/BrowseRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v1, v0, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v1, :cond_1

    .line 39
    iget-object p1, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    check-cast p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    if-nez p1, :cond_0

    .line 45
    new-instance p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    invoke-direct {p1}, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;-><init>()V

    .line 46
    iput-object p1, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 52
    :cond_0
    iput p4, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->count:I

    .line 53
    iput p3, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->index:I

    .line 56
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;->getSpanCount()I

    move-result p2

    .line 57
    iput p2, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    .line 58
    div-int v0, p4, p2

    iput v0, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    add-int/lit8 p4, p4, -0x1

    sub-int/2addr p4, p3

    add-int/lit8 p3, p2, -0x1

    .line 62
    rem-int v0, p4, p2

    sub-int/2addr p3, v0

    iput p3, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 63
    iget p3, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    add-int/lit8 p3, p3, -0x1

    div-int/2addr p4, p2

    sub-int/2addr p3, p4

    iput p3, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    goto :goto_0

    .line 66
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V

    :goto_0
    return-void
.end method
