.class public Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;
.super Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment$TrackFilterableImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment<",
        "Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private f:Ljava/lang/String;

.field private i:Lcom/samsung/android/app/music/model/contents/ArtistDetailTracksModel;

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;-><init>()V

    const/16 v0, 0xe

    .line 53
    iput v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;->j:I

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;I)I
    .locals 0

    .line 41
    iput p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;->j:I

    return p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;)Lcom/samsung/android/app/music/model/contents/ArtistDetailTracksModel;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;->i:Lcom/samsung/android/app/music/model/contents/ArtistDetailTracksModel;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;->j:I

    return p0
.end method

.method public static c(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;
    .locals 3

    .line 56
    new-instance v0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;-><init>()V

    .line 57
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "extra_id"

    .line 58
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private e(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/16 v0, 0xe

    if-eq p1, v0, :cond_0

    const-string p1, "02"

    return-object p1

    :cond_0
    const-string p1, "02"

    return-object p1

    :cond_1
    const-string p1, "01"

    return-object p1

    :cond_2
    const-string p1, "03"

    return-object p1
.end method


# virtual methods
.method protected synthetic A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;->B()Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected B()Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 186
    new-instance v0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const-string v1, "_id"

    .line 187
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$Builder;->d(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$Builder;

    const-string v1, "title"

    .line 188
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$Builder;

    const-string v1, "artist"

    .line 189
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$Builder;

    const-string v1, "track_is_explicit"

    .line 190
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$Builder;->b(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$Builder;

    const-string v1, "is_playable"

    .line 191
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$Builder;

    .line 192
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;->a(Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;)V

    const-string v1, "track_coverart_url"

    .line 193
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$Builder;->setThumbnailFullUriCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 194
    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$Builder;->b()Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected a(ILandroid/os/Bundle;)Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;
    .locals 2
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

    .line 137
    iget p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;->j:I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;->e(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ArtistDetailTrackFragment"

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sorting - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    new-instance p2, Lcom/samsung/android/app/music/browse/list/data/ArtistDetailTrackDataLoader;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;->f:Ljava/lang/String;

    invoke-direct {p2, v0, v1, p1}, Lcom/samsung/android/app/music/browse/list/data/ArtistDetailTrackDataLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 0
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

    .line 166
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    .line 167
    instance-of p2, p1, Lcom/samsung/android/app/music/browse/list/data/ArtistDetailTrackDataLoader;

    if-eqz p2, :cond_0

    .line 168
    check-cast p1, Lcom/samsung/android/app/music/browse/list/data/ArtistDetailTrackDataLoader;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/list/data/ArtistDetailTrackDataLoader;->f()Lcom/samsung/android/app/music/browse/list/data/PageDataSource;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->d()Lcom/samsung/android/app/music/model/base/ServerResponse;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/model/contents/ArtistDetailTracksModel;

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;->i:Lcom/samsung/android/app/music/model/contents/ArtistDetailTracksModel;

    :cond_0
    return-void
.end method

.method public d()I
    .locals 1

    .line 131
    iget v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;->j:I

    return v0
.end method

.method protected o()Lcom/samsung/android/app/music/browse/list/PlaylistInfoGetter;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 95
    new-instance v0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment$1;-><init>(Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 65
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "extra_id"

    .line 68
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;->f:Ljava/lang/String;

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "key_filter_option"

    .line 71
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;->j:I

    :cond_1
    const-string p1, "ArtistDetailTrackFragment"

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate : id - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 86
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "key_filter_option"

    .line 88
    iget v1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;->j:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 78
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x3

    const p2, 0x106000d

    const v0, 0x7f0f003d

    const/4 v1, 0x0

    .line 79
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;->a(IIIZ)V

    const-string p1, "discover_artist_by_track"

    .line 81
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected s()Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;
    .locals 3

    .line 174
    new-instance v0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    const/4 v1, 0x0

    .line 175
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;->a(I)Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;

    const/4 v1, 0x3

    .line 176
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;->a(I)Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;

    const/4 v1, 0x2

    .line 177
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;->a(I)Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;

    .line 178
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;->p()Lcom/samsung/android/app/music/browse/list/BrowsePlayableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;->a(Lcom/samsung/android/app/music/browse/list/BrowsePlayableList;)Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;

    .line 179
    new-instance v1, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment$TrackFilterableImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment$TrackFilterableImpl;-><init>(Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;->a(Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;)Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;

    .line 180
    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;->a()Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    move-result-object v0

    return-object v0
.end method

.method public s_()V
    .locals 2

    .line 157
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;

    if-eqz v0, :cond_0

    const-string v0, "ArtistDetailTrackFragment"

    const-string v1, "existed loader"

    .line 159
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;->d(I)V

    return-void
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 200
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
