.class public abstract Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/downloadbasket/Purchasable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasableException;,
        Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasedItems;
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:Landroid/content/Context;

.field protected c:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasedItems;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableList;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "BasketPurchasable"

    .line 62
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;->a:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;->b:Landroid/content/Context;

    .line 91
    instance-of v0, p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableList;

    if-eqz v0, :cond_0

    .line 92
    check-cast p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableList;

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;->d:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableList;

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;[J)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[J)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 406
    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$12;

    invoke-direct {v0, p0, p2, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$12;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;[JLandroid/content/Context;)V

    invoke-static {v0}, Lio/reactivex/Observable;->a(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/content/Context;[JILjava/lang/String;)Lio/reactivex/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[JI",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 336
    new-instance v6, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$11;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$11;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;[JILjava/lang/String;Landroid/content/Context;)V

    invoke-static {v6}, Lio/reactivex/Observable;->a(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;",
            ">;"
        }
    .end annotation

    .line 296
    iget-boolean v0, p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;->d:Z

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a()Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object v0

    .line 298
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->a(Landroid/content/Context;Lcom/samsung/android/app/music/model/UserInfo;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "BasketPurchasable"

    const-string v0, "display explicit dialog"

    .line 300
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    new-instance p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasableException;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasableException;-><init>(I)V

    .line 302
    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "BasketPurchasable"

    const-string v1, "checked explicit - onNext"

    .line 305
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;)Lio/reactivex/Observable;
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;->b()Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;Landroid/content/Context;[J)Lio/reactivex/Observable;
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;->a(Landroid/content/Context;[J)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;)Lio/reactivex/Observable;
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;->a(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, "BasketPurchasable"

    const-string v1, "query order id"

    .line 432
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    if-eqz p1, :cond_4

    .line 437
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "track_id = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 440
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$PurchasedTracks;->a()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 441
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "orderId"

    .line 443
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    move-object v1, p2

    .line 439
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p1, :cond_1

    if-eqz v1, :cond_0

    .line 445
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    throw p2

    :cond_2
    :goto_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    const-string p1, "BasketPurchasable"

    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query order id  track : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",  orderid : "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;",
            ">;"
        }
    .end annotation

    .line 270
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->g()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    .line 271
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;->d:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableList;

    new-instance v2, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$10;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$10;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;Lio/reactivex/subjects/PublishSubject;)V

    invoke-interface {v1, v2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableList;->a(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$OnCheckedPurchasableItemIdListener;)V

    return-object v0
.end method

.method private c()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 286
    invoke-static {}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasableException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasableException;-><init>(I)V

    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "BasketPurchasable"

    const-string v1, "checked storage - onNext"

    .line 289
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 290
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Landroid/support/v4/app/Fragment;
    .locals 1

    .line 97
    instance-of v0, p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketFragmentGetter;

    if-eqz v0, :cond_0

    .line 98
    check-cast p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketFragmentGetter;

    invoke-interface {p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketFragmentGetter;->b()Landroid/support/v4/app/Fragment;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected abstract a(Landroid/app/Activity;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;)Lio/reactivex/Observable;
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasedItems;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract a(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasedItems;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasedItems;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasedItems;",
            ">;"
        }
    .end annotation
.end method

.method protected a(Landroid/app/Activity;Ljava/util/ArrayList;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 175
    invoke-static {p2}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->a(Ljava/util/ArrayList;)[J

    move-result-object p2

    .line 177
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;->a(Landroid/content/Context;[JILjava/lang/String;)Lio/reactivex/Observable;

    move-result-object p3

    .line 178
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object p4

    invoke-virtual {p3, p4}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p3

    new-instance p4, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$6;

    invoke-direct {p4, p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$6;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;Landroid/app/Activity;[J)V

    .line 179
    invoke-virtual {p3, p4}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p2

    .line 185
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object p3

    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p2

    new-instance p3, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$5;

    invoke-direct {p3, p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$5;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;Landroid/app/Activity;)V

    .line 186
    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;->c:Lio/reactivex/subjects/PublishSubject;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;->c:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0}, Lio/reactivex/subjects/PublishSubject;->onComplete()V

    .line 115
    :cond_0
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->g()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;->c:Lio/reactivex/subjects/PublishSubject;

    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;->c:Lio/reactivex/subjects/PublishSubject;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$2;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;)V

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/PublishSubject;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$1;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;Landroid/support/v4/app/FragmentActivity;)V

    .line 122
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    .line 145
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;->b(Landroid/support/v4/app/FragmentActivity;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$4;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$4;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;Landroid/support/v4/app/FragmentActivity;)V

    .line 146
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$3;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;)V

    .line 152
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method protected a(Landroid/support/v4/app/FragmentActivity;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasableException;)V
    .locals 3

    .line 311
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a()Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object v0

    .line 312
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasableException;->getErrorCode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    .line 313
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;->b:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->a(Landroid/content/Context;Lcom/samsung/android/app/music/model/UserInfo;)I

    move-result p1

    if-eqz p1, :cond_3

    .line 315
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;->b:Landroid/content/Context;

    const-string v0, "explicit-invalid"

    .line 316
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 315
    invoke-static {p2, v0, p1}, Lcom/samsung/android/app/music/milk/MilkDialogLauncher;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 318
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasableException;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_1

    .line 319
    new-instance p2, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;->b:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b01cd

    .line 320
    invoke-virtual {p2, v0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(I)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object p2

    const v0, 0x7f0b01cc

    .line 321
    invoke-virtual {p2, v0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->b(I)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object p2

    const-string v0, "943"

    .line 322
    invoke-virtual {p2, v0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object p2

    const v0, 0x7f0b02d3

    const-string v1, "9431"

    const/4 v2, 0x0

    .line 323
    invoke-virtual {p2, v0, v1, v2}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object p2

    .line 324
    invoke-virtual {p2}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a()Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;

    move-result-object p2

    .line 325
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v0, "NotEnoughMemory"

    invoke-virtual {p2, p1, v0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    .line 326
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasableException;->getErrorCode()I

    move-result v0

    if-ne p1, v0, :cond_2

    const-string p1, "BasketPurchasable"

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "server error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasableException;->getErrorMsg()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "BasketPurchasable"

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "ERR_FAIL_TO_PURCHASE : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasableException;->getErrorMsg()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected b(Landroid/support/v4/app/FragmentActivity;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentActivity;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;",
            ">;"
        }
    .end annotation

    .line 217
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;->c()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$9;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$8;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;)V

    .line 222
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$7;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$7;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;Landroid/support/v4/app/FragmentActivity;)V

    .line 228
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
