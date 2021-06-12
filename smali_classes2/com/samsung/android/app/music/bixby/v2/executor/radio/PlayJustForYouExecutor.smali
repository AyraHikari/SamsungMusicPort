.class public final Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v2/CommandExecutor;


# instance fields
.field private a:Lcom/samsung/android/app/music/model/base/PlayListModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor;)Lcom/samsung/android/app/music/model/base/PlayListModel;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor;->a:Lcom/samsung/android/app/music/model/base/PlayListModel;

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor;Lcom/samsung/android/app/music/model/base/PlayListModel;)Lcom/samsung/android/app/music/model/base/PlayListModel;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor;->a:Lcom/samsung/android/app/music/model/base/PlayListModel;

    return-object p1
.end method

.method private static a(Landroid/content/Context;)Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/functions/Function<",
            "Ljava/lang/String;",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;",
            ">;>;"
        }
    .end annotation

    .line 134
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor$4;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lio/reactivex/functions/Function;
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

    .line 95
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor$3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor$3;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor;->a(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 143
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;)Lio/reactivex/Observable;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;",
            ">;"
        }
    .end annotation

    const-string v0, "PlayJustForYouExecutor"

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "JustForYou"

    .line 78
    invoke-virtual {p2, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, "DailyForYou"

    .line 83
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/music/network/request/browse/PersonalCurationApi;->a(Landroid/content/Context;)Lio/reactivex/Observable;

    move-result-object v0

    .line 84
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor;->a(Ljava/lang/String;)Lio/reactivex/functions/Function;

    move-result-object p2

    invoke-virtual {v0, p2}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p2

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor;->a(Landroid/content/Context;)Lio/reactivex/functions/Function;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor$2;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor;Landroid/content/Context;)V

    .line 85
    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->c(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public execute(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V
    .locals 2
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

    .line 49
    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/util/StoreExecutorUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    invoke-direct {p0, v0, p3}, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor;->a(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V

    return-void

    .line 55
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor$1;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor;Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Lcom/samsung/android/app/music/service/milk/login/UserInfoReceiver;)V

    return-void
.end method
