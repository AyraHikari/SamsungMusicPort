.class final Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$ExplicitMessage;
.super Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$BaseMilkPlayerMessage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExplicitMessage"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 413
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$BaseMilkPlayerMessage;-><init>(Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 414
    iput-object p1, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$ExplicitMessage;->a:Landroid/app/Activity;

    return-void
.end method

.method static a(Landroid/os/Bundle;Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 2

    const-string v0, "explicit_popup"

    const/4 v1, 0x1

    .line 384
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 385
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;-><init>(Landroid/os/Bundle;)V

    .line 386
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;->setMessage(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;

    const-string p0, "extra_action_code"

    .line 387
    invoke-virtual {v0, p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;->setInteger(Ljava/lang/String;I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;

    .line 388
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;->build()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static a(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;
    .locals 2

    const-string v0, "extra_action_code"

    .line 392
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x2711

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 399
    :pswitch_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "925"

    .line 400
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 395
    :pswitch_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "924"

    .line 396
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 403
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "926"

    .line 404
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->c(Ljava/lang/String;)V

    .line 407
    :goto_0
    new-instance v0, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$ExplicitMessage;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$ExplicitMessage;-><init>(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2715
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    const-string v0, "extra_action_code"

    .line 424
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$ExplicitMessage;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x2711

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 432
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$ExplicitMessage;->a:Landroid/app/Activity;

    const v1, 0x7f0b0261

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 430
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$ExplicitMessage;->a:Landroid/app/Activity;

    const v1, 0x7f0b0151

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$ExplicitMessage;->a:Landroid/app/Activity;

    const v1, 0x7f0b0390

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2715
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public doNegative()V
    .locals 3

    .line 487
    invoke-super {p0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$BaseMilkPlayerMessage;->doNegative()V

    const-string v0, "extra_action_code"

    .line 488
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$ExplicitMessage;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x2711

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 496
    :pswitch_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "925"

    const-string v2, "9654"

    .line 497
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 491
    :pswitch_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "924"

    const-string v2, "9654"

    .line 492
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 501
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "926"

    const-string v2, "9652"

    .line 502
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2715
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public doPositive()V
    .locals 4

    .line 449
    invoke-super {p0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$BaseMilkPlayerMessage;->doPositive()V

    const-string v0, "extra_action_code"

    .line 450
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$ExplicitMessage;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x2711

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7531

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 454
    :pswitch_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "explicit_option"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putBoolean(Ljava/lang/String;Z)V

    .line 455
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$ExplicitMessage;->a:Landroid/app/Activity;

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/music/network/request/usersetting/UserSettingApi;->a(Landroid/content/Context;IZLjava/lang/String;)V

    goto :goto_0

    .line 466
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$ExplicitMessage;->a:Landroid/app/Activity;

    const-class v3, Lcom/samsung/android/app/music/activity/CertificationActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 467
    iget-object v2, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$ExplicitMessage;->a:Landroid/app/Activity;

    invoke-virtual {v2, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 469
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "925"

    const-string v2, "9655"

    .line 470
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 458
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$ExplicitMessage;->a:Landroid/app/Activity;

    const-class v3, Lcom/samsung/android/app/music/activity/CertificationActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 459
    iget-object v2, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$ExplicitMessage;->a:Landroid/app/Activity;

    invoke-virtual {v2, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 461
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "924"

    const-string v2, "9655"

    .line 462
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$ExplicitMessage;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/MilkPackageLauncher;->a(Landroid/content/Context;)Z

    .line 475
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "926"

    const-string v2, "9653"

    .line 476
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2715
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getNegativeText()Ljava/lang/String;
    .locals 2

    const-string v0, "extra_action_code"

    .line 438
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$ExplicitMessage;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x2712

    if-eq v0, v1, :cond_0

    .line 443
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$ExplicitMessage;->a:Landroid/app/Activity;

    const v1, 0x7f0b01f4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic getPositiveText()Ljava/lang/CharSequence;
    .locals 1

    .line 382
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$ExplicitMessage;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .line 419
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$ExplicitMessage;->a:Landroid/app/Activity;

    const v1, 0x7f0b0285

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
