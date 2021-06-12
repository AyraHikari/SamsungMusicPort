.class public Lcom/samsung/android/app/music/search/SearchUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;Ljava/lang/String;)I
    .locals 1

    if-eqz p0, :cond_6

    const-string v0, "1"

    .line 271
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->getTrackTotalCount()I

    move-result p0

    goto :goto_0

    :cond_0
    const-string v0, "2"

    .line 273
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->getAlbumTotalCount()I

    move-result p0

    goto :goto_0

    :cond_1
    const-string v0, "3"

    .line 275
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 276
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->getArtistTotalCount()I

    move-result p0

    goto :goto_0

    :cond_2
    const-string v0, "5"

    .line 277
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 278
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->getPlaylistTotalCount()I

    move-result p0

    goto :goto_0

    :cond_3
    const-string v0, "6"

    .line 279
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 280
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->getMvTotalCount()I

    move-result p0

    goto :goto_0

    :cond_4
    const-string v0, "7"

    .line 281
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 282
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->getLyricsTotalCount()I

    move-result p0

    goto :goto_0

    :cond_5
    const-string v0, "9"

    .line 283
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 284
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->getSpotifyPlaylistCount()I

    move-result p0

    goto :goto_0

    :cond_6
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    const-string p0, "0"

    return-object p0

    :pswitch_0
    const-string p0, "5"

    return-object p0

    :pswitch_1
    const-string p0, "9"

    return-object p0

    :pswitch_2
    const-string p0, "7"

    return-object p0

    :pswitch_3
    const-string p0, "6"

    return-object p0

    :pswitch_4
    const-string p0, "1"

    return-object p0

    :pswitch_5
    const-string p0, "2"

    return-object p0

    :pswitch_6
    const-string p0, "3"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x19
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Lcom/samsung/android/app/music/model/base/TrackModel;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "mime_type"

    .line 489
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "1"

    goto :goto_1

    :cond_0
    const-string v0, "title"

    .line 491
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 492
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/base/TrackModel;->getTrackTitle()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const-string v0, "artist"

    .line 493
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 494
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/base/TrackModel;->getArtistNames()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    const-string v0, "album"

    .line 495
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 496
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/base/TrackModel;->getAlbumTitle()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    const-string v0, "image_url"

    .line 497
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "album_id"

    .line 498
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    const-string v0, "milk_track_id"

    .line 500
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 501
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/base/TrackModel;->getTrackId()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_5
    const-string p0, "dummy"

    goto :goto_1

    .line 499
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/base/TrackModel;->getImageUrl()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static a(Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "mime_type"

    .line 527
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "2"

    goto :goto_1

    :cond_0
    const-string v0, "album"

    .line 529
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 530
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;->getAlbumTitle()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const-string v0, "artist"

    .line 531
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 532
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;->getArtistsName()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    const-string v0, "image_url"

    .line 533
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "album_id"

    .line 534
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const-string p0, "dummy"

    goto :goto_1

    .line 535
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;->getImageUrl()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static a(Lcom/samsung/android/app/music/model/milksearch/SearchArtist;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "mime_type"

    .line 511
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "3"

    goto :goto_1

    :cond_0
    const-string v0, "artist"

    .line 513
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 514
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milksearch/SearchArtist;->getArtistName()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const-string v0, "image_url"

    .line 515
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "album_id"

    .line 516
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const-string p0, "dummy"

    goto :goto_1

    .line 517
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milksearch/SearchArtist;->getThumbImgUrl()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static a(Lcom/samsung/android/app/music/model/milksearch/SearchLyrics;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "mime_type"

    .line 610
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "7"

    goto :goto_0

    :cond_0
    const-string v0, "title"

    .line 612
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 613
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milksearch/SearchLyrics;->getTrackTitle()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string v0, "artist"

    .line 614
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 615
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milksearch/SearchLyrics;->getArtistsName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string v0, "image_url"

    .line 616
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 617
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milksearch/SearchLyrics;->getThumbImgUrl()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    const-string v0, "lyrics"

    .line 618
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 619
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milksearch/SearchLyrics;->getPartialLyrics()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    const-string p0, "dummy"

    :goto_0
    return-object p0
.end method

.method public static a(Lcom/samsung/android/app/music/model/milksearch/SearchMusicVideo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "mime_type"

    .line 558
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "6"

    goto :goto_0

    :cond_0
    const-string v0, "title"

    .line 560
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 561
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milksearch/SearchMusicVideo;->getMvTitle()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string v0, "artist"

    .line 562
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 563
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milksearch/SearchMusicVideo;->getArtistsName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string v0, "image_url"

    .line 564
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 565
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milksearch/SearchMusicVideo;->getThumbImageUrl()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    const-string p0, "dummy"

    :goto_0
    return-object p0
.end method

.method public static a(Lcom/samsung/android/app/music/model/milksearch/SearchPlaylist;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "mime_type"

    .line 575
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "5"

    goto :goto_0

    :cond_0
    const-string v0, "title"

    .line 577
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 578
    iget-object p0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchPlaylist;->playlistName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "image_url"

    .line 579
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 580
    iget-object p0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchPlaylist;->imageUrl:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string p0, "dummy"

    :goto_0
    return-object p0
.end method

.method public static a(Lcom/samsung/android/app/music/model/milksearch/SearchPopularInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "mime_type"

    .line 642
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "popular"

    goto :goto_0

    :cond_0
    const-string v0, "title"

    .line 644
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 645
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milksearch/SearchPopularInfo;->getWord()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string v0, "rank_chg"

    .line 646
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 647
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milksearch/SearchPopularInfo;->getRankingChange()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string p0, "dummy"

    :goto_0
    return-object p0
.end method

.method public static a(Lcom/samsung/android/app/music/model/milksearch/SearchPreset;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "mime_type"

    .line 629
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milksearch/SearchPreset;->getType()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v0, "title"

    .line 631
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 632
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milksearch/SearchPreset;->getTitle()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, "dummy"

    :goto_0
    return-object p0
.end method

.method public static a(Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "mime_type"

    .line 590
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "9"

    goto :goto_0

    :cond_0
    const-string v0, "title"

    .line 592
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 593
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string v0, "image_url"

    .line 594
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 595
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;->getImages()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 596
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    const/4 p1, 0x0

    .line 597
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyImage;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyImage;->getUrl()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_0

    :cond_3
    const-string p0, "dummy"

    :goto_0
    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 293
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const-string v0, "9"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :pswitch_2
    const-string v0, "7"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_1

    :pswitch_3
    const-string v0, "6"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_1

    :pswitch_4
    const-string v0, "5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :pswitch_5
    const-string v0, "3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :pswitch_6
    const-string v0, "2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :pswitch_7
    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_1

    const-string p0, "total_count"

    return-object p0

    :pswitch_8
    const-string p0, "lyric_count"

    return-object p0

    :pswitch_9
    const-string p0, "music_video_count"

    return-object p0

    :pswitch_a
    const-string p0, "spotify_playlist_count"

    return-object p0

    :pswitch_b
    const-string p0, "playlist_count"

    return-object p0

    :pswitch_c
    const-string p0, "artist_count"

    return-object p0

    :pswitch_d
    const-string p0, "album_count"

    return-object p0

    :pswitch_e
    const-string p0, "track_count"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public static a(Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/TrackModel;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 339
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->getSearchList()Lcom/samsung/android/app/music/model/milksearch/SearchList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->getSearchList()Lcom/samsung/android/app/music/model/milksearch/SearchList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milksearch/SearchList;->getTrackList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Lcom/samsung/android/app/music/search/SearchConstants$SearchType;Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)Ljava/util/List;
    .locals 1

    .line 315
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const-string v0, "9"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :pswitch_2
    const-string v0, "7"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_1

    :pswitch_3
    const-string v0, "6"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_1

    :pswitch_4
    const-string v0, "5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :pswitch_5
    const-string v0, "3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :pswitch_6
    const-string v0, "2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :pswitch_7
    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_1

    .line 335
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Check displayType to get related search result!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 333
    :pswitch_8
    invoke-static {p2}, Lcom/samsung/android/app/music/search/SearchUtils;->g(Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 331
    :pswitch_9
    invoke-static {p2}, Lcom/samsung/android/app/music/search/SearchUtils;->f(Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 329
    :pswitch_a
    invoke-static {p2}, Lcom/samsung/android/app/music/search/SearchUtils;->h(Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 327
    :pswitch_b
    invoke-static {p2}, Lcom/samsung/android/app/music/search/SearchUtils;->e(Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 325
    :pswitch_c
    invoke-static {p2}, Lcom/samsung/android/app/music/search/SearchUtils;->c(Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 317
    :pswitch_d
    sget-object p0, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->MILK_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    if-ne p1, p0, :cond_1

    .line 318
    invoke-static {p2}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 319
    :cond_1
    sget-object p0, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->SPOTIFY_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    if-ne p1, p0, :cond_2

    .line 320
    invoke-static {p2}, Lcom/samsung/android/app/music/search/SearchUtils;->b(Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 323
    :cond_2
    :pswitch_e
    invoke-static {p2}, Lcom/samsung/android/app/music/search/SearchUtils;->d(Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_e
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public static a(Ljava/util/List;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;I)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 403
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    .line 406
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, p1, :cond_0

    goto :goto_1

    .line 410
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;)V
    .locals 3

    if-nez p1, :cond_0

    const-string p0, "SearchUtils"

    const-string p1, "Can\'t jump to spotify because album is null"

    .line 128
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 132
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v0

    const-string v1, "search_to_albums"

    .line 133
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;)V

    .line 135
    invoke-static {p0}, Lcom/samsung/android/app/music/regional/spotify/SpotifyUtils;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;->getSpotifyUri()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/music/regional/spotify/SpotifyUtils;->a(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "album"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    .line 140
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;->getAlbumTitle()Ljava/lang/String;

    move-result-object p1

    .line 139
    invoke-static {p0, v0, v1, v2, p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailActivity$SpotifyListDetailActivityLauncher;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;)V
    .locals 0

    .line 418
    invoke-static {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;->getAlbumId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->a(Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/android/app/music/model/milksearch/SearchArtist;)V
    .locals 3

    if-nez p1, :cond_0

    const-string p0, "SearchUtils"

    const-string p1, "Can\'t jump to spotify because artist is null"

    .line 110
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 114
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v0

    const-string v1, "search_to_artists"

    .line 115
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;)V

    .line 117
    invoke-static {p0}, Lcom/samsung/android/app/music/regional/spotify/SpotifyUtils;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milksearch/SearchArtist;->getSpotifyUri()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/music/regional/spotify/SpotifyUtils;->a(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    .line 121
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milksearch/SearchArtist;->getArtistId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "artist"

    .line 122
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milksearch/SearchArtist;->getThumbImgUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milksearch/SearchArtist;->getArtistName()Ljava/lang/String;

    move-result-object p1

    .line 121
    invoke-static {p0, v0, v1, v2, p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailActivity$SpotifyListDetailActivityLauncher;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/android/app/music/model/milksearch/SearchMusicVideo;)V
    .locals 2

    .line 428
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milksearch/SearchMusicVideo;->isExplicit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a()Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object v0

    .line 429
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->a(Landroid/content/Context;Lcom/samsung/android/app/music/model/UserInfo;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "SearchUtils"

    const-string v1, "onClick : Not Permitted (Explicit)"

    .line 432
    invoke-static {p1, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "explicit-invalid"

    .line 434
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 433
    invoke-static {p0, p1, v0}, Lcom/samsung/android/app/music/milk/MilkDialogLauncher;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 438
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milksearch/SearchMusicVideo;->getMvId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milksearch/SearchMusicVideo;->isExplicit()Z

    move-result p1

    invoke-static {p0, v0, p1}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/android/app/music/model/milksearch/SearchTrack;)V
    .locals 3

    if-nez p1, :cond_0

    const-string p0, "SearchUtils"

    const-string p1, "Can\'t jump to spotify because track is null"

    .line 90
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 94
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v0

    const-string v1, "search_to_tracks"

    .line 95
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;)V

    .line 97
    invoke-static {p0}, Lcom/samsung/android/app/music/regional/spotify/SpotifyUtils;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milksearch/SearchTrack;->getSpotifyUri()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/music/regional/spotify/SpotifyUtils;->a(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milksearch/SearchTrack;->getSearchAlbum()Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;

    move-result-object p1

    .line 103
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "album"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;->getAlbumTitle()Ljava/lang/String;

    move-result-object p1

    .line 103
    invoke-static {p0, v0, v1, v2, p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailActivity$SpotifyListDetailActivityLauncher;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;)V
    .locals 8

    if-nez p1, :cond_0

    const-string p0, "SearchUtils"

    const-string p1, "Can\'t jump to spotify because playlist is null"

    .line 146
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 150
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v0

    const-string v1, "search_to_playlists"

    .line 151
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;)V

    .line 153
    invoke-static {p0}, Lcom/samsung/android/app/music/regional/spotify/SpotifyUtils;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;->getUri()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/music/regional/spotify/SpotifyUtils;->a(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_2

    .line 156
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;->getImages()Ljava/util/List;

    move-result-object v0

    .line 158
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "playlist"

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 159
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyImage;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyImage;->getUrl()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_2
    move-object v4, v1

    .line 160
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;->getName()Ljava/lang/String;

    move-result-object v5

    .line 161
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;->getOwner()Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyOwner;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;->getOwner()Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyOwner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyOwner;->getId()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_1

    :cond_3
    move-object v6, v1

    .line 162
    :goto_1
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;->getArtistList()Ljava/util/List;

    move-result-object v7

    move-object v1, p0

    .line 158
    invoke-static/range {v1 .. v7}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailActivity$SpotifyListDetailActivityLauncher;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :goto_2
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    if-eqz p0, :cond_4

    .line 173
    const-class v0, Lcom/samsung/android/app/music/search/SearchUtils;

    monitor-enter v0

    :try_start_0
    const-string v1, "com.samsung.radio.search.HISTORY_COUNT"

    const/4 v2, 0x0

    .line 174
    invoke-static {p0, v1, v2}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 176
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    .line 178
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "com.samsung.radio.search.HISTORY"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-static {p0, v5, v6}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 183
    :cond_0
    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 184
    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    move v2, v1

    const/4 v4, 0x0

    :goto_1
    sub-int/2addr v2, v5

    :goto_2
    if-ltz v2, :cond_2

    .line 191
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "com.samsung.radio.search.HISTORY"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {p0, v6, v7}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_2
    const-string v2, "com.samsung.radio.search.HISTORY0"

    .line 193
    invoke-static {p0, v2, p1}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v4, :cond_3

    const/16 p1, 0x14

    if-ge v1, p1, :cond_3

    const-string p1, "com.samsung.radio.search.HISTORY_COUNT"

    add-int/2addr v1, v5

    .line 197
    invoke-static {p0, p1, v1}, Lcom/samsung/android/app/music/preferences/Pref;->c(Landroid/content/Context;Ljava/lang/String;I)V

    .line 200
    :cond_3
    monitor-exit v0

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    :goto_3
    return-void
.end method

.method public static a(Landroid/support/v4/app/Fragment;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    const v1, 0x100003

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    .line 70
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;

    move-result-object p1

    goto :goto_0

    :cond_0
    const v1, 0x100002

    if-ne p1, v1, :cond_1

    .line 72
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->a(JLjava/lang/String;)Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 76
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->e(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    invoke-static {p2, p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentManagerExtensionKt;->a(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static a(Landroid/support/v4/app/Fragment;Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 84
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->e(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->a(Landroid/support/v4/app/FragmentManager;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/content/Context;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "input_method"

    .line 244
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x0

    .line 245
    invoke-virtual {p1, p0, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    .line 167
    invoke-static {p0}, Lcom/samsung/android/app/music/regional/spotify/SpotifyUtils;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x10100

    .line 168
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/util/TabUtils;->a(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 2

    .line 443
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const-string v0, "9"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :pswitch_2
    const-string v0, "7"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_1

    :pswitch_3
    const-string v0, "6"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_1

    :pswitch_4
    const-string v0, "5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :pswitch_5
    const-string v0, "3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :pswitch_6
    const-string v0, "2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :pswitch_7
    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_1

    return v1

    :pswitch_8
    const/16 p0, 0x1a

    return p0

    :pswitch_9
    const/16 p0, 0x19

    return p0

    :pswitch_a
    const/16 p0, 0x1b

    return p0

    :pswitch_b
    const/16 p0, 0x1c

    return p0

    :pswitch_c
    const/16 p0, 0x17

    return p0

    :pswitch_d
    const/16 p0, 0x16

    return p0

    :pswitch_e
    const/16 p0, 0x15

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public static b(Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchTrack;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 346
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->getSearchList()Lcom/samsung/android/app/music/model/milksearch/SearchList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->getSearchList()Lcom/samsung/android/app/music/model/milksearch/SearchList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milksearch/SearchList;->getSearchTracks()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    if-eqz p0, :cond_3

    .line 209
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "com.samsung.radio.search.HISTORY_COUNT"

    const/4 v1, 0x0

    .line 210
    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    :goto_0
    const/4 v2, -0x1

    if-ge v1, v0, :cond_1

    .line 214
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.samsung.radio.search.HISTORY"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {p0, v3, v4}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    move p1, v1

    :goto_2
    add-int/lit8 v3, v0, -0x1

    if-ge p1, v3, :cond_2

    if-eq v1, v2, :cond_2

    .line 220
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.samsung.radio.search.HISTORY"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.samsung.radio.search.HISTORY"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    .line 221
    invoke-static {p0, v4, v5}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 220
    invoke-static {p0, v3, v4}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 224
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "com.samsung.radio.search.HISTORY"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "com.samsung.radio.search.HISTORY_COUNT"

    .line 225
    invoke-static {p0, p1, v3}, Lcom/samsung/android/app/music/preferences/Pref;->c(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_3
    return-void
.end method

.method public static b(Landroid/view/View;Landroid/content/Context;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "input_method"

    .line 253
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 254
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 255
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "com.samsung.radio.search.HISTORY_COUNT"

    const/4 v1, 0x0

    .line 205
    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static c(Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchArtist;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->getSearchList()Lcom/samsung/android/app/music/model/milksearch/SearchList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->getSearchList()Lcom/samsung/android/app/music/model/milksearch/SearchList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milksearch/SearchList;->getArtistList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 5

    if-eqz p0, :cond_1

    const-string v0, "com.samsung.radio.search.HISTORY_COUNT"

    const/4 v1, 0x0

    .line 231
    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 233
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.samsung.radio.search.HISTORY"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "com.samsung.radio.search.HISTORY_COUNT"

    .line 235
    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/music/preferences/Pref;->c(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public static c(Landroid/view/View;Landroid/content/Context;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "input_method"

    .line 263
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 264
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public static d(Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 360
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->getSearchList()Lcom/samsung/android/app/music/model/milksearch/SearchList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->getSearchList()Lcom/samsung/android/app/music/model/milksearch/SearchList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milksearch/SearchList;->getAlbumList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static e(Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchPlaylist;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 374
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->getSearchList()Lcom/samsung/android/app/music/model/milksearch/SearchList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->getSearchList()Lcom/samsung/android/app/music/model/milksearch/SearchList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milksearch/SearchList;->getPlaylistList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static f(Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchMusicVideo;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 381
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->getSearchList()Lcom/samsung/android/app/music/model/milksearch/SearchList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->getSearchList()Lcom/samsung/android/app/music/model/milksearch/SearchList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milksearch/SearchList;->getMvList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static g(Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchLyrics;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 388
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->getSearchList()Lcom/samsung/android/app/music/model/milksearch/SearchList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->getSearchList()Lcom/samsung/android/app/music/model/milksearch/SearchList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milksearch/SearchList;->getLyricsList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static h(Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 396
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->getSearchList()Lcom/samsung/android/app/music/model/milksearch/SearchList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->getSearchList()Lcom/samsung/android/app/music/model/milksearch/SearchList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milksearch/SearchList;->getPlaylists()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
