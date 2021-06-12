.class public Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;
.super Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;-><init>(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;Landroid/app/Activity;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;)Lio/reactivex/Observable;
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;->c(Landroid/app/Activity;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private b(Landroid/app/Activity;)Lio/reactivex/Observable;
    .locals 6
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;",
            ">;"
        }
    .end annotation

    .line 192
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;->a(Landroid/app/Activity;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    .line 193
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->g()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    .line 195
    new-instance v1, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b010a

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->b(I)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;->b:Landroid/content/Context;

    const-string v3, "com.samsung.radio.KEY_STORE_DATA_CONFIGS_PURCHASE_POPUP_TEXT"

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;->b:Landroid/content/Context;

    const v5, 0x7f0b046e

    .line 198
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 197
    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 196
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->c(Ljava/lang/CharSequence;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v1

    const-string v2, "940"

    .line 200
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v1

    const-string v2, "9423"

    new-instance v3, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$6;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$6;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;Lio/reactivex/subjects/PublishSubject;)V

    const v4, 0x7f0b02d3

    .line 201
    invoke-virtual {v1, v4, v2, v3}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v1

    .line 208
    invoke-virtual {v1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a()Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v2, "blockTrack"

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-object v0
.end method

.method private b(Landroid/app/Activity;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;)Lio/reactivex/Observable;
    .locals 6
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

    .line 77
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;->a(Landroid/app/Activity;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    .line 78
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->g()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    .line 80
    new-instance v1, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b010a

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->b(I)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;->b:Landroid/content/Context;

    const-string v3, "com.samsung.radio.KEY_STORE_DATA_CONFIGS_PURCHASE_POPUP_TEXT"

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;->b:Landroid/content/Context;

    const v5, 0x7f0b046e

    .line 83
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 82
    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->c(Ljava/lang/CharSequence;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v1

    const-string v2, "940"

    .line 85
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v1

    const-string v2, "9424"

    new-instance v3, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$4;

    invoke-direct {v3, p0, v0, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$4;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;Lio/reactivex/subjects/PublishSubject;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;)V

    const p2, 0x7f0b01d1

    .line 86
    invoke-virtual {v1, p2, v2, v3}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object p2

    const-string v1, "9423"

    new-instance v2, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$3;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$3;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;Lio/reactivex/subjects/PublishSubject;)V

    const v3, 0x7f0b00cd

    .line 133
    invoke-virtual {p2, v3, v1, v2}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->b(ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object p2

    .line 139
    invoke-virtual {p2}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a()Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;

    move-result-object p2

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v1, "buyTrack"

    invoke-virtual {p2, p1, v1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-object v0
.end method

.method private c(Landroid/app/Activity;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;)Lio/reactivex/Observable;
    .locals 3
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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "BasketPurchasable"

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " - requestBilling is called"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->g()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;->b:Landroid/content/Context;

    iget-object p2, p2, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;->c:Ljava/util/ArrayList;

    .line 150
    invoke-static {v1, p2}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Tracks;->a(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p2

    .line 151
    new-instance v1, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;-><init>(Landroid/app/Activity;)V

    const-string p1, "@"

    .line 152
    invoke-static {p1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$5;

    invoke-direct {v2, p0, p2, v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$5;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;Ljava/util/ArrayList;Lio/reactivex/subjects/PublishSubject;)V

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->a(Ljava/lang/String;Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$OnBillingStateListener;)V

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/app/Activity;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;)Lio/reactivex/Observable;
    .locals 3
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

    const-string v0, "BasketPurchasable"

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " purchaseItemInternal "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;->b(Landroid/app/Activity;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$2;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;Landroid/app/Activity;)V

    .line 52
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 58
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$1;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$1;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;)V

    .line 59
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasedItems;)Lio/reactivex/Observable;
    .locals 0
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

    .line 187
    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method protected b(Landroid/support/v4/app/FragmentActivity;)Lio/reactivex/Observable;
    .locals 3
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

    .line 214
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "key_purchase_block"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;->b(Landroid/app/Activity;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 218
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;->b(Landroid/support/v4/app/FragmentActivity;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
