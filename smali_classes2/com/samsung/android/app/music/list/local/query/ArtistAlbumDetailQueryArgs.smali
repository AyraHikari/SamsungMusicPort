.class public Lcom/samsung/android/app/music/list/local/query/ArtistAlbumDetailQueryArgs;
.super Lcom/samsung/android/app/musiclibrary/ui/list/query/TrackQueryArgs;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .line 16
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/TrackQueryArgs;-><init>(Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/query/ArtistAlbumDetailQueryArgs;->uri:Landroid/net/Uri;

    const-string v0, "album_id"

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->b(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/query/ArtistAlbumDetailQueryArgs;->uri:Landroid/net/Uri;

    .line 19
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "album_id AS _id"

    .line 20
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "album"

    .line 21
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->l_:Z

    if-eqz v0, :cond_0

    .line 23
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Albums;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v0, "MAX(year_name) AS maxyear"

    .line 25
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    const-string p3, "music_album_artist"

    goto :goto_0

    :cond_1
    const-string p3, "artist_id"

    .line 35
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/query/ArtistAlbumDetailQueryArgs;->projection:[Ljava/lang/String;

    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/samsung/android/app/music/list/local/query/ArtistAlbumDetailQueryArgs;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AND "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "=?"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/query/ArtistAlbumDetailQueryArgs;->selection:Ljava/lang/String;

    const/4 p1, 0x1

    if-ne p2, p1, :cond_2

    const-string p1, "maxyear DESC"

    .line 39
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/query/ArtistAlbumDetailQueryArgs;->orderBy:Ljava/lang/String;

    goto :goto_1

    .line 41
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Albums;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " COLLATE LOCALIZED "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/query/ArtistAlbumDetailQueryArgs;->orderBy:Ljava/lang/String;

    :goto_1
    return-void
.end method
