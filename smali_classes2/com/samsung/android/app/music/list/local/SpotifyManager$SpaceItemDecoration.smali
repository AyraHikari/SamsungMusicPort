.class final Lcom/samsung/android/app/music/list/local/SpotifyManager$SpaceItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/SpotifyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SpaceItemDecoration"
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1503
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$SpaceItemDecoration;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .line 1506
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$SpaceItemDecoration;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100207

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$SpaceItemDecoration;->a:I

    .line 1508
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$SpaceItemDecoration;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100039

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$SpaceItemDecoration;->b:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 3

    .line 1516
    iget-object p3, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$SpaceItemDecoration;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {p3, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-nez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1518
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$SpaceItemDecoration;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    const-string v2, "recyclerView.adapter"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    sub-int/2addr v1, p3

    if-ne p2, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :goto_1
    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    .line 1521
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    iget p2, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$SpaceItemDecoration;->a:I

    invoke-virtual {p1, p2, p4, p4, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2

    :cond_3
    if-eqz p3, :cond_5

    if-nez p1, :cond_4

    .line 1522
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_4
    iget p2, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$SpaceItemDecoration;->b:I

    iget p3, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$SpaceItemDecoration;->a:I

    invoke-virtual {p1, p2, p4, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2

    :cond_5
    if-nez p1, :cond_6

    .line 1523
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_6
    iget p2, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$SpaceItemDecoration;->b:I

    invoke-virtual {p1, p2, p4, p4, p4}, Landroid/graphics/Rect;->set(IIII)V

    :goto_2
    return-void
.end method
