.class public Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment;
.super Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$FavoriteTrackSearchAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment;)I
    .locals 2

    .line 34
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment;->c:I

    return v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment;I)Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment;->e(I)Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment;
    .locals 3

    .line 37
    new-instance v0, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment;-><init>()V

    .line 38
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_search_keyword"

    .line 39
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected synthetic A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 34
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment;->l()Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$FavoriteTrackSearchAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "1"

    return-object v0
.end method

.method protected j()Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 126
    new-instance v0, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$3;-><init>(Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment;)V

    return-object v0
.end method

.method protected k()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "SetFavoriteSearchTrackFragment"

    return-object v0
.end method

.method protected l()Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$FavoriteTrackSearchAdapter;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 79
    new-instance v0, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$FavoriteTrackSearchAdapter$FavoriteTrackSearchBuilder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$FavoriteTrackSearchAdapter$FavoriteTrackSearchBuilder;-><init>(Landroid/support/v4/app/Fragment;)V

    const-string v1, "_id"

    .line 82
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$FavoriteTrackSearchAdapter$FavoriteTrackSearchBuilder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/search/SearchableAdapter$AbsBuilder;

    const-string v1, "image_url"

    .line 83
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$FavoriteTrackSearchAdapter$FavoriteTrackSearchBuilder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const/4 v1, 0x0

    .line 84
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$FavoriteTrackSearchAdapter$FavoriteTrackSearchBuilder;->c(Z)Lcom/samsung/android/app/music/search/SearchableAdapter$AbsBuilder;

    .line 85
    sget-object v1, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->MILK_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$FavoriteTrackSearchAdapter$FavoriteTrackSearchBuilder;->a(Lcom/samsung/android/app/music/search/SearchConstants$SearchType;)Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;

    .line 86
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$FavoriteTrackSearchAdapter$FavoriteTrackSearchBuilder;->c()Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$FavoriteTrackSearchAdapter;

    move-result-object v0

    .line 87
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$FavoriteTrackSearchAdapter;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    .line 88
    new-instance v1, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$2;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$2;-><init>(Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment;Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$FavoriteTrackSearchAdapter;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$FavoriteTrackSearchAdapter;->a(Lcom/samsung/android/app/music/milk/store/widget/OnLoadMoreListener;)V

    return-object v0
.end method

.method protected synthetic m()Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 34
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment;->l()Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$FavoriteTrackSearchAdapter;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 46
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;

    const p2, 0x7f04023f

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->c(I)V

    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100842

    .line 51
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    const v0, 0x7f100844

    .line 53
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const v1, 0x7f100843

    .line 55
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 57
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$1;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$1;-><init>(Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment;III)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 108
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
