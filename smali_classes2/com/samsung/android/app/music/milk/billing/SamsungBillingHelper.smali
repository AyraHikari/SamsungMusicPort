.class public Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/activity/ActivityResultDelegator$ActivityResultCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$SamsungBillingException;,
        Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$PaymentDataException;,
        Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$UnexpectedException;,
        Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$UnbindServiceHelper;,
        Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$OnBillingStateListener;,
        Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;,
        Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$ProgressUpdateHandler;,
        Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$UPCallbackHandler;,
        Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$LockReleaseRunnable;,
        Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingPackageEnableStatusListener;,
        Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;
    }
.end annotation


# static fields
.field private static k:I


# instance fields
.field private a:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

.field private b:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$ProgressUpdateHandler;

.field private c:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$UPCallbackHandler;

.field private d:Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;

.field private e:Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;

.field private f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private g:Landroid/os/Handler;

.field private h:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$OnBillingStateListener;

.field private i:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/content/Context;

.field private l:Ljava/lang/String;

.field private m:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;

.field private n:I

.field private o:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 111
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->g:Landroid/os/Handler;

    .line 127
    sget-object v0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;->DEFAULT:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->m:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;

    .line 129
    iput v1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->n:I

    .line 159
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->i:Ljava/lang/ref/WeakReference;

    .line 160
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->j:Landroid/content/Context;

    .line 161
    new-instance p1, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$UPCallbackHandler;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$UPCallbackHandler;-><init>(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->c:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$UPCallbackHandler;

    .line 162
    new-instance p1, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$ProgressUpdateHandler;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$ProgressUpdateHandler;-><init>(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->b:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$ProgressUpdateHandler;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;)Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->d:Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;

    return-object p1
.end method

.method private a(Landroid/content/Context;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;",
            ">;"
        }
    .end annotation

    .line 1013
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->m:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;

    sget-object v1, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;->SUBSCRIPTION:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;

    if-ne v0, v1, :cond_0

    .line 1014
    invoke-static {p1}, Lcom/samsung/android/app/music/network/request/order/OrderTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/request/order/OrderTransport;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->e:Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;

    .line 1015
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->e:Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;

    .line 1016
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->e:Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;->b()Ljava/lang/String;

    move-result-object v2

    .line 1015
    invoke-interface {p1, v0, v1, v2}, Lcom/samsung/android/app/music/network/request/order/OrderTransport;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 1017
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$7;-><init>(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)V

    .line 1018
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 1048
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->m:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;

    sget-object v1, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;->TRACK:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;

    if-ne v0, v1, :cond_1

    .line 1049
    invoke-static {p1}, Lcom/samsung/android/app/music/network/request/order/OrderTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/request/order/OrderTransport;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->e:Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;

    .line 1050
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/network/request/order/OrderTransport;->b(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 1051
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$8;-><init>(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)V

    .line 1052
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 1077
    :cond_1
    new-instance p1, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$UnexpectedException;

    const-string v0, "unknown request billing product type"

    invoke-direct {p1, v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$UnexpectedException;-><init>(Ljava/lang/String;)V

    .line 1078
    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/content/Context;Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "SamsungBilling"

    const-string v1, "completeOrderApi"

    .line 1125
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->m:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;

    sget-object v1, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;->SUBSCRIPTION:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;

    if-ne v0, v1, :cond_0

    .line 1127
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->n()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v0

    const-string v1, "complete_purchase"

    const-string v2, "complete_purchase"

    const-string v3, "complete_purchase"

    .line 1128
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1133
    invoke-static {p1}, Lcom/samsung/android/app/music/network/init/StartClientProviderHelper;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/init/StartClientProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/music/network/init/StartClientProvider;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1134
    invoke-static {p1}, Lcom/samsung/android/app/music/network/transport/ExternalTransport$Proxy;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/ExternalTransport;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1135
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->getNotifyUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Lcom/samsung/android/app/music/network/transport/ExternalTransport;->a(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 1136
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$14;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$14;-><init>(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)V

    .line 1137
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$13;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$13;-><init>(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)V

    .line 1144
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->d(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;Landroid/content/Context;Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->a(Landroid/content/Context;Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private a(ILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string p1, "SamsungBilling"

    const-string p2, "Canceled billing"

    .line 538
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "SamsungBilling"

    .line 540
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Samsung Billing Error [ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ,  "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private a(J)V
    .locals 2

    .line 430
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->g:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$LockReleaseRunnable;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$LockReleaseRunnable;-><init>(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private a(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;)V
    .locals 4

    .line 349
    invoke-static {}, Lcom/samsung/android/app/music/update/SamsungAppsManager;->a()Lcom/samsung/android/app/music/update/SamsungAppsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->j:Landroid/content/Context;

    const-string v2, "com.sec.android.app.billing"

    new-instance v3, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$4;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$4;-><init>(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;)V

    .line 350
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/music/update/SamsungAppsManager;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/music/update/SamsungAppsManager$ResultListener;)V

    return-void
.end method

.method private a(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;I)V
    .locals 2

    .line 550
    iget v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->n:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->n:I

    if-ne p2, v1, :cond_0

    const-string p2, "SamsungBilling"

    const-string v0, "fail to download billing app"

    .line 552
    invoke-static {p2, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    const-string p2, "SamsungBilling"

    const-string v0, "fail to install billing app"

    .line 554
    invoke-static {p2, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p2, "SamsungBilling"

    const-string v0, "undefined billing app error"

    .line 556
    invoke-static {p2, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->b(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->h()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;ILjava/lang/String;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->c(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;I)V
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->a(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;I)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;Ljava/lang/String;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    .line 869
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->n()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 873
    :cond_0
    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "PROGRESS"

    .line 874
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 878
    move-object v3, v1

    check-cast v3, Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 879
    invoke-virtual {v3, p1}, Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 881
    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    goto :goto_0

    .line 884
    :cond_2
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_3

    .line 887
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;

    move-result-object p1

    const-string v1, "PROGRESS"

    invoke-virtual {v2, p1, v1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 888
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 890
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    :cond_3
    return-void
.end method

.method private b(Landroid/content/Context;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "SamsungBilling"

    const-string v1, "observableBuyProduct"

    .line 1084
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->a(Landroid/content/Context;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$12;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$12;-><init>(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)V

    .line 1086
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$11;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$11;-><init>(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)V

    .line 1094
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$10;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$10;-><init>(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;Landroid/content/Context;)V

    .line 1100
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$9;-><init>(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)V

    .line 1114
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1154
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->p:Lio/reactivex/subjects/PublishSubject;

    if-eqz v0, :cond_0

    .line 1155
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->p:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0}, Lio/reactivex/subjects/PublishSubject;->onComplete()V

    .line 1158
    :cond_0
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->g()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->p:Lio/reactivex/subjects/PublishSubject;

    :try_start_0
    const-string v0, "SamsungBilling"

    .line 1161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestBilling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->d:Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->o()Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object v0

    .line 1164
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1165
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->d:Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1167
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->n()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v0, p1}, Lcom/samsung/android/app/music/milk/billing/UnifiedPaymentDataUtil;->a(Landroid/content/Context;Ljava/util/ArrayList;Lcom/samsung/android/app/music/model/UserInfo;Ljava/lang/String;)Lcom/sec/android/app/billing/helper/UnifiedPaymentData;

    move-result-object v7

    .line 1169
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->l()V

    const-string p1, "SamsungBilling"

    .line 1170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestBilling REQUEST_CODE_FOR_PAYMENT :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->n()Landroid/content/Context;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/app/Activity;

    if-nez v4, :cond_1

    const-string p1, "SamsungBilling"

    const-string v0, "skip to request billing as activity has been released"

    .line 1174
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    new-instance p1, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$UnexpectedException;

    const-string v0, "Stop billing. The host activity is being finished or already released."

    invoke-direct {p1, v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$UnexpectedException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 1179
    :cond_1
    move-object p1, v4

    check-cast p1, Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    sget v0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->k:I

    .line 1180
    invoke-virtual {p1, v0, p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->registerActivityResultCallback(ILcom/samsung/android/app/music/activity/ActivityResultDelegator$ActivityResultCallback;)V

    .line 1181
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->j:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/android/app/billing/helper/UPHelper;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/billing/helper/UPHelper;

    move-result-object v3

    sget v5, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->k:I

    const-string v6, "PAYMENT"

    iget-object v8, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->c:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$UPCallbackHandler;

    .line 1182
    invoke-virtual/range {v3 .. v8}, Lcom/sec/android/app/billing/helper/UPHelper;->requestBilling(Landroid/app/Activity;ILjava/lang/String;Lcom/sec/android/app/billing/helper/UnifiedPaymentData;Landroid/os/Handler;)V
    :try_end_0
    .catch Lcom/samsung/android/app/music/service/milk/exception/ServiceBindingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1192
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->b:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$ProgressUpdateHandler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$ProgressUpdateHandler;->sendEmptyMessage(I)Z

    .line 1194
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->p:Lio/reactivex/subjects/PublishSubject;

    return-object p1

    .line 1188
    :catch_0
    new-instance p1, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$SamsungBillingException;

    const/4 v0, -0x1

    const-string v1, "Stop billing. The host activity is being finished or already released."

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$SamsungBillingException;-><init>(ILjava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 1185
    :catch_1
    new-instance p1, Lcom/samsung/android/app/music/service/milk/exception/ServiceBindingException;

    const-string v0, "Stop billing. The host activity is being finished or already released."

    invoke-direct {p1, v0}, Lcom/samsung/android/app/music/service/milk/exception/ServiceBindingException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->l:Ljava/lang/String;

    return-object p1
.end method

.method private b(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;)V
    .locals 6

    .line 368
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/billing/helper/UPHelper;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/billing/helper/UPHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/billing/helper/UPHelper;->checkSamsungBilling()I

    move-result v0

    if-nez v0, :cond_0

    .line 370
    invoke-interface {p1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;->a()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "SamsungBilling"

    const-string v2, "billing error. invalid billing apk!!"

    .line 372
    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-interface {p1, v1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;->a(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 375
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->m()V

    .line 377
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->n()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 379
    new-instance v1, Lcom/samsung/android/app/music/activity/BillingPackageEnableChecker;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->j:Landroid/content/Context;

    const-string v3, "com.sec.android.app.billing"

    new-instance v4, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingPackageEnableStatusListener;

    invoke-direct {v4, p0, p1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingPackageEnableStatusListener;-><init>(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/app/music/activity/BillingPackageEnableChecker;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/music/activity/PackageEnableChecker$PackageEnableStatusListener;)V

    .line 382
    move-object p1, v1

    check-cast p1, Lcom/samsung/android/app/music/activity/BillingPackageEnableChecker;

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/music/activity/BillingPackageEnableChecker;->a(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)V

    .line 383
    new-instance p1, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;

    const-string v2, "com.sec.android.app.billing"

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->j:Landroid/content/Context;

    const v4, 0x7f0b01b6

    .line 384
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->j:Landroid/content/Context;

    const v5, 0x7f0b01b5

    .line 385
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v0, v2, v3, v4}, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->a(Lcom/samsung/android/app/music/activity/PackageEnableChecker;)V

    .line 387
    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "DISABLED_APP"

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 391
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->c(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;)V

    goto :goto_0

    :cond_3
    const-string v0, "SamsungBilling"

    const-string v1, "This is not a pre-defined billing app status. just keep billing process going."

    .line 393
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-interface {p1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;->a()V

    :cond_4
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->m()V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->b(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;)V

    return-void
.end method

.method static synthetic c(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$ProgressUpdateHandler;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->b:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$ProgressUpdateHandler;

    return-object p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->b(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private c(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;)V
    .locals 2

    .line 571
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->n()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->j:Landroid/content/Context;

    const v1, 0x7f0b0110

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->a(Ljava/lang/String;)V

    .line 575
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;-><init>(Landroid/content/Context;)V

    .line 576
    new-instance v1, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$6;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$6;-><init>(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->a(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$IDownloadServiceAPIObserver;)V

    const-string p1, "com.sec.android.app.billing"

    .line 627
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$OnBillingStateListener;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->h:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$OnBillingStateListener;

    return-object p0
.end method

.method static synthetic e(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)Ljava/lang/String;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->l:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)I
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->i()I

    move-result p0

    return p0
.end method

.method private f()V
    .locals 3

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/billing/helper/UPHelper;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/billing/helper/UPHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->c:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$UPCallbackHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/billing/helper/UPHelper;->startSetup(Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SamsungBilling"

    const-string v2, "Failed to setup payment helper"

    .line 185
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic g(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->e:Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;

    return-object p0
.end method

.method private g()V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/billing/helper/UPHelper;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/billing/helper/UPHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/billing/helper/UPHelper;->dispose()V

    return-void
.end method

.method static synthetic h(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)Landroid/content/Context;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->j:Landroid/content/Context;

    return-object p0
.end method

.method private h()V
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->j:Landroid/content/Context;

    const v1, 0x7f0b0200

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->a(Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->j:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->b(Landroid/content/Context;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 306
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$3;-><init>(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)V

    .line 307
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private i()I
    .locals 1

    .line 562
    iget v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->n:I

    return v0
.end method

.method static synthetic i(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)Landroid/os/Handler;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->g:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic j(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)Landroid/content/Context;
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->n()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private j()V
    .locals 9

    .line 717
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 720
    :cond_0
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 721
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->j:Landroid/content/Context;

    const-string v2, "notification"

    .line 722
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const v2, 0x7f02052e

    .line 723
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    const/4 v2, 0x0

    .line 724
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 725
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_1

    const-string v3, "com.samsung.android.app.music.PURCHASE"

    .line 726
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 729
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->j:Landroid/content/Context;

    const v4, 0x7f0b04f3

    .line 730
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 729
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 732
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->m:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;

    sget-object v4, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;->TRACK:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;

    const/4 v5, 0x2

    const v6, 0x7f0b0086

    const/4 v7, 0x1

    if-ne v3, v4, :cond_2

    .line 734
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->j:Landroid/content/Context;

    const v4, 0x7f0b04f2

    .line 735
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->j:Landroid/content/Context;

    .line 736
    invoke-virtual {v8, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    .line 734
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 739
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->d:Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->getProductInfo()Lcom/samsung/android/app/music/model/purchase/PaymentProductInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->d:Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;

    .line 740
    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->getProductInfo()Lcom/samsung/android/app/music/model/purchase/PaymentProductInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/purchase/PaymentProductInfo;->getProductTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 741
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->j:Landroid/content/Context;

    const v4, 0x7f0b04f1

    .line 742
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->d:Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;

    .line 743
    invoke-virtual {v8}, Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;->getProductInfo()Lcom/samsung/android/app/music/model/purchase/PaymentProductInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/app/music/model/purchase/PaymentProductInfo;->getProductTitle()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v2

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->j:Landroid/content/Context;

    .line 744
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v7

    .line 741
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    const-string v3, "SamsungBilling"

    const-string v4, "Can\'t display product title in purchase complete noti. product info could be null or its title is empty"

    .line 746
    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->j:Landroid/content/Context;

    const v4, 0x7f0b04f0

    .line 749
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->j:Landroid/content/Context;

    .line 750
    invoke-virtual {v8, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    .line 748
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 753
    :goto_0
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 754
    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v3, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 755
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 756
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 758
    invoke-static {}, Lcom/samsung/android/app/music/ActivityLauncher;->a()Landroid/content/Intent;

    move-result-object v2

    .line 759
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->j:Landroid/content/Context;

    const v4, 0x7f130036

    const/high16 v5, 0x8000000

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 763
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 764
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const v2, 0x7f130035

    .line 765
    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method static synthetic k(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)Lio/reactivex/Observable;
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->q()Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private k()Z
    .locals 2

    .line 776
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->o()Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object v0
    :try_end_0
    .catch Lcom/samsung/android/app/music/service/milk/exception/ServiceBindingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 778
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/exception/ServiceBindingException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 781
    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/UserInfo;->getEmail()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "@"

    .line 782
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic l(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->d:Lcom/samsung/android/app/music/model/purchase/PaymentDataInfo;

    return-object p0
.end method

.method private l()V
    .locals 2

    .line 795
    sget v0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->k:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->k:I

    .line 796
    sget v0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->k:I

    if-gez v0, :cond_0

    .line 797
    sput v1, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->k:I

    :cond_0
    return-void
.end method

.method static synthetic m(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)Lio/reactivex/Observable;
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->p()Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private m()V
    .locals 3

    .line 898
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->n()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 902
    :cond_0
    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "PROGRESS"

    .line 903
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 905
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 906
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 907
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    :cond_1
    return-void
.end method

.method private n()Landroid/content/Context;
    .locals 1

    .line 966
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method private o()Lcom/samsung/android/app/music/model/UserInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/music/service/milk/exception/ServiceBindingException;
        }
    .end annotation

    .line 975
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a()Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 977
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/service/milk/exception/ServiceBindingException;

    const-string v1, "can\'t get user from service!"

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/service/milk/exception/ServiceBindingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private p()Lio/reactivex/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1198
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->o:Lio/reactivex/subjects/PublishSubject;

    if-eqz v0, :cond_0

    .line 1199
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->o:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0}, Lio/reactivex/subjects/PublishSubject;->onComplete()V

    .line 1202
    :cond_0
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->g()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->o:Lio/reactivex/subjects/PublishSubject;

    const-string v0, "SamsungBilling"

    const-string v1, "request SAaccess token "

    .line 1203
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->n()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1206
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    const/16 v2, 0x2718

    .line 1207
    invoke-virtual {v1, v2, p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->registerActivityResultCallback(ILcom/samsung/android/app/music/activity/ActivityResultDelegator$ActivityResultCallback;)V

    .line 1210
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.msc.action.samsungaccount.REQUEST_ACCESSTOKEN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "client_id"

    const-string v4, "12yndwlwd1"

    .line 1211
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "client_secret"

    const-string v4, "C548D30428E8D901492340A08A969617"

    .line 1212
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "expired_access_token"

    const-string v4, ""

    .line 1213
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "progress_theme"

    const-string v4, "white"

    .line 1214
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1215
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1217
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->o:Lio/reactivex/subjects/PublishSubject;

    return-object v0
.end method

.method private q()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1222
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->m:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;

    sget-object v1, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;->TRACK:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1223
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0

    .line 1226
    :cond_0
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->g()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    .line 1227
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->n()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$15;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$15;-><init>(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;Lio/reactivex/subjects/PublishSubject;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->b(Lcom/samsung/android/app/music/service/milk/login/UserInfoReceiver;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->j:Landroid/content/Context;

    const v1, 0x7f0b0200

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->a(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->a:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    .line 168
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->f()V

    .line 169
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->n()Landroid/content/Context;

    move-result-object v0

    .line 170
    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    if-eqz v1, :cond_0

    .line 171
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    new-instance v1, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$UnbindServiceHelper;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$UnbindServiceHelper;-><init>(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    goto :goto_0

    :cond_0
    const-string v0, "SamsungBilling"

    const-string v1, "Unexpected activity uses samsung music billing"

    .line 174
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(I)V
    .locals 3

    .line 479
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->n()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x44e

    if-eq p1, v1, :cond_2

    const/16 v1, 0x1771

    if-eq p1, v1, :cond_1

    const/16 v1, 0x1778

    if-eq p1, v1, :cond_0

    const-string v0, "SamsungBilling"

    .line 526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleServerError code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "SamsungBilling"

    const-string v1, "handleServerError ALREADY_USED_PROMOTION"

    .line 497
    invoke-static {p1, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    .line 500
    invoke-static {}, Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;->c()Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;

    move-result-object p1

    .line 501
    new-instance v1, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$5;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$5;-><init>(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;)V

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;->a(Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog$OnDialogBtnClickListener;)V

    .line 521
    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "ALREADY_USED_PROMOTION"

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "SamsungBilling"

    const-string v1, "handleServerError ALREADY_PURCHASED_USER"

    .line 486
    invoke-static {p1, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->c()V

    if-eqz v0, :cond_3

    .line 490
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->j:Landroid/content/Context;

    const v1, 0x7f0b027e

    .line 491
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    .line 490
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 492
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    const-string p1, "SamsungBilling"

    const-string v0, "handleServerError INVALID_PARAM[invalid promotion id]"

    .line 482
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "SamsungBilling"

    .line 641
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResultForSamsungBilling  request Code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  result Code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    sget v0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->k:I

    const/4 v1, -0x1

    if-ne p1, v0, :cond_1

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const/4 p1, 0x0

    if-eqz p3, :cond_0

    const-string p1, "ERROR_ID"

    .line 675
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ERROR_MESSAGE"

    .line 676
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, "SamsungBilling"

    const-string p3, "onActivityResult failure!!. data is null"

    .line 678
    invoke-static {p2, p3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object p2, p1

    :goto_0
    const-string p3, "SamsungBilling"

    .line 683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult failure!!. error_code - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", reason - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 692
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const/4 p1, -0x1

    .line 694
    :goto_1
    iget-object p3, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->p:Lio/reactivex/subjects/PublishSubject;

    new-instance v0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$SamsungBillingException;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$SamsungBillingException;-><init>(ILjava/lang/String;)V

    .line 695
    invoke-virtual {p3, v0}, Lio/reactivex/subjects/PublishSubject;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 665
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->p:Lio/reactivex/subjects/PublishSubject;

    new-instance p2, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$SamsungBillingException;

    const/4 p3, 0x2

    const-string v0, "RESULT_CANCELED"

    invoke-direct {p2, p3, v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$SamsungBillingException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/PublishSubject;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    :pswitch_2
    const-string p1, "PAYMENT_RECEITE"

    .line 646
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SIGNATURE"

    .line 647
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "SamsungBilling"

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResultForSamsungBilling paymentReceipt : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " paymentSignature : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->p:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p2, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 656
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->p:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p1}, Lio/reactivex/subjects/PublishSubject;->onComplete()V

    .line 659
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->j()V

    goto :goto_2

    :cond_1
    const/16 v0, 0x2718

    if-ne p1, v0, :cond_3

    if-ne p2, v1, :cond_2

    const-string p1, "access_token"

    .line 702
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SamsungBilling"

    .line 703
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Get access token success : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->o:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p2, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 705
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->o:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p1}, Lio/reactivex/subjects/PublishSubject;->onComplete()V

    goto :goto_2

    .line 707
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->o:Lio/reactivex/subjects/PublishSubject;

    new-instance p2, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$UnexpectedException;

    const-string p3, "Fail to get access token success "

    invoke-direct {p2, p3}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$UnexpectedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/PublishSubject;->onError(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$OnBillingStateListener;)V
    .locals 3

    const-string v0, "SamsungBilling"

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buySubscription Activity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->i:Ljava/lang/ref/WeakReference;

    .line 232
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " isLocked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->c()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 231
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->n()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 237
    :cond_0
    sget-object v1, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;->SUBSCRIPTION:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->m:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;

    .line 238
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->h:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$OnBillingStateListener;

    .line 239
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->e:Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;

    .line 240
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/16 p1, 0xbb8

    .line 241
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->a(J)V

    .line 242
    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    const/4 p1, 0x0

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/dialog/MilkBaseLauncher;->a(Landroid/support/v4/app/FragmentActivity;Ljava/util/Set;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 243
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->a()V

    .line 244
    new-instance p1, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$1;-><init>(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->a(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;)V

    goto :goto_0

    :cond_1
    const-string p1, "SamsungBilling"

    const-string p2, "skip buy subscription because of temporary lock"

    .line 257
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object p1

    const-string p2, "start_purchase"

    const-string v0, "start_purchase"

    const/4 v1, 0x1

    .line 261
    invoke-virtual {p1, p2, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$OnBillingStateListener;)V
    .locals 3

    const-string v0, "SamsungBilling"

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buyTrack Activity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " isLocked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->c()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->n()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 276
    :cond_0
    sget-object v1, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;->TRACK:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->m:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;

    .line 277
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->h:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$OnBillingStateListener;

    .line 278
    new-instance p2, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;

    invoke-direct {p2, p1}, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->e:Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;

    .line 280
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/16 p1, 0xbb8

    .line 281
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->a(J)V

    .line 282
    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    const/4 p1, 0x0

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/dialog/MilkBaseLauncher;->a(Landroid/support/v4/app/FragmentActivity;Ljava/util/Set;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 283
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->a()V

    .line 284
    new-instance p1, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$2;-><init>(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->a(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;)V

    goto :goto_0

    :cond_1
    const-string p1, "SamsungBilling"

    const-string p2, "skip buy track because of temporary lock"

    .line 297
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 438
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 3

    .line 446
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    return v0
.end method

.method public e()V
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    const/4 v0, 0x0

    .line 468
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->h:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$OnBillingStateListener;

    .line 469
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->g()V

    return-void
.end method
