.class public Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/recommend/SeedRefreshScheduler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler$LastRefreshTime;,
        Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler$AccessingCount;,
        Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler$ScheduleCondition;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler$ScheduleCondition;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyTrackIdGetter;

.field private c:Lio/reactivex/disposables/Disposable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler;->a:Ljava/util/List;

    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler;->a:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler$AccessingCount;

    invoke-direct {v1}, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler$AccessingCount;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler;->a:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler$LastRefreshTime;

    const-wide/32 v2, 0x5265c00

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler$LastRefreshTime;-><init>(JLcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyTrackIdGetter;

    invoke-direct {v0}, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyTrackIdGetter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler;->b:Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyTrackIdGetter;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler;)Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyTrackIdGetter;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler;->b:Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyTrackIdGetter;

    return-object p0
.end method

.method private a(Landroid/content/Context;Lcom/samsung/android/app/music/recommend/SeedConfiguration;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/music/recommend/SeedConfiguration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 74
    new-instance v0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler$3;-><init>(Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler;Lcom/samsung/android/app/music/recommend/SeedConfiguration;Landroid/content/Context;)V

    invoke-static {v0}, Lio/reactivex/Completable;->a(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    const-string p2, "SpotifyRefreshScheduler"

    const-string v0, "scheduleInternal"

    .line 81
    invoke-static {p2, v0}, Lcom/samsung/android/app/music/util/rx/CompletableLogger;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/util/rx/CompletableLogger;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Completable;->a(Lio/reactivex/CompletableTransformer;)Lio/reactivex/Completable;

    move-result-object p1

    .line 82
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Completable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler$1;-><init>(Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler;)V

    new-instance v0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler$2;-><init>(Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler;)V

    .line 83
    invoke-virtual {p1, p2, v0}, Lio/reactivex/Completable;->a(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler;->c:Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/samsung/android/app/music/recommend/SeedConfiguration;Z)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/music/recommend/SeedConfiguration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "SpotifyRefreshScheduler"

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "schedule. force - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler;->c:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler;->c:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "SpotifyRefreshScheduler"

    const-string p2, "schedule. previous observable is still running.."

    .line 46
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_1

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler;->a(Landroid/content/Context;Lcom/samsung/android/app/music/recommend/SeedConfiguration;)V

    goto :goto_0

    .line 55
    :cond_1
    iget-object p3, p0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler;->a:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler$ScheduleCondition;

    .line 56
    invoke-interface {v2, p1}, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler$ScheduleCondition;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string p3, "SpotifyRefreshScheduler"

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "schedule. canSchedule. condition - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler;->a(Landroid/content/Context;Lcom/samsung/android/app/music/recommend/SeedConfiguration;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    .line 66
    iget-object p2, p0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler;->a:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler$ScheduleCondition;

    .line 67
    invoke-interface {p3, p1}, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler$ScheduleCondition;->b(Landroid/content/Context;)V

    goto :goto_1

    :cond_4
    return-void
.end method
