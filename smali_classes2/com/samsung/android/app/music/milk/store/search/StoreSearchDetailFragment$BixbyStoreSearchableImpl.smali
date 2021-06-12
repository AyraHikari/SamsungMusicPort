.class Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchableImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreDetailSearchable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BixbyStoreSearchableImpl"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

.field private b:Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreDetailSearchable$OnSearchListener;

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;)V
    .locals 0

    .line 993
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchableImpl;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$1;)V
    .locals 0

    .line 993
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchableImpl;-><init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1042
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchableImpl;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$MoveToDetailInfo;)V
    .locals 3

    const-string v0, "2"

    .line 1001
    iget-object v1, p1, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$MoveToDetailInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1002
    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$MoveToDetailInfo;->c:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;

    .line 1003
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchableImpl;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    const/16 v1, 0x64

    .line 1004
    invoke-static {v1}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a(I)Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchableImpl;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    .line 1005
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->a(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    move-result-object v1

    .line 1006
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;->getAlbumId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    .line 1003
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Landroid/support/v4/app/Fragment;Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;)V

    goto :goto_0

    :cond_0
    const-string v0, "5"

    .line 1007
    iget-object v1, p1, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$MoveToDetailInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1008
    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$MoveToDetailInfo;->c:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/app/music/model/milksearch/SearchPlaylist;

    .line 1009
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchableImpl;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    const/16 v1, 0x5a

    .line 1010
    invoke-static {v1}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a(I)Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchableImpl;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    .line 1011
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->a(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/android/app/music/model/milksearch/SearchPlaylist;->playlistId:Ljava/lang/String;

    .line 1012
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    iget-object p1, p1, Lcom/samsung/android/app/music/model/milksearch/SearchPlaylist;->playlistName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    .line 1009
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Landroid/support/v4/app/Fragment;Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreDetailSearchable$OnSearchListener;)V
    .locals 2
    .param p2    # Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreDetailSearchable$OnSearchListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1019
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchableImpl;->c:Ljava/lang/String;

    .line 1020
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchableImpl;->b:Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreDetailSearchable$OnSearchListener;

    .line 1021
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchableImpl;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->getItemCount()I

    move-result p1

    .line 1022
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchableImpl;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchableImpl;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->getHeaderViewCount()I

    move-result v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->a(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;I)Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1024
    check-cast p2, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->b()Ljava/lang/Object;

    move-result-object p2

    .line 1025
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$MoveToDetailInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$MoveToDetailInfo;-><init>()V

    .line 1026
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchableImpl;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$MoveToDetailInfo;->a:Ljava/lang/String;

    .line 1027
    iput p1, v0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$MoveToDetailInfo;->b:I

    .line 1028
    iput-object p2, v0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$MoveToDetailInfo;->c:Ljava/lang/Object;

    .line 1029
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchableImpl;->b(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$MoveToDetailInfo;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$MoveToDetailInfo;)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$MoveToDetailInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1034
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchableImpl;->b:Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreDetailSearchable$OnSearchListener;

    if-nez v0, :cond_0

    return-void

    .line 1037
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchableImpl;->b:Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreDetailSearchable$OnSearchListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreDetailSearchable$OnSearchListener;->a(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$MoveToDetailInfo;)V

    return-void
.end method
