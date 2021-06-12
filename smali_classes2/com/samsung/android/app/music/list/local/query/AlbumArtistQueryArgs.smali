.class public Lcom/samsung/android/app/music/list/local/query/AlbumArtistQueryArgs;
.super Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 14
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    .line 15
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArtists;->a:Landroid/net/Uri;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/query/AlbumArtistQueryArgs;->uri:Landroid/net/Uri;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "_id"

    .line 17
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "artist"

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "number_of_albums"

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "number_of_tracks"

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "album_id"

    .line 21
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "dummy"

    .line 22
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->l_:Z

    if-eqz v1, :cond_0

    .line 24
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArtists;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/query/AlbumArtistQueryArgs;->projection:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/query/AlbumArtistQueryArgs;->selection:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/query/AlbumArtistQueryArgs;->selectionArgs:[Ljava/lang/String;

    if-nez p1, :cond_1

    const-string p1, "recently_added DESC"

    .line 31
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/query/AlbumArtistQueryArgs;->orderBy:Ljava/lang/String;

    goto :goto_0

    .line 33
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArtists;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " COLLATE LOCALIZED "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/query/AlbumArtistQueryArgs;->orderBy:Ljava/lang/String;

    :goto_0
    return-void
.end method
