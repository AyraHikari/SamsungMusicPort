.class public Lcom/samsung/android/app/music/browse/list/cursor/BrowseTrackCursor;
.super Lcom/samsung/android/app/music/browse/list/cursor/ModelCursor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/browse/list/cursor/ModelCursor<",
        "Lcom/samsung/android/app/music/model/base/TrackModel;",
        ">;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    sget-object v0, Lcom/samsung/android/app/music/browse/list/cursor/BrowseTrackCursor;->a:Ljava/util/ArrayList;

    const-string v1, "track"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    sget-object v0, Lcom/samsung/android/app/music/browse/list/cursor/BrowseTrackCursor;->a:Ljava/util/ArrayList;

    const-string v1, "source_id"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    sget-object v0, Lcom/samsung/android/app/music/browse/list/cursor/BrowseTrackCursor;->a:Ljava/util/ArrayList;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object v0, Lcom/samsung/android/app/music/browse/list/cursor/BrowseTrackCursor;->a:Ljava/util/ArrayList;

    const-string v1, "source_album_id"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object v0, Lcom/samsung/android/app/music/browse/list/cursor/BrowseTrackCursor;->a:Ljava/util/ArrayList;

    const-string v1, "album"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object v0, Lcom/samsung/android/app/music/browse/list/cursor/BrowseTrackCursor;->a:Ljava/util/ArrayList;

    const-string v1, "artist"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v0, Lcom/samsung/android/app/music/browse/list/cursor/BrowseTrackCursor;->a:Ljava/util/ArrayList;

    const-string v1, "source_artist_id"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object v0, Lcom/samsung/android/app/music/browse/list/cursor/BrowseTrackCursor;->a:Ljava/util/ArrayList;

    const-string v1, "rank"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v0, Lcom/samsung/android/app/music/browse/list/cursor/BrowseTrackCursor;->a:Ljava/util/ArrayList;

    const-string v1, "rank_chg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object v0, Lcom/samsung/android/app/music/browse/list/cursor/BrowseTrackCursor;->a:Ljava/util/ArrayList;

    const-string v1, "track_coverart_url"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v0, Lcom/samsung/android/app/music/browse/list/cursor/BrowseTrackCursor;->a:Ljava/util/ArrayList;

    const-string v1, "track_is_explicit"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v0, Lcom/samsung/android/app/music/browse/list/cursor/BrowseTrackCursor;->a:Ljava/util/ArrayList;

    const-string v1, "disc_no"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v0, Lcom/samsung/android/app/music/browse/list/cursor/BrowseTrackCursor;->a:Ljava/util/ArrayList;

    const-string v1, "track_no"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v0, Lcom/samsung/android/app/music/browse/list/cursor/BrowseTrackCursor;->a:Ljava/util/ArrayList;

    const-string v1, "is_title"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v0, Lcom/samsung/android/app/music/browse/list/cursor/BrowseTrackCursor;->a:Ljava/util/ArrayList;

    const-string v1, "is_playable"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v0, Lcom/samsung/android/app/music/browse/list/cursor/BrowseTrackCursor;->a:Ljava/util/ArrayList;

    const-string v1, "is_radio_playable"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lcom/samsung/android/app/music/browse/list/cursor/BrowseTrackCursor;->a:Ljava/util/ArrayList;

    const-string v1, "album_art_url_big"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Lcom/samsung/android/app/music/browse/list/cursor/BrowseTrackCursor;->a:Ljava/util/ArrayList;

    const-string v1, "is_celeb"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/TrackModel;",
            ">;Z)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/cursor/ModelCursor;-><init>(Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/samsung/android/app/music/model/base/TrackModel;ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Lcom/samsung/android/app/music/model/base/TrackModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 43
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p2, "disc_no"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0xd

    goto/16 :goto_1

    :sswitch_1
    const-string p2, "track_is_explicit"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0xc

    goto/16 :goto_1

    :sswitch_2
    const-string p2, "track_no"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0xe

    goto/16 :goto_1

    :sswitch_3
    const-string p2, "is_playable"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x10

    goto/16 :goto_1

    :sswitch_4
    const-string p2, "source_artist_id"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x7

    goto/16 :goto_1

    :sswitch_5
    const-string p2, "is_radio_playable"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x11

    goto/16 :goto_1

    :sswitch_6
    const-string p2, "source_album_id"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x5

    goto/16 :goto_1

    :sswitch_7
    const-string p2, "rank_chg"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x9

    goto/16 :goto_1

    :sswitch_8
    const-string p2, "is_title"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0xf

    goto/16 :goto_1

    :sswitch_9
    const-string p2, "track"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_1

    :sswitch_a
    const-string p2, "title"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x3

    goto :goto_1

    :sswitch_b
    const-string p2, "is_celeb"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x12

    goto :goto_1

    :sswitch_c
    const-string p2, "album"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    goto :goto_1

    :sswitch_d
    const-string p2, "rank"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x8

    goto :goto_1

    :sswitch_e
    const-string p2, "_id"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_1

    :sswitch_f
    const-string p2, "track_coverart_url"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0xa

    goto :goto_1

    :sswitch_10
    const-string p2, "artist"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x6

    goto :goto_1

    :sswitch_11
    const-string p2, "album_art_url_big"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0xb

    goto :goto_1

    :sswitch_12
    const-string p2, "source_id"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p2, -0x1

    :goto_1
    packed-switch p2, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 82
    :pswitch_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackModel;->isCeleb()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 80
    :pswitch_1
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackModel;->isRadioPlayable()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackModel;->isBanned()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 78
    :pswitch_2
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackModel;->isPlayable()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackModel;->isBanned()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 76
    :pswitch_3
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackModel;->isTitle()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 74
    :pswitch_4
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackModel;->getTrackNo()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 72
    :pswitch_5
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackModel;->getDiskNo()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 70
    :pswitch_6
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackModel;->getExplicit()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 68
    :pswitch_7
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackModel;->getLargeSizeImageUrl()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 66
    :pswitch_8
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackModel;->getImageUrl()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 64
    :pswitch_9
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackModel;->getRankingChg()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 62
    :pswitch_a
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackModel;->getTrackNo()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 59
    :pswitch_b
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackModel;->getArtistList()Ljava/util/List;

    move-result-object p1

    const-string p2, "::"

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/browse/util/BrowseUtils;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 57
    :pswitch_c
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackModel;->getArtistList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/util/BrowseUtils;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 55
    :pswitch_d
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackModel;->getAlbumId()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 53
    :pswitch_e
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackModel;->getAlbumTitle()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 51
    :pswitch_f
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackModel;->getTrackTitle()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 49
    :pswitch_10
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackModel;->getTrackId()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 47
    :pswitch_11
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackModel;->getTrackNo()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 45
    :pswitch_12
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackModel;->getVirtualAudioId()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x653bb041 -> :sswitch_12
        -0x5839217c -> :sswitch_11
        -0x53fd20b9 -> :sswitch_10
        -0x277def90 -> :sswitch_f
        0x171ba -> :sswitch_e
        0x354c2c -> :sswitch_d
        0x5897e6f -> :sswitch_c
        0x6870b12 -> :sswitch_b
        0x6942258 -> :sswitch_a
        0x697f14b -> :sswitch_9
        0x7788b03 -> :sswitch_8
        0xf48060f -> :sswitch_7
        0x11da608f -> :sswitch_6
        0x2b78f607 -> :sswitch_5
        0x3cccb5ef -> :sswitch_4
        0x4431ba03 -> :sswitch_3
        0x4bb9f935 -> :sswitch_2
        0x51ba70b5 -> :sswitch_1
        0x639f00ab -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic a(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 13
    check-cast p1, Lcom/samsung/android/app/music/model/base/TrackModel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/browse/list/cursor/BrowseTrackCursor;->a(Lcom/samsung/android/app/music/model/base/TrackModel;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
