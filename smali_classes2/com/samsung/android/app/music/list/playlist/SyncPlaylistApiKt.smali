.class public final Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PLAYLIST_TYPE_SUPPORT_FILE_NAME:I = 0x1

.field public static final RESULT_CODE_ERR_CONFLICT:I = 0x106c

.field public static final RESULT_CODE_ERR_DUPLICATE_PLAYLIST_TITLE:I = 0x106a

.field public static final RESULT_CODE_ERR_DUPLICATE_PLAYLIST_TITLE_SYNC:I = 0x106d

.field public static final RESULT_CODE_ERR_MANDATORY_PARAM_NOT_FOUND:I = 0x44e

.field public static final RESULT_CODE_ERR_MAX_LIMIT_PLAYLISTS:I = 0x1068

.field public static final RESULT_CODE_ERR_MAX_LIMIT_PLAYLIST_ITEMS:I = 0xfb5

.field public static final RESULT_CODE_ERR_PLAYLIST_TITLE_LENGTH_OVER:I = 0x21fe

.field public static final RESULT_CODE_ERR_REORDER_SEQ_ID_INVALID:I = 0x106f

.field public static final UPDATE_TYPE_PLAYLIST_NAME:Ljava/lang/String; = "00"

.field public static final UPDATE_TYPE_REORDER:Ljava/lang/String; = "01"


# direct methods
.method public static final artistIds(Lcom/samsung/android/app/music/list/playlist/RecommendedTrackList;)Ljava/lang/String;
    .locals 11

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 500
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 501
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/RecommendedTrackList;->getArtistList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 526
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/playlist/Artist;

    .line 502
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/playlist/Artist;->getArtistId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 504
    :cond_0
    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    const-string p0, ", "

    move-object v3, p0

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3e

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final artistIds(Lcom/samsung/android/app/music/list/playlist/ServerTrack;)Ljava/lang/String;
    .locals 11

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 415
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 416
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->getArtistList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 520
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/playlist/Artist;

    .line 417
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/playlist/Artist;->getArtistId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 419
    :cond_0
    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    const-string p0, "::"

    move-object v3, p0

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3e

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final artistNames(Lcom/samsung/android/app/music/list/playlist/RecommendedTrackList;)Ljava/lang/String;
    .locals 11

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 508
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 509
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/RecommendedTrackList;->getArtistList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 528
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/playlist/Artist;

    .line 510
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/playlist/Artist;->getArtistName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 512
    :cond_0
    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    const-string p0, ", "

    move-object v3, p0

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3e

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final artistNames(Lcom/samsung/android/app/music/list/playlist/ServerTrack;)Ljava/lang/String;
    .locals 11

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 423
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 424
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->getArtistList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 522
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/playlist/Artist;

    .line 425
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/playlist/Artist;->getArtistName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 427
    :cond_0
    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    const-string p0, ", "

    move-object v3, p0

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3e

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final cpAttrs(Lcom/samsung/android/app/music/list/playlist/ServerTrack;)I
    .locals 3

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 431
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->getAudioType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x30

    const v2, 0x80002

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const v2, 0x80001

    goto :goto_0

    :pswitch_1
    const-string v0, "3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const v2, 0x10001

    goto :goto_0

    :cond_0
    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    :cond_1
    :goto_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final dateAdded(Lcom/samsung/android/app/music/list/playlist/Playlist;)J
    .locals 2

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/Playlist;->getUpdateDate()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/music/util/DateTimeUtils;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final dateAdded(Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;)J
    .locals 2

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 369
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;->getRegistDate()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/music/util/DateTimeUtils;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final dateSynced(Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResponse;)J
    .locals 2

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResponse;->getUpdateDate()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/music/util/DateTimeUtils;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final dateSynced(Lcom/samsung/android/app/music/list/playlist/DeletePlaylistResult;)J
    .locals 2

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/DeletePlaylistResult;->getUpdateDate()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/music/util/DateTimeUtils;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final dateSynced(Lcom/samsung/android/app/music/list/playlist/DeletePlaylistTracksResponse;)J
    .locals 2

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/DeletePlaylistTracksResponse;->getUpdateDate()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/music/util/DateTimeUtils;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final dateSynced(Lcom/samsung/android/app/music/list/playlist/Playlist;)J
    .locals 2

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/Playlist;->getUpdateDate()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/music/util/DateTimeUtils;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final dateSynced(Lcom/samsung/android/app/music/list/playlist/ReorderTracksResponse;)J
    .locals 2

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 409
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/ReorderTracksResponse;->getUpdateDate()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/music/util/DateTimeUtils;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final dateSynced(Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;)J
    .locals 2

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;->getUpdateDate()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/music/util/DateTimeUtils;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final dateSynced(Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;)J
    .locals 2

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->getUpdateDate()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/music/util/DateTimeUtils;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final dateSynced(Lcom/samsung/android/app/music/list/playlist/SyncUpResponse;)J
    .locals 2

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/SyncUpResponse;->getUpdateDate()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/music/util/DateTimeUtils;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final dateSynced(Lcom/samsung/android/app/music/list/playlist/UpdatePlaylistResult;)J
    .locals 2

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/UpdatePlaylistResult;->getUpdateDate()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/music/util/DateTimeUtils;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final deviceName(Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResponse;)Ljava/lang/String;
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResponse;->getUpdateDeviceId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final deviceName(Lcom/samsung/android/app/music/list/playlist/CreatePlaylistResponse;)Ljava/lang/String;
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistResponse;->getUpdateDeviceId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final deviceName(Lcom/samsung/android/app/music/list/playlist/DeletePlaylistResult;)Ljava/lang/String;
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/DeletePlaylistResult;->getUpdateDeviceId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final deviceName(Lcom/samsung/android/app/music/list/playlist/DeletePlaylistTracksResponse;)Ljava/lang/String;
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/DeletePlaylistTracksResponse;->getUpdateDeviceId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final deviceName(Lcom/samsung/android/app/music/list/playlist/ReorderTracksResponse;)Ljava/lang/String;
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 410
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/ReorderTracksResponse;->getUpdateDeviceId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final deviceName(Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;)Ljava/lang/String;
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;->getUpdateDeviceId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final deviceName(Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;)Ljava/lang/String;
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;->getUpdateDeviceId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final deviceName(Lcom/samsung/android/app/music/list/playlist/UpdatePlaylistResult;)Ljava/lang/String;
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/UpdatePlaylistResult;->getUpdateDeviceId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final imageUrls(Lcom/samsung/android/app/music/list/playlist/RecommendedTrackList;)Ljava/lang/String;
    .locals 11

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 492
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 493
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/RecommendedTrackList;->getImageList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Ljava/lang/Iterable;

    .line 524
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/playlist/ImageList;

    .line 494
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/playlist/ImageList;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 496
    :cond_0
    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    const-string p0, ", "

    move-object v3, p0

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3e

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final makeRenameRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/list/playlist/UpdatePlaylistRequest;
    .locals 10

    const-string v0, "playlistId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playlistTitle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateDate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 175
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 176
    new-instance v2, Lcom/samsung/android/app/music/list/playlist/RenamePlaylist;

    invoke-direct {v2, p0, p1, p2}, Lcom/samsung/android/app/music/list/playlist/RenamePlaylist;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    move-object v5, v1

    check-cast v5, Ljava/util/List;

    new-instance p0, Lcom/samsung/android/app/music/list/playlist/UpdatePlaylist;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xd

    const/4 v9, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/app/music/list/playlist/UpdatePlaylist;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    check-cast v0, Ljava/util/List;

    new-instance p0, Lcom/samsung/android/app/music/list/playlist/UpdatePlaylistRequest;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/list/playlist/UpdatePlaylistRequest;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public static final makeSyncUpRequest(Ljava/lang/String;Ljava/util/List;)Lcom/samsung/android/app/music/list/playlist/SyncUpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;",
            ">;)",
            "Lcom/samsung/android/app/music/list/playlist/SyncUpRequest;"
        }
    .end annotation

    const-string v0, "playlistName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tracks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    new-instance v0, Lcom/samsung/android/app/music/list/playlist/SyncUpRequest;

    .line 339
    new-instance v1, Lcom/samsung/android/app/music/list/playlist/SyncUpPlaylist;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/list/playlist/SyncUpPlaylist;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 338
    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/playlist/SyncUpRequest;-><init>(Lcom/samsung/android/app/music/list/playlist/SyncUpPlaylist;)V

    return-object v0
.end method

.method public static final modifiedState(Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResponse;)I
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResponse;->getDeleteYn()Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static final modifiedState(Lcom/samsung/android/app/music/list/playlist/DeletePlaylistResult;)I
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/DeletePlaylistResult;->getDeleteYn()Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static final modifiedState(Lcom/samsung/android/app/music/list/playlist/DeletePlaylistTracksResponse;)I
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 354
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/DeletePlaylistTracksResponse;->getDeleteYn()Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static final modifiedState(Lcom/samsung/android/app/music/list/playlist/ReorderTracksResponse;)I
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 412
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/ReorderTracksResponse;->getDeleteYn()Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static final modifiedState(Lcom/samsung/android/app/music/list/playlist/UpdatePlaylistResult;)I
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/UpdatePlaylistResult;->getDeleteYn()Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static final name(Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;)Ljava/lang/String;
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/playlist/ServerPlaylist;->getPlaylistTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
