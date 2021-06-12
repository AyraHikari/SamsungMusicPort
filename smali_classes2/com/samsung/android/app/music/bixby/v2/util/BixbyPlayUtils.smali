.class public final Lcom/samsung/android/app/music/bixby/v2/util/BixbyPlayUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;",
            ">;"
        }
    .end annotation

    .line 44
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v2/util/BixbyPlayUtils;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    new-instance p0, Lcom/samsung/android/app/music/util/player/CanNotPlayRadioByAdException;

    invoke-direct {p0}, Lcom/samsung/android/app/music/util/player/CanNotPlayRadioByAdException;-><init>()V

    invoke-static {p0}, Lio/reactivex/Observable;->a(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    .line 47
    invoke-static {p0, p1, v0}, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->a(Landroid/content/Context;Ljava/lang/String;Z)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private static a()Z
    .locals 2

    .line 34
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getRadioMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isAdvertisement()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BixbyPlayUtils"

    const-string v1, "isAvailableRadioQueueChange. adv now playing. so can\'t change queue."

    .line 36
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static a(Ljava/lang/Throwable;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)Z
    .locals 3
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 56
    instance-of v0, p0, Lcom/samsung/android/app/music/util/player/CanNotPlayRadioByAdException;

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    .line 57
    new-instance p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const-string v0, "Music_0_20"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    .line 58
    invoke-interface {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    return v1

    .line 60
    :cond_0
    instance-of p0, p0, Lcom/samsung/android/app/music/util/player/CanNotPlaySimultaneousException;

    if-eqz p0, :cond_1

    .line 61
    new-instance p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const-string v0, "Music_0_17"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    .line 62
    invoke-interface {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
