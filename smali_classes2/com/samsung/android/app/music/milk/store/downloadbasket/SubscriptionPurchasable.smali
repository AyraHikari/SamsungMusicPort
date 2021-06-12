.class public Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;
.super Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;-><init>(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 104
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/network/request/order/OrderTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/request/order/OrderTransport;

    move-result-object p1

    .line 105
    invoke-interface {p1, p2, p3}, Lcom/samsung/android/app/music/network/request/order/OrderTransport;->a(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$3;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$3;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;)V

    .line 106
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;Landroid/app/Activity;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;)Lio/reactivex/Observable;
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;->b(Landroid/app/Activity;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private b(Landroid/app/Activity;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;)Lio/reactivex/Observable;
    .locals 5
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
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "BasketPurchasable"

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " - observableDeduction"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;->a(Landroid/app/Activity;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionGetter;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionGetter;->k()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 76
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 78
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;->b:Landroid/content/Context;

    iget-object p2, p2, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;->c:Ljava/util/ArrayList;

    .line 79
    invoke-static {v1, p2}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Tracks;->a(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p2

    .line 81
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    .line 82
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 83
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/model/purchase/SimpleSubscription;

    if-eqz v2, :cond_0

    const-string v4, "@"

    .line 85
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    :cond_0
    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/purchase/SimpleSubscription;->getOrderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "BasketPurchasable"

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " -  order list : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "BasketPurchasable"

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " - dedurctoin count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@"

    invoke-static {v1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 95
    :cond_2
    new-instance p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasableException;

    const/16 p2, -0xa

    const-string v0, " itemsDeduction subscription is null or count 0"

    invoke-direct {p1, p2, v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasableException;-><init>(ILjava/lang/String;)V

    .line 96
    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private c(Landroid/app/Activity;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;)Lio/reactivex/Observable;
    .locals 12
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
            "Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;",
            ">;"
        }
    .end annotation

    .line 142
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;->a(Landroid/app/Activity;)Landroid/support/v4/app/Fragment;

    .line 144
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->g()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    .line 146
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;->a(Landroid/app/Activity;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionGetter;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 147
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;->a(Landroid/app/Activity;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionGetter;

    invoke-interface {v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionGetter;->m()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v3, "BasketPurchasable"

    .line 152
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "availableCount["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x7f0b00cd

    const v4, 0x7f0b01d1

    if-lez v1, :cond_1

    .line 155
    new-instance v5, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;->b:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;->b:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0016

    iget-object v8, p2, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;->c:Ljava/util/ArrayList;

    .line 157
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    iget-object v11, p2, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;->c:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v2

    .line 156
    invoke-virtual {v6, v7, v8, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 155
    invoke-virtual {v5, v6}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(Ljava/lang/CharSequence;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;->b:Landroid/content/Context;

    .line 158
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d000f

    iget-object v8, p2, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;->c:Ljava/util/ArrayList;

    .line 160
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p2, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;->c:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    .line 158
    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->b(Ljava/lang/CharSequence;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v2

    const-string v5, "939"

    .line 161
    invoke-virtual {v2, v5}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v2

    const-string v5, "9422"

    new-instance v6, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$5;

    invoke-direct {v6, p0, p2, v1, v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$5;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;ILio/reactivex/subjects/PublishSubject;)V

    .line 162
    invoke-virtual {v2, v4, v5, v6}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object p2

    const-string v1, "9421"

    new-instance v2, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$4;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$4;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;Lio/reactivex/subjects/PublishSubject;)V

    .line 214
    invoke-virtual {p2, v3, v1, v2}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->b(ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object p2

    .line 221
    invoke-virtual {p2}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a()Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;

    move-result-object p2

    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    .line 222
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v1, "buyTrack"

    invoke-virtual {p2, p1, v1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-object v0

    .line 227
    :cond_1
    new-instance p2, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;->b:Landroid/content/Context;

    invoke-direct {p2, v1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b01cb

    .line 228
    invoke-virtual {p2, v1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(I)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object p2

    const v1, 0x7f0b01d0

    .line 229
    invoke-virtual {p2, v1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->b(I)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object p2

    const-string v1, "947"

    .line 230
    invoke-virtual {p2, v1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object p2

    const-string v1, "9442"

    new-instance v2, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$6;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;)V

    .line 231
    invoke-virtual {p2, v4, v1, v2}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object p2

    const-string v1, "9441"

    .line 243
    invoke-virtual {p2, v3, v1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(ILjava/lang/String;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object p2

    .line 244
    invoke-virtual {p2}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a()Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;

    move-result-object p2

    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    .line 245
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v1, "countZero"

    invoke-virtual {p2, p1, v1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 247
    invoke-virtual {v0}, Lio/reactivex/subjects/PublishSubject;->onComplete()V

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/app/Activity;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;)Lio/reactivex/Observable;
    .locals 2
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

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;->c(Landroid/app/Activity;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$2;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;Landroid/app/Activity;)V

    .line 49
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$1;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$1;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;)V

    .line 56
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasedItems;)Lio/reactivex/Observable;
    .locals 1
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

    .line 253
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/network/request/usermy/SubscriptionApis;->a(Landroid/content/Context;)V

    .line 254
    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
