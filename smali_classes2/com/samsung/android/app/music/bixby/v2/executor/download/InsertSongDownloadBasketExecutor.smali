.class public Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v2/CommandExecutor;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

.field private c:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

.field private final d:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor$1;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;->d:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;
    .locals 4

    .line 180
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result p2

    const/4 v0, -0x1

    if-nez p2, :cond_0

    const-string p1, "InsertSongDownloadBasketExecutor"

    const-string p2, "No songs currently playing"

    .line 181
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const-string p2, "Music_14_7"

    invoke-direct {p1, v0, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    return-object p1

    .line 186
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyMusicMetadata;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p1, "InsertSongDownloadBasketExecutor"

    const-string p2, "Can not find the information of current song. Please try again"

    .line 187
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const-string p2, "Music_14_2"

    invoke-direct {p1, v0, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    return-object p1

    .line 192
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isCeleb()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p1, "InsertSongDownloadBasketExecutor"

    const-string p2, "Can not download this song because this is celeb song."

    .line 193
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const-string p2, "Music_14_3"

    invoke-direct {p1, v0, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    return-object p1

    .line 198
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide v1

    long-to-int p2, v1

    invoke-static {p2}, Lcom/samsung/android/app/music/provider/CpAttrs;->d(I)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "InsertSongDownloadBasketExecutor"

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not download this song because this song is not downloadable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 199
    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const-string p2, "Music_14_4"

    invoke-direct {p1, v0, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;->a(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;",
            ">;"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/network/request/order/DownloadBasketApis;->a(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private a(ILjava/lang/String;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 231
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;ILjava/lang/String;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;->a(ILjava/lang/String;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;->a(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V

    return-void
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V
    .locals 0
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 235
    invoke-interface {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    return-void
.end method

.method private a()Z
    .locals 6

    .line 212
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;->a:Landroid/content/Context;

    .line 213
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$DownloadBasket;->a()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    .line 214
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0xc8

    .line 215
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gt v3, v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v0, :cond_1

    .line 217
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, v1

    .line 212
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_3

    if-eqz v2, :cond_2

    .line 217
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    throw v1

    :cond_4
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    return v1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;Lcom/samsung/android/app/music/model/purchase/VerifiedTrack;)Z
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;->a(Lcom/samsung/android/app/music/model/purchase/VerifiedTrack;)Z

    move-result p0

    return p0
.end method

.method private a(Lcom/samsung/android/app/music/model/purchase/VerifiedTrack;)Z
    .locals 1

    const-string v0, "01"

    .line 207
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/purchase/VerifiedTrack;->getStatusCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private b()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/UserInfo;",
            ">;"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->b()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;->c()V

    return-void
.end method

.method static synthetic c(Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;)Landroid/content/Context;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;->a:Landroid/content/Context;

    return-object p0
.end method

.method private c()V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;->b:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;->b:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->b()V

    const/4 v0, 0x0

    .line 241
    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;->b:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;)Lio/reactivex/Observable;
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;->b()Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public execute(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "InsertSongDownloadBasketExecutor"

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    sget-boolean p2, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    const/4 v0, -0x1

    if-nez p2, :cond_0

    const-string p1, "InsertSongDownloadBasketExecutor"

    const-string p2, "execute() - Cannot perform because false support milk feature."

    .line 61
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const-string p2, "Music_0_8"

    invoke-direct {p1, v0, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    return-void

    .line 66
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;->a:Landroid/content/Context;

    .line 67
    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    .line 70
    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    const-string p1, "Music_14_8"

    .line 71
    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;->a(ILjava/lang/String;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V

    .line 72
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;->c()V

    return-void

    .line 76
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;->a()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p1, "InsertSongDownloadBasketExecutor"

    const-string p2, "Maximum number of songs reached"

    .line 77
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Music_14_5"

    .line 78
    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;->a(ILjava/lang/String;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V

    .line 79
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;->c()V

    return-void

    .line 83
    :cond_2
    new-instance p2, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    iget-object p3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;->d:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;

    invoke-direct {p2, p1, p3}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;->b:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    .line 84
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;->b:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->a()V

    return-void
.end method
