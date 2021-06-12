.class final Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter<",
        "Lcom/samsung/android/app/music/model/base/TrackModel;",
        "Landroid/content/ContentValues;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/base/TrackModel;)Landroid/content/ContentValues;
    .locals 4

    .line 202
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "title"

    .line 203
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackModel;->getTrackTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "source_id"

    .line 204
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackModel;->getTrackId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "source_artist_id"

    .line 207
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackModel;->getArtistList()Ljava/util/List;

    move-result-object v2

    const-string v3, "::"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/browse/util/BrowseUtils;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 206
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "artist"

    .line 209
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackModel;->getArtistList()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/browse/util/BrowseUtils;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 208
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "source_album_id"

    .line 210
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackModel;->getAlbumId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "album"

    .line 211
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackModel;->getAlbumTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "explicit"

    .line 212
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackModel;->getExplicit()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "cp_attrs"

    const v2, 0x80002

    .line 213
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "image_url"

    .line 215
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackModel;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    .line 214
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackModel;->getLargeSizeImageUrl()Ljava/lang/String;

    move-result-object v1

    .line 217
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "image_url_big"

    .line 218
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "is_celeb"

    .line 220
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackModel;->isCeleb()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 199
    check-cast p1, Lcom/samsung/android/app/music/model/base/TrackModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$2;->a(Lcom/samsung/android/app/music/model/base/TrackModel;)Landroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method
