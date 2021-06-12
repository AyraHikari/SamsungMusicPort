.class final Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration$SpanSizeLookup;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SpanSizeLookup"
.end annotation


# instance fields
.field private final a:Landroid/support/v7/widget/RecyclerView;

.field private final b:Landroid/support/v7/widget/GridLayoutManager;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/GridLayoutManager;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView;",
            "Landroid/support/v7/widget/GridLayoutManager;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "matchWidthViewTypes"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration$SpanSizeLookup;->a:Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration$SpanSizeLookup;->b:Landroid/support/v7/widget/GridLayoutManager;

    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration$SpanSizeLookup;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration$SpanSizeLookup;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration$SpanSizeLookup;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration$SpanSizeLookup;->b:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method
