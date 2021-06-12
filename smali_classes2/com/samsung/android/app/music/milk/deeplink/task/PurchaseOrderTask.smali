.class public Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseOrderTask;
.super Lcom/samsung/android/app/music/milk/deeplink/task/ActivityDeepLinkTask;
.source "SourceFile"


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Landroid/net/Uri;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/task/ActivityDeepLinkTask;-><init>(Landroid/support/v4/app/FragmentActivity;Landroid/net/Uri;)V

    .line 33
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->PRODUCT_ID:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseOrderTask;->c:Ljava/lang/String;

    .line 34
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->PRICING_TYPE_CODE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseOrderTask;->d:Ljava/lang/String;

    .line 35
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->PROMOTION_ID:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseOrderTask;->e:Ljava/lang/String;

    .line 36
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->LANDING:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseOrderTask;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseOrderTask;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseOrderTask;->g()V

    return-void
.end method

.method private g()V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseOrderTask;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PurchaseOrderTask"

    const-string v1, "launchLandingPage - No landing page exist."

    .line 84
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "PurchaseOrderTask"

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchLandingPage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseOrderTask;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x14000000

    .line 91
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 93
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseOrderTask;->f:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->PRODUCT_TAB:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseOrderTask;->a:Landroid/support/v4/app/FragmentActivity;

    const-class v2, Lcom/samsung/android/app/music/milk/store/product/ProductActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 95
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseOrderTask;->f:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->VOUCHER_TAB:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 96
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseOrderTask;->a:Landroid/support/v4/app/FragmentActivity;

    const-class v2, Lcom/samsung/android/app/music/milk/store/voucher/VoucherActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 97
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseOrderTask;->f:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->SUBSCRIPTION_TAB:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 98
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseOrderTask;->a:Landroid/support/v4/app/FragmentActivity;

    const-class v2, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 101
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseOrderTask;->a:Landroid/support/v4/app/FragmentActivity;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseOrderTask;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_5

    .line 102
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseOrderTask;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseOrderTask;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseOrderTask;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()V
    .locals 3

    .line 51
    new-instance v0, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseOrderTask;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;-><init>(Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseOrderTask;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;->b(Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseOrderTask;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;->a(Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseOrderTask;->a:Landroid/support/v4/app/FragmentActivity;

    instance-of v1, v1, Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    if-eqz v1, :cond_0

    .line 56
    new-instance v1, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseOrderTask;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;-><init>(Landroid/app/Activity;)V

    .line 57
    new-instance v2, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseOrderTask$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseOrderTask$1;-><init>(Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseOrderTask;)V

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->a(Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$OnBillingStateListener;)V

    goto :goto_0

    :cond_0
    const-string v0, "PurchaseOrderTask"

    const-string v1, "execute : activity is not instance of BaseMilkServiceActivity"

    .line 78
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "PurchaseOrderTask"

    return-object v0
.end method

.method protected f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
