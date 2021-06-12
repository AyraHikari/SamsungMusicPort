.class public Lcom/samsung/android/app/music/dialog/MilkBaseLauncher;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/app/Activity;)Z
    .locals 3

    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 31
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const v0, 0x7f0b030f

    .line 32
    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v1

    .line 35
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0b0217

    .line 36
    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 37
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v1

    :cond_1
    return v2
.end method

.method public static a(Landroid/support/v4/app/FragmentActivity;Ljava/util/Set;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentActivity;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "MilkBaseLauncher"

    const-string p1, "checkAccount. activity is null!!"

    .line 55
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 59
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a()Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object v1

    if-nez v1, :cond_1

    .line 62
    new-instance p1, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b04a5

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(I)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f0b02a2

    .line 63
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->b(I)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a()Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;

    move-result-object p1

    .line 64
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    const-string v1, "networkDelay"

    invoke-virtual {p1, p0, v1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return v0

    .line 68
    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/UserInfo;->getUserStatus()I

    move-result v1

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    .line 69
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    packed-switch v1, :pswitch_data_0

    return v2

    .line 79
    :pswitch_0
    new-instance p1, Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;->a()V

    goto :goto_0

    .line 75
    :pswitch_1
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f0b0482

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 76
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 82
    :pswitch_2
    new-instance p1, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b04a2

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(I)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f0b028c

    .line 83
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->b(I)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f0b0256

    new-instance v2, Lcom/samsung/android/app/music/dialog/MilkBaseLauncher$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/dialog/MilkBaseLauncher$1;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    .line 84
    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f0b00cd

    .line 90
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->c(I)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a()Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;

    move-result-object p1

    .line 91
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    const-string v1, "sa_signin"

    invoke-virtual {p1, p0, v1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
