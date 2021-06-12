.class final Lcom/samsung/android/app/music/list/local/SpotifyManager$SpotifyResizableHeightItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/list/ResizableHeightItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/SpotifyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SpotifyResizableHeightItem"
.end annotation


# instance fields
.field private final a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x3f1

    int-to-long v0, v0

    .line 1529
    iput-wide v0, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$SpotifyResizableHeightItem;->a:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1529
    iget-wide v0, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$SpotifyResizableHeightItem;->a:J

    return-wide v0
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewHolder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1531
    iget-object p2, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1532
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1533
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->computeVerticalScrollOffset()I

    move-result p1

    add-int/2addr v1, p1

    sub-int/2addr v0, v1

    const p1, 0x7f130192

    .line 1534
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v1, "findViewById<View>(R.id.divider)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int/2addr v0, p1

    const p1, 0x7f1302d6

    .line 1535
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v1, "findViewById<View>(R.id.spotify_container)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int/2addr v0, p1

    const p1, 0x7f1302d2

    .line 1538
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v1, "findViewById<View>(R.id.main_text)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    const v1, 0x7f1302d3

    .line 1539
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "findViewById<View>(R.id.sub_text)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr p1, v1

    .line 1540
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100613

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr p1, v1

    const v1, 0x7f1302d5

    .line 1542
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "findViewById<Group>(R.id.no_item_group)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/support/constraint/Group;

    invoke-virtual {v1}, Landroid/support/constraint/Group;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    const v1, 0x7f1302d4

    .line 1545
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v1, "findViewById<View>(R.id.no_item_layout)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt;->b(Landroid/view/View;I)V

    return-void
.end method
