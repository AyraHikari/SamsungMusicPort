.class final Lcom/samsung/android/app/music/list/local/HeartFragment$NoItemResizableHeightItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/list/ResizableHeightItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/HeartFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NoItemResizableHeightItem"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/HeartFragment;

.field private final b:J


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/HeartFragment;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 814
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$NoItemResizableHeightItem;->a:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, -0x3f0

    int-to-long v0, p1

    .line 815
    iput-wide v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$NoItemResizableHeightItem;->b:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 815
    iget-wide v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$NoItemResizableHeightItem;->b:J

    return-wide v0
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewHolder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 817
    iget-object p2, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 818
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    const-string v1, "itemView"

    .line 819
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->computeVerticalScrollOffset()I

    move-result p1

    add-int/2addr v1, p1

    sub-int/2addr v0, v1

    .line 820
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 821
    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt;->b(Landroid/view/View;I)V

    return-void
.end method
