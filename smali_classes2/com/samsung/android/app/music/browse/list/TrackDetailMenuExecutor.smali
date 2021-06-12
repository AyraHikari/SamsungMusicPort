.class public Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/milk/share/ShareItemCreator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$OnResultListener;
    }
.end annotation


# instance fields
.field private a:Landroid/support/v4/app/FragmentActivity;

.field private b:Landroid/support/v4/app/FragmentManager;

.field private c:Lcom/samsung/android/app/music/list/favorite/FavoriteManager;

.field private d:Lcom/samsung/android/app/music/list/favorite/AddResultListener;

.field private e:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

.field private f:J

.field private g:Lcom/samsung/android/app/music/browse/list/BrowseShareable;

.field private h:Landroid/support/v4/app/DialogFragment;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 74
    iput-wide v0, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->f:J

    .line 81
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->a:Landroid/support/v4/app/FragmentActivity;

    .line 82
    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->b:Landroid/support/v4/app/FragmentManager;

    .line 83
    new-instance p2, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p2, v0}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->c:Lcom/samsung/android/app/music/list/favorite/FavoriteManager;

    .line 84
    new-instance p2, Lcom/samsung/android/app/music/browse/list/BrowseShareableImpl;

    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-direct {p2, p1, v0, p0, v1}, Lcom/samsung/android/app/music/browse/list/BrowseShareableImpl;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/samsung/android/app/music/milk/share/ShareItemCreator;I)V

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->g:Lcom/samsung/android/app/music/browse/list/BrowseShareable;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;)J
    .locals 2

    .line 60
    iget-wide v0, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->f:J

    return-wide v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;J)J
    .locals 0

    .line 60
    iput-wide p1, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->f:J

    return-wide p1
.end method

.method private a(II)V
    .locals 4

    .line 358
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->a:Landroid/support/v4/app/FragmentActivity;

    const-string v1, "TrackDetailMenuExecutor"

    .line 359
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showError. rspType - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", result - "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    const/16 p1, 0x22c5

    if-ne p2, p1, :cond_3

    .line 362
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->h:Landroid/support/v4/app/DialogFragment;

    if-nez p1, :cond_0

    .line 363
    invoke-static {}, Lcom/samsung/android/app/music/dialog/BanCountExceedDialog;->a()Lcom/samsung/android/app/music/dialog/BanCountExceedDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->h:Landroid/support/v4/app/DialogFragment;

    .line 365
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->h:Landroid/support/v4/app/DialogFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/DialogFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "TrackDetailMenuExecutor"

    const-string p2, "dialog is showing"

    .line 366
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 369
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->h:Landroid/support/v4/app/DialogFragment;

    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->b:Landroid/support/v4/app/FragmentManager;

    const-string v0, "banCountExceed"

    invoke-virtual {p1, p2, v0}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 372
    :cond_2
    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->toString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 373
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    const/4 p2, 0x0

    .line 374
    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/music/milk/MilkToast;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;II)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->a(II)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;)Lcom/samsung/android/app/music/list/favorite/FavoriteManager;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->c:Lcom/samsung/android/app/music/list/favorite/FavoriteManager;

    return-object p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;)Landroid/support/v4/app/FragmentActivity;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->a:Landroid/support/v4/app/FragmentActivity;

    return-object p0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;)Lcom/samsung/android/app/music/model/base/TrackInfoModel;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->e:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    return-object p0
.end method

.method private h()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "[J>;"
        }
    .end annotation

    .line 345
    new-instance v0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$8;-><init>(Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;)V

    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/support/v4/app/FragmentManager;)V
    .locals 7

    .line 252
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->e:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    if-nez v0, :cond_0

    const-string p1, "TrackDetailMenuExecutor"

    const-string v0, "TrackInfo is null"

    .line 253
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, ""

    .line 256
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->e:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getTrackId()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->e:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getTrackTitle()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->e:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    .line 257
    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getArtistList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/util/BrowseUtils;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->e:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getLyricsUrl()Ljava/lang/String;

    move-result-object v6

    move-object v2, p1

    .line 256
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->a(Ljava/lang/String;Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$OnResultListener;)V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->e:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    if-nez v0, :cond_0

    const-string p1, "TrackDetailMenuExecutor"

    const-string v0, "TrackInfo is null"

    .line 93
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 96
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$1;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, p0, v1, p1}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$1;-><init>(Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;Landroid/support/v4/app/FragmentActivity;Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$OnResultListener;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->d:Lcom/samsung/android/app/music/list/favorite/AddResultListener;

    .line 110
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->h()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$3;-><init>(Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 122
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$2;-><init>(Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$OnResultListener;)V

    .line 123
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/model/base/TrackInfoModel;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->e:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    return-void
.end method

.method public a(ZLcom/samsung/android/app/music/browse/list/OnBannedTrackStatusChangedListener;)V
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->e:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    if-nez v0, :cond_0

    const-string p1, "TrackDetailMenuExecutor"

    const-string p2, "TrackInfo is null"

    .line 297
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 301
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/network/transport/UserMyTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/UserMyTransport;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->e:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    .line 302
    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getTrackId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/model/milkhistory/HiddenTrackList;->create(Ljava/lang/String;)Lcom/samsung/android/app/music/model/milkhistory/HiddenTrackList;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/music/network/transport/UserMyTransport;->a(ILcom/samsung/android/app/music/model/milkhistory/HiddenTrackList;)Lio/reactivex/Observable;

    move-result-object p1

    .line 303
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$6;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$6;-><init>(Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;Lcom/samsung/android/app/music/browse/list/OnBannedTrackStatusChangedListener;)V

    .line 304
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    goto :goto_0

    .line 323
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/network/transport/UserMyTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/UserMyTransport;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->e:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    .line 324
    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getTrackId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/model/milkhistory/HiddenTrackList;->create(Ljava/lang/String;)Lcom/samsung/android/app/music/model/milkhistory/HiddenTrackList;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/music/network/transport/UserMyTransport;->b(ILcom/samsung/android/app/music/model/milkhistory/HiddenTrackList;)Lio/reactivex/Observable;

    move-result-object p1

    .line 325
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$7;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$7;-><init>(Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;Lcom/samsung/android/app/music/browse/list/OnBannedTrackStatusChangedListener;)V

    .line 326
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    :goto_0
    return-void
.end method

.method public a(ZLcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$OnResultListener;)V
    .locals 5

    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->e:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    if-nez v0, :cond_0

    const-string p1, "TrackDetailMenuExecutor"

    const-string p2, "TrackInfo is null"

    .line 135
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 138
    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->f:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 140
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->c:Lcom/samsung/android/app/music/list/favorite/FavoriteManager;

    new-array v1, v1, [J

    iget-wide v2, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->f:J

    aput-wide v2, v1, v0

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->deleteFavoriteTracksAsync([J)V

    if-eqz p2, :cond_3

    .line 142
    invoke-interface {p2, v0}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$OnResultListener;->a(Z)V

    goto :goto_0

    .line 145
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->c:Lcom/samsung/android/app/music/list/favorite/FavoriteManager;

    new-array v2, v1, [J

    iget-wide v3, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->f:J

    aput-wide v3, v2, v0

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->d:Lcom/samsung/android/app/music/list/favorite/AddResultListener;

    .line 146
    invoke-virtual {p1, v2, v0}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->addFavoriteTracksAsync([JLcom/samsung/android/app/music/list/favorite/AddResultListener;)V

    if-eqz p2, :cond_3

    .line 148
    invoke-interface {p2, v1}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$OnResultListener;->a(Z)V

    goto :goto_0

    :cond_2
    const-string p1, "TrackDetailMenuExecutor"

    const-string p2, "favorite - mAudioId is invalid"

    .line 152
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(ZZ)V
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->e:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    if-nez v0, :cond_0

    const-string p1, "TrackDetailMenuExecutor"

    const-string p2, "TrackInfo is null"

    .line 262
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 265
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a()Lcom/samsung/android/app/music/browse/BrowseLauncher$ActivityRequesterFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$ActivityRequesterFactory;->c()Lcom/samsung/android/app/music/browse/BrowseLauncher$TrackDetailActivityRequester;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->e:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getTrackId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$TrackDetailActivityRequester;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/BrowseLauncher$TrackDetailActivityRequester;

    .line 266
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$TrackDetailActivityRequester;->a(Z)Lcom/samsung/android/app/music/browse/BrowseLauncher$TrackDetailActivityRequester;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/browse/BrowseLauncher$TrackDetailActivityRequester;->b(Z)Lcom/samsung/android/app/music/browse/BrowseLauncher$TrackDetailActivityRequester;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/browse/BrowseLauncher$TrackDetailActivityRequester;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public a()Z
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->g:Lcom/samsung/android/app/music/browse/list/BrowseShareable;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->g:Lcom/samsung/android/app/music/browse/list/BrowseShareable;

    invoke-interface {v0}, Lcom/samsung/android/app/music/browse/list/BrowseShareable;->l()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/share/Share;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "TrackDetailMenuExecutor"

    const-string v2, "performShare. not shareable now"

    .line 162
    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->g:Lcom/samsung/android/app/music/browse/list/BrowseShareable;

    invoke-interface {v0}, Lcom/samsung/android/app/music/browse/list/BrowseShareable;->m_()V

    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    const-string v0, "TrackDetailMenuExecutor"

    const-string v2, "performShare. can\'t share or shareable null"

    .line 158
    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public b()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->e:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    if-nez v0, :cond_0

    const-string v0, "TrackDetailMenuExecutor"

    const-string v1, "TrackInfo is null"

    .line 171
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 174
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->h()Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$4;-><init>(Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;)V

    .line 175
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public b(Landroid/support/v4/app/FragmentManager;)V
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->e:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    if-nez v0, :cond_0

    const-string p1, "TrackDetailMenuExecutor"

    const-string v0, "TrackInfo is null"

    .line 280
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 283
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a()Lcom/samsung/android/app/music/browse/BrowseLauncher$ActivityRequesterFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$ActivityRequesterFactory;->b()Lcom/samsung/android/app/music/browse/BrowseLauncher$ArtistActivityRequester;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->e:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getArtistList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$ArtistActivityRequester;->a(Landroid/support/v4/app/FragmentManager;Ljava/util/List;)Lcom/samsung/android/app/music/browse/BrowseLauncher$ArtistActivityRequester;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->a:Landroid/support/v4/app/FragmentActivity;

    .line 284
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$ArtistActivityRequester;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public b(Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$OnResultListener;)V
    .locals 6

    .line 199
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->e:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    if-nez v0, :cond_0

    const-string p1, "TrackDetailMenuExecutor"

    const-string v0, "TrackInfo is null"

    .line 200
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 203
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 204
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->e:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    .line 205
    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getTrackId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    iget-object v3, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->e:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getTrackTitle()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->e:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getAlbumTitle()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->e:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    .line 206
    invoke-virtual {v5}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getArtistList()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/app/music/browse/util/BrowseUtils;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    .line 205
    invoke-static {v1, v2, v3, v4, v5}, Lcom/samsung/android/app/music/network/request/post/recommend/TrackPostBody;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/network/request/post/recommend/TrackPostBody;

    move-result-object v1

    .line 204
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/network/request/post/recommend/PlayerPostBody;->create(Ljava/util/List;)Lcom/samsung/android/app/music/network/request/post/recommend/PlayerPostBody;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/network/request/recommend/RecommendApis;->a(Landroid/content/Context;Lcom/samsung/android/app/music/network/request/post/recommend/PlayerPostBody;)Lio/reactivex/Observable;

    move-result-object v0

    .line 209
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$5;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$5;-><init>(Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$OnResultListener;)V

    .line 210
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public c()V
    .locals 3

    .line 188
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->e:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    if-nez v0, :cond_0

    const-string v0, "TrackDetailMenuExecutor"

    const-string v1, "TrackInfo is null"

    .line 189
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 192
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 193
    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->e:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getTrackId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "@"

    .line 194
    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->e:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    if-nez v0, :cond_0

    const-string v0, "TrackDetailMenuExecutor"

    const-string v1, "TrackInfo is null"

    .line 271
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v0, 0x64

    .line 274
    invoke-static {v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->b(I)Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->e:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getAlbumId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->a:Landroid/support/v4/app/FragmentActivity;

    .line 275
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public e()V
    .locals 3

    .line 288
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->e:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    if-nez v0, :cond_0

    const-string v0, "TrackDetailMenuExecutor"

    const-string v1, "TrackInfo is null"

    .line 289
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->e:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getMvId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->e:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->isMvExplicit()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    return-void
.end method

.method public f()Lcom/samsung/android/app/music/milk/share/ShareItem;
    .locals 5

    .line 381
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->q_()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TrackDetailMenuExecutor"

    const-string v1, "createShareItem. item null"

    .line 382
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 385
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/milk/share/ShareItem;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->e:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getTrackId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->e:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getTrackTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->e:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    .line 386
    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getLargeSizeAlbumArtUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->e:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getArtistList()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/app/music/browse/util/BrowseUtils;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/milk/share/ShareItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public q_()Z
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->e:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
