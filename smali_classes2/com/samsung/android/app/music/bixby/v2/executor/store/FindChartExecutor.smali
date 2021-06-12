.class public Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v2/CommandExecutor;


# static fields
.field private static final a:Ljava/lang/String; = "FindChartExecutor"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;)Lio/reactivex/functions/Function;
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor;->a(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;)Lio/reactivex/functions/Function;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;)Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;",
            ")",
            "Lio/reactivex/functions/Function<",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/TrackModel;",
            ">;",
            "Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;",
            ">;"
        }
    .end annotation

    .line 162
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor$6;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor$6;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;)V

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)Lio/reactivex/Observable;
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;",
            "Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;",
            ">;"
        }
    .end annotation

    .line 63
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor$4;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor;Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;)V

    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor$3;

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor$3;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V

    .line 132
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->b(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor$2;

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor$2;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V

    .line 137
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method a(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/TrackModel;",
            ">;>;"
        }
    .end annotation

    .line 148
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/network/request/browse/PlaylistDetailApi;->a(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor$5;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor$5;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor;)V

    .line 149
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->c(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

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

    .line 50
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor;->a:Ljava/lang/String;

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

    .line 52
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor$1;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor;)V

    .line 53
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
