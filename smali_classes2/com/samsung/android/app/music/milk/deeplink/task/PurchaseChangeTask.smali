.class public final Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseChangeTask;
.super Lcom/samsung/android/app/music/milk/deeplink/task/ActivityDeepLinkTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseChangeTask$Companion;
    }
.end annotation


# static fields
.field public static final c:Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseChangeTask$Companion;


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseChangeTask$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseChangeTask$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseChangeTask;->c:Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseChangeTask$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Landroid/net/Uri;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/task/ActivityDeepLinkTask;-><init>(Landroid/support/v4/app/FragmentActivity;Landroid/net/Uri;)V

    .line 25
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->PRODUCT_ID:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseChangeTask;->d:Ljava/lang/String;

    .line 28
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->CURRENT_PRICING_TYPE_CODE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    .line 27
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseChangeTask;->e:Ljava/lang/String;

    .line 33
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->RESERVE_PRICING_TYPE_CODE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    .line 32
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseChangeTask;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseChangeTask;->f:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public d()V
    .locals 5

    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseChangeTask;->a:Landroid/support/v4/app/FragmentActivity;

    const-string v1, "mActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "PurchaseChangeTask"

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "execute : subscription change "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseChangeTask;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseChangeTask;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for product - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseChangeTask;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 43
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v1

    const-string v2, "UserInfoManager.getInstance(context)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a()Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object v1

    const-string v2, "UserInfoManager.getInstance(context).userInfoSync"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/UserInfo;->getOrderId()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-static {v0}, Lcom/samsung/android/app/music/network/request/order/OrderTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/request/order/OrderTransport;

    move-result-object v2

    .line 54
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseChangeTask;->e:Ljava/lang/String;

    .line 55
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseChangeTask;->f:Ljava/lang/String;

    .line 52
    invoke-interface {v2, v1, v3, v4}, Lcom/samsung/android/app/music/network/request/order/OrderTransport;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v1

    .line 56
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    .line 57
    new-instance v2, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseChangeTask$execute$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseChangeTask$execute$1;-><init>(Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseChangeTask;Landroid/content/Context;)V

    check-cast v2, Lio/reactivex/Observer;

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    const-string v0, "PurchaseChangeTask"

    return-object v0
.end method

.method protected f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
