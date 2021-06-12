.class public final Lcom/samsung/android/app/music/service/browser/LoadDataFactory;
.super Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected obtainBrowsableLoadData(Landroid/content/Context;Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;
    .locals 8

    .line 47
    invoke-static {p2}, Lcom/samsung/android/app/music/service/browser/LoadDataFactory;->fromString(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory$BrowseId;

    move-result-object p2

    .line 48
    iget-object p2, p2, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory$BrowseId;->category:Ljava/lang/String;

    const-string v0, "Artists"

    .line 50
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 51
    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    const/4 v4, 0x3

    new-instance v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/ArtistQueryArgs;

    invoke-direct {v6}, Lcom/samsung/android/app/musiclibrary/ui/list/query/ArtistQueryArgs;-><init>()V

    new-instance v7, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableMediaItem;

    const-string v0, "artist"

    const-string v2, "artist"

    invoke-direct {v7, v0, v1, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableMediaItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p2

    move-object v3, p1

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;-><init>(Landroid/content/Context;ILandroid/service/media/MediaBrowserService$Result;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsMediaItem;)V

    return-object p2

    :cond_0
    const-string v0, "Albums"

    .line 54
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    const/4 v4, 0x2

    new-instance v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/AlbumQueryArgs;

    invoke-direct {v6}, Lcom/samsung/android/app/musiclibrary/ui/list/query/AlbumQueryArgs;-><init>()V

    new-instance v7, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableMediaItem;

    const-string v0, "album"

    const-string v2, "album"

    invoke-direct {v7, v0, v1, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableMediaItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p2

    move-object v3, p1

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;-><init>(Landroid/content/Context;ILandroid/service/media/MediaBrowserService$Result;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsMediaItem;)V

    return-object p2

    :cond_1
    const-string v0, "Playlists"

    .line 58
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    const/4 v4, 0x5

    new-instance v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;

    const/4 v0, 0x2

    invoke-direct {v6, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;-><init>(I)V

    new-instance v7, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableMediaItem;

    const-string v0, "name"

    const-string v2, "name"

    invoke-direct {v7, v0, v1, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableMediaItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p2

    move-object v3, p1

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;-><init>(Landroid/content/Context;ILandroid/service/media/MediaBrowserService$Result;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsMediaItem;)V

    return-object p2

    :cond_2
    const-string v0, "Genres"

    .line 63
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 64
    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    const/4 v4, 0x4

    new-instance v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/GenreQueryArgs;

    invoke-direct {v6}, Lcom/samsung/android/app/musiclibrary/ui/list/query/GenreQueryArgs;-><init>()V

    new-instance v7, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableMediaItem;

    const-string v0, "genre"

    const-string v2, "genre"

    const-string v3, "genre"

    invoke-direct {v7, v0, v2, v3, v1}, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableMediaItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p2

    move-object v3, p1

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;-><init>(Landroid/content/Context;ILandroid/service/media/MediaBrowserService$Result;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsMediaItem;)V

    return-object p2

    :cond_3
    const-string v0, "Composers"

    .line 68
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 69
    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    const/4 v4, 0x0

    new-instance v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/ComposerQueryArgs;

    invoke-direct {v6}, Lcom/samsung/android/app/musiclibrary/ui/list/query/ComposerQueryArgs;-><init>()V

    new-instance v7, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableMediaItem;

    const-string v0, "composer"

    const-string v2, "composer"

    const-string v3, "composer"

    invoke-direct {v7, v0, v2, v3, v1}, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableMediaItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p2

    move-object v3, p1

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;-><init>(Landroid/content/Context;ILandroid/service/media/MediaBrowserService$Result;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsMediaItem;)V

    return-object p2

    :cond_4
    const-string v0, "Folders"

    .line 73
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 74
    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    const/4 v4, 0x0

    new-instance v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/FolderQueryArgs;

    invoke-direct {v6, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/FolderQueryArgs;-><init>(Landroid/content/Context;)V

    new-instance v7, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableMediaItem;

    const-string v0, "bucket_display_name"

    const-string v2, "bucket_id"

    const-string v3, "bucket_display_name"

    invoke-direct {v7, v0, v2, v3, v1}, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableMediaItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p2

    move-object v3, p1

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;-><init>(Landroid/content/Context;ILandroid/service/media/MediaBrowserService$Result;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsMediaItem;)V

    return-object p2

    :cond_5
    return-object v1
.end method

.method protected obtainBrowserRootLoadData(Landroid/content/Context;Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;
    .locals 7

    .line 40
    new-instance v6, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    new-instance v5, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableMediaItem;

    const/4 v0, 0x0

    invoke-direct {v5, p2, v0, v0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableMediaItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;-><init>(Landroid/content/Context;ILandroid/service/media/MediaBrowserService$Result;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsMediaItem;)V

    return-object v6
.end method

.method protected obtainPlayableLoadData(Landroid/content/Context;Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;
    .locals 5

    .line 85
    invoke-static {p2}, Lcom/samsung/android/app/music/service/browser/LoadDataFactory;->fromString(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory$BrowseId;

    move-result-object v0

    .line 86
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory$BrowseId;->category:Ljava/lang/String;

    const-string v2, "Tracks"

    .line 88
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/query/AllTrackQueryArgs;

    invoke-direct {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/AllTrackQueryArgs;-><init>()V

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableMediaItem;

    const-string v3, "title"

    const-string v4, "artist"

    invoke-direct {v2, p2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableMediaItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, p1, p3, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;-><init>(Landroid/content/Context;Landroid/service/media/MediaBrowserService$Result;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsMediaItem;)V

    return-object v0

    :cond_0
    const-string v2, "artist"

    .line 92
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/query/ArtistTrackQueryArgs;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory$BrowseId;->id:Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/ArtistTrackQueryArgs;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableMediaItem;

    const-string v3, "title"

    const-string v4, "artist"

    invoke-direct {v0, p2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableMediaItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, p1, p3, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;-><init>(Landroid/content/Context;Landroid/service/media/MediaBrowserService$Result;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsMediaItem;)V

    return-object v1

    :cond_1
    const-string v2, "album"

    .line 96
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 97
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/query/AlbumTrackQueryArgs;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory$BrowseId;->id:Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/AlbumTrackQueryArgs;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableMediaItem;

    const-string v3, "title"

    const-string v4, "artist"

    invoke-direct {v0, p2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableMediaItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, p1, p3, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;-><init>(Landroid/content/Context;Landroid/service/media/MediaBrowserService$Result;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsMediaItem;)V

    return-object v1

    :cond_2
    const-string v2, "name"

    .line 100
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 101
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    new-instance v2, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory$BrowseId;->id:Ljava/lang/String;

    .line 102
    invoke-static {}, Lcom/samsung/android/app/music/util/ListUtils;->a()I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v2, p1, v0, v3, v4}, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableMediaItem;

    const-string v3, "title"

    const-string v4, "artist"

    invoke-direct {v0, p2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableMediaItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, p1, p3, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;-><init>(Landroid/content/Context;Landroid/service/media/MediaBrowserService$Result;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsMediaItem;)V

    return-object v1

    :cond_3
    const-string v2, "genre"

    .line 105
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 106
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/query/GenreTrackQueryArgs;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory$BrowseId;->id:Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/GenreTrackQueryArgs;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableMediaItem;

    const-string v3, "title"

    const-string v4, "artist"

    invoke-direct {v0, p2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableMediaItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, p1, p3, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;-><init>(Landroid/content/Context;Landroid/service/media/MediaBrowserService$Result;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsMediaItem;)V

    return-object v1

    :cond_4
    const-string v2, "composer"

    .line 109
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 110
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/query/ComposerTrackQueryArgs;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory$BrowseId;->id:Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/ComposerTrackQueryArgs;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableMediaItem;

    const-string v3, "title"

    const-string v4, "artist"

    invoke-direct {v0, p2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableMediaItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, p1, p3, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;-><init>(Landroid/content/Context;Landroid/service/media/MediaBrowserService$Result;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsMediaItem;)V

    return-object v1

    :cond_5
    const-string v2, "bucket_display_name"

    .line 113
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 114
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/query/FolderTrackQueryArgs;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory$BrowseId;->id:Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/FolderTrackQueryArgs;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableMediaItem;

    const-string v3, "_display_name"

    const-string v4, "artist"

    invoke-direct {v0, p2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableMediaItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, p1, p3, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;-><init>(Landroid/content/Context;Landroid/service/media/MediaBrowserService$Result;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsMediaItem;)V

    return-object v1

    :cond_6
    const-string v0, "Top charts"

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 118
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    new-instance v1, Lcom/samsung/android/app/music/browse/list/query/TopChartTrackQueryArgs;

    .line 119
    invoke-static {}, Lcom/samsung/android/app/music/browse/util/FixedPlaylistIds;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/browse/list/query/TopChartTrackQueryArgs;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableMediaItem;

    const-string v3, "title"

    const-string v4, "artist"

    invoke-direct {v2, p2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableMediaItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, p1, p3, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;-><init>(Landroid/content/Context;Landroid/service/media/MediaBrowserService$Result;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsMediaItem;)V

    return-object v0

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method
