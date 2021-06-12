.class final Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$ServerErrorMessage;
.super Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$BaseMilkPlayerMessage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ServerErrorMessage"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 526
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$BaseMilkPlayerMessage;-><init>(Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 527
    iput-object p1, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$ServerErrorMessage;->a:Landroid/app/Activity;

    return-void
.end method

.method static a(Landroid/os/Bundle;Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 1

    .line 513
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;-><init>(Landroid/os/Bundle;)V

    .line 514
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;->setMessage(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;

    const-string p0, "extra_action_code"

    .line 515
    invoke-virtual {v0, p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;->setInteger(Ljava/lang/String;I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;

    .line 516
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;->build()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static a(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;
    .locals 1

    .line 520
    new-instance v0, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$ServerErrorMessage;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$ServerErrorMessage;-><init>(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    const-string v0, "extra_action_code"

    .line 543
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$ServerErrorMessage;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x138a

    if-ne v0, v1, :cond_0

    .line 545
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$ServerErrorMessage;->a:Landroid/app/Activity;

    const v1, 0x7f0b0246

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, -0x4

    if-ne v0, v1, :cond_1

    .line 547
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$ServerErrorMessage;->a:Landroid/app/Activity;

    const v1, 0x7f0b0230

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 549
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$ServerErrorMessage;->a:Landroid/app/Activity;

    const v1, 0x7f0b0261

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public doPositive()V
    .locals 2

    const-string v0, "extra_action_code"

    .line 564
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$ServerErrorMessage;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x138a

    if-ne v0, v1, :cond_1

    .line 566
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$ServerErrorMessage;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/network/request/play/PlayApis;->a(Landroid/content/Context;)Lio/reactivex/Observable;

    move-result-object v0

    .line 567
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$ServerErrorMessage$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$ServerErrorMessage$1;-><init>(Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$ServerErrorMessage;)V

    .line 568
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    .line 587
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getActivePlayerQueue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 588
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->playRadio()V

    goto :goto_0

    .line 590
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->play()V

    goto :goto_0

    :cond_1
    const/4 v1, -0x4

    if-ne v0, v1, :cond_2

    .line 593
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$ServerErrorMessage;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->d()V

    .line 595
    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$BaseMilkPlayerMessage;->doPositive()V

    return-void
.end method

.method public getNegativeText()Ljava/lang/String;
    .locals 2

    const-string v0, "extra_action_code"

    .line 554
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$ServerErrorMessage;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x138a

    if-eq v0, v1, :cond_1

    const/4 v1, -0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 559
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$BaseMilkPlayerMessage;->getNegativeText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 557
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$ServerErrorMessage;->a:Landroid/app/Activity;

    const v1, 0x7f0b01f4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getPositiveText()Ljava/lang/CharSequence;
    .locals 1

    .line 509
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$ServerErrorMessage;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    const-string v0, "extra_action_code"

    .line 532
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$ServerErrorMessage;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x138a

    if-ne v0, v1, :cond_0

    .line 534
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$ServerErrorMessage;->a:Landroid/app/Activity;

    const v1, 0x7f0b01e2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, -0x4

    if-ne v0, v1, :cond_1

    .line 536
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$ServerErrorMessage;->a:Landroid/app/Activity;

    const v1, 0x7f0b04a2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 538
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$ServerErrorMessage;->a:Landroid/app/Activity;

    const v1, 0x7f0b01e3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
