.class final Lcom/samsung/android/app/music/list/local/PlaylistResizableHeightItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/list/ResizableHeightItem;


# instance fields
.field private final a:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 929
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistResizableHeightItem;->a:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 929
    iget-wide v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistResizableHeightItem;->a:J

    return-wide v0
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewHolder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 931
    iget-object p2, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 932
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    const-string v1, "itemView"

    .line 933
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->computeVerticalScrollOffset()I

    move-result p1

    add-int/2addr v1, p1

    sub-int/2addr v0, v1

    const p1, 0x7f13025f

    .line 934
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/Group;

    .line 935
    invoke-virtual {p1}, Landroid/support/constraint/Group;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 937
    :cond_0
    invoke-virtual {p1}, Landroid/support/constraint/Group;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const-string v2, "this"

    .line 938
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/constraint/Group;->getHeight()I

    move-result p1

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p1, v2

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, v1

    sub-int/2addr v0, p1

    :goto_0
    const p1, 0x7f1301f7

    .line 941
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 942
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 943
    invoke-virtual {p1}, Landroid/view/View;->getMinimumHeight()I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_1

    .line 945
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f100187

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 947
    :goto_1
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt;->b(Landroid/view/View;I)V

    return-void

    .line 937
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
