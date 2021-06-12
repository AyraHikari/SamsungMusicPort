.class Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StartClientHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$StartClientCondition;
    }
.end annotation


# instance fields
.field private a:Lcom/samsung/android/app/music/util/rx/ObservableFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/music/util/rx/ObservableFactory<",
            "Lcom/samsung/android/app/music/model/basic/StartClientModel;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field private c:Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;

.field private d:Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$StartClientCondition;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;->b:Landroid/content/Context;

    .line 263
    iput-object p2, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;->c:Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;

    .line 264
    new-instance p2, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$1;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$1;-><init>(Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;->a:Lcom/samsung/android/app/music/util/rx/ObservableFactory;

    .line 287
    new-instance p1, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$2;-><init>(Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;->d:Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$StartClientCondition;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;)Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;
    .locals 0

    .line 231
    iget-object p0, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;->c:Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;

    return-object p0
.end method

.method private static a()Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Function<",
            "Lcom/samsung/android/app/music/model/basic/StartClientModel;",
            "Lcom/samsung/android/app/music/model/basic/StartClientModel;",
            ">;"
        }
    .end annotation

    .line 430
    new-instance v0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$8;

    invoke-direct {v0}, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$8;-><init>()V

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 5

    const-string v0, "StartClientHandler"

    const-string v1, "doStartClient"

    .line 316
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->a()Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->d()V

    .line 318
    iget-object v0, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;->a:Lcom/samsung/android/app/music/util/rx/ObservableFactory;

    invoke-interface {v0}, Lcom/samsung/android/app/music/util/rx/ObservableFactory;->a()Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/app/music/util/rx/MusicSchedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/util/rx/ObservableLogger;

    const-string v2, "StartClientHandler"

    const-string v3, "doStartClient"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/music/util/rx/ObservableLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 320
    invoke-static {}, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;->a()Lio/reactivex/functions/Function;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->c(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 321
    invoke-static {p1}, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;->c(Landroid/content/Context;)Lio/reactivex/functions/Function;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->c(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/util/rx/RetryWithDelay;

    new-instance v2, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$4;-><init>(Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;)V

    const/4 v3, 0x2

    const/16 v4, 0xbb8

    invoke-direct {v1, v3, v4, v2}, Lcom/samsung/android/app/music/util/rx/RetryWithDelay;-><init>(IILcom/samsung/android/app/music/util/rx/RetryWithDelay$Condition;)V

    .line 322
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->e(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$3;-><init>(Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;Landroid/content/Context;)V

    .line 330
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;)Landroid/content/Context;
    .locals 0

    .line 231
    iget-object p0, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;->b:Landroid/content/Context;

    return-object p0
.end method

.method private b(Landroid/content/Context;)V
    .locals 4

    const-string v0, "StartClientHandler"

    const-string v1, "doCheckCountry"

    .line 369
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    new-instance v0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$6;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$6;-><init>(Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;Landroid/content/Context;)V

    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 381
    invoke-static {}, Lcom/samsung/android/app/music/util/rx/MusicSchedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/app/music/util/rx/MusicSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/util/rx/ObservableLogger;

    const-string v2, "StartClientHandler"

    const-string v3, "doCheckCountry"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/music/util/rx/ObservableLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$5;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$5;-><init>(Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;Landroid/content/Context;)V

    .line 383
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private static c(Landroid/content/Context;)Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/functions/Function<",
            "Lcom/samsung/android/app/music/model/basic/StartClientModel;",
            "Lcom/samsung/android/app/music/model/basic/StartClientModel;",
            ">;"
        }
    .end annotation

    .line 405
    new-instance v0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$7;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method declared-synchronized a(Z)V
    .locals 2

    monitor-enter p0

    .line 307
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;->d:Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$StartClientCondition;

    iget-object v1, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;->b:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$StartClientCondition;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;->a(Landroid/content/Context;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 310
    iget-object p1, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;->d:Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$StartClientCondition;

    iget-object v0, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;->b:Landroid/content/Context;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$StartClientCondition;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 311
    iget-object p1, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;->b:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;->b(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 306
    monitor-exit p0

    throw p1
.end method
