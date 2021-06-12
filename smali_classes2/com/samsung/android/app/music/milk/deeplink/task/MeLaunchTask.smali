.class public Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;
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

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/task/ActivityDeepLinkTask;-><init>(Landroid/support/v4/app/FragmentActivity;Landroid/net/Uri;)V

    .line 45
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->TARGET:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;->c:Ljava/lang/String;

    .line 46
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->TAB:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;->d:Ljava/lang/String;

    .line 47
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->VOUCHER:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;->e:Ljava/lang/String;

    .line 48
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->PRODUCT_DETAIL:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d()V
    .locals 10

    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->getTargetType(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 61
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v2, 0x14000000

    .line 62
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 64
    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask$1;->a:[I

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string v0, "DeepLink-MeLaunchTask"

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Move to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->PRODUCT_TAB:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/product/ProductActivity;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 135
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->VOUCHER_TAB:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherActivity;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 137
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->SUBSCRIPTION_TAB:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 138
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoActivity;->a(Landroid/support/v4/app/FragmentActivity;)V

    goto/16 :goto_1

    .line 127
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity;->a(Landroid/support/v4/app/FragmentActivity;)V

    goto/16 :goto_1

    .line 116
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    instance-of v0, v0, Lcom/samsung/android/app/music/navigate/NavigationManager;

    if-eqz v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    move-object v4, v0

    check-cast v4, Lcom/samsung/android/app/music/navigate/NavigationManager;

    const v5, 0x10004

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 118
    invoke-interface/range {v4 .. v9}, Lcom/samsung/android/app/music/navigate/NavigationManager;->navigate(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    goto/16 :goto_1

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    const v1, 0x10004

    .line 122
    invoke-static {v0, v1, v3, v3, v3}, Lcom/samsung/android/app/music/navigate/NaviUtils;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_0

    .line 105
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    instance-of v0, v0, Lcom/samsung/android/app/music/navigate/NavigationManager;

    if-eqz v0, :cond_3

    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    move-object v4, v0

    check-cast v4, Lcom/samsung/android/app/music/navigate/NavigationManager;

    const v5, 0x110001

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 107
    invoke-interface/range {v4 .. v9}, Lcom/samsung/android/app/music/navigate/NavigationManager;->navigate(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    goto :goto_1

    .line 110
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    const v1, 0x110001

    .line 111
    invoke-static {v0, v1, v3, v3, v3}, Lcom/samsung/android/app/music/navigate/NaviUtils;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    .line 95
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    instance-of v0, v0, Lcom/samsung/android/app/music/navigate/NavigationManager;

    if-eqz v0, :cond_4

    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    move-object v4, v0

    check-cast v4, Lcom/samsung/android/app/music/navigate/NavigationManager;

    const v5, 0x10030

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 97
    invoke-interface/range {v4 .. v9}, Lcom/samsung/android/app/music/navigate/NavigationManager;->navigate(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    goto :goto_1

    .line 100
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    const v1, 0x10030

    .line 101
    invoke-static {v0, v1, v3, v3, v3}, Lcom/samsung/android/app/music/navigate/NaviUtils;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    .line 91
    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity;->a(Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_1

    .line 84
    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/help/ContactUsHelper;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/event/EventPromotionActivity;->a(Landroid/app/Activity;)V

    goto :goto_0

    .line 78
    :pswitch_7
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    const-string v1, "http://cdn-su.glb.samsungmilkradio.com/static/kor/sm_privacy_information.html"

    .line 79
    invoke-static {v0, v2, v2, v1}, Lcom/samsung/android/app/music/activity/AboutPolicyActivity;->a(Landroid/app/Activity;IILjava/lang/String;)V

    goto :goto_1

    .line 72
    :pswitch_8
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    const/4 v1, 0x1

    const-string v4, "http://cdn-su.glb.samsungmilkradio.com/static/kor/sm_tnc.html"

    .line 73
    invoke-static {v0, v2, v1, v4}, Lcom/samsung/android/app/music/activity/AboutPolicyActivity;->a(Landroid/app/Activity;IILjava/lang/String;)V

    goto :goto_1

    .line 69
    :pswitch_9
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    const-class v2, Lcom/samsung/android/app/music/activity/AboutActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 66
    :pswitch_a
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    const-class v2, Lcom/samsung/android/app/music/settings/SettingsActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :goto_0
    move-object v3, v1

    :cond_5
    :goto_1
    if-eqz v3, :cond_7

    .line 146
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 149
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v0

    const/4 v1, 0x0

    .line 150
    invoke-virtual {v0, v1, v1}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->a(II)V

    :cond_7
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "DeepLink-MeLaunchTask"

    return-object v0
.end method

.method protected f()Z
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->getTargetType(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->PREMIUM:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
