.class public Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask;
.super Lcom/samsung/android/app/music/milk/deeplink/task/ActivityDeepLinkTask;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String; = "NoticeLaunchTask"


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Landroid/content/DialogInterface$OnClickListener;

.field private h:Lcom/samsung/android/app/music/activity/ActivityResultDelegator$ActivityResultCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Landroid/net/Uri;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/task/ActivityDeepLinkTask;-><init>(Landroid/support/v4/app/FragmentActivity;Landroid/net/Uri;)V

    .line 35
    new-instance p1, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask$1;-><init>(Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask;->g:Landroid/content/DialogInterface$OnClickListener;

    .line 47
    new-instance p1, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask$2;-><init>(Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask;->h:Lcom/samsung/android/app/music/activity/ActivityResultDelegator$ActivityResultCallback;

    .line 64
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->TARGET:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask;->d:Ljava/lang/String;

    .line 65
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->OPTION:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask;->f:Ljava/lang/String;

    .line 66
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->LINK:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask;)Lcom/samsung/android/app/music/activity/ActivityResultDelegator$ActivityResultCallback;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask;->h:Lcom/samsung/android/app/music/activity/ActivityResultDelegator$ActivityResultCallback;

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask;Z)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask;->e:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/music/milk/event/EventPromotionActivity;->a(Landroid/app/Activity;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic g()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public c()Z
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask;->e:Ljava/lang/String;

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
    .locals 4

    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->getTargetType(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 84
    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask$3;->a:[I

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 109
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/MilkPackageLauncher;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 87
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->LOGIN:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    .line 88
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    .line 91
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a()Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/UserInfo;->isSignUpNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    new-instance v0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v2}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b02a9

    .line 96
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->b(I)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0b0256

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask;->g:Landroid/content/DialogInterface$OnClickListener;

    .line 97
    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0b00cd

    .line 98
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->c(I)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a()Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    .line 99
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "need_login_dialog"

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 105
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask;->a(Z)V

    :cond_1
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 121
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
