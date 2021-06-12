.class public Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;
.super Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/milk/share/ShareItemCreator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment<",
        "Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter;",
        ">;",
        "Lcom/samsung/android/app/music/milk/share/ShareItemCreator;"
    }
.end annotation


# instance fields
.field private f:Ljava/lang/String;

.field private i:Lcom/samsung/android/app/music/model/base/AlbumInfoModel;

.field private j:Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader$OnDataLoaderCallback;

.field private k:Lcom/samsung/android/app/music/browse/list/data/AlbumDetailDataLoader;

.field private l:Lcom/samsung/android/app/music/list/ListFavoriteableImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;)Lcom/samsung/android/app/music/model/base/AlbumInfoModel;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->i:Lcom/samsung/android/app/music/model/base/AlbumInfoModel;

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;
    .locals 3

    .line 65
    new-instance v0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;-><init>()V

    .line 66
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "extra_id"

    .line 67
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected synthetic A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->y()Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected a(ILandroid/os/Bundle;)Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader<",
            "Lcom/samsung/android/app/music/model/base/TrackModel;",
            ">;"
        }
    .end annotation

    .line 218
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->k:Lcom/samsung/android/app/music/browse/list/data/AlbumDetailDataLoader;

    return-object p1
.end method

.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 223
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    .line 226
    instance-of p2, p1, Lcom/samsung/android/app/music/browse/list/data/AlbumDetailDataLoader;

    if-eqz p2, :cond_1

    .line 227
    check-cast p1, Lcom/samsung/android/app/music/browse/list/data/AlbumDetailDataLoader;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/list/data/AlbumDetailDataLoader;->f()Lcom/samsung/android/app/music/browse/list/data/PageDataSource;

    move-result-object p1

    .line 228
    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->d()Lcom/samsung/android/app/music/model/base/ServerResponse;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/model/contents/AlbumDetailModel;

    .line 229
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/contents/AlbumDetailModel;->getAlbumInfo()Lcom/samsung/android/app/music/model/base/AlbumInfoModel;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->i:Lcom/samsung/android/app/music/model/base/AlbumInfoModel;

    .line 230
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->l:Lcom/samsung/android/app/music/list/ListFavoriteableImpl;

    if-nez p2, :cond_0

    .line 231
    new-instance p2, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;

    new-instance v6, Lcom/samsung/android/app/music/list/favorite/MilkCategory;

    const/16 v1, 0x55

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->i:Lcom/samsung/android/app/music/model/base/AlbumInfoModel;

    .line 232
    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/base/AlbumInfoModel;->getAlbumId()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->i:Lcom/samsung/android/app/music/model/base/AlbumInfoModel;

    .line 233
    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/base/AlbumInfoModel;->getAlbumTitle()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->i:Lcom/samsung/android/app/music/model/base/AlbumInfoModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/base/AlbumInfoModel;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->i:Lcom/samsung/android/app/music/model/base/AlbumInfoModel;

    .line 234
    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/base/AlbumInfoModel;->getTrackList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/list/favorite/MilkCategory;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p2, p0, v6}, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;-><init>(Landroid/support/v4/app/Fragment;Lcom/samsung/android/app/music/list/favorite/Category;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->l:Lcom/samsung/android/app/music/list/ListFavoriteableImpl;

    goto :goto_0

    .line 236
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->l:Lcom/samsung/android/app/music/list/ListFavoriteableImpl;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;->c()V

    .line 238
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->l:Lcom/samsung/android/app/music/list/ListFavoriteableImpl;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 241
    :goto_1
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->j:Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader$OnDataLoaderCallback;

    if-eqz p2, :cond_2

    .line 242
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->j:Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader$OnDataLoaderCallback;

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->k:Lcom/samsung/android/app/music/browse/list/data/AlbumDetailDataLoader;

    invoke-interface {p2, v0, p1}, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader$OnDataLoaderCallback;->a(Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public f()Lcom/samsung/android/app/music/milk/share/ShareItem;
    .locals 5

    .line 192
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->q_()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AlbumDetailTrackFragment"

    const-string v1, "item is null"

    .line 193
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 196
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/milk/share/ShareItem;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->i:Lcom/samsung/android/app/music/model/base/AlbumInfoModel;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/base/AlbumInfoModel;->getAlbumId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->i:Lcom/samsung/android/app/music/model/base/AlbumInfoModel;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/AlbumInfoModel;->getAlbumTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->i:Lcom/samsung/android/app/music/model/base/AlbumInfoModel;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/base/AlbumInfoModel;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->i:Lcom/samsung/android/app/music/model/base/AlbumInfoModel;

    .line 197
    invoke-virtual {v4}, Lcom/samsung/android/app/music/model/base/AlbumInfoModel;->getArtistList()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/app/music/browse/util/BrowseUtils;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/milk/share/ShareItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected o()Lcom/samsung/android/app/music/browse/list/PlaylistInfoGetter;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 145
    new-instance v0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment$1;-><init>(Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 80
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "extra_id"

    .line 85
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->f:Ljava/lang/String;

    :cond_0
    const-string p1, "AlbumDetailTrackFragment"

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate : id - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->d()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object p1

    .line 91
    instance-of v0, p1, Lcom/samsung/android/app/music/browse/list/data/AlbumDetailDataLoader;

    if-eqz v0, :cond_1

    .line 92
    check-cast p1, Lcom/samsung/android/app/music/browse/list/data/AlbumDetailDataLoader;

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->k:Lcom/samsung/android/app/music/browse/list/data/AlbumDetailDataLoader;

    .line 94
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->k:Lcom/samsung/android/app/music/browse/list/data/AlbumDetailDataLoader;

    if-nez p1, :cond_2

    .line 95
    new-instance p1, Lcom/samsung/android/app/music/browse/list/data/AlbumDetailDataLoader;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->f:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/app/music/browse/list/data/AlbumDetailDataLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->k:Lcom/samsung/android/app/music/browse/list/data/AlbumDetailDataLoader;

    .line 98
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader$OnDataLoaderCallback;

    if-eqz p1, :cond_3

    .line 99
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader$OnDataLoaderCallback;

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->j:Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader$OnDataLoaderCallback;

    :cond_3
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->musicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu$Builder;

    const v1, 0x7f140011

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu$Builder;-><init>(ILandroid/support/v4/app/Fragment;)V

    .line 177
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu$Builder;->a(Lcom/samsung/android/app/music/browse/list/BrowseShareable;)Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu$Builder;->a()Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->musicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 179
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const p3, 0x7f04002d

    const/4 v0, 0x0

    .line 107
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 136
    invoke-super {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->onDestroy()V

    .line 137
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->k:Lcom/samsung/android/app/music/browse/list/data/AlbumDetailDataLoader;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->k:Lcom/samsung/android/app/music/browse/list/data/AlbumDetailDataLoader;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/data/AlbumDetailDataLoader;->b()V

    :cond_0
    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 47
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    .line 184
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 185
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    if-eqz p1, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    invoke-interface {p1}, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;->t_()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .line 112
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string p1, "discover_album"

    .line 114
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->b(Ljava/lang/String;)V

    .line 116
    new-instance p1, Lcom/samsung/android/app/music/browse/list/BrowseShareableImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->getScreenId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-direct {p1, p2, v0, p0, v1}, Lcom/samsung/android/app/music/browse/list/BrowseShareableImpl;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/samsung/android/app/music/milk/share/ShareItemCreator;I)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->a(Lcom/samsung/android/app/music/browse/list/BrowseShareable;)V

    .line 119
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 121
    new-instance p2, Lcom/samsung/android/app/music/bixby/v1/executor/browse/LaunchOnlinePlaylistDetailResponseExecutor;

    .line 122
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/browse/LaunchOnlinePlaylistDetailResponseExecutor;-><init>(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;)V

    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->k:Lcom/samsung/android/app/music/browse/list/data/AlbumDetailDataLoader;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/browse/list/data/AlbumDetailDataLoader;->a(Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader$OnDataLoaderCallback;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 128
    new-array v1, v1, [Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    new-instance v2, Lcom/samsung/android/app/music/bixby/v1/executor/browse/PlayRadioExecutor;

    .line 129
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->f:Ljava/lang/String;

    .line 130
    invoke-static {v4}, Lcom/samsung/android/app/music/browse/util/FixedPlaylistIds;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/browse/PlayRadioExecutor;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;)V

    aput-object v2, v1, p2

    .line 128
    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;)V

    :cond_0
    return-void
.end method

.method public q_()Z
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->i:Lcom/samsung/android/app/music/model/base/AlbumInfoModel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected s()Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;
    .locals 2

    .line 207
    new-instance v0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    const/4 v1, 0x0

    .line 208
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;->a(I)Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;

    const/4 v1, 0x3

    .line 209
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;->a(I)Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;

    const/4 v1, 0x2

    .line 210
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;->a(I)Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;

    .line 211
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->p()Lcom/samsung/android/app/music/browse/list/BrowsePlayableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;->a(Lcom/samsung/android/app/music/browse/list/BrowsePlayableList;)Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;

    .line 212
    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;->a()Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    move-result-object v0

    return-object v0
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 264
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected y()Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 249
    new-instance v0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const v1, 0x7f040139

    .line 250
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$Builder;->a(I)Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$Builder;

    move-result-object v0

    const-string v1, "_id"

    .line 251
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$Builder;->d(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$Builder;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$Builder;

    const-string v1, "artist"

    .line 252
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$Builder;

    const-string v1, "track_is_explicit"

    .line 253
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$Builder;->b(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$Builder;

    const-string v1, "is_playable"

    .line 254
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$Builder;

    const-string v1, "track"

    .line 255
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$Builder;->e(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$Builder;->a(Z)Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$Builder;

    move-result-object v0

    .line 256
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->a(Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;)V

    const-string v1, "track_coverart_url"

    .line 257
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$Builder;->setThumbnailFullUriCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 258
    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$Builder;->b()Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter;

    move-result-object v0

    return-object v0
.end method

.method public z()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
