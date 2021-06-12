.class final Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/HeartFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HeartItemDecoration"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/HeartFragment;

.field private final b:Lcom/samsung/android/app/music/list/common/GridItemDecoration;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/HeartFragment;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 787
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemDecoration;->a:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 789
    new-instance v6, Lcom/samsung/android/app/music/list/common/GridItemDecoration;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/list/common/GridItemDecoration;-><init>(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Lcom/samsung/android/app/music/list/common/GridItemDecorator;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v6, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemDecoration;->b:Lcom/samsung/android/app/music/list/common/GridItemDecoration;

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 3

    if-eqz p3, :cond_0

    .line 805
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, -0x1

    .line 806
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemDecoration;->a:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/HeartFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/HeartAdapter;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/list/local/HeartAdapter;->d(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 807
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    goto :goto_1

    .line 809
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemDecoration;->b:Lcom/samsung/android/app/music/list/common/GridItemDecoration;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    :goto_1
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 1

    .line 792
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemDecoration;->b:Lcom/samsung/android/app/music/list/common/GridItemDecoration;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 1

    .line 796
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemDecoration;->b:Lcom/samsung/android/app/music/list/common/GridItemDecoration;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    return-void
.end method
