.class public Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchArtistFragment;
.super Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchArtistFragment;I)Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchArtistFragment;->e(I)Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchArtistFragment;
    .locals 3

    .line 31
    new-instance v0, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchArtistFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchArtistFragment;-><init>()V

    .line 32
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_search_keyword"

    .line 33
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchArtistFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected c()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "3"

    return-object v0
.end method

.method protected j()Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 72
    new-instance v0, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchArtistFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchArtistFragment$1;-><init>(Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchArtistFragment;)V

    return-object v0
.end method

.method protected k()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "SetFavoriteSearchArtistFragment"

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 40
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchArtistFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    const/4 p2, 0x2

    .line 44
    invoke-static {p2, p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecorationFactory;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    move-result-object p2

    .line 43
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 45
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getPaddingStart()I

    move-result p2

    .line 46
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchArtistFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10083e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 47
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getPaddingEnd()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getPaddingBottom()I

    move-result v2

    .line 45
    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setPaddingRelative(IIII)V

    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchArtistFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;

    const p2, 0x7f04023e

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->c(I)V

    return-void
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 3

    .line 54
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchArtistFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method
