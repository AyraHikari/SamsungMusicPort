.class public final Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest$PlayingData;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;

.field private c:Lcom/samsung/android/app/music/model/UserInfo;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;->a:Landroid/content/Context;

    .line 55
    iget-object p1, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;->b:Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/samsung/android/app/music/model/ResponseModel;ZZ)I
    .locals 0
    .param p2    # Lcom/samsung/android/app/music/model/ResponseModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    const-string p1, "SV-Player"

    .line 141
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "getPlayingData - "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/ResponseModel;->getResultCode()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/ResponseModel;->getResultCode()I

    move-result p1

    return p1

    :cond_0
    if-eqz p4, :cond_1

    const/4 p1, -0x4

    return p1

    :cond_1
    if-eqz p3, :cond_2

    .line 146
    iget-object p2, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;->b:Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->d()Z

    move-result p2

    if-eqz p2, :cond_2

    const/16 p1, 0x32c8

    return p1

    .line 148
    :cond_2
    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->c(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, -0x3

    return p1

    :cond_3
    const/4 p1, -0x2

    return p1
.end method

.method private a(Lcom/samsung/android/app/music/model/Track;Lcom/samsung/android/app/music/model/UserInfo;Z)I
    .locals 1
    .param p1    # Lcom/samsung/android/app/music/model/Track;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 176
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;->a:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->a(Landroid/content/Context;Lcom/samsung/android/app/music/model/UserInfo;)I

    move-result p2

    .line 177
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/Track;->isExplicit()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    add-int/lit16 p2, p2, 0x2710

    return p2

    .line 179
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/Track;->getAudioUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->b(Landroid/net/Uri;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "1"

    .line 180
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/Track;->getIndividualOnly()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "1"

    .line 181
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/Track;->getPreviewSongOnly()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 185
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    const/16 p1, 0x2af8

    return p1

    :cond_2
    if-eqz p3, :cond_3

    .line 187
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/Track;->isRadioPlaylimitOver()Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x36b0

    return p1

    :cond_3
    const/16 p1, 0x2ee0

    return p1

    :cond_4
    :goto_0
    const-string p2, "SV-Player"

    .line 182
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Individual or preview only. individual="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/Track;->getIndividualOnly()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x3a98

    return p1

    :cond_5
    const/4 p1, -0x1

    return p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;)I
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;->c()I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;ZZZ)I
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;->a(ZZZ)I

    move-result p0

    return p0
.end method

.method private a(ZZZ)I
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    if-eqz p3, :cond_1

    if-eqz p2, :cond_1

    .line 159
    iget-object p1, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;->b:Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x2

    return p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;Lcom/samsung/android/app/music/model/UserInfo;)Lcom/samsung/android/app/music/model/UserInfo;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;->c:Lcom/samsung/android/app/music/model/UserInfo;

    return-object p1
.end method

.method private a()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/UserInfo;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->b()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Throwable;)Z
    .locals 1

    .line 90
    instance-of v0, p1, Lcom/samsung/android/app/music/service/milk/exception/SignInFailException;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/samsung/android/app/music/service/milk/exception/SignInFailException;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private a(Z)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 97
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;->b:Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->d()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    return v1

    .line 100
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;->b:Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->h()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 101
    iget-object p1, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkDormancyNotificationUtils;->a(Landroid/content/Context;)V

    return v1

    :cond_2
    return v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Z)Lio/reactivex/Observable;
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/TrackListInfo;",
            ">;"
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;->a()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest$1;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest$1;-><init>(Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private b()Z
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/queue/PlayerSettingManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->isExplicitAllowed()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;)Z
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;->b()Z

    move-result p0

    return p0
.end method

.method private c()I
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/queue/PlayerSettingManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    move-result-object v0

    const v1, 0x80002

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getListenQuality(I)I

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;)Landroid/content/Context;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest$PlayingData;
    .locals 5
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 64
    :try_start_0
    invoke-direct {p0, p3}, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;->a(Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;->b(Ljava/lang/String;Ljava/lang/String;Z)Lio/reactivex/Observable;

    move-result-object p1

    const-wide/16 v2, 0x2710

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 66
    invoke-virtual {p1, v2, v3, p2}, Lio/reactivex/Observable;->b(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Observable;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/model/TrackListInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    const/4 p2, 0x0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 69
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;->a(Ljava/lang/Throwable;)Z

    move-result p2

    .line 72
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "SV-Player"

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPlayingData: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_1

    .line 76
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/TrackListInfo;->getResultCode()I

    move-result v2

    if-nez v2, :cond_1

    .line 77
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/TrackListInfo;->getTracks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/model/Track;

    goto :goto_2

    :cond_1
    move-object v0, v1

    :goto_2
    if-nez v0, :cond_2

    .line 81
    new-instance v0, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest$PlayingData;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;->a:Landroid/content/Context;

    .line 82
    invoke-direct {p0, v2, p1, p3, p2}, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;->a(Landroid/content/Context;Lcom/samsung/android/app/music/model/ResponseModel;ZZ)I

    move-result p1

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest$PlayingData;-><init>(ILcom/samsung/android/app/music/model/Track;)V

    move-object p1, v0

    goto :goto_3

    .line 84
    :cond_2
    new-instance p1, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest$PlayingData;

    iget-object p2, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;->c:Lcom/samsung/android/app/music/model/UserInfo;

    invoke-direct {p0, v0, p2, p3}, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;->a(Lcom/samsung/android/app/music/model/Track;Lcom/samsung/android/app/music/model/UserInfo;Z)I

    move-result p2

    invoke-direct {p1, p2, v0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest$PlayingData;-><init>(ILcom/samsung/android/app/music/model/Track;)V

    :goto_3
    return-object p1
.end method
