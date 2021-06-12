.class public Lcom/samsung/android/app/music/model/milkhistory/HiddenTrackModel;
.super Lcom/samsung/android/app/music/model/base/TrackModel;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/samsung/android/app/music/model/base/TrackModel;-><init>()V

    return-void
.end method


# virtual methods
.method public toContentValues()Landroid/content/ContentValues;
    .locals 4

    .line 18
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "title"

    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milkhistory/HiddenTrackModel;->getTrackTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "source_id"

    .line 20
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milkhistory/HiddenTrackModel;->getTrackId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "source_artist_id"

    .line 22
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milkhistory/HiddenTrackModel;->getArtistList()Ljava/util/List;

    move-result-object v2

    const-string v3, "::"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/browse/util/BrowseUtils;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "artist"

    .line 23
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milkhistory/HiddenTrackModel;->getArtistList()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/browse/util/BrowseUtils;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "source_album_id"

    .line 24
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milkhistory/HiddenTrackModel;->getAlbumId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "album"

    .line 25
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milkhistory/HiddenTrackModel;->getAlbumTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "explicit"

    .line 26
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milkhistory/HiddenTrackModel;->getExplicit()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "image_url"

    .line 28
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milkhistory/HiddenTrackModel;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milkhistory/HiddenTrackModel;->getLargeSizeImageUrl()Ljava/lang/String;

    move-result-object v1

    .line 30
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "image_url_big"

    .line 31
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "image_url_big"

    .line 34
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method
