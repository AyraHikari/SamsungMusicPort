.class public final Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 273
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroid/database/Cursor;)Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;
    .locals 5

    const-string v0, "local"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    new-instance v0, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;

    invoke-direct {v0}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;-><init>()V

    .line 276
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->getExtras()Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;

    move-result-object v1

    const-string v2, "audio_id"

    .line 520
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;->setAudioId(J)V

    const-string v2, "source_album_id"

    .line 521
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move-object v2, v4

    goto :goto_0

    :cond_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;->setAlbumId(Ljava/lang/String;)V

    const-string v2, "source_artist_id"

    .line 522
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v2, v4

    goto :goto_1

    :cond_1
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const-string v2, "dummyArtistId"

    .line 280
    :goto_2
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;->setArtistIds(Ljava/lang/String;)V

    const-string v2, "artist"

    .line 523
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v2, v4

    goto :goto_3

    :cond_3
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_3
    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    const-string v2, "unknown"

    .line 281
    :goto_4
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;->setArtistNames(Ljava/lang/String;)V

    const-string v2, "cp_attrs"

    .line 524
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;->setCpAttrs(I)V

    .line 285
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->getExtras()Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;->getCpAttrs()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->toAudioType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->setAudioType(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->getExtras()Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;->getCpAttrs()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/app/music/provider/CpAttrs;->c(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "local_track_id"

    .line 525
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    const-string v1, "source_id"

    .line 526
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    :goto_5
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->setTrackId(Ljava/lang/String;)V

    const-string v1, "title"

    .line 527
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v1, v4

    goto :goto_6

    :cond_6
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_6
    if-eqz v1, :cond_7

    goto :goto_7

    :cond_7
    const-string v1, ""

    .line 291
    :goto_7
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->setTrackTitle(Ljava/lang/String;)V

    const-string v1, "album"

    .line 528
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object v1, v4

    goto :goto_8

    :cond_8
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_8
    if-eqz v1, :cond_9

    goto :goto_9

    :cond_9
    const-string v1, ""

    .line 292
    :goto_9
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->setAlbumTitle(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->getExtras()Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;->getArtistIds()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->getExtras()Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;->getArtistNames()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->toArtistList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->setArtistList(Ljava/util/List;)V

    const-string v1, "_display_name"

    .line 529
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object v1, v4

    goto :goto_a

    :cond_a
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_a
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->setFileName(Ljava/lang/String;)V

    const-string v1, "explicit"

    .line 530
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_b

    :cond_b
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_b
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_c

    :cond_c
    const/4 p1, 0x0

    .line 295
    :goto_c
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->setExplicit(I)V

    return-object v0
.end method
