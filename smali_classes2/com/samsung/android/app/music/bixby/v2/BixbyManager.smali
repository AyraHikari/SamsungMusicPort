.class public final Lcom/samsung/android/app/music/bixby/v2/BixbyManager;
.super Lcom/samsung/android/app/musiclibrary/core/bixby/v2/AbsBixbyManager;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "BixbyManager"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 44
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/AbsBixbyManager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 188
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x73e0e5f2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Playlist"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_2

    const-string p1, "SEARCH_MUSIC"

    goto :goto_2

    :cond_2
    const-string p1, "SEARCH_PLAYLIST"

    :goto_2
    return-object p1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 201
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x73e0e5f2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Playlist"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_2

    const-string p1, "PLAY_MUSIC"

    goto :goto_2

    :cond_2
    const-string p1, "PLAY_PLAYLIST"

    :goto_2
    return-object p1
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 214
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "RepeatSingle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "RepeatAll"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "Favorite"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_3
    const-string v0, "Shuffle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_4
    const-string v0, "Repeat"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    const-string p1, "INVALID"

    goto :goto_2

    :pswitch_0
    const-string p1, "CHANGE_FAVORITE"

    goto :goto_2

    :pswitch_1
    const-string p1, "CHANGE_REPEAT"

    goto :goto_2

    :pswitch_2
    const-string p1, "CHANGE_SHUFFLE"

    :goto_2
    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x6e4ee645 -> :sswitch_4
        -0x21422127 -> :sswitch_3
        0x427c2dbc -> :sswitch_2
        0x506249e6 -> :sswitch_1
        0x7c8511e3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected assignCommandExecutors(Ljava/util/Map;)V
    .locals 3
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/musiclibrary/core/bixby/v2/CommandExecutor;",
            ">;)V"
        }
    .end annotation

    const-string v0, "CHECK_PRECONDITION"

    .line 62
    new-instance v1, Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor;

    invoke-direct {v1}, Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CHECK_PUNCH_OUT_STATE"

    .line 63
    new-instance v1, Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor;

    invoke-direct {v1}, Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PLAY_JUST_FOR_YOU"

    .line 64
    new-instance v1, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor;

    invoke-direct {v1}, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PLAY_TPO"

    .line 65
    new-instance v1, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayTpoExecutor;

    invoke-direct {v1}, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayTpoExecutor;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SEARCH_MUSIC"

    .line 66
    new-instance v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor;

    invoke-direct {v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchExecutor;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SEARCH_PLAYLIST"

    .line 67
    new-instance v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/SearchPlaylistExecutor;

    invoke-direct {v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/SearchPlaylistExecutor;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PLAY_MUSIC"

    .line 68
    new-instance v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;

    invoke-direct {v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PLAY_SONG_BY_DATA"

    .line 69
    new-instance v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaySongByDataExecutor;

    invoke-direct {v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaySongByDataExecutor;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PLAY_PLAYLIST"

    .line 70
    new-instance v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor;

    invoke-direct {v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PLAY_CHART"

    .line 71
    new-instance v1, Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor;

    invoke-direct {v1}, Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PLAY_GENRE"

    .line 72
    new-instance v1, Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor;

    invoke-direct {v1}, Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PLAY_YEAR"

    .line 73
    new-instance v1, Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor;

    invoke-direct {v1}, Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PLAY_RECOMMENDATION"

    .line 74
    new-instance v1, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;

    invoke-direct {v1}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PLAY_THIS_ARTIST"

    .line 75
    new-instance v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;

    invoke-direct {v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "FIND_CHART"

    .line 76
    new-instance v1, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor;

    invoke-direct {v1}, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "FIND_GENRE"

    .line 77
    new-instance v1, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor;

    invoke-direct {v1}, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "FIND_YEAR"

    .line 78
    new-instance v1, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor;

    invoke-direct {v1}, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CONTROL_PLAYER"

    .line 79
    new-instance v1, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;

    invoke-direct {v1}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PAUSE"

    .line 80
    new-instance v1, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerPauseExecutor;

    invoke-direct {v1}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerPauseExecutor;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PLAY_MY_MUSIC"

    .line 81
    new-instance v1, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;

    invoke-direct {v1}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CHANGE_REPEAT"

    .line 82
    new-instance v1, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor;

    invoke-direct {v1}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CHANGE_SHUFFLE"

    .line 83
    new-instance v1, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerShuffleExecutor;

    invoke-direct {v1}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerShuffleExecutor;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CHANGE_FAVORITE"

    .line 84
    new-instance v1, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;

    invoke-direct {v1}, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CHANGE_AUTO_OFF"

    .line 85
    new-instance v1, Lcom/samsung/android/app/music/bixby/v2/executor/player/AutoOffExecutor;

    invoke-direct {v1}, Lcom/samsung/android/app/music/bixby/v2/executor/player/AutoOffExecutor;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "INSERT_DOWNLOAD_BASKET"

    .line 86
    new-instance v1, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;

    invoke-direct {v1}, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "RADIO_COUNT"

    .line 87
    new-instance v1, Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor;

    invoke-direct {v1}, Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/BixbyManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "assignCommandExecutors() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected convertToCommand(Ljava/lang/String;Ljava/util/Map;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;"
        }
    .end annotation

    .line 96
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "viv.samsungMusicApp.PlayYear"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "viv.samsungMusicApp.PlaySong"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "viv.samsungMusicApp.PlayThisArtist"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "viv.samsungMusicApp.PlaySimilar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "viv.samsungMusicApp.PlayMyMusic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "viv.samsungMusicApp.SleeptimerOff"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "viv.samsungMusicApp.PlaySongByData"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "viv.samsungMusicApp.PlayGenre"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "viv.samsungMusicApp.PlayChart"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "viv.samsungMusicApp.GetPunchOutStatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "viv.samsungMusicApp.GetAppStatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "viv.samsungMusicApp.SettingOn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "viv.samsungMusicApp.SleeptimerOn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "viv.samsungMusicApp.FindYear"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "viv.samsungMusicApp.FindSong"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_f
    const-string v0, "viv.samsungMusicApp.DownloadSong"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto :goto_1

    :sswitch_10
    const-string v0, "viv.samsungMusicApp.PlayTPO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_11
    const-string v0, "viv.samsungMusicApp.SettingOff"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto :goto_1

    :sswitch_12
    const-string v0, "viv.samsungMusicApp.PauseSong"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto :goto_1

    :sswitch_13
    const-string v0, "viv.samsungMusicApp.PlayJustForYou"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_14
    const-string v0, "viv.samsungMusicApp.ControlSong"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_1

    :sswitch_15
    const-string v0, "viv.samsungMusicApp.CheckUsage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto :goto_1

    :sswitch_16
    const-string v0, "viv.samsungMusicApp.FindGenre"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_1

    :sswitch_17
    const-string v0, "viv.samsungMusicApp.FindChart"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 166
    sget-boolean v0, Lcom/samsung/android/app/music/bixby/v2/BixbyManager;->THROW_EXCEPTION:Z

    if-nez v0, :cond_2

    const-string v0, "CHECK_PRECONDITION"

    .line 171
    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/BixbyManager;->a:Ljava/lang/String;

    const-string v2, "convertToCommand() - Should choose proper action for actionId."

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_0
    const-string v0, "RADIO_COUNT"

    goto/16 :goto_2

    :pswitch_1
    const-string v0, "INSERT_DOWNLOAD_BASKET"

    goto/16 :goto_2

    :pswitch_2
    const-string v0, "CHANGE_AUTO_OFF"

    goto :goto_2

    :pswitch_3
    const-string v0, "setting"

    .line 153
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/bixby/v2/BixbyManager;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_4
    const-string v0, "PLAY_MY_MUSIC"

    goto :goto_2

    :pswitch_5
    const-string v0, "PAUSE"

    goto :goto_2

    :pswitch_6
    const-string v0, "CONTROL_PLAYER"

    goto :goto_2

    :pswitch_7
    const-string v0, "FIND_GENRE"

    goto :goto_2

    :pswitch_8
    const-string v0, "PLAY_THIS_ARTIST"

    goto :goto_2

    :pswitch_9
    const-string v0, "PLAY_RECOMMENDATION"

    goto :goto_2

    :pswitch_a
    const-string v0, "PLAY_SONG_BY_DATA"

    goto :goto_2

    :pswitch_b
    const-string v0, "searchType"

    .line 128
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/bixby/v2/BixbyManager;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_c
    const-string v0, "searchType"

    .line 125
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/bixby/v2/BixbyManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_d
    const-string v0, "FIND_YEAR"

    goto :goto_2

    :pswitch_e
    const-string v0, "FIND_CHART"

    goto :goto_2

    :pswitch_f
    const-string v0, "PLAY_YEAR"

    goto :goto_2

    :pswitch_10
    const-string v0, "PLAY_GENRE"

    goto :goto_2

    :pswitch_11
    const-string v0, "PLAY_CHART"

    goto :goto_2

    :pswitch_12
    const-string v0, "PLAY_TPO"

    goto :goto_2

    :pswitch_13
    const-string v0, "PLAY_JUST_FOR_YOU"

    goto :goto_2

    :pswitch_14
    const-string v0, "CHECK_PUNCH_OUT_STATE"

    goto :goto_2

    :pswitch_15
    const-string v0, "CHECK_PRECONDITION"

    .line 176
    :goto_2
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;

    invoke-direct {v1, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 178
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 180
    :cond_1
    sget-object p1, Lcom/samsung/android/app/music/bixby/v2/BixbyManager;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "convertToCommand() - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 168
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Should choose proper action for actionId."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x76fb909e -> :sswitch_17
        -0x76c45ef9 -> :sswitch_16
        -0x722a0ca4 -> :sswitch_15
        -0x6a78d171 -> :sswitch_14
        -0x5f7c1ea7 -> :sswitch_13
        -0x5d9e8a18 -> :sswitch_12
        -0x52f3d51e -> :sswitch_11
        -0x4fa66564 -> :sswitch_10
        -0x411ed920 -> :sswitch_f
        -0x3d9da2ef -> :sswitch_e
        -0x3d9b0fc7 -> :sswitch_d
        -0x39c47190 -> :sswitch_c
        -0x343969f4 -> :sswitch_b
        -0x2a6dbc20 -> :sswitch_a
        -0x113dc2fb -> :sswitch_9
        -0x86f139 -> :sswitch_8
        -0x4fbf94 -> :sswitch_7
        0xc1ccd -> :sswitch_6
        0x1363efe -> :sswitch_5
        0x3258bc82 -> :sswitch_4
        0x562df694 -> :sswitch_3
        0x57d9de3c -> :sswitch_2
        0x5ad9bd0c -> :sswitch_1
        0x5adc5034 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
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
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getActionIds()[Ljava/lang/String;
    .locals 24
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "viv.samsungMusicApp.GetAppStatus"

    const-string v1, "viv.samsungMusicApp.GetPunchOutStatus"

    const-string v2, "viv.samsungMusicApp.PlaySong"

    const-string v3, "viv.samsungMusicApp.PlaySongByData"

    const-string v4, "viv.samsungMusicApp.PlayJustForYou"

    const-string v5, "viv.samsungMusicApp.PlayTPO"

    const-string v6, "viv.samsungMusicApp.PlayChart"

    const-string v7, "viv.samsungMusicApp.PlayGenre"

    const-string v8, "viv.samsungMusicApp.PlayYear"

    const-string v9, "viv.samsungMusicApp.PlayMyMusic"

    const-string v10, "viv.samsungMusicApp.PlaySimilar"

    const-string v11, "viv.samsungMusicApp.FindSong"

    const-string v12, "viv.samsungMusicApp.FindChart"

    const-string v13, "viv.samsungMusicApp.FindGenre"

    const-string v14, "viv.samsungMusicApp.FindYear"

    const-string v15, "viv.samsungMusicApp.DownloadSong"

    const-string v16, "viv.samsungMusicApp.CheckUsage"

    const-string v17, "viv.samsungMusicApp.PauseSong"

    const-string v18, "viv.samsungMusicApp.ControlSong"

    const-string v19, "viv.samsungMusicApp.SettingOn"

    const-string v20, "viv.samsungMusicApp.SettingOff"

    const-string v21, "viv.samsungMusicApp.SleeptimerOn"

    const-string v22, "viv.samsungMusicApp.SleeptimerOff"

    const-string v23, "viv.samsungMusicApp.PlayThisArtist"

    .line 50
    filled-new-array/range {v0 .. v23}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
