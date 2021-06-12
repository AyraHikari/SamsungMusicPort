.class public final Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayTpoExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v2/CommandExecutor;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Function<",
            "Lcom/samsung/android/app/music/model/bixby/RulePlaylistResponse;",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 82
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayTpoExecutor$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayTpoExecutor$3;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayTpoExecutor;)V

    return-object v0
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

    .line 110
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayTpoExecutor$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayTpoExecutor$4;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayTpoExecutor;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayTpoExecutor;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayTpoExecutor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayTpoExecutor;->a:Ljava/lang/String;

    return-object p1
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

    const-string v0, "PlayTpoExecutor"

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executeObservable() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tpoType"

    .line 59
    invoke-virtual {p2, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 61
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 62
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const-string p2, "Music_6_4"

    invoke-direct {p1, v1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 65
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/util/StoreExecutorUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 67
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    invoke-direct {p1, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 70
    :cond_1
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/network/request/bixby/BixbyApis;->b(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p2

    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayTpoExecutor;->a()Lio/reactivex/functions/Function;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p2

    .line 71
    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayTpoExecutor;->a(Landroid/content/Context;)Lio/reactivex/functions/Function;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayTpoExecutor$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayTpoExecutor$2;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayTpoExecutor;Landroid/content/Context;)V

    .line 72
    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->c(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/music/util/rx/ObservableLogger;

    const-string v0, "PlayTpoExecutor"

    const-string v1, "execute"

    invoke-direct {p2, v0, v1}, Lcom/samsung/android/app/music/util/rx/ObservableLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->a(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public execute(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V
    .locals 1
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
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayTpoExecutor;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;)Lio/reactivex/Observable;

    move-result-object p1

    .line 46
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayTpoExecutor$1;

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayTpoExecutor$1;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayTpoExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V

    const-string v0, "Music_6_3"

    .line 52
    invoke-static {p3, v0}, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions;->a(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;Ljava/lang/String;)Lio/reactivex/functions/Consumer;

    move-result-object p3

    .line 47
    invoke-virtual {p1, p2, p3}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
