.class public Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteRetriever;
.super Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteRetriever$AutoComplteResultHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever<",
        "Lcom/samsung/android/app/music/model/milksearch/SearchAutoCompleteInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/samsung/android/app/music/milk/store/search/IStoreSearchView;

.field private b:Landroid/content/Context;

.field private c:Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteRetriever$AutoComplteResultHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteRetriever$AutoComplteResultHandler<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchAutoCompleteInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/search/IStoreSearchView;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteRetriever;->b:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteRetriever;->a:Lcom/samsung/android/app/music/milk/store/search/IStoreSearchView;

    .line 39
    new-instance p1, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteRetriever$AutoComplteResultHandler;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteRetriever$AutoComplteResultHandler;-><init>(Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteRetriever;->c:Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteRetriever$AutoComplteResultHandler;

    return-void
.end method

.method private a(ILcom/samsung/android/app/music/model/milksearch/SearchAutoCompleteInfo;)V
    .locals 2
    .param p2    # Lcom/samsung/android/app/music/model/milksearch/SearchAutoCompleteInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 82
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    .line 83
    iput v1, v0, Landroid/os/Message;->what:I

    .line 84
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 85
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 86
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteRetriever;->c:Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteRetriever$AutoComplteResultHandler;

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteRetriever$AutoComplteResultHandler;->removeMessages(I)V

    .line 87
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteRetriever;->c:Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteRetriever$AutoComplteResultHandler;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteRetriever$AutoComplteResultHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private a(ILcom/samsung/android/app/music/model/milksearch/SearchAutoCompleteInfo;J)V
    .locals 2
    .param p2    # Lcom/samsung/android/app/music/model/milksearch/SearchAutoCompleteInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 73
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    .line 74
    iput v1, v0, Landroid/os/Message;->what:I

    .line 75
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 76
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 77
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteRetriever;->c:Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteRetriever$AutoComplteResultHandler;

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteRetriever$AutoComplteResultHandler;->removeMessages(I)V

    .line 78
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteRetriever;->c:Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteRetriever$AutoComplteResultHandler;

    invoke-virtual {p1, v0, p3, p4}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteRetriever$AutoComplteResultHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteRetriever;ILcom/samsung/android/app/music/model/milksearch/SearchAutoCompleteInfo;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteRetriever;->a(ILcom/samsung/android/app/music/model/milksearch/SearchAutoCompleteInfo;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteRetriever;->a:Lcom/samsung/android/app/music/milk/store/search/IStoreSearchView;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/store/search/IStoreSearchView;->v_()Ljava/lang/String;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteRetriever;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteRetriever;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/network/transport/SearchTransport$Proxy;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/SearchTransport;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/app/music/network/transport/SearchTransport;->b(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 48
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteRetriever$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteRetriever$1;-><init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteRetriever;I)V

    .line 49
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const-wide/16 v1, 0xc8

    .line 67
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteRetriever;->a(ILcom/samsung/android/app/music/model/milksearch/SearchAutoCompleteInfo;J)V

    :goto_0
    return-void
.end method
