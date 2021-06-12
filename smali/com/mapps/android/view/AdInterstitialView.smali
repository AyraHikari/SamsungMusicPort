.class public Lcom/mapps/android/view/AdInterstitialView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/mapps/android/share/AdInfoKey;
.implements Lcom/mapps/android/share/InterBannerKey;


# static fields
.field private static isSSP:Z


# instance fields
.field private AdChargeReceiver:Landroid/content/BroadcastReceiver;

.field private AdClickReceiver:Landroid/content/BroadcastReceiver;

.field private AdErrorReceiver:Landroid/content/BroadcastReceiver;

.field private AdFinishReceiver:Landroid/content/BroadcastReceiver;

.field private final MEZZO_DIRECTORY:Ljava/lang/String;

.field private final MEZZO_IMAGE:Ljava/lang/String;

.field private a_media:Ljava/lang/String;

.field private a_publisher:Ljava/lang/String;

.field private a_section:Ljava/lang/String;

.field adInterval:Z

.field private adListener:Lcom/mz/common/listener/AdListener;

.field private adbean:Lcom/mz/common/network/data/DataNTMutiInter;

.field private closePostion:I

.field private dir:Ljava/lang/String;

.field initHandler:Landroid/os/Handler;

.field private interConnectionListener:Lcom/mz/common/network/request/OnConnectionListener;

.field private mContext:Landroid/content/Context;

.field private mIsGPSUse:Z

.field private mUserAccount:Ljava/lang/String;

.field private mUserAge:Ljava/lang/String;

.field private mUserGender:Ljava/lang/String;

.field private mUserMail:Ljava/lang/String;

.field private media_type:I

.field private nt:Lcom/mz/common/network/Nt;

.field private progressbarListener:Lcom/mz/common/network/Nt$OnProgressbarListener;

.field public uudi_key:Ljava/lang/String;

.field private viewStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 74
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    .line 41
    iput-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->uudi_key:Ljava/lang/String;

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->mContext:Landroid/content/Context;

    const-string v1, ""

    .line 43
    iput-object v1, p0, Lcom/mapps/android/view/AdInterstitialView;->mUserAge:Ljava/lang/String;

    const-string v1, ""

    .line 44
    iput-object v1, p0, Lcom/mapps/android/view/AdInterstitialView;->mUserGender:Ljava/lang/String;

    const/4 v1, 0x0

    .line 45
    iput-boolean v1, p0, Lcom/mapps/android/view/AdInterstitialView;->mIsGPSUse:Z

    .line 47
    iput-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->adListener:Lcom/mz/common/listener/AdListener;

    const-string v2, ""

    .line 49
    iput-object v2, p0, Lcom/mapps/android/view/AdInterstitialView;->mUserAccount:Ljava/lang/String;

    const-string v2, ""

    .line 50
    iput-object v2, p0, Lcom/mapps/android/view/AdInterstitialView;->mUserMail:Ljava/lang/String;

    const-string v2, ""

    .line 51
    iput-object v2, p0, Lcom/mapps/android/view/AdInterstitialView;->a_publisher:Ljava/lang/String;

    const-string v2, ""

    .line 52
    iput-object v2, p0, Lcom/mapps/android/view/AdInterstitialView;->a_media:Ljava/lang/String;

    const-string v2, ""

    .line 53
    iput-object v2, p0, Lcom/mapps/android/view/AdInterstitialView;->a_section:Ljava/lang/String;

    .line 54
    iput v1, p0, Lcom/mapps/android/view/AdInterstitialView;->media_type:I

    const/4 v1, 0x1

    .line 55
    iput-boolean v1, p0, Lcom/mapps/android/view/AdInterstitialView;->adInterval:Z

    const-string v2, "/mezzo/"

    .line 56
    iput-object v2, p0, Lcom/mapps/android/view/AdInterstitialView;->MEZZO_DIRECTORY:Ljava/lang/String;

    const-string v2, "image"

    .line 57
    iput-object v2, p0, Lcom/mapps/android/view/AdInterstitialView;->MEZZO_IMAGE:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->AdErrorReceiver:Landroid/content/BroadcastReceiver;

    .line 63
    iput-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->AdFinishReceiver:Landroid/content/BroadcastReceiver;

    .line 64
    iput-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->AdClickReceiver:Landroid/content/BroadcastReceiver;

    .line 65
    iput-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->AdChargeReceiver:Landroid/content/BroadcastReceiver;

    .line 67
    iput v1, p0, Lcom/mapps/android/view/AdInterstitialView;->viewStyle:I

    const/4 v0, 0x3

    .line 69
    iput v0, p0, Lcom/mapps/android/view/AdInterstitialView;->closePostion:I

    .line 86
    new-instance v0, Lcom/mapps/android/view/AdInterstitialView$1;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/AdInterstitialView$1;-><init>(Lcom/mapps/android/view/AdInterstitialView;)V

    iput-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->initHandler:Landroid/os/Handler;

    .line 208
    new-instance v0, Lcom/mapps/android/view/AdInterstitialView$2;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/AdInterstitialView$2;-><init>(Lcom/mapps/android/view/AdInterstitialView;)V

    iput-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->progressbarListener:Lcom/mz/common/network/Nt$OnProgressbarListener;

    .line 379
    new-instance v0, Lcom/mapps/android/view/AdInterstitialView$3;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/AdInterstitialView$3;-><init>(Lcom/mapps/android/view/AdInterstitialView;)V

    iput-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->interConnectionListener:Lcom/mz/common/network/request/OnConnectionListener;

    .line 75
    iput-object p1, p0, Lcom/mapps/android/view/AdInterstitialView;->mContext:Landroid/content/Context;

    .line 76
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/mapps/android/view/AdInterstitialView$4;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/AdInterstitialView$4;-><init>(Lcom/mapps/android/view/AdInterstitialView;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 83
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$0(Lcom/mapps/android/view/AdInterstitialView;)Landroid/content/Context;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/mapps/android/view/AdInterstitialView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1(Lcom/mapps/android/view/AdInterstitialView;Landroid/content/Context;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdInterstitialView;->common(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$10(Lcom/mapps/android/view/AdInterstitialView;)Lcom/mz/common/network/Nt$OnProgressbarListener;
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/mapps/android/view/AdInterstitialView;->progressbarListener:Lcom/mz/common/network/Nt$OnProgressbarListener;

    return-object p0
.end method

.method static synthetic access$11(Lcom/mapps/android/view/AdInterstitialView;Lcom/mz/common/network/data/DataNTSSP;)V
    .locals 0

    .line 315
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdInterstitialView;->requestDetailSSP(Lcom/mz/common/network/data/DataNTSSP;)V

    return-void
.end method

.method static synthetic access$12(Lcom/mapps/android/view/AdInterstitialView;)Lcom/mz/common/network/data/DataNTMutiInter;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/mapps/android/view/AdInterstitialView;->adbean:Lcom/mz/common/network/data/DataNTMutiInter;

    return-object p0
.end method

.method static synthetic access$13(Lcom/mapps/android/view/AdInterstitialView;)Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/mapps/android/view/AdInterstitialView;->mUserAge:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$14(Lcom/mapps/android/view/AdInterstitialView;)Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/mapps/android/view/AdInterstitialView;->mUserMail:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$15(Lcom/mapps/android/view/AdInterstitialView;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/mapps/android/view/AdInterstitialView;->mUserAccount:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$16(Lcom/mapps/android/view/AdInterstitialView;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/mapps/android/view/AdInterstitialView;->mUserGender:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$17(Lcom/mapps/android/view/AdInterstitialView;)Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/mapps/android/view/AdInterstitialView;->a_publisher:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$18(Lcom/mapps/android/view/AdInterstitialView;)Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/mapps/android/view/AdInterstitialView;->a_media:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$19(Lcom/mapps/android/view/AdInterstitialView;)Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/mapps/android/view/AdInterstitialView;->a_section:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2(Lcom/mapps/android/view/AdInterstitialView;I)V
    .locals 0

    .line 527
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdInterstitialView;->onFailedToReceive(I)V

    return-void
.end method

.method static synthetic access$20(Lcom/mapps/android/view/AdInterstitialView;)I
    .locals 0

    .line 54
    iget p0, p0, Lcom/mapps/android/view/AdInterstitialView;->media_type:I

    return p0
.end method

.method static synthetic access$21(Lcom/mapps/android/view/AdInterstitialView;)Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/mapps/android/view/AdInterstitialView;->dir:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$22(Lcom/mapps/android/view/AdInterstitialView;Lcom/mz/common/network/data/DataNTSSP;Ljava/lang/String;I)V
    .locals 0

    .line 743
    invoke-direct {p0, p1, p2, p3}, Lcom/mapps/android/view/AdInterstitialView;->sSPView(Lcom/mz/common/network/data/DataNTSSP;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$23(Lcom/mapps/android/view/AdInterstitialView;)Lcom/mz/common/network/request/OnConnectionListener;
    .locals 0

    .line 379
    iget-object p0, p0, Lcom/mapps/android/view/AdInterstitialView;->interConnectionListener:Lcom/mz/common/network/request/OnConnectionListener;

    return-object p0
.end method

.method static synthetic access$24(Lcom/mapps/android/view/AdInterstitialView;)V
    .locals 0

    .line 929
    invoke-direct {p0}, Lcom/mapps/android/view/AdInterstitialView;->onInterClose()V

    return-void
.end method

.method static synthetic access$25(Lcom/mapps/android/view/AdInterstitialView;)V
    .locals 0

    .line 935
    invoke-direct {p0}, Lcom/mapps/android/view/AdInterstitialView;->onAdClick()V

    return-void
.end method

.method static synthetic access$26(Lcom/mapps/android/view/AdInterstitialView;)V
    .locals 0

    .line 563
    invoke-direct {p0}, Lcom/mapps/android/view/AdInterstitialView;->unregisterAdFinishReceiver()V

    return-void
.end method

.method static synthetic access$27(Lcom/mapps/android/view/AdInterstitialView;)V
    .locals 0

    .line 593
    invoke-direct {p0}, Lcom/mapps/android/view/AdInterstitialView;->unregisterAdClickReceiver()V

    return-void
.end method

.method static synthetic access$28(Lcom/mapps/android/view/AdInterstitialView;)V
    .locals 0

    .line 630
    invoke-direct {p0}, Lcom/mapps/android/view/AdInterstitialView;->unregisterADErrorReceiver()V

    return-void
.end method

.method static synthetic access$29()Z
    .locals 1

    .line 71
    sget-boolean v0, Lcom/mapps/android/view/AdInterstitialView;->isSSP:Z

    return v0
.end method

.method static synthetic access$3(Lcom/mapps/android/view/AdInterstitialView;Lcom/mz/common/network/data/DataNTMutiInter;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/mapps/android/view/AdInterstitialView;->adbean:Lcom/mz/common/network/data/DataNTMutiInter;

    return-void
.end method

.method static synthetic access$30(Lcom/mapps/android/view/AdInterstitialView;Z)V
    .locals 0

    .line 467
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdInterstitialView;->onChargeableBannerType(Z)V

    return-void
.end method

.method static synthetic access$31(Lcom/mapps/android/view/AdInterstitialView;Lcom/mz/common/network/data/DataNTMutiInter;)V
    .locals 0

    .line 453
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdInterstitialView;->chargeableBannerType(Lcom/mz/common/network/data/DataNTMutiInter;)V

    return-void
.end method

.method static synthetic access$32(Lcom/mapps/android/view/AdInterstitialView;)V
    .locals 0

    .line 664
    invoke-direct {p0}, Lcom/mapps/android/view/AdInterstitialView;->unregisterChargeReceiver()V

    return-void
.end method

.method static synthetic access$33(Lcom/mapps/android/view/AdInterstitialView;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    .line 791
    invoke-direct {p0, p1, p2}, Lcom/mapps/android/view/AdInterstitialView;->requestInterstitialView(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$34(Lcom/mapps/android/view/AdInterstitialView;Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/mapps/android/view/AdInterstitialView;->dir:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lcom/mapps/android/view/AdInterstitialView;)V
    .locals 0

    .line 223
    invoke-direct {p0}, Lcom/mapps/android/view/AdInterstitialView;->requestUseSSp()V

    return-void
.end method

.method static synthetic access$5(Lcom/mapps/android/view/AdInterstitialView;Lcom/mz/common/network/data/DataNTMutiInter;)V
    .locals 0

    .line 343
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdInterstitialView;->requestNotSSp(Lcom/mz/common/network/data/DataNTMutiInter;)V

    return-void
.end method

.method static synthetic access$6(Lcom/mapps/android/view/AdInterstitialView;Ljava/util/concurrent/Callable;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdInterstitialView;->startAD(Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method static synthetic access$7(Lcom/mapps/android/view/AdInterstitialView;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/mapps/android/view/AdInterstitialView;->requestShowInterstitial()V

    return-void
.end method

.method static synthetic access$8(Lcom/mapps/android/view/AdInterstitialView;Lcom/mz/common/network/Nt;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/mapps/android/view/AdInterstitialView;->nt:Lcom/mz/common/network/Nt;

    return-void
.end method

.method static synthetic access$9(Lcom/mapps/android/view/AdInterstitialView;)Lcom/mz/common/network/Nt;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/mapps/android/view/AdInterstitialView;->nt:Lcom/mz/common/network/Nt;

    return-object p0
.end method

.method private chargeableBannerType(Lcom/mz/common/network/data/DataNTMutiInter;)V
    .locals 1

    .line 455
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTMutiInter;->b()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 456
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "4"

    .line 457
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 459
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdInterstitialView;->onChargeableBannerType(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 462
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdInterstitialView;->onChargeableBannerType(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private common(Landroid/content/Context;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 95
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mapps/android/share/ShareUtil;->getIsGPS(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "1"

    .line 96
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 97
    iput-boolean p1, p0, Lcom/mapps/android/view/AdInterstitialView;->mIsGPSUse:Z

    .line 99
    :cond_0
    iget-boolean p1, p0, Lcom/mapps/android/view/AdInterstitialView;->mIsGPSUse:Z

    if-eqz p1, :cond_1

    .line 100
    iget-object p1, p0, Lcom/mapps/android/view/AdInterstitialView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/mz/common/TraceGPS;->a(Landroid/content/Context;)V

    :cond_1
    const/4 p1, 0x0

    .line 101
    sput-boolean p1, Lcom/mapps/android/view/AdInterstitialView;->isSSP:Z

    :cond_2
    return-void
.end method

.method private onAdClick()V
    .locals 1

    const/4 v0, 0x3

    .line 936
    invoke-direct {p0, v0}, Lcom/mapps/android/view/AdInterstitialView;->onFailedToReceive(I)V

    .line 937
    invoke-virtual {p0}, Lcom/mapps/android/view/AdInterstitialView;->getAdListener()Lcom/mz/common/listener/AdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 938
    invoke-virtual {p0}, Lcom/mapps/android/view/AdInterstitialView;->getAdListener()Lcom/mz/common/listener/AdListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/mz/common/listener/AdListener;->b(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private onChargeableBannerType(Z)V
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->adListener:Lcom/mz/common/listener/AdListener;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->adListener:Lcom/mz/common/listener/AdListener;

    invoke-interface {v0, p0, p1}, Lcom/mz/common/listener/AdListener;->a(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method private onFailedToReceive(I)V
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->adListener:Lcom/mz/common/listener/AdListener;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->adListener:Lcom/mz/common/listener/AdListener;

    invoke-interface {v0, p0, p1}, Lcom/mz/common/listener/AdListener;->a(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    const-string p1, "ADSDK"

    const-string v0, "mADListner is null"

    .line 531
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private onInterClose()V
    .locals 1

    .line 930
    invoke-virtual {p0}, Lcom/mapps/android/view/AdInterstitialView;->getAdListener()Lcom/mz/common/listener/AdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 931
    invoke-virtual {p0}, Lcom/mapps/android/view/AdInterstitialView;->getAdListener()Lcom/mz/common/listener/AdListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/mz/common/listener/AdListener;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private registerADErrorReceiver()V
    .locals 3

    .line 606
    invoke-direct {p0}, Lcom/mapps/android/view/AdInterstitialView;->unregisterADErrorReceiver()V

    .line 607
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.mapps.android.action.ADERROR"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 608
    new-instance v1, Lcom/mapps/android/view/AdInterstitialView$17;

    invoke-direct {v1, p0}, Lcom/mapps/android/view/AdInterstitialView$17;-><init>(Lcom/mapps/android/view/AdInterstitialView;)V

    iput-object v1, p0, Lcom/mapps/android/view/AdInterstitialView;->AdErrorReceiver:Landroid/content/BroadcastReceiver;

    .line 623
    :try_start_0
    iget-object v1, p0, Lcom/mapps/android/view/AdInterstitialView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mapps/android/view/AdInterstitialView;->AdErrorReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 626
    :catch_0
    invoke-direct {p0}, Lcom/mapps/android/view/AdInterstitialView;->unregisterADErrorReceiver()V

    :goto_0
    return-void
.end method

.method private registerAdClickReceiver()V
    .locals 3

    .line 576
    invoke-direct {p0}, Lcom/mapps/android/view/AdInterstitialView;->unregisterAdClickReceiver()V

    .line 577
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.mapps.android.action.ADCLICK"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 578
    new-instance v1, Lcom/mapps/android/view/AdInterstitialView$16;

    invoke-direct {v1, p0}, Lcom/mapps/android/view/AdInterstitialView$16;-><init>(Lcom/mapps/android/view/AdInterstitialView;)V

    iput-object v1, p0, Lcom/mapps/android/view/AdInterstitialView;->AdClickReceiver:Landroid/content/BroadcastReceiver;

    .line 587
    :try_start_0
    iget-object v1, p0, Lcom/mapps/android/view/AdInterstitialView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mapps/android/view/AdInterstitialView;->AdClickReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 589
    :catch_0
    invoke-direct {p0}, Lcom/mapps/android/view/AdInterstitialView;->unregisterAdClickReceiver()V

    :goto_0
    return-void
.end method

.method private registerAdFinishReceiver()V
    .locals 3

    .line 536
    invoke-direct {p0}, Lcom/mapps/android/view/AdInterstitialView;->unregisterAdFinishReceiver()V

    .line 537
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.mapps.android.action.FINISH"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 538
    new-instance v1, Lcom/mapps/android/view/AdInterstitialView$15;

    invoke-direct {v1, p0}, Lcom/mapps/android/view/AdInterstitialView$15;-><init>(Lcom/mapps/android/view/AdInterstitialView;)V

    iput-object v1, p0, Lcom/mapps/android/view/AdInterstitialView;->AdFinishReceiver:Landroid/content/BroadcastReceiver;

    .line 557
    :try_start_0
    iget-object v1, p0, Lcom/mapps/android/view/AdInterstitialView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mapps/android/view/AdInterstitialView;->AdFinishReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 559
    :catch_0
    invoke-direct {p0}, Lcom/mapps/android/view/AdInterstitialView;->unregisterAdFinishReceiver()V

    :goto_0
    return-void
.end method

.method private registerChargeReceiver()V
    .locals 3

    .line 643
    invoke-direct {p0}, Lcom/mapps/android/view/AdInterstitialView;->unregisterChargeReceiver()V

    .line 644
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.mapps.android.action.CHARGEABLE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 645
    new-instance v1, Lcom/mapps/android/view/AdInterstitialView$18;

    invoke-direct {v1, p0}, Lcom/mapps/android/view/AdInterstitialView$18;-><init>(Lcom/mapps/android/view/AdInterstitialView;)V

    iput-object v1, p0, Lcom/mapps/android/view/AdInterstitialView;->AdChargeReceiver:Landroid/content/BroadcastReceiver;

    .line 658
    :try_start_0
    iget-object v1, p0, Lcom/mapps/android/view/AdInterstitialView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mapps/android/view/AdInterstitialView;->AdChargeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 660
    :catch_0
    invoke-direct {p0}, Lcom/mapps/android/view/AdInterstitialView;->unregisterChargeReceiver()V

    :goto_0
    return-void
.end method

.method private requestDetailSSP(Lcom/mz/common/network/data/DataNTSSP;)V
    .locals 3

    .line 317
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTSSP;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 320
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTSSP;->n()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/mapps/android/view/AdInterstitialView;->sSPView(Lcom/mz/common/network/data/DataNTSSP;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v1, v0, :cond_1

    .line 323
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTSSP;->p()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, v1}, Lcom/mapps/android/view/AdInterstitialView;->sSPView(Lcom/mz/common/network/data/DataNTSSP;Ljava/lang/String;I)V

    goto :goto_0

    .line 325
    :cond_1
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTSSP;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    .line 326
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 327
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    .line 328
    new-instance v2, Lcom/mapps/android/view/AdInterstitialView$11;

    invoke-direct {v2, p0, p1, v1}, Lcom/mapps/android/view/AdInterstitialView$11;-><init>(Lcom/mapps/android/view/AdInterstitialView;Lcom/mz/common/network/data/DataNTSSP;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/mapps/android/view/AdInterstitialView;->requestImageFileSave(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    :goto_0
    return-void
.end method

.method private requestImageFileSave(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 8

    .line 895
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mapps/android/share/ShareUtil;->stringCheck(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mapps/android/share/ShareUtil;->stringCheck(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 896
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->adbean:Lcom/mz/common/network/data/DataNTMutiInter;

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataNTMutiInter;->e()Lcom/mz/common/network/data/DataListMutiInterAD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataListMutiInterAD;->b()I

    move-result v0

    if-lez v0, :cond_1

    .line 897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mapps/android/view/AdInterstitialView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/mezzo/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mapps/android/view/AdInterstitialView;->a_publisher:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mapps/android/view/AdInterstitialView;->a_media:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mapps/android/view/AdInterstitialView;->a_section:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "inter/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 898
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 899
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 900
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 902
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mapps/android/view/AdInterstitialView$24;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/mapps/android/view/AdInterstitialView$24;-><init>(Lcom/mapps/android/view/AdInterstitialView;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 909
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method private requestInterstitialView(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2

    const-string v0, "closePostion"

    .line 792
    invoke-virtual {p0}, Lcom/mapps/android/view/AdInterstitialView;->getClosePostion()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 793
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->adbean:Lcom/mz/common/network/data/DataNTMutiInter;

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataNTMutiInter;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->adbean:Lcom/mz/common/network/data/DataNTMutiInter;

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataNTMutiInter;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "response_time"

    .line 794
    iget-object v1, p0, Lcom/mapps/android/view/AdInterstitialView;->adbean:Lcom/mz/common/network/data/DataNTMutiInter;

    invoke-virtual {v1}, Lcom/mz/common/network/data/DataNTMutiInter;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_0
    const-string v0, "viewinfo"

    .line 796
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "isdialog"

    .line 797
    invoke-virtual {p0}, Lcom/mapps/android/view/AdInterstitialView;->getViewStyle()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p2, 0x34000000

    .line 798
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 799
    iget-object p2, p0, Lcom/mapps/android/view/AdInterstitialView;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private requestNotSSp(Lcom/mz/common/network/data/DataNTMutiInter;)V
    .locals 3

    .line 344
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTMutiInter;->e()Lcom/mz/common/network/data/DataListMutiInterAD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataListMutiInterAD;->b()I

    move-result v0

    if-lez v0, :cond_1

    .line 345
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTMutiInter;->e()Lcom/mz/common/network/data/DataListMutiInterAD;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mz/common/network/data/DataListMutiInterAD;->a(I)Lcom/mz/common/network/data/IData;

    move-result-object p1

    check-cast p1, Lcom/mz/common/network/data/DataMutiInterAD;

    .line 368
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataMutiInterAD;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataMutiInterAD;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 369
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataMutiInterAD;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataMutiInterAD;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataMutiInterAD;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataMutiInterAD;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/mapps/android/view/AdInterstitialView;->startinterstitialView(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 p1, -0xbb8

    .line 371
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdInterstitialView;->onFailedToReceive(I)V

    goto :goto_0

    :cond_1
    const/16 p1, -0x2bc

    .line 375
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdInterstitialView;->onFailedToReceive(I)V

    :goto_0
    return-void
.end method

.method private requestShow()V
    .locals 2

    .line 184
    invoke-virtual {p0}, Lcom/mapps/android/view/AdInterstitialView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mz/common/MZUtils;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    .line 185
    iget-object v1, p0, Lcom/mapps/android/view/AdInterstitialView;->a_publisher:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 186
    invoke-direct {p0}, Lcom/mapps/android/view/AdInterstitialView;->sendRequestInterstitial()V

    goto :goto_0

    :cond_0
    const/16 v0, -0x64

    .line 189
    invoke-direct {p0, v0}, Lcom/mapps/android/view/AdInterstitialView;->onFailedToReceive(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private requestShowInterstitial()V
    .locals 1

    .line 154
    iget-boolean v0, p0, Lcom/mapps/android/view/AdInterstitialView;->adInterval:Z

    if-nez v0, :cond_0

    const/16 v0, -0x3e8

    .line 155
    invoke-direct {p0, v0}, Lcom/mapps/android/view/AdInterstitialView;->onFailedToReceive(I)V

    return-void

    .line 158
    :cond_0
    invoke-direct {p0}, Lcom/mapps/android/view/AdInterstitialView;->requestShow()V

    return-void
.end method

.method private requestUseSSp()V
    .locals 4

    .line 225
    new-instance v0, Lcom/mapps/android/view/AdInterstitialView$8;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/AdInterstitialView$8;-><init>(Lcom/mapps/android/view/AdInterstitialView;)V

    .line 270
    new-instance v1, Lcom/mapps/android/view/AdInterstitialView$9;

    invoke-direct {v1, p0}, Lcom/mapps/android/view/AdInterstitialView$9;-><init>(Lcom/mapps/android/view/AdInterstitialView;)V

    .line 281
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/mapps/android/view/AdInterstitialView$10;

    invoke-direct {v3, p0, v0, v1}, Lcom/mapps/android/view/AdInterstitialView$10;-><init>(Lcom/mapps/android/view/AdInterstitialView;Landroid/os/Handler;Landroid/os/Handler;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 312
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private sSPView(Lcom/mz/common/network/data/DataNTSSP;Ljava/lang/String;I)V
    .locals 2

    .line 744
    invoke-direct {p0}, Lcom/mapps/android/view/AdInterstitialView;->registerADErrorReceiver()V

    .line 745
    invoke-direct {p0}, Lcom/mapps/android/view/AdInterstitialView;->registerAdFinishReceiver()V

    .line 746
    invoke-direct {p0}, Lcom/mapps/android/view/AdInterstitialView;->registerAdClickReceiver()V

    .line 747
    invoke-direct {p0}, Lcom/mapps/android/view/AdInterstitialView;->registerChargeReceiver()V

    const/4 v0, 0x1

    .line 748
    sput-boolean v0, Lcom/mapps/android/view/AdInterstitialView;->isSSP:Z

    .line 749
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mapps/android/view/AdInterstitialView$20;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/mapps/android/view/AdInterstitialView$20;-><init>(Lcom/mapps/android/view/AdInterstitialView;Lcom/mz/common/network/data/DataNTSSP;ILjava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 788
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private sendRequestInterstitial()V
    .locals 4

    .line 475
    new-instance v0, Lcom/mapps/android/view/AdInterstitialView$12;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/AdInterstitialView$12;-><init>(Lcom/mapps/android/view/AdInterstitialView;)V

    .line 489
    new-instance v1, Lcom/mapps/android/view/AdInterstitialView$13;

    invoke-direct {v1, p0}, Lcom/mapps/android/view/AdInterstitialView$13;-><init>(Lcom/mapps/android/view/AdInterstitialView;)V

    .line 500
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/mapps/android/view/AdInterstitialView$14;

    invoke-direct {v3, p0, v0, v1}, Lcom/mapps/android/view/AdInterstitialView$14;-><init>(Lcom/mapps/android/view/AdInterstitialView;Landroid/os/Handler;Landroid/os/Handler;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 523
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private startAD(Ljava/util/concurrent/Callable;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 129
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/view/AdInterstitialView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mapps/android/view/AdInterstitialView;->a_publisher:Ljava/lang/String;

    iget-object v3, p0, Lcom/mapps/android/view/AdInterstitialView;->a_media:Ljava/lang/String;

    iget-object v4, p0, Lcom/mapps/android/view/AdInterstitialView;->a_section:Ljava/lang/String;

    const-string v6, "java"

    new-instance v7, Lcom/mapps/android/view/AdInterstitialView$6;

    invoke-direct {v7, p0, p1}, Lcom/mapps/android/view/AdInterstitialView$6;-><init>(Lcom/mapps/android/view/AdInterstitialView;Ljava/util/concurrent/Callable;)V

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/mapps/android/share/ShareUtil;->setAdViewCode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/mapps/android/share/ShareUtil$AdViewCodeCompleteListener;)V

    return-void
.end method

.method private startService(Ljava/util/concurrent/Callable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 106
    invoke-virtual {p0}, Lcom/mapps/android/view/AdInterstitialView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mz/common/MZUtils;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    :try_start_0
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Lcom/mapps/android/view/AdInterstitialView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/mapps/android/view/AdInterstitialView$5;

    invoke-direct {v3, p0, p1}, Lcom/mapps/android/view/AdInterstitialView$5;-><init>(Lcom/mapps/android/view/AdInterstitialView;Ljava/util/concurrent/Callable;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/mapps/android/share/ShareUtil;->getAdvertisingIdForResult(Landroid/os/Handler;Landroid/content/Context;Lcom/mapps/android/share/ShareUtil$OnAdvertisingIdListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdInterstitialView;->startAD(Ljava/util/concurrent/Callable;)V

    goto :goto_0

    :cond_0
    const/16 p1, -0x64

    .line 118
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdInterstitialView;->onFailedToReceive(I)V

    :goto_0
    return-void
.end method

.method private startinterstitialView(Ljava/lang/String;IILjava/lang/String;)V
    .locals 8

    .line 681
    invoke-direct {p0}, Lcom/mapps/android/view/AdInterstitialView;->registerADErrorReceiver()V

    .line 682
    invoke-direct {p0}, Lcom/mapps/android/view/AdInterstitialView;->registerAdFinishReceiver()V

    .line 683
    invoke-direct {p0}, Lcom/mapps/android/view/AdInterstitialView;->registerAdClickReceiver()V

    .line 684
    invoke-direct {p0}, Lcom/mapps/android/view/AdInterstitialView;->registerChargeReceiver()V

    const/4 v0, 0x0

    .line 685
    sput-boolean v0, Lcom/mapps/android/view/AdInterstitialView;->isSSP:Z

    .line 686
    new-instance v0, Ljava/lang/Thread;

    new-instance v7, Lcom/mapps/android/view/AdInterstitialView$19;

    move-object v1, v7

    move-object v2, p0

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/mapps/android/view/AdInterstitialView$19;-><init>(Lcom/mapps/android/view/AdInterstitialView;IILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 712
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private unregisterADErrorReceiver()V
    .locals 2

    .line 631
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->AdErrorReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "AdErrorReceiver \uc81c\uac70"

    .line 633
    invoke-static {v0}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 634
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mapps/android/view/AdInterstitialView;->AdErrorReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 635
    iput-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->AdErrorReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private unregisterAdClickReceiver()V
    .locals 2

    .line 594
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->AdClickReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "AdClickReceiver \uc81c\uac70"

    .line 596
    invoke-static {v0}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 597
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mapps/android/view/AdInterstitialView;->AdClickReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 598
    iput-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->AdClickReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private unregisterAdFinishReceiver()V
    .locals 2

    .line 564
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->AdFinishReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "AdFinishReceiver \uc81c\uac70"

    .line 566
    invoke-static {v0}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 567
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mapps/android/view/AdInterstitialView;->AdFinishReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 568
    iput-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->AdFinishReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private unregisterChargeReceiver()V
    .locals 2

    .line 665
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->AdChargeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "AdChargeReceiver \uc81c\uac70"

    .line 667
    invoke-static {v0}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 668
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mapps/android/view/AdInterstitialView;->AdChargeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 669
    iput-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->AdChargeReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public ShowInterstitialView()V
    .locals 2

    .line 162
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapps/android/share/ShareUtil;->version()V

    const/16 v0, -0xfa0

    .line 164
    :try_start_0
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mapps/android/share/ShareUtil;->versionCheck()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    new-instance v1, Lcom/mapps/android/view/AdInterstitialView$7;

    invoke-direct {v1, p0}, Lcom/mapps/android/view/AdInterstitialView$7;-><init>(Lcom/mapps/android/view/AdInterstitialView;)V

    invoke-direct {p0, v1}, Lcom/mapps/android/view/AdInterstitialView;->startService(Ljava/util/concurrent/Callable;)V

    goto :goto_0

    .line 174
    :cond_0
    invoke-direct {p0, v0}, Lcom/mapps/android/view/AdInterstitialView;->onFailedToReceive(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 177
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 178
    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 179
    invoke-direct {p0, v0}, Lcom/mapps/android/view/AdInterstitialView;->onFailedToReceive(I)V

    :goto_0
    return-void
.end method

.method public finalize_unregReciver()V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->AdFinishReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 195
    invoke-direct {p0}, Lcom/mapps/android/view/AdInterstitialView;->unregisterAdFinishReceiver()V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->AdErrorReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 198
    invoke-direct {p0}, Lcom/mapps/android/view/AdInterstitialView;->unregisterADErrorReceiver()V

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->AdClickReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 201
    invoke-direct {p0}, Lcom/mapps/android/view/AdInterstitialView;->unregisterAdClickReceiver()V

    .line 203
    :cond_2
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->AdChargeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 204
    invoke-direct {p0}, Lcom/mapps/android/view/AdInterstitialView;->unregisterChargeReceiver()V

    :cond_3
    return-void
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    .line 887
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->mUserAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getAdListener()Lcom/mz/common/listener/AdListener;
    .locals 1

    .line 834
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->adListener:Lcom/mz/common/listener/AdListener;

    return-object v0
.end method

.method public getClosePostion()I
    .locals 1

    .line 923
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->adbean:Lcom/mz/common/network/data/DataNTMutiInter;

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataNTMutiInter;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->adbean:Lcom/mz/common/network/data/DataNTMutiInter;

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataNTMutiInter;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 924
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->adbean:Lcom/mz/common/network/data/DataNTMutiInter;

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataNTMutiInter;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mapps/android/view/AdInterstitialView;->closePostion:I

    .line 926
    :cond_0
    iget v0, p0, Lcom/mapps/android/view/AdInterstitialView;->closePostion:I

    return v0
.end method

.method public getMail()Ljava/lang/String;
    .locals 1

    .line 891
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->mUserMail:Ljava/lang/String;

    return-object v0
.end method

.method public getMedia_type()I
    .locals 1

    .line 677
    iget v0, p0, Lcom/mapps/android/view/AdInterstitialView;->media_type:I

    return v0
.end method

.method public getUUIDKey()Ljava/lang/String;
    .locals 1

    .line 803
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 804
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserAge()Ljava/lang/String;
    .locals 1

    .line 838
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->mUserAge:Ljava/lang/String;

    return-object v0
.end method

.method public getUserGender()Ljava/lang/String;
    .locals 1

    .line 846
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->mUserGender:Ljava/lang/String;

    return-object v0
.end method

.method public getViewStyle()I
    .locals 1

    .line 915
    iget v0, p0, Lcom/mapps/android/view/AdInterstitialView;->viewStyle:I

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->nt:Lcom/mz/common/network/Nt;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView;->nt:Lcom/mz/common/network/Nt;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mz/common/network/Nt;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0

    .line 855
    iput-object p1, p0, Lcom/mapps/android/view/AdInterstitialView;->mUserAccount:Ljava/lang/String;

    return-void
.end method

.method public setAdListener(Lcom/mz/common/listener/AdListener;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 829
    iput-object p1, p0, Lcom/mapps/android/view/AdInterstitialView;->adListener:Lcom/mz/common/listener/AdListener;

    :cond_0
    return-void
.end method

.method public setAdViewCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 809
    iput-object p1, p0, Lcom/mapps/android/view/AdInterstitialView;->a_publisher:Ljava/lang/String;

    .line 810
    iput-object p2, p0, Lcom/mapps/android/view/AdInterstitialView;->a_media:Ljava/lang/String;

    .line 811
    iput-object p3, p0, Lcom/mapps/android/view/AdInterstitialView;->a_section:Ljava/lang/String;

    .line 813
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/mapps/android/view/AdInterstitialView$21;

    invoke-direct {p2, p0}, Lcom/mapps/android/view/AdInterstitialView$21;-><init>(Lcom/mapps/android/view/AdInterstitialView;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 824
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .line 860
    iput-object p1, p0, Lcom/mapps/android/view/AdInterstitialView;->mUserMail:Ljava/lang/String;

    return-void
.end method

.method public setLoaction(Z)V
    .locals 2

    .line 864
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mapps/android/view/AdInterstitialView$22;

    invoke-direct {v1, p0, p1}, Lcom/mapps/android/view/AdInterstitialView$22;-><init>(Lcom/mapps/android/view/AdInterstitialView;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 871
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public setPakageInfo(Z)V
    .locals 2

    .line 876
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mapps/android/view/AdInterstitialView$23;

    invoke-direct {v1, p0, p1}, Lcom/mapps/android/view/AdInterstitialView$23;-><init>(Lcom/mapps/android/view/AdInterstitialView;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 883
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public setUserAge(Ljava/lang/String;)V
    .locals 0

    .line 842
    iput-object p1, p0, Lcom/mapps/android/view/AdInterstitialView;->mUserAge:Ljava/lang/String;

    return-void
.end method

.method public setUserGender(Ljava/lang/String;)V
    .locals 0

    .line 850
    iput-object p1, p0, Lcom/mapps/android/view/AdInterstitialView;->mUserGender:Ljava/lang/String;

    return-void
.end method

.method public setViewStyle(I)V
    .locals 0

    .line 919
    iput p1, p0, Lcom/mapps/android/view/AdInterstitialView;->viewStyle:I

    return-void
.end method
