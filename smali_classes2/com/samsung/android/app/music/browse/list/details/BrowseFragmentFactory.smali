.class public Lcom/samsung/android/app/music/browse/list/details/BrowseFragmentFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(ILandroid/os/Bundle;)Landroid/support/v4/app/Fragment;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    if-nez p1, :cond_0

    .line 20
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string v0, "extra_browse_ui_type"

    .line 22
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sparse-switch p0, :sswitch_data_0

    .line 71
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maybe some ui type does not implements yet"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 67
    :sswitch_0
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->a(Landroid/os/Bundle;)Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;

    move-result-object p0

    return-object p0

    .line 65
    :sswitch_1
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;->a(Landroid/os/Bundle;)Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailFragment;

    move-result-object p0

    return-object p0

    .line 63
    :sswitch_2
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;->a(Landroid/os/Bundle;)Lcom/samsung/android/app/music/browse/list/album/AlbumDetailFragment;

    move-result-object p0

    return-object p0

    .line 61
    :sswitch_3
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;->a(Landroid/os/Bundle;)Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailFragment;

    move-result-object p0

    return-object p0

    .line 59
    :sswitch_4
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistRelatedVideoFragment;->a(Landroid/os/Bundle;)Lcom/samsung/android/app/music/browse/list/playlist/PlaylistRelatedVideoFragment;

    move-result-object p0

    return-object p0

    .line 57
    :sswitch_5
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/details/ThemePlaylistFragment;->a(Landroid/os/Bundle;)Lcom/samsung/android/app/music/browse/list/details/ThemePlaylistFragment;

    move-result-object p0

    return-object p0

    .line 55
    :sswitch_6
    new-instance p0, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;

    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;-><init>()V

    return-object p0

    .line 48
    :sswitch_7
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/details/YearPlaylistFragment;->a(Landroid/os/Bundle;)Lcom/samsung/android/app/music/browse/list/details/YearPlaylistFragment;

    move-result-object p0

    return-object p0

    .line 46
    :sswitch_8
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/details/YearFragment;->a(Landroid/os/Bundle;)Lcom/samsung/android/app/music/browse/list/details/YearFragment;

    move-result-object p0

    return-object p0

    .line 44
    :sswitch_9
    new-instance p0, Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment;

    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment;-><init>()V

    return-object p0

    .line 42
    :sswitch_a
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/details/GenrePlaylistFragment;->a(Landroid/os/Bundle;)Lcom/samsung/android/app/music/browse/list/details/GenrePlaylistFragment;

    move-result-object p0

    return-object p0

    .line 40
    :sswitch_b
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/details/GenreFragment;->a(Landroid/os/Bundle;)Lcom/samsung/android/app/music/browse/list/details/GenreFragment;

    move-result-object p0

    return-object p0

    .line 32
    :sswitch_c
    new-instance p0, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment;

    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment;-><init>()V

    return-object p0

    .line 36
    :sswitch_d
    new-instance p0, Lcom/samsung/android/app/music/browse/list/details/SpotLightsVideosFragment;

    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/details/SpotLightsVideosFragment;-><init>()V

    return-object p0

    .line 34
    :sswitch_e
    new-instance p0, Lcom/samsung/android/app/music/browse/list/details/SpotlightsPlaylistFragment;

    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/details/SpotlightsPlaylistFragment;-><init>()V

    return-object p0

    .line 38
    :sswitch_f
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/details/SpotLightsTabFragment;->a(Landroid/os/Bundle;)Lcom/samsung/android/app/music/browse/list/details/SpotLightsTabFragment;

    move-result-object p0

    return-object p0

    .line 30
    :sswitch_10
    new-instance p0, Lcom/samsung/android/app/music/browse/list/details/NewReleasePlaylistFragment;

    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/details/NewReleasePlaylistFragment;-><init>()V

    return-object p0

    .line 28
    :sswitch_11
    new-instance p0, Lcom/samsung/android/app/music/browse/list/details/NewReleaseAlbumFragment;

    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/details/NewReleaseAlbumFragment;-><init>()V

    return-object p0

    .line 26
    :sswitch_12
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/details/NewReleaseTabFragment;->a(Landroid/os/Bundle;)Lcom/samsung/android/app/music/browse/list/details/NewReleaseTabFragment;

    move-result-object p0

    return-object p0

    .line 53
    :sswitch_13
    invoke-static {p0}, Lcom/samsung/android/app/music/browse/list/details/TopChartPlaylistFragment;->c(I)Lcom/samsung/android/app/music/browse/list/details/TopChartPlaylistFragment;

    move-result-object p0

    return-object p0

    .line 50
    :sswitch_14
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/details/TopChartTabFragment;->a(Landroid/os/Bundle;)Lcom/samsung/android/app/music/browse/list/details/TopChartTabFragment;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_14
        0x2 -> :sswitch_13
        0x3 -> :sswitch_13
        0xa -> :sswitch_12
        0xb -> :sswitch_11
        0xc -> :sswitch_10
        0x14 -> :sswitch_f
        0x15 -> :sswitch_e
        0x16 -> :sswitch_d
        0x1e -> :sswitch_c
        0x28 -> :sswitch_b
        0x29 -> :sswitch_a
        0x2a -> :sswitch_9
        0x32 -> :sswitch_8
        0x33 -> :sswitch_7
        0x3c -> :sswitch_6
        0x3d -> :sswitch_5
        0x50 -> :sswitch_4
        0x5a -> :sswitch_3
        0x64 -> :sswitch_2
        0x6e -> :sswitch_1
        0x78 -> :sswitch_0
    .end sparse-switch
.end method
