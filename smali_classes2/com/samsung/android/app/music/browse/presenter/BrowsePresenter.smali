.class public Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;
.super Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/browse/IBrowseMvp$MvpPresenter;


# static fields
.field private static final a:Ljava/lang/String; = "BrowsePresenter"


# instance fields
.field private final b:Landroid/app/Activity;

.field private final c:Lcom/samsung/android/app/music/browse/IBrowseMvp$MvpView;

.field private d:Lcom/samsung/android/app/music/network/NetworkManager;

.field private e:I

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:I

.field private i:Z

.field private j:Z

.field private k:Lio/reactivex/disposables/CompositeDisposable;

.field private final l:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

.field private final m:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

.field private final n:Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/music/browse/BrowseFragment;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;-><init>()V

    .line 76
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->k:Lio/reactivex/disposables/CompositeDisposable;

    .line 191
    new-instance v0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$1;-><init>(Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->l:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    .line 402
    new-instance v0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$8;-><init>(Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->m:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    .line 413
    new-instance v0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$9;-><init>(Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->n:Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;

    .line 79
    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/BrowseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->b:Landroid/app/Activity;

    .line 80
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->c:Lcom/samsung/android/app/music/browse/IBrowseMvp$MvpView;

    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->b:Landroid/app/Activity;

    instance-of v0, v0, Lcom/samsung/android/app/music/network/NetworkManager;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->b:Landroid/app/Activity;

    check-cast v0, Lcom/samsung/android/app/music/network/NetworkManager;

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->d:Lcom/samsung/android/app/music/network/NetworkManager;

    :cond_0
    const/4 v0, 0x0

    .line 84
    iput v0, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->e:I

    .line 85
    iput v0, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->h:I

    .line 86
    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/BrowseFragment;->getUserVisibleHint()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->i:Z

    .line 87
    iput-boolean v0, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->j:Z

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;I)I
    .locals 0

    .line 50
    iput p1, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->e:I

    return p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;)Lcom/samsung/android/app/music/browse/IBrowseMvp$MvpView;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->c:Lcom/samsung/android/app/music/browse/IBrowseMvp$MvpView;

    return-object p0
.end method

.method private static a(Landroid/content/Context;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/browse/main/BrowseMainModel;",
            ">;"
        }
    .end annotation

    .line 377
    sget-object v0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->a:Ljava/lang/String;

    const-string v1, "requestBrowseMain"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-static {p0}, Lcom/samsung/android/app/music/network/request/browse/PersonalCurationApi;->a(Landroid/content/Context;)Lio/reactivex/Observable;

    move-result-object v0

    .line 379
    invoke-static {p0}, Lcom/samsung/android/app/music/network/request/browse/GlobalCurationApi;->a(Landroid/content/Context;)Lio/reactivex/Observable;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$7;

    invoke-direct {v1}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$7;-><init>()V

    .line 378
    invoke-static {v0, p0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;Lcom/samsung/android/app/music/network/NetworkInfo;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->a(Lcom/samsung/android/app/music/network/NetworkInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;Ljava/lang/Throwable;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Lcom/samsung/android/app/music/network/NetworkInfo;)V
    .locals 4

    .line 201
    iget-object v0, p1, Lcom/samsung/android/app/music/network/NetworkInfo;->a:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v0, v0, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    .line 203
    :cond_0
    iget-object p1, p1, Lcom/samsung/android/app/music/network/NetworkInfo;->d:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean p1, p1, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 206
    :goto_0
    sget-object v0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateNetworkUi NetworkState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", dataState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 209
    :pswitch_0
    iget p1, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->e:I

    if-eqz p1, :cond_3

    const/4 p1, 0x3

    iget v0, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->e:I

    if-ne p1, v0, :cond_2

    goto :goto_1

    .line 213
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->c:Lcom/samsung/android/app/music/browse/IBrowseMvp$MvpView;

    invoke-interface {p1}, Lcom/samsung/android/app/music/browse/IBrowseMvp$MvpView;->b()V

    .line 214
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->c:Lcom/samsung/android/app/music/browse/IBrowseMvp$MvpView;

    invoke-interface {p1}, Lcom/samsung/android/app/music/browse/IBrowseMvp$MvpView;->c()V

    goto :goto_2

    .line 210
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->a()V

    .line 211
    iput v1, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->e:I

    goto :goto_2

    .line 219
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->c:Lcom/samsung/android/app/music/browse/IBrowseMvp$MvpView;

    invoke-interface {v0}, Lcom/samsung/android/app/music/browse/IBrowseMvp$MvpView;->b()V

    .line 220
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->c:Lcom/samsung/android/app/music/browse/IBrowseMvp$MvpView;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/browse/IBrowseMvp$MvpView;->a(I)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 2

    .line 175
    iget-boolean v0, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->i:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 179
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 181
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->h:I

    .line 182
    iget v0, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->h:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    return-void

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->c:Lcom/samsung/android/app/music/browse/IBrowseMvp$MvpView;

    invoke-interface {v0}, Lcom/samsung/android/app/music/browse/IBrowseMvp$MvpView;->b()V

    .line 186
    new-instance v0, Lcom/samsung/android/app/music/browse/list/BrowseErrorHandlerImpl;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/browse/list/BrowseErrorHandlerImpl;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseErrorHandlerImpl;->a(Ljava/lang/Throwable;)V

    .line 187
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->d:Lcom/samsung/android/app/music/network/NetworkManager;

    invoke-interface {p1}, Lcom/samsung/android/app/music/network/NetworkManager;->getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->a(Lcom/samsung/android/app/music/network/NetworkInfo;)V

    const/4 p1, 0x3

    .line 188
    iput p1, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->e:I

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;)Landroid/app/Activity;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 50
    sget-object v0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->a:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->k:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->b:Landroid/app/Activity;

    invoke-static {v1}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->a(Landroid/content/Context;)Lio/reactivex/Observable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    .line 227
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$2;-><init>(Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;)V

    .line 228
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->b(Lio/reactivex/Observer;)Lio/reactivex/Observer;

    move-result-object v1

    check-cast v1, Lio/reactivex/disposables/Disposable;

    .line 226
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->a(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method static synthetic c(Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->f()V

    return-void
.end method

.method private d()V
    .locals 3

    .line 258
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->k:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->b:Landroid/app/Activity;

    invoke-static {v1}, Lcom/samsung/android/app/music/network/request/browse/PersonalCurationApi;->a(Landroid/content/Context;)Lio/reactivex/Observable;

    move-result-object v1

    .line 259
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$3;-><init>(Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;)V

    .line 260
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->b(Lio/reactivex/Observer;)Lio/reactivex/Observer;

    move-result-object v1

    check-cast v1, Lio/reactivex/disposables/Disposable;

    .line 258
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->a(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method static synthetic d(Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->g:Z

    return p0
.end method

.method private e()V
    .locals 3

    .line 297
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->k:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->b:Landroid/app/Activity;

    invoke-static {v1}, Lcom/samsung/android/app/music/network/request/browse/GlobalCurationApi;->a(Landroid/content/Context;)Lio/reactivex/Observable;

    move-result-object v1

    .line 298
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$4;-><init>(Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;)V

    .line 299
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->b(Lio/reactivex/Observer;)Lio/reactivex/Observer;

    move-result-object v1

    check-cast v1, Lio/reactivex/disposables/Disposable;

    .line 297
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->a(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method static synthetic e(Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->g()V

    return-void
.end method

.method private f()V
    .locals 2

    .line 336
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$5;-><init>(Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Lcom/samsung/android/app/music/service/milk/login/UserInfoReceiver;)V

    return-void
.end method

.method private g()V
    .locals 3

    .line 348
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->k:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->b:Landroid/app/Activity;

    invoke-static {v1}, Lcom/samsung/android/app/music/network/transport/BrowseTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/BrowseTransport;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/music/network/transport/BrowseTransport;->c()Lio/reactivex/Observable;

    move-result-object v1

    .line 349
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter$6;-><init>(Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;)V

    .line 350
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->b(Lio/reactivex/Observer;)Lio/reactivex/Observer;

    move-result-object v1

    check-cast v1, Lio/reactivex/disposables/Disposable;

    .line 348
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->a(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 145
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->b:Landroid/app/Activity;

    .line 146
    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a()Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/UserInfo;->isAccountSignedIn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->g:Z

    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->b:Landroid/app/Activity;

    const-string v1, "key_browse_personal_curation_json_data"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->b:Landroid/app/Activity;

    const-string v3, "key_browse_global_curation_json_data"

    invoke-static {v1, v3, v2}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    sget-object v3, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadBrowseGroups isSigned : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->g:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", pcd: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", gcd: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->c()V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    .line 155
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->e()V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    .line 157
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->d()V

    goto :goto_0

    .line 159
    :cond_2
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 160
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->c:Lcom/samsung/android/app/music/browse/IBrowseMvp$MvpView;

    invoke-interface {v1}, Lcom/samsung/android/app/music/browse/IBrowseMvp$MvpView;->b()V

    .line 161
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->c:Lcom/samsung/android/app/music/browse/IBrowseMvp$MvpView;

    iget-object v3, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->b:Landroid/app/Activity;

    iget-object v4, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->b:Landroid/app/Activity;

    const-string v5, "key_browse_personal_curation_json_data"

    .line 163
    invoke-static {v4, v5, v2}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;

    .line 162
    invoke-virtual {v0, v4, v5}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;

    iget-object v5, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->b:Landroid/app/Activity;

    const-string v6, "key_browse_global_curation_json_data"

    .line 165
    invoke-static {v5, v6, v2}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v5, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;

    .line 164
    invoke-virtual {v0, v2, v5}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;

    .line 162
    invoke-static {v4, v0}, Lcom/samsung/android/app/music/model/browse/main/BrowseMainModel;->create(Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;)Lcom/samsung/android/app/music/model/browse/main/BrowseMainModel;

    move-result-object v0

    .line 161
    invoke-static {v3, v0}, Lcom/samsung/android/app/music/browse/util/BrowseUtils;->a(Landroid/content/Context;Lcom/samsung/android/app/music/model/browse/main/BrowseMainModel;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/samsung/android/app/music/browse/IBrowseMvp$MvpView;->a(Ljava/util/List;Z)V

    .line 167
    iput v2, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->e:I

    .line 169
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->d()V

    .line 170
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->e()V

    :goto_0
    return-void
.end method

.method public onFragmentCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 99
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;->onFragmentCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .line 100
    sget-object p1, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->a:Ljava/lang/String;

    const-string p2, "onFragmentCreated"

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->m:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->registerObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;)V

    .line 102
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->b:Landroid/app/Activity;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->n:Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;)V

    return-void
.end method

.method public onFragmentDestroyed(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 136
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;->onFragmentDestroyed(Landroid/support/v4/app/Fragment;)V

    .line 137
    sget-object p1, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->a:Ljava/lang/String;

    const-string v0, "onFragmentDestroyed"

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->m:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->unregisterObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;)V

    .line 139
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->b:Landroid/app/Activity;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->n:Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->b(Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;)V

    .line 140
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->k:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p1}, Lio/reactivex/disposables/CompositeDisposable;->a()V

    return-void
.end method

.method public onFragmentStarted(Landroid/support/v4/app/Fragment;)V
    .locals 2
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 107
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;->onFragmentStarted(Landroid/support/v4/app/Fragment;)V

    .line 108
    sget-object p1, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFragmentStarted mIsUserChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 109
    iput p1, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->e:I

    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->d:Lcom/samsung/android/app/music/network/NetworkManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->l:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/network/NetworkManager;->addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->f:Ljava/util/List;

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->f:Ljava/util/List;

    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 116
    iput-object v0, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->f:Ljava/util/List;

    .line 117
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->a()V

    .line 120
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->j:Z

    if-eqz v0, :cond_2

    .line 121
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->d()V

    .line 122
    iput-boolean p1, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->j:Z

    :cond_2
    return-void
.end method

.method public onFragmentStopped(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 128
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;->onFragmentStopped(Landroid/support/v4/app/Fragment;)V

    .line 129
    sget-object p1, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->a:Ljava/lang/String;

    const-string v0, "onFragmentStopped"

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 130
    iput p1, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->e:I

    .line 131
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->d:Lcom/samsung/android/app/music/network/NetworkManager;

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->l:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/network/NetworkManager;->removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    return-void
.end method

.method public setFragmentUserVisibleHint(Landroid/support/v4/app/Fragment;Z)V
    .locals 2
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 92
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;->setFragmentUserVisibleHint(Landroid/support/v4/app/Fragment;Z)V

    .line 93
    sget-object p1, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFragmentUserVisibleHint isVisibleToUser: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iput-boolean p2, p0, Lcom/samsung/android/app/music/browse/presenter/BrowsePresenter;->i:Z

    return-void
.end method
