.class final Lcom/samsung/android/app/music/model/PlayTrackInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/model/PlayTrackInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter<",
        "Lcom/samsung/android/app/music/model/PlayTrackInfo;",
        "Landroid/content/ContentValues;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Lcom/samsung/android/app/music/model/PlayTrackInfo;)Landroid/content/ContentValues;
    .locals 3

    .line 159
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "title"

    .line 160
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/PlayTrackInfo;->getTrackTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "source_id"

    .line 161
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/PlayTrackInfo;->getTrackId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "source_artist_id"

    .line 163
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/PlayTrackInfo;->getArtistId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "artist"

    .line 164
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/PlayTrackInfo;->getArtistNames()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "source_album_id"

    .line 165
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/PlayTrackInfo;->getAlbumId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "album"

    .line 166
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/PlayTrackInfo;->getAlbumTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "explicit"

    .line 167
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/PlayTrackInfo;->isExplicit()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "cp_attrs"

    const v2, 0x80002

    .line 168
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "image_url"

    .line 170
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/PlayTrackInfo;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    .line 169
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/PlayTrackInfo;->getLargeImageUrl()Ljava/lang/String;

    move-result-object v1

    .line 172
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "image_url_big"

    .line 173
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "is_celeb"

    .line 175
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/PlayTrackInfo;->isCeleb()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 156
    check-cast p1, Lcom/samsung/android/app/music/model/PlayTrackInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/model/PlayTrackInfo$1;->convert(Lcom/samsung/android/app/music/model/PlayTrackInfo;)Landroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method
