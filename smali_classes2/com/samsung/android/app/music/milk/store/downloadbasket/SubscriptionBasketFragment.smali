.class public final Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;
.super Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/downloadbasket/HeaderUpdateObervable$OnHeaderInitListener;
.implements Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionGetter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment$Companion;
    }
.end annotation


# static fields
.field public static final d:Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment$Companion;


# instance fields
.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/model/purchase/SimpleSubscription;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment$userInfoCallback$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;->d:Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;-><init>()V

    .line 29
    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment$userInfoCallback$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment$userInfoCallback$1;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;->f:Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment$userInfoCallback$1;

    return-void
.end method


# virtual methods
.method protected a(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;)V
    .locals 2

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;->c()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b01c4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "0"

    check-cast v1, Ljava/lang/CharSequence;

    .line 67
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;

    .line 71
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;->c()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b01c3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "0"

    check-cast v1, Ljava/lang/CharSequence;

    .line 70
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;

    .line 74
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;->c()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b01d1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "0"

    check-cast v1, Ljava/lang/CharSequence;

    .line 73
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;

    .line 76
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;->a()Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/model/purchase/SimpleSubscription;",
            ">;)V"
        }
    .end annotation

    const-string v0, "subscription"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;->e:Ljava/util/ArrayList;

    .line 82
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;->d()Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;->m()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;->a(ILjava/lang/CharSequence;)V

    return-void
.end method

.method protected f()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public i()V
    .locals 4

    const/4 v0, 0x2

    .line 57
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;->a([I)[Ljava/lang/String;

    move-result-object v1

    .line 58
    array-length v2, v1

    if-lt v2, v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;->d()Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v1, v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;->a(ILjava/lang/CharSequence;)V

    .line 60
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;->d()Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;

    move-result-object v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    aget-object v1, v1, v3

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;->a(ILjava/lang/CharSequence;)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public k()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/model/purchase/SimpleSubscription;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method public m()I
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;->e:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Iterable;

    .line 125
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/model/purchase/SimpleSubscription;

    .line 92
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/purchase/SimpleSubscription;->getAvailableCount()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public n()V
    .locals 2

    .line 98
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;->c()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/network/request/order/DownloadBasketApis;->a(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 99
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 100
    new-instance v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment$invalidateSubscription$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment$invalidateSubscription$1;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;)V

    check-cast v1, Lio/reactivex/Observer;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 39
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    instance-of v0, p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/HeaderUpdateObervable;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/HeaderUpdateObervable;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;->f()I

    move-result v0

    move-object v1, p0

    check-cast v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/HeaderUpdateObervable$OnHeaderInitListener;

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/HeaderUpdateObervable;->a(ILcom/samsung/android/app/music/milk/store/downloadbasket/HeaderUpdateObervable$OnHeaderInitListener;)V

    .line 42
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;->c()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object p1

    .line 43
    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment$onActivityCreated$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment$onActivityCreated$1;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;)V

    check-cast v0, Lcom/samsung/android/app/music/service/milk/login/UserInfoReceiver;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Lcom/samsung/android/app/music/service/milk/login/UserInfoReceiver;)V

    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;->c()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;->f:Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment$userInfoCallback$1;

    check-cast v0, Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/HeaderUpdateObervable;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/HeaderUpdateObervable;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;->f()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/HeaderUpdateObervable;->a(I)V

    .line 115
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;->f:Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment$userInfoCallback$1;

    check-cast v1, Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->b(Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;)V

    .line 117
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->onDestroy()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 53
    new-instance p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;

    move-object p2, p0

    check-cast p2, Landroid/support/v4/app/Fragment;

    invoke-direct {p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;-><init>(Landroid/support/v4/app/Fragment;)V

    check-cast p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/Purchasable;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;->a(Lcom/samsung/android/app/music/milk/store/downloadbasket/Purchasable;)V

    return-void
.end method
