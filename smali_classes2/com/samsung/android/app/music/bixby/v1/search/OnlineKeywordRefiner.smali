.class public final Lcom/samsung/android/app/music/bixby/v1/search/OnlineKeywordRefiner;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/bixby/v1/search/OnlineKeywordRefiner$OnOnlineKeywordRefineListener;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/search/OnlineKeywordRefiner;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v1/search/OnlineKeywordRefiner;Ljava/lang/String;)Z
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v1/search/OnlineKeywordRefiner;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 110
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 111
    invoke-static {p1}, Lcom/samsung/android/app/music/util/UiUtils;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/samsung/android/app/music/bixby/v1/search/OnlineKeywordRefiner$OnOnlineKeywordRefineListener;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/music/bixby/v1/search/OnlineKeywordRefiner$OnOnlineKeywordRefineListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "OnlineKeywordRefiner"

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refine() - keyword: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/search/OnlineKeywordRefiner;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/network/transport/SearchTransport$Proxy;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/SearchTransport;

    move-result-object v0

    const-string v1, "3"

    sget-object v2, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreConstant;->a:[Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreConstant$SearchSortItem;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreConstant$SearchSortItem;->b:Ljava/lang/String;

    const-string v3, "1"

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/samsung/android/app/music/network/transport/SearchTransport;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 44
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/bixby/v1/search/OnlineKeywordRefiner$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/android/app/music/bixby/v1/search/OnlineKeywordRefiner$1;-><init>(Lcom/samsung/android/app/music/bixby/v1/search/OnlineKeywordRefiner;Lcom/samsung/android/app/music/bixby/v1/search/OnlineKeywordRefiner$OnOnlineKeywordRefineListener;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
