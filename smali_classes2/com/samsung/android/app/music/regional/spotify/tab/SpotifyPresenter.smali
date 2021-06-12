.class public Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/regional/spotify/tab/ISpotifyTabMvp$MvpPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;,
        Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyHandler;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "SpotifyPresenter"


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/os/Handler;

.field private d:Lcom/samsung/android/app/music/regional/spotify/tab/ISpotifyTabMvp$MvpView;

.field private e:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel;

.field private f:Z

.field private g:Z

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/regional/spotify/tab/ISpotifyTabMvp$MvpView;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyHandler;-><init>(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;->c:Landroid/os/Handler;

    .line 45
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;->b:Landroid/content/Context;

    .line 46
    new-instance p1, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel;

    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;->b:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;->e:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel;

    .line 47
    iput-object p2, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;->d:Lcom/samsung/android/app/music/regional/spotify/tab/ISpotifyTabMvp$MvpView;

    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;->g:Z

    .line 49
    iput p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;->h:I

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;->h:I

    return p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;->f:Z

    return p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;->g:Z

    return p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;)Lcom/samsung/android/app/music/regional/spotify/tab/ISpotifyTabMvp$MvpView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;->d:Lcom/samsung/android/app/music/regional/spotify/tab/ISpotifyTabMvp$MvpView;

    return-object p0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;->h:I

    return p0
.end method

.method static synthetic e(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;)Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;->f()Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;->a:Ljava/lang/String;

    return-object v0
.end method

.method private f()Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;
    .locals 4

    .line 81
    invoke-direct {p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;->g()Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;

    move-result-object v0

    .line 82
    sget-object v1, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;->NO_ERROR:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;

    if-eq v0, v1, :cond_0

    .line 83
    sget-object v1, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadSpotifyPlaylistAfterCheckError : errorType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 83
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 88
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;->a:Ljava/lang/String;

    const-string v1, "loadSpotifyPlaylistAfterCheckError : in"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-direct {p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;->h()V

    .line 91
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;->NO_ERROR:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;

    return-object v0
.end method

.method static synthetic f(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;)Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;->g()Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;

    move-result-object p0

    return-object p0
.end method

.method private g()Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;
    .locals 4

    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    sget-object v1, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkServiceState : network is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;->NO_CONNECTION:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;

    return-object v0

    .line 101
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;->a:Ljava/lang/String;

    const-string v1, "checkServiceState : no error"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;->NO_ERROR:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;

    return-object v0
.end method

.method private h()V
    .locals 2

    .line 106
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;->a:Ljava/lang/String;

    const-string v1, "requestSpotifyPlaylist()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-boolean v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;->g:Z

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;->d:Lcom/samsung/android/app/music/regional/spotify/tab/ISpotifyTabMvp$MvpView;

    invoke-interface {v0}, Lcom/samsung/android/app/music/regional/spotify/tab/ISpotifyTabMvp$MvpView;->a()V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;->e:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel;->a()Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 113
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;->i()Lio/reactivex/functions/Function;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->c(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$1;-><init>(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;)V

    .line 114
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;->e:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTabModel;->b()Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 137
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;->i()Lio/reactivex/functions/Function;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->c(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$2;-><init>(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;)V

    .line 138
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private i()Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Function<",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistView;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistView;",
            ">;>;"
        }
    .end annotation

    .line 176
    new-instance v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$3;-><init>(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;->f:Z

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;->f:Z

    .line 60
    iput-boolean v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;->g:Z

    return-void
.end method

.method public c()V
    .locals 3

    .line 65
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;->a:Ljava/lang/String;

    const-string v1, "loadSpotifyPlaylists : in"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;->h:I

    .line 68
    invoke-direct {p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;->f()Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;

    move-result-object v1

    .line 69
    sget-object v2, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;->NO_ERROR:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    sget-object v2, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;->NO_CONNECTION:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;

    if-ne v1, v2, :cond_1

    .line 72
    sget-object v1, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;->a:Ljava/lang/String;

    const-string v2, "loadSpotifyPlaylists : NO_CONNECTION"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;->d:Lcom/samsung/android/app/music/regional/spotify/tab/ISpotifyTabMvp$MvpView;

    const/4 v2, -0x1

    invoke-interface {v1, v0, v2}, Lcom/samsung/android/app/music/regional/spotify/tab/ISpotifyTabMvp$MvpView;->a(II)V

    goto :goto_0

    .line 75
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;->a:Ljava/lang/String;

    const-string v1, "loadSpotifyPlaylists: retryLoad"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;->d()V

    :goto_0
    return-void
.end method

.method public d()V
    .locals 4

    .line 170
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;->a:Ljava/lang/String;

    const-string v1, "retryLoad()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;->h:I

    .line 172
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
