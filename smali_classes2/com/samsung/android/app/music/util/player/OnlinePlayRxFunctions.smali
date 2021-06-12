.class public Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(ILcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$OnPlayContentResultListener;)Lio/reactivex/ObservableTransformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$OnPlayContentResultListener;",
            ")",
            "Lio/reactivex/ObservableTransformer<",
            "Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;",
            "Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;",
            ">;"
        }
    .end annotation

    .line 273
    new-instance v0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$10;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$10;-><init>(Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$OnPlayContentResultListener;I)V

    return-object v0
.end method

.method public static a(ILcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$OnPlayRadioResultListener;)Lio/reactivex/ObservableTransformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$OnPlayRadioResultListener;",
            ")",
            "Lio/reactivex/ObservableTransformer<",
            "Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;",
            "Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;",
            ">;"
        }
    .end annotation

    .line 304
    new-instance v0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$11;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$11;-><init>(Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$OnPlayRadioResultListener;I)V

    return-object v0
.end method

.method public static a(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;Ljava/lang/String;)Lio/reactivex/functions/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/functions/Consumer<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lio/reactivex/functions/Function;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/functions/Function<",
            "Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$InternalTrackListModel;",
            "Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;",
            ">;"
        }
    .end annotation

    .line 138
    new-instance v0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$5;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/functions/Function<",
            "Lcom/samsung/android/app/music/model/UserInfo;",
            "Lio/reactivex/ObservableSource<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 62
    new-instance v0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/functions/Function<",
            "Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 78
    new-instance v0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$3;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;ZI)Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZI)",
            "Lio/reactivex/functions/Function<",
            "Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;",
            "Lio/reactivex/ObservableSource<",
            "Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;",
            ">;>;"
        }
    .end annotation

    .line 229
    new-instance v0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$9;

    invoke-direct {v0, p2, p0, p1}, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$9;-><init>(ILjava/lang/String;Z)V

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/functions/Function<",
            "Ljava/lang/String;",
            "Lio/reactivex/ObservableSource<",
            "Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;",
            ">;>;"
        }
    .end annotation

    .line 218
    new-instance v0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$8;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/functions/Function<",
            "Ljava/lang/String;",
            "Lio/reactivex/ObservableSource<",
            "Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;",
            ">;>;"
        }
    .end annotation

    .line 208
    new-instance v0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$7;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$7;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/functions/Function<",
            "Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;",
            "Lio/reactivex/ObservableSource<",
            "Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;",
            ">;>;"
        }
    .end annotation

    .line 169
    new-instance v0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$6;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/functions/Function<",
            "Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;",
            "Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;",
            ">;"
        }
    .end annotation

    .line 334
    new-instance v0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$12;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$12;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/functions/Function<",
            "Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailModel;",
            "Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;",
            ">;"
        }
    .end annotation

    .line 352
    new-instance v0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$13;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$13;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
