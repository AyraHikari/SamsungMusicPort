.class public Lcom/samsung/android/app/music/milk/deeplink/task/AnnouncementLaunchTask;
.super Lcom/samsung/android/app/music/milk/deeplink/task/ActivityDeepLinkTask;
.source "SourceFile"


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Landroid/net/Uri;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/task/ActivityDeepLinkTask;-><init>(Landroid/support/v4/app/FragmentActivity;Landroid/net/Uri;)V

    .line 23
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->TARGET:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/AnnouncementLaunchTask;->c:Ljava/lang/String;

    .line 24
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->LINK:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/AnnouncementLaunchTask;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/AnnouncementLaunchTask;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public d()V
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/AnnouncementLaunchTask;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->getTargetType(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v2, 0x10000000

    .line 38
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 40
    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/task/AnnouncementLaunchTask$1;->a:[I

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 48
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/AnnouncementLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/AnnouncementLaunchTask;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/MilkPackageLauncher;->b(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0

    .line 45
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/AnnouncementLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/AnnouncementLaunchTask;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/event/EventPromotionActivity;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/AnnouncementLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    const-class v2, Lcom/samsung/android/app/music/help/NoticeListActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :goto_0
    if-eqz v1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/AnnouncementLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "AnnouncementLaunchTask"

    return-object v0
.end method
