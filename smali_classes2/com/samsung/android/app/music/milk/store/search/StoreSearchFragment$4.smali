.class Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$4;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;

.field final synthetic b:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$4;->b:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$4;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$4;->b:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/search/SearchableAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/search/SearchableAdapter;->getItemViewType(I)I

    move-result p1

    if-lez p1, :cond_0

    .line 308
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$4;->b:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->b(Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;)Lcom/samsung/android/app/music/search/SearchColumnManager;

    move-result-object v0

    .line 309
    invoke-static {p1}, Lcom/samsung/android/app/music/search/SearchUtils;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/search/SearchColumnManager;->a(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 311
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$4;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;->getSpanCount()I

    move-result p1

    return p1
.end method
