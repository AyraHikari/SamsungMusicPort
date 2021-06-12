.class public final Lcom/samsung/android/app/music/bixby/v2/util/StoreExecutorUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;)Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;
    .locals 0
    .param p0    # Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 107
    new-instance p0, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;

    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;-><init>()V

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 142
    invoke-virtual {p2}, Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;->a()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    .line 143
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/bixby/v2/util/ResultConverter;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;

    move-result-object p0

    .line 144
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/result/data/StationData;

    invoke-direct {v0}, Lcom/samsung/android/app/music/bixby/v2/result/data/StationData;-><init>()V

    .line 145
    invoke-virtual {p2}, Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/StationData;->a:Ljava/lang/String;

    .line 146
    invoke-virtual {p2}, Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/StationData;->b:Ljava/lang/String;

    .line 148
    invoke-virtual {p2}, Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;->b()Z

    move-result p2

    .line 151
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    const-string p1, "actionType"

    const-string v3, "Play"

    .line 152
    invoke-virtual {v1, p1, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "resultCount"

    const/4 v3, 0x1

    .line 153
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, p1, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "searchType"

    const-string v4, "Station"

    .line 154
    invoke-virtual {v1, p1, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "trialPlay"

    .line 155
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, p1, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "playByRadio"

    .line 156
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "transientTime"

    if-eqz p2, :cond_0

    const/16 p2, 0x32

    goto :goto_0

    :cond_0
    const/16 p2, 0x96

    .line 158
    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 157
    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "disablePlayControl"

    .line 159
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "stationData"

    .line 161
    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/util/ResultConverter;->a(Lcom/samsung/android/app/music/bixby/v2/result/Jsonable;)Lorg/json/JSONArray;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addResultData(Ljava/lang/String;Lorg/json/JSONArray;)V

    const-string p1, "trackData"

    .line 162
    invoke-static {p0}, Lcom/samsung/android/app/music/bixby/v2/util/ResultConverter;->a(Lcom/samsung/android/app/music/bixby/v2/result/Jsonable;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addResultData(Ljava/lang/String;Lorg/json/JSONArray;)V

    const-string p0, "inputData"

    .line 165
    new-instance p1, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;

    invoke-direct {p1}, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;->i()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 53
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-nez v0, :cond_0

    const-string p0, "Music_0_8"

    return-object p0

    .line 55
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Music_0_7"

    return-object p0

    .line 57
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/music/bixby/v2/util/StoreExecutorUtils;->b(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {}, Lcom/samsung/android/app/music/bixby/v2/util/StoreExecutorUtils;->a()Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "Music_0_9"

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;Z)V
    .locals 1
    .param p0    # Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "transientTime"

    if-eqz p1, :cond_0

    const/16 p1, 0x32

    goto :goto_0

    :cond_0
    const/16 p1, 0x96

    .line 137
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 136
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static a()Z
    .locals 3

    .line 77
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "mobile_data"

    const/4 v2, 0x0

    .line 78
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "connectivity"

    .line 65
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "StoreExecutorUtils"

    const-string v1, "isWifiOn. connectivityManager is null!!"

    .line 68
    invoke-static {p0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 71
    :cond_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    const-string v1, "StoreExecutorUtils"

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isWifiOn. active network - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
