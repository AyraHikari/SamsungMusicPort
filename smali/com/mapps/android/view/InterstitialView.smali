.class public Lcom/mapps/android/view/InterstitialView;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/mapps/android/share/AdInfoKey;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapps/android/view/InterstitialView$MyWebChromeClient;
    }
.end annotation


# static fields
.field private static SAVEREQUESTKEY:Ljava/lang/String; = ""


# instance fields
.field private backgroundLayout:Landroid/widget/RelativeLayout;

.field private bgcolor:Ljava/lang/String;

.field private btn_close:Landroid/widget/ImageView;

.field private btn_logo:Landroid/widget/ImageView;

.field private chksspclick:Ljava/lang/String;

.field private closeBtnShowHandler:Landroid/os/Handler;

.field private closeBtnShowRunnable:Ljava/lang/Runnable;

.field private closePostion:I

.field private deviceH:I

.field private deviceW:I

.field private dspclick:Ljava/lang/String;

.field private dspimp:Ljava/lang/String;

.field private h:I

.field private htmlLoading:Ljava/lang/String;

.field private imageView:Landroid/widget/ImageView;

.field private isLandingGo:Z

.field private isTimeout:Z

.field private landingurl:Ljava/lang/String;

.field private logoPostion:I

.field private mAdBitmap:Landroid/graphics/Bitmap;

.field private mediaType:I

.field private myWebView:Landroid/webkit/WebView;

.field private nt:Lcom/mz/common/network/Nt;

.field private popupLayout:Landroid/widget/RelativeLayout;

.field private product_attr:Ljava/lang/String;

.field private progressbarListener:Lcom/mz/common/network/Nt$OnProgressbarListener;

.field private resizeStyle:I

.field private rootMain:Landroid/widget/RelativeLayout;

.field showViewHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private sspclick:Ljava/lang/String;

.field private sspimp:Ljava/lang/String;

.field private timeoutHandler:Landroid/os/Handler;

.field private timeoutRun:Ljava/lang/Runnable;

.field private uiLoad:Lcom/mz/common/ui/UILoad;

.field private viewInfo:Ljava/lang/String;

.field private w:I

.field private webloading_timeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, ""

    .line 60
    iput-object v0, p0, Lcom/mapps/android/view/InterstitialView;->viewInfo:Ljava/lang/String;

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/mapps/android/view/InterstitialView;->mAdBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    .line 62
    iput v1, p0, Lcom/mapps/android/view/InterstitialView;->mediaType:I

    const-string v2, "#000000"

    .line 72
    iput-object v2, p0, Lcom/mapps/android/view/InterstitialView;->bgcolor:Ljava/lang/String;

    .line 76
    iput-boolean v1, p0, Lcom/mapps/android/view/InterstitialView;->isLandingGo:Z

    const/16 v1, 0xbb8

    .line 83
    iput v1, p0, Lcom/mapps/android/view/InterstitialView;->webloading_timeout:I

    const/4 v1, 0x3

    .line 84
    iput v1, p0, Lcom/mapps/android/view/InterstitialView;->closePostion:I

    const/4 v1, 0x1

    .line 87
    iput v1, p0, Lcom/mapps/android/view/InterstitialView;->logoPostion:I

    .line 89
    iput v1, p0, Lcom/mapps/android/view/InterstitialView;->resizeStyle:I

    .line 90
    new-instance v2, Lcom/mapps/android/view/InterstitialView$1;

    invoke-direct {v2, p0}, Lcom/mapps/android/view/InterstitialView$1;-><init>(Lcom/mapps/android/view/InterstitialView;)V

    iput-object v2, p0, Lcom/mapps/android/view/InterstitialView;->progressbarListener:Lcom/mz/common/network/Nt$OnProgressbarListener;

    .line 520
    iput-object v0, p0, Lcom/mapps/android/view/InterstitialView;->closeBtnShowRunnable:Ljava/lang/Runnable;

    .line 521
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mapps/android/view/InterstitialView;->closeBtnShowHandler:Landroid/os/Handler;

    .line 598
    new-instance v0, Lcom/mapps/android/view/InterstitialView$2;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/InterstitialView$2;-><init>(Lcom/mapps/android/view/InterstitialView;)V

    iput-object v0, p0, Lcom/mapps/android/view/InterstitialView;->showViewHandler:Landroid/os/Handler;

    .line 805
    iput-boolean v1, p0, Lcom/mapps/android/view/InterstitialView;->isTimeout:Z

    .line 806
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mapps/android/view/InterstitialView;->timeoutHandler:Landroid/os/Handler;

    const-string v0, ""

    .line 841
    iput-object v0, p0, Lcom/mapps/android/view/InterstitialView;->htmlLoading:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$0(Lcom/mapps/android/view/InterstitialView;)Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/mapps/android/view/InterstitialView;->sspimp:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1(Lcom/mapps/android/view/InterstitialView;)Ljava/lang/String;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/mapps/android/view/InterstitialView;->dspimp:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$10(Lcom/mapps/android/view/InterstitialView;)I
    .locals 0

    .line 87
    iget p0, p0, Lcom/mapps/android/view/InterstitialView;->logoPostion:I

    return p0
.end method

.method static synthetic access$11(Lcom/mapps/android/view/InterstitialView;Landroid/view/ViewGroup;I)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 0

    .line 293
    invoke-direct {p0, p1, p2}, Lcom/mapps/android/view/InterstitialView;->logoPos(Landroid/view/ViewGroup;I)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$12(Lcom/mapps/android/view/InterstitialView;)Landroid/widget/ImageView;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/mapps/android/view/InterstitialView;->btn_close:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$13(Lcom/mapps/android/view/InterstitialView;)V
    .locals 0

    .line 722
    invoke-direct {p0}, Lcom/mapps/android/view/InterstitialView;->closeEvnet()V

    return-void
.end method

.method static synthetic access$14(Lcom/mapps/android/view/InterstitialView;)I
    .locals 0

    .line 84
    iget p0, p0, Lcom/mapps/android/view/InterstitialView;->closePostion:I

    return p0
.end method

.method static synthetic access$15(Lcom/mapps/android/view/InterstitialView;Landroid/widget/RelativeLayout;III)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 0

    .line 440
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mapps/android/view/InterstitialView;->closePos(Landroid/widget/RelativeLayout;III)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$16(Lcom/mapps/android/view/InterstitialView;)Ljava/lang/Runnable;
    .locals 0

    .line 520
    iget-object p0, p0, Lcom/mapps/android/view/InterstitialView;->closeBtnShowRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$17(Lcom/mapps/android/view/InterstitialView;)Landroid/os/Handler;
    .locals 0

    .line 521
    iget-object p0, p0, Lcom/mapps/android/view/InterstitialView;->closeBtnShowHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$18(Lcom/mapps/android/view/InterstitialView;Ljava/lang/Runnable;)V
    .locals 0

    .line 520
    iput-object p1, p0, Lcom/mapps/android/view/InterstitialView;->closeBtnShowRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$19(Lcom/mapps/android/view/InterstitialView;)Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/mapps/android/view/InterstitialView;->viewInfo:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2(Lcom/mapps/android/view/InterstitialView;)Landroid/widget/ImageView;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/mapps/android/view/InterstitialView;->imageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$20(Lcom/mapps/android/view/InterstitialView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/mapps/android/view/InterstitialView;->mAdBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$21(Lcom/mapps/android/view/InterstitialView;)Ljava/lang/String;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/mapps/android/view/InterstitialView;->landingurl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$22(Lcom/mapps/android/view/InterstitialView;)Ljava/lang/String;
    .locals 0

    .line 841
    iget-object p0, p0, Lcom/mapps/android/view/InterstitialView;->htmlLoading:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$23(Lcom/mapps/android/view/InterstitialView;Ljava/lang/String;)V
    .locals 0

    .line 841
    iput-object p1, p0, Lcom/mapps/android/view/InterstitialView;->htmlLoading:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$24(Lcom/mapps/android/view/InterstitialView;)Ljava/lang/String;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/mapps/android/view/InterstitialView;->product_attr:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$25(Lcom/mapps/android/view/InterstitialView;)Z
    .locals 0

    .line 805
    iget-boolean p0, p0, Lcom/mapps/android/view/InterstitialView;->isTimeout:Z

    return p0
.end method

.method static synthetic access$26(Lcom/mapps/android/view/InterstitialView;Ljava/lang/Runnable;)V
    .locals 0

    .line 807
    iput-object p1, p0, Lcom/mapps/android/view/InterstitialView;->timeoutRun:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$27(Lcom/mapps/android/view/InterstitialView;Z)V
    .locals 0

    .line 805
    iput-boolean p1, p0, Lcom/mapps/android/view/InterstitialView;->isTimeout:Z

    return-void
.end method

.method static synthetic access$28(Lcom/mapps/android/view/InterstitialView;)Landroid/os/Handler;
    .locals 0

    .line 806
    iget-object p0, p0, Lcom/mapps/android/view/InterstitialView;->timeoutHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$29(Lcom/mapps/android/view/InterstitialView;)Ljava/lang/Runnable;
    .locals 0

    .line 807
    iget-object p0, p0, Lcom/mapps/android/view/InterstitialView;->timeoutRun:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$3(Lcom/mapps/android/view/InterstitialView;)Landroid/graphics/Bitmap;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/mapps/android/view/InterstitialView;->mAdBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$30(Lcom/mapps/android/view/InterstitialView;)I
    .locals 0

    .line 83
    iget p0, p0, Lcom/mapps/android/view/InterstitialView;->webloading_timeout:I

    return p0
.end method

.method static synthetic access$31(Lcom/mapps/android/view/InterstitialView;)V
    .locals 0

    .line 816
    invoke-direct {p0}, Lcom/mapps/android/view/InterstitialView;->timeoutCheck()V

    return-void
.end method

.method static synthetic access$32(Lcom/mapps/android/view/InterstitialView;)V
    .locals 0

    .line 1026
    invoke-direct {p0}, Lcom/mapps/android/view/InterstitialView;->requestSSPClick()V

    return-void
.end method

.method static synthetic access$33(Lcom/mapps/android/view/InterstitialView;)Landroid/webkit/WebView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/mapps/android/view/InterstitialView;->myWebView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$34(Lcom/mapps/android/view/InterstitialView;)Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/mapps/android/view/InterstitialView;->sspclick:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$35(Ljava/lang/String;)V
    .locals 0

    .line 79
    sput-object p0, Lcom/mapps/android/view/InterstitialView;->SAVEREQUESTKEY:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lcom/mapps/android/view/InterstitialView;I)V
    .locals 0

    .line 716
    invoke-direct {p0, p1}, Lcom/mapps/android/view/InterstitialView;->sendErrorEvent(I)V

    return-void
.end method

.method static synthetic access$5(Lcom/mapps/android/view/InterstitialView;)V
    .locals 0

    .line 728
    invoke-direct {p0}, Lcom/mapps/android/view/InterstitialView;->chargeEvnet()V

    return-void
.end method

.method static synthetic access$6(Lcom/mapps/android/view/InterstitialView;Z)V
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/mapps/android/view/InterstitialView;->isLandingGo:Z

    return-void
.end method

.method static synthetic access$7(Lcom/mapps/android/view/InterstitialView;)V
    .locals 0

    .line 739
    invoke-direct {p0}, Lcom/mapps/android/view/InterstitialView;->clickEvnet()V

    return-void
.end method

.method static synthetic access$8(Lcom/mapps/android/view/InterstitialView;)V
    .locals 0

    .line 667
    invoke-direct {p0}, Lcom/mapps/android/view/InterstitialView;->clickLanding()V

    return-void
.end method

.method static synthetic access$9(Lcom/mapps/android/view/InterstitialView;)Landroid/widget/ImageView;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/mapps/android/view/InterstitialView;->btn_logo:Landroid/widget/ImageView;

    return-object p0
.end method

.method private buttonRemove(Landroid/widget/ImageView;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 770
    invoke-static {p1}, Lcom/mapps/android/view/InterstitialView;->recycleBitmap(Landroid/widget/ImageView;)V

    .line 771
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 774
    :cond_0
    iget-object p1, p0, Lcom/mapps/android/view/InterstitialView;->closeBtnShowRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 775
    iget-object p1, p0, Lcom/mapps/android/view/InterstitialView;->closeBtnShowHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView;->closeBtnShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 776
    iput-object v0, p0, Lcom/mapps/android/view/InterstitialView;->closeBtnShowRunnable:Ljava/lang/Runnable;

    :cond_1
    return-void
.end method

.method private chargeEvnet()V
    .locals 2

    .line 729
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mapps.android.action.CHARGEABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 730
    invoke-virtual {p0, v0}, Lcom/mapps/android/view/InterstitialView;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private clickEvnet()V
    .locals 2

    .line 740
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mapps.android.action.ADCLICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 741
    invoke-virtual {p0, v0}, Lcom/mapps/android/view/InterstitialView;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private clickLanding()V
    .locals 2

    .line 668
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->landingurl:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, ""

    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView;->landingurl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 669
    iput-boolean v0, p0, Lcom/mapps/android/view/InterstitialView;->isLandingGo:Z

    .line 671
    invoke-direct {p0}, Lcom/mapps/android/view/InterstitialView;->requestSSPClick()V

    .line 672
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->dspclick:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView;->dspclick:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 673
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const-string v1, "Dsp_click"

    .line 674
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 675
    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView;->dspclick:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/mapps/android/view/InterstitialView;->simpleServerapi(Ljava/lang/String;Landroid/os/Message;)V

    .line 678
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mapps/android/view/InterstitialView$8;

    invoke-direct {v1, p0}, Lcom/mapps/android/view/InterstitialView$8;-><init>(Lcom/mapps/android/view/InterstitialView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 690
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method private closeEvnet()V
    .locals 3

    .line 723
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mapps.android.action.FINISH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "adfinish_value"

    const/4 v2, 0x0

    .line 724
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 725
    invoke-virtual {p0, v0}, Lcom/mapps/android/view/InterstitialView;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private closePos(Landroid/widget/RelativeLayout;III)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 19

    .line 443
    invoke-virtual/range {p1 .. p1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v2, p3, 0x2

    sub-int v6, v1, v2

    .line 444
    invoke-virtual/range {p1 .. p1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v2, p4, 0x2

    sub-int v11, v1, v2

    .line 446
    invoke-virtual/range {p1 .. p1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    sub-int v1, v1, p4

    add-int/lit8 v16, v1, -0x1e

    packed-switch p2, :pswitch_data_0

    const/16 v2, 0xb

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/16 v6, 0x1e

    move-object/from16 v1, p0

    move v5, v6

    .line 486
    invoke-direct/range {v1 .. v7}, Lcom/mapps/android/view/InterstitialView;->createImageViewLayout(IIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_0
    const/16 v13, 0xb

    const/16 v14, 0x8

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v17, 0x1e

    move-object/from16 v12, p0

    .line 482
    invoke-direct/range {v12 .. v18}, Lcom/mapps/android/view/InterstitialView;->createImageViewLayout(IIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_1
    const/16 v4, 0x9

    const/16 v5, 0x8

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move/from16 v7, v16

    .line 478
    invoke-direct/range {v3 .. v9}, Lcom/mapps/android/view/InterstitialView;->createImageViewLayout(IIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const/16 v13, 0x9

    const/16 v14, 0x8

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v15, 0x1e

    move-object/from16 v12, p0

    .line 474
    invoke-direct/range {v12 .. v18}, Lcom/mapps/android/view/InterstitialView;->createImageViewLayout(IIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const/16 v8, 0xb

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/16 v12, 0x1e

    move-object/from16 v7, p0

    .line 470
    invoke-direct/range {v7 .. v13}, Lcom/mapps/android/view/InterstitialView;->createImageViewLayout(IIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    const/16 v8, 0x9

    const/4 v9, 0x6

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v10, 0x1e

    move-object/from16 v7, p0

    .line 461
    invoke-direct/range {v7 .. v13}, Lcom/mapps/android/view/InterstitialView;->createImageViewLayout(IIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    const/16 v2, 0xb

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/16 v6, 0x1e

    move-object/from16 v1, p0

    move v5, v6

    .line 457
    invoke-direct/range {v1 .. v7}, Lcom/mapps/android/view/InterstitialView;->createImageViewLayout(IIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    const/16 v4, 0x9

    const/4 v5, 0x6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v7, 0x1e

    move-object/from16 v3, p0

    .line 453
    invoke-direct/range {v3 .. v9}, Lcom/mapps/android/view/InterstitialView;->createImageViewLayout(IIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    const/16 v2, 0x9

    const/4 v3, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v5, 0x1e

    move-object/from16 v1, p0

    move v4, v5

    .line 449
    invoke-direct/range {v1 .. v7}, Lcom/mapps/android/view/InterstitialView;->createImageViewLayout(IIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

.method private createCloseBtn(Landroid/widget/RelativeLayout;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .line 494
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->closeBtnShowRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->closeBtnShowHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView;->closeBtnShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 496
    iput-object v0, p0, Lcom/mapps/android/view/InterstitialView;->closeBtnShowRunnable:Ljava/lang/Runnable;

    :cond_0
    if-eqz p1, :cond_1

    .line 499
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mapps/android/view/InterstitialView;->btn_close:Landroid/widget/ImageView;

    .line 500
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->btn_close:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 501
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->uiLoad:Lcom/mz/common/ui/UILoad;

    new-instance v1, Lcom/mapps/android/view/InterstitialView$5;

    invoke-direct {v1, p0, p1}, Lcom/mapps/android/view/InterstitialView$5;-><init>(Lcom/mapps/android/view/InterstitialView;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v0, p0, p1, v1}, Lcom/mz/common/ui/UILoad;->a(Landroid/content/Context;Landroid/widget/RelativeLayout;Landroid/os/Handler;)V

    :cond_1
    return-void
.end method

.method private createImageViewLayout(IIIIII)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    .line 709
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 710
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 711
    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 712
    invoke-virtual {v0, p3, p4, p5, p6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    return-object v0
.end method

.method private createImageViewLayout(IIIIIIII)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1

    .line 350
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p7, p8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 351
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 352
    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 353
    invoke-virtual {v0, p3, p4, p5, p6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    return-object v0
.end method

.method private createLogoBtn(Landroid/view/ViewGroup;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 237
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/mapps/android/view/InterstitialView;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mapps/android/view/InterstitialView;->btn_logo:Landroid/widget/ImageView;

    .line 238
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->uiLoad:Lcom/mz/common/ui/UILoad;

    sget-object v1, Lcom/mz/common/ui/UILoad$ImageBaseUrl;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/mapps/android/view/InterstitialView;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/mapps/android/view/InterstitialView$3;

    invoke-direct {v3, p0, p1}, Lcom/mapps/android/view/InterstitialView$3;-><init>(Lcom/mapps/android/view/InterstitialView;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/mz/common/ui/UILoad;->a(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method private destroyEvnet()V
    .locals 3

    .line 734
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mapps.android.action.FINISH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "adfinish_value"

    const/4 v2, 0x1

    .line 735
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 736
    invoke-virtual {p0, v0}, Lcom/mapps/android/view/InterstitialView;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private htmlTypeSetting(Landroid/widget/RelativeLayout;)V
    .locals 3

    .line 695
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 696
    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/mapps/android/view/InterstitialView;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mapps/android/view/InterstitialView;->myWebView:Landroid/webkit/WebView;

    .line 697
    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView;->myWebView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 698
    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 699
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 701
    iget-object p1, p0, Lcom/mapps/android/view/InterstitialView;->viewInfo:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mapps/android/view/InterstitialView;->viewInfo:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 702
    iget-object p1, p0, Lcom/mapps/android/view/InterstitialView;->viewInfo:Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Lcom/mapps/android/view/InterstitialView;->LoadingURL(Ljava/lang/String;Z)V

    goto :goto_0

    .line 704
    :cond_0
    invoke-virtual {p0}, Lcom/mapps/android/view/InterstitialView;->finish()V

    :goto_0
    return-void
.end method

.method private imageTypeSetting(Landroid/widget/RelativeLayout;)V
    .locals 3

    .line 558
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 559
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/mapps/android/view/InterstitialView;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mapps/android/view/InterstitialView;->imageView:Landroid/widget/ImageView;

    .line 571
    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView;->imageView:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 572
    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView;->imageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 573
    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 574
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 575
    invoke-direct {p0, p1}, Lcom/mapps/android/view/InterstitialView;->createLogoBtn(Landroid/view/ViewGroup;)V

    .line 576
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/mapps/android/view/InterstitialView$7;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/InterstitialView$7;-><init>(Lcom/mapps/android/view/InterstitialView;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 593
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private logoPos(Landroid/view/ViewGroup;I)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 11

    .line 295
    invoke-virtual {p0}, Lcom/mapps/android/view/InterstitialView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/mz/common/utils/DisplayUtil;->a(Landroid/content/Context;I)I

    move-result v9

    .line 296
    invoke-virtual {p0}, Lcom/mapps/android/view/InterstitialView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/mz/common/utils/DisplayUtil;->a(Landroid/content/Context;I)I

    move-result v10

    .line 297
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v9, 0x2

    sub-int v5, v0, v1

    .line 298
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v10, 0x2

    sub-int v6, v0, v1

    .line 300
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    sub-int/2addr p1, v10

    add-int/lit8 p1, p1, -0x19

    packed-switch p2, :pswitch_data_0

    const/16 v3, 0xb

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/16 v7, 0x19

    move-object v2, p0

    move v6, v7

    .line 343
    invoke-direct/range {v2 .. v10}, Lcom/mapps/android/view/InterstitialView;->createImageViewLayout(IIIIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_0
    const/16 v3, 0xb

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/16 v7, 0x19

    move-object v2, p0

    move v6, p1

    .line 339
    invoke-direct/range {v2 .. v10}, Lcom/mapps/android/view/InterstitialView;->createImageViewLayout(IIIIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_1
    const/16 v3, 0x9

    const/16 v4, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move v6, p1

    .line 332
    invoke-direct/range {v2 .. v10}, Lcom/mapps/android/view/InterstitialView;->createImageViewLayout(IIIIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    goto :goto_0

    :pswitch_2
    const/16 v3, 0x9

    const/16 v4, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v5, 0x19

    move-object v2, p0

    move v6, p1

    .line 328
    invoke-direct/range {v2 .. v10}, Lcom/mapps/android/view/InterstitialView;->createImageViewLayout(IIIIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    goto :goto_0

    :pswitch_3
    const/16 v3, 0xb

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/16 v7, 0x19

    move-object v2, p0

    .line 324
    invoke-direct/range {v2 .. v10}, Lcom/mapps/android/view/InterstitialView;->createImageViewLayout(IIIIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    goto :goto_0

    :pswitch_4
    const/16 v3, 0x9

    const/4 v4, 0x6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v5, 0x19

    move-object v2, p0

    .line 315
    invoke-direct/range {v2 .. v10}, Lcom/mapps/android/view/InterstitialView;->createImageViewLayout(IIIIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    goto :goto_0

    :pswitch_5
    const/16 v3, 0xb

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/16 v7, 0x19

    move-object v2, p0

    move v6, v7

    .line 311
    invoke-direct/range {v2 .. v10}, Lcom/mapps/android/view/InterstitialView;->createImageViewLayout(IIIIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    goto :goto_0

    :pswitch_6
    const/16 v3, 0x9

    const/4 v4, 0x6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v6, 0x19

    move-object v2, p0

    .line 307
    invoke-direct/range {v2 .. v10}, Lcom/mapps/android/view/InterstitialView;->createImageViewLayout(IIIIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    goto :goto_0

    :pswitch_7
    const/16 v3, 0x9

    const/4 v4, 0x6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v6, 0x19

    move-object v2, p0

    move v5, v6

    .line 303
    invoke-direct/range {v2 .. v10}, Lcom/mapps/android/view/InterstitialView;->createImageViewLayout(IIIIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
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

.method private static recycleBitmap(Landroid/widget/ImageView;)V
    .locals 1

    .line 793
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 795
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 796
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 798
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    .line 800
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    return-void
.end method

.method private requestSSPClick()V
    .locals 5

    .line 1027
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->sspclick:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, ""

    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView;->sspclick:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1028
    sget-object v0, Lcom/mz/common/network/data/DataNTSSP$SSPCLICK;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView;->chksspclick:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1029
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->sspclick:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "i_request_key"

    .line 1030
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1031
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SAVEREQUESTKEY -->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/mapps/android/view/InterstitialView;->SAVEREQUESTKEY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : request"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 1032
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "request_key -->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : request"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 1034
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendapi -->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mapps/android/view/InterstitialView;->sspclick:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : request"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 1035
    sget-object v1, Lcom/mapps/android/view/InterstitialView;->SAVEREQUESTKEY:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1036
    new-instance v1, Lcom/mz/common/network/Nt;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3, v3}, Lcom/mz/common/network/Nt;-><init>(Landroid/content/Context;Landroid/os/Handler;ZZ)V

    iput-object v1, p0, Lcom/mapps/android/view/InterstitialView;->nt:Lcom/mz/common/network/Nt;

    .line 1037
    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView;->nt:Lcom/mz/common/network/Nt;

    iget-object v2, p0, Lcom/mapps/android/view/InterstitialView;->progressbarListener:Lcom/mz/common/network/Nt$OnProgressbarListener;

    invoke-virtual {v1, v2}, Lcom/mz/common/network/Nt;->a(Lcom/mz/common/network/Nt$OnProgressbarListener;)V

    .line 1038
    new-instance v1, Lcom/mz/common/network/request/RequestSimple;

    iget-object v2, p0, Lcom/mapps/android/view/InterstitialView;->sspclick:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v2, v4}, Lcom/mz/common/network/request/RequestSimple;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Message;)V

    .line 1039
    new-instance v2, Lcom/mapps/android/view/InterstitialView$11;

    invoke-direct {v2, p0, v0}, Lcom/mapps/android/view/InterstitialView$11;-><init>(Lcom/mapps/android/view/InterstitialView;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/mz/common/network/request/RequestSimple;->a(Lcom/mz/common/network/request/OnConnectionListener;)V

    .line 1057
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->nt:Lcom/mz/common/network/Nt;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/mz/common/network/request/RequestNTCommon;

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/mz/common/network/Nt;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1059
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendapi -->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView;->sspclick:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : \uc774\ubbf8 \ubcf4\ub0c8\uc74c \uc548\ubcf4\ub0c4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private resize()V
    .locals 6

    .line 381
    iget v0, p0, Lcom/mapps/android/view/InterstitialView;->deviceW:I

    iget v1, p0, Lcom/mapps/android/view/InterstitialView;->deviceH:I

    invoke-direct {p0, v0, v1}, Lcom/mapps/android/view/InterstitialView;->resizeLayoutParms(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 385
    iget v1, p0, Lcom/mapps/android/view/InterstitialView;->deviceW:I

    iget v2, p0, Lcom/mapps/android/view/InterstitialView;->deviceH:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    .line 386
    iget v1, p0, Lcom/mapps/android/view/InterstitialView;->w:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/mapps/android/view/InterstitialView;->h:I

    if-lez v1, :cond_1

    .line 387
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v0

    const/16 v1, 0xa0

    iget v2, p0, Lcom/mapps/android/view/InterstitialView;->deviceW:I

    invoke-virtual {v0, v1, v2}, Lcom/mapps/android/share/ShareUtil;->nearSize(II)F

    move-result v3

    .line 388
    iget v0, p0, Lcom/mapps/android/view/InterstitialView;->w:I

    int-to-float v0, v0

    div-float v0, v3, v0

    .line 389
    iget v1, p0, Lcom/mapps/android/view/InterstitialView;->h:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    .line 390
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/mapps/android/view/InterstitialView;->resizeLayoutParms(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    goto :goto_0

    .line 393
    :cond_0
    iget v1, p0, Lcom/mapps/android/view/InterstitialView;->w:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/mapps/android/view/InterstitialView;->h:I

    if-lez v1, :cond_1

    .line 394
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v0

    const/16 v1, 0xf0

    iget v2, p0, Lcom/mapps/android/view/InterstitialView;->deviceH:I

    invoke-virtual {v0, v1, v2}, Lcom/mapps/android/share/ShareUtil;->nearSize(II)F

    move-result v3

    .line 395
    iget v0, p0, Lcom/mapps/android/view/InterstitialView;->h:I

    int-to-float v0, v0

    div-float v0, v3, v0

    .line 396
    iget v1, p0, Lcom/mapps/android/view/InterstitialView;->w:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    .line 397
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/mapps/android/view/InterstitialView;->resizeLayoutParms(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    move v5, v3

    move v3, v0

    move v0, v5

    goto :goto_0

    :cond_1
    move-object v1, v0

    const/4 v0, 0x0

    .line 400
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "realW : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 401
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "realH : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 402
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "realW : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mapps/android/view/InterstitialView;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/mz/common/utils/DisplayUtil;->a(Landroid/content/Context;F)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 403
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "realH : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mapps/android/view/InterstitialView;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/mz/common/utils/DisplayUtil;->a(Landroid/content/Context;F)F

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->popupLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private resizeForWidth()V
    .locals 6

    .line 408
    iget v0, p0, Lcom/mapps/android/view/InterstitialView;->deviceW:I

    iget v1, p0, Lcom/mapps/android/view/InterstitialView;->deviceH:I

    invoke-direct {p0, v0, v1}, Lcom/mapps/android/view/InterstitialView;->resizeLayoutParms(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 412
    iget v1, p0, Lcom/mapps/android/view/InterstitialView;->deviceW:I

    iget v2, p0, Lcom/mapps/android/view/InterstitialView;->deviceH:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    .line 413
    iget v1, p0, Lcom/mapps/android/view/InterstitialView;->w:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/mapps/android/view/InterstitialView;->h:I

    if-lez v1, :cond_1

    .line 414
    iget v0, p0, Lcom/mapps/android/view/InterstitialView;->deviceW:I

    int-to-float v3, v0

    .line 415
    iget v0, p0, Lcom/mapps/android/view/InterstitialView;->w:I

    int-to-float v0, v0

    div-float v0, v3, v0

    .line 416
    iget v1, p0, Lcom/mapps/android/view/InterstitialView;->h:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    .line 417
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/mapps/android/view/InterstitialView;->resizeLayoutParms(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    goto :goto_0

    .line 420
    :cond_0
    iget v1, p0, Lcom/mapps/android/view/InterstitialView;->w:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/mapps/android/view/InterstitialView;->h:I

    if-lez v1, :cond_1

    .line 421
    iget v0, p0, Lcom/mapps/android/view/InterstitialView;->deviceH:I

    int-to-float v3, v0

    .line 422
    iget v0, p0, Lcom/mapps/android/view/InterstitialView;->h:I

    int-to-float v0, v0

    div-float v0, v3, v0

    .line 423
    iget v1, p0, Lcom/mapps/android/view/InterstitialView;->w:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    .line 424
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/mapps/android/view/InterstitialView;->resizeLayoutParms(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    move v5, v3

    move v3, v0

    move v0, v5

    goto :goto_0

    :cond_1
    move-object v1, v0

    const/4 v0, 0x0

    .line 427
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "realW : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 428
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "realH : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 429
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "realW : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mapps/android/view/InterstitialView;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/mz/common/utils/DisplayUtil;->a(Landroid/content/Context;F)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 430
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "realH : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mapps/android/view/InterstitialView;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/mz/common/utils/DisplayUtil;->a(Landroid/content/Context;F)F

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->popupLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private resizeLayoutParms(II)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1

    .line 435
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0xd

    .line 436
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-object v0
.end method

.method private sendErrorEvent(I)V
    .locals 2

    .line 717
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mapps.android.action.ADERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "aderror_type"

    .line 718
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 719
    invoke-virtual {p0, v0}, Lcom/mapps/android/view/InterstitialView;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private timeoutCheck()V
    .locals 2

    .line 817
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->myWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 818
    invoke-static {p0}, Lcom/mz/common/MZUtils;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getProgress()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 820
    iput-boolean v0, p0, Lcom/mapps/android/view/InterstitialView;->isTimeout:Z

    .line 821
    iget v1, p0, Lcom/mapps/android/view/InterstitialView;->resizeStyle:I

    .line 827
    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView;->popupLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1}, Lcom/mapps/android/view/InterstitialView;->createCloseBtn(Landroid/widget/RelativeLayout;)V

    .line 830
    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView;->backgroundLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 832
    invoke-direct {p0, v0}, Lcom/mapps/android/view/InterstitialView;->sendErrorEvent(I)V

    .line 833
    invoke-direct {p0}, Lcom/mapps/android/view/InterstitialView;->chargeEvnet()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 836
    iput-boolean v0, p0, Lcom/mapps/android/view/InterstitialView;->isTimeout:Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public LoadingURL(Ljava/lang/String;Z)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 848
    iget-object p2, p0, Lcom/mapps/android/view/InterstitialView;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 849
    iget-object p2, p0, Lcom/mapps/android/view/InterstitialView;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    .line 850
    iget-object p2, p0, Lcom/mapps/android/view/InterstitialView;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 851
    iget-object p2, p0, Lcom/mapps/android/view/InterstitialView;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 852
    iget-object p2, p0, Lcom/mapps/android/view/InterstitialView;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 853
    iget-object p2, p0, Lcom/mapps/android/view/InterstitialView;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    sget-object v1, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {p2, v1}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    .line 854
    iget-object p2, p0, Lcom/mapps/android/view/InterstitialView;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {p2, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 855
    iget-object p2, p0, Lcom/mapps/android/view/InterstitialView;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 856
    iget-object p2, p0, Lcom/mapps/android/view/InterstitialView;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    sget-object v2, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {p2, v2}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 857
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x13

    if-lt p2, v3, :cond_0

    .line 858
    iget-object p2, p0, Lcom/mapps/android/view/InterstitialView;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {p2, v1, v2}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    .line 860
    :cond_0
    iget-object p2, p0, Lcom/mapps/android/view/InterstitialView;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {p2, v0, v2}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 862
    :goto_0
    iget-object p2, p0, Lcom/mapps/android/view/InterstitialView;->myWebView:Landroid/webkit/WebView;

    new-instance v0, Lcom/mapps/android/view/InterstitialView$9;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/InterstitialView$9;-><init>(Lcom/mapps/android/view/InterstitialView;)V

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 965
    iget-object p2, p0, Lcom/mapps/android/view/InterstitialView;->sspimp:Ljava/lang/String;

    if-eqz p2, :cond_1

    const-string p2, ""

    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->sspimp:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 966
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    const-string v0, "Ssp_imp"

    .line 967
    iput-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 968
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->sspimp:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lcom/mapps/android/view/InterstitialView;->simpleServerapi(Ljava/lang/String;Landroid/os/Message;)V

    .line 970
    :cond_1
    iget-object p2, p0, Lcom/mapps/android/view/InterstitialView;->myWebView:Landroid/webkit/WebView;

    new-instance v0, Lcom/mapps/android/view/InterstitialView$MyWebChromeClient;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/InterstitialView$MyWebChromeClient;-><init>(Lcom/mapps/android/view/InterstitialView;)V

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 971
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/mapps/android/view/InterstitialView$10;

    invoke-direct {v0, p0, p1}, Lcom/mapps/android/view/InterstitialView$10;-><init>(Lcom/mapps/android/view/InterstitialView;Ljava/lang/String;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public changBackgroundColor(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 222
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bgcolor : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView;->bgcolor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/mz/common/MZUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 226
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "changBackgroundColor : inter backgroundcolor Exception"

    .line 229
    invoke-static {p1}, Lcom/mz/common/MzLog;->c(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public finish()V
    .locals 0

    .line 746
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 782
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->myWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    return-void

    .line 788
    :cond_0
    invoke-direct {p0}, Lcom/mapps/android/view/InterstitialView;->closeEvnet()V

    .line 789
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 109
    invoke-virtual {p0}, Lcom/mapps/android/view/InterstitialView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 110
    invoke-virtual {p0}, Lcom/mapps/android/view/InterstitialView;->timeoutHandlerRemove()V

    const-string v1, "isdialog"

    const/4 v2, 0x1

    .line 111
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mapps/android/view/InterstitialView;->resizeStyle:I

    .line 112
    invoke-virtual {p0, v2}, Lcom/mapps/android/view/InterstitialView;->requestWindowFeature(I)Z

    .line 113
    invoke-virtual {p0}, Lcom/mapps/android/view/InterstitialView;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v3, 0x106000d

    invoke-virtual {v1, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    const-string v1, "mediatype"

    const/4 v3, 0x0

    .line 115
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mapps/android/view/InterstitialView;->mediaType:I

    const-string v1, "response_time"

    const/16 v4, 0xbb8

    .line 116
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mapps/android/view/InterstitialView;->webloading_timeout:I

    const-string v1, "viewinfo"

    .line 117
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mapps/android/view/InterstitialView;->viewInfo:Ljava/lang/String;

    const-string v1, "width"

    .line 118
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mapps/android/view/InterstitialView;->w:I

    const-string v1, "height"

    .line 119
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mapps/android/view/InterstitialView;->h:I

    const-string v1, "closePostion"

    const/4 v4, 0x3

    .line 121
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mapps/android/view/InterstitialView;->closePostion:I

    .line 122
    new-instance v1, Lcom/mz/common/ui/UILoad;

    invoke-direct {v1}, Lcom/mz/common/ui/UILoad;-><init>()V

    iput-object v1, p0, Lcom/mapps/android/view/InterstitialView;->uiLoad:Lcom/mz/common/ui/UILoad;

    const-string v1, ""

    .line 123
    sput-object v1, Lcom/mapps/android/view/InterstitialView;->SAVEREQUESTKEY:Ljava/lang/String;

    const-string v1, "sspimp"

    .line 124
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "sspimp"

    .line 125
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mapps/android/view/InterstitialView;->sspimp:Ljava/lang/String;

    :cond_0
    const-string v1, "dspimp"

    .line 128
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "dspimp"

    .line 129
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mapps/android/view/InterstitialView;->dspimp:Ljava/lang/String;

    :cond_1
    const-string v1, "landingurl"

    .line 132
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "landingurl"

    .line 133
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mapps/android/view/InterstitialView;->landingurl:Ljava/lang/String;

    :cond_2
    const-string v1, "dspclick"

    .line 136
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "dspclick"

    .line 137
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mapps/android/view/InterstitialView;->dspclick:Ljava/lang/String;

    :cond_3
    const-string v1, "sspclick"

    .line 140
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v1, "sspclick"

    .line 141
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mapps/android/view/InterstitialView;->sspclick:Ljava/lang/String;

    :cond_4
    const-string v1, "chksspclick"

    .line 144
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v1, "chksspclick"

    .line 145
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mapps/android/view/InterstitialView;->chksspclick:Ljava/lang/String;

    :cond_5
    const-string v1, "product_attr"

    .line 148
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v1, "product_attr"

    .line 149
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mapps/android/view/InterstitialView;->product_attr:Ljava/lang/String;

    :cond_6
    const-string v1, "bgcolor"

    .line 155
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v1, "bgcolor"

    .line 156
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mapps/android/view/InterstitialView;->bgcolor:Ljava/lang/String;

    :cond_7
    const-string v1, "logoposition"

    .line 158
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    const-string v1, "logoposition"

    .line 159
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    .line 161
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/mapps/android/view/InterstitialView;->logoPostion:I

    .line 164
    :cond_8
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mapps/android/view/InterstitialView;->rootMain:Landroid/widget/RelativeLayout;

    .line 165
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 166
    iget-object v4, p0, Lcom/mapps/android/view/InterstitialView;->rootMain:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mapps/android/view/InterstitialView;->backgroundLayout:Landroid/widget/RelativeLayout;

    .line 169
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 170
    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView;->backgroundLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->backgroundLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 172
    iget v0, p0, Lcom/mapps/android/view/InterstitialView;->resizeStyle:I

    if-eq v0, v2, :cond_9

    goto :goto_0

    .line 177
    :cond_9
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->backgroundLayout:Landroid/widget/RelativeLayout;

    const-string v1, "#88000000"

    invoke-virtual {p0, v0, v1}, Lcom/mapps/android/view/InterstitialView;->changBackgroundColor(Landroid/view/View;Ljava/lang/String;)V

    .line 186
    :goto_0
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->rootMain:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView;->backgroundLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 187
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mapps/android/view/InterstitialView;->popupLayout:Landroid/widget/RelativeLayout;

    .line 188
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->rootMain:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView;->popupLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 189
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->backgroundLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 190
    iget v0, p0, Lcom/mapps/android/view/InterstitialView;->mediaType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 197
    :pswitch_0
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->popupLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/mapps/android/view/InterstitialView;->imageTypeSetting(Landroid/widget/RelativeLayout;)V

    .line 198
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->rootMain:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/mapps/android/view/InterstitialView;->createCloseBtn(Landroid/widget/RelativeLayout;)V

    goto :goto_1

    .line 193
    :pswitch_1
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->popupLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/mapps/android/view/InterstitialView;->htmlTypeSetting(Landroid/widget/RelativeLayout;)V

    .line 201
    :goto_1
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->rootMain:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/mapps/android/view/InterstitialView;->setContentView(Landroid/view/View;)V

    .line 202
    invoke-virtual {p0}, Lcom/mapps/android/view/InterstitialView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 203
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/mapps/android/view/InterstitialView;->deviceW:I

    .line 204
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/mapps/android/view/InterstitialView;->deviceH:I

    .line 205
    iget v0, p0, Lcom/mapps/android/view/InterstitialView;->resizeStyle:I

    if-eq v0, v2, :cond_a

    goto :goto_2

    .line 210
    :cond_a
    invoke-direct {p0}, Lcom/mapps/android/view/InterstitialView;->resize()V

    .line 216
    :goto_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .line 751
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "onDestroy"

    .line 752
    invoke-static {v0}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 753
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->btn_close:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/mapps/android/view/InterstitialView;->buttonRemove(Landroid/widget/ImageView;)V

    .line 754
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->myWebView:Landroid/webkit/WebView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 757
    :cond_0
    iget-boolean v0, p0, Lcom/mapps/android/view/InterstitialView;->isLandingGo:Z

    if-nez v0, :cond_1

    .line 758
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->nt:Lcom/mz/common/network/Nt;

    if-eqz v0, :cond_1

    .line 759
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->nt:Lcom/mz/common/network/Nt;

    invoke-virtual {v0, v1}, Lcom/mz/common/network/Nt;->cancel(Z)Z

    :cond_1
    const/4 v0, 0x0

    .line 762
    iput-boolean v0, p0, Lcom/mapps/android/view/InterstitialView;->isLandingGo:Z

    .line 763
    invoke-virtual {p0}, Lcom/mapps/android/view/InterstitialView;->timeoutHandlerRemove()V

    .line 764
    invoke-direct {p0}, Lcom/mapps/android/view/InterstitialView;->destroyEvnet()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 371
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 372
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->myWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    :cond_0
    const/4 v0, 0x0

    .line 376
    invoke-virtual {p0, v0, v0}, Lcom/mapps/android/view/InterstitialView;->overridePendingTransition(II)V

    .line 377
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    const/4 v0, 0x0

    .line 359
    iput-boolean v0, p0, Lcom/mapps/android/view/InterstitialView;->isLandingGo:Z

    .line 360
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_0

    .line 361
    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView;->myWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 362
    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->onResume()V

    .line 365
    :cond_0
    invoke-virtual {p0, v0, v0}, Lcom/mapps/android/view/InterstitialView;->overridePendingTransition(II)V

    .line 366
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public setCloseImageInfo(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    if-eqz p2, :cond_0

    .line 526
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 527
    invoke-virtual {p2}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p3

    new-instance v0, Lcom/mapps/android/view/InterstitialView$6;

    invoke-direct {v0, p0, p2, p1}, Lcom/mapps/android/view/InterstitialView$6;-><init>(Lcom/mapps/android/view/InterstitialView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;)V

    invoke-virtual {p3, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 553
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setLogoImageInfo(Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    if-eqz p2, :cond_0

    .line 274
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->btn_logo:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 275
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 276
    invoke-virtual {p2}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p3

    new-instance v0, Lcom/mapps/android/view/InterstitialView$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/mapps/android/view/InterstitialView$4;-><init>(Lcom/mapps/android/view/InterstitialView;Landroid/widget/ImageView;Landroid/view/ViewGroup;)V

    invoke-virtual {p3, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 289
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public simpleServerapi(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4

    .line 1066
    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1067
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendapi -->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : request"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 1068
    new-instance v1, Lcom/mz/common/network/Nt;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3, v3}, Lcom/mz/common/network/Nt;-><init>(Landroid/content/Context;Landroid/os/Handler;ZZ)V

    iput-object v1, p0, Lcom/mapps/android/view/InterstitialView;->nt:Lcom/mz/common/network/Nt;

    .line 1069
    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView;->nt:Lcom/mz/common/network/Nt;

    iget-object v2, p0, Lcom/mapps/android/view/InterstitialView;->progressbarListener:Lcom/mz/common/network/Nt$OnProgressbarListener;

    invoke-virtual {v1, v2}, Lcom/mz/common/network/Nt;->a(Lcom/mz/common/network/Nt$OnProgressbarListener;)V

    .line 1070
    new-instance v1, Lcom/mz/common/network/request/RequestSimple;

    invoke-direct {v1, p0, p1, p2}, Lcom/mz/common/network/request/RequestSimple;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Message;)V

    .line 1071
    new-instance p1, Lcom/mapps/android/view/InterstitialView$12;

    invoke-direct {p1, p0, v0}, Lcom/mapps/android/view/InterstitialView$12;-><init>(Lcom/mapps/android/view/InterstitialView;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/mz/common/network/request/RequestSimple;->a(Lcom/mz/common/network/request/OnConnectionListener;)V

    .line 1087
    iget-object p1, p0, Lcom/mapps/android/view/InterstitialView;->nt:Lcom/mz/common/network/Nt;

    const/4 p2, 0x1

    new-array p2, p2, [Lcom/mz/common/network/request/RequestNTCommon;

    aput-object v1, p2, v3

    invoke-virtual {p1, p2}, Lcom/mz/common/network/Nt;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public timeoutHandlerRemove()V
    .locals 2

    .line 810
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->timeoutRun:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->timeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView;->timeoutRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 812
    iput-object v0, p0, Lcom/mapps/android/view/InterstitialView;->timeoutRun:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method
