.class Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$6;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;

.field final synthetic b:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;)V
    .locals 0

    .line 556
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$6;->b:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$6;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    .line 559
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$6;->b:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->getItemViewType(I)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$6;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;

    .line 560
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;->getSpanCount()I

    move-result p1

    :goto_0
    return p1
.end method
