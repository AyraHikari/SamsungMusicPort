.class public Lcom/samsung/android/app/music/milk/event/WebViewActivity;
.super Lcom/samsung/android/app/music/activity/BaseServiceActivity;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullscreenHolder;,
        Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "WebViewActivity"

.field private static h:Z


# instance fields
.field protected b:Landroid/webkit/WebView;

.field protected c:Landroid/view/View;

.field protected d:Landroid/view/View;

.field protected e:Landroid/os/Handler;

.field protected f:Z

.field protected g:Lcom/samsung/android/app/music/model/milkevent/EventPopup;

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;

.field private final l:Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;

.field private m:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->f:Z

    .line 78
    new-instance v1, Lcom/samsung/android/app/music/model/milkevent/EventPopup;

    invoke-direct {v1}, Lcom/samsung/android/app/music/model/milkevent/EventPopup;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->g:Lcom/samsung/android/app/music/model/milkevent/EventPopup;

    .line 82
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->i:Z

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->j:Ljava/lang/String;

    .line 88
    new-instance v0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity$1;-><init>(Lcom/samsung/android/app/music/milk/event/WebViewActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->l:Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;

    .line 450
    new-instance v0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity$3;-><init>(Lcom/samsung/android/app/music/milk/event/WebViewActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->m:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/event/WebViewActivity;)Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->k:Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/event/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->j:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/event/WebViewActivity;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->i:Z

    return p1
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 54
    sget-object v0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/milk/event/WebViewActivity;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->e()V

    return-void
.end method

.method static synthetic b(Z)Z
    .locals 0

    .line 54
    sput-boolean p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->h:Z

    return p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/milk/event/WebViewActivity;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->g()V

    return-void
.end method

.method static synthetic c()Z
    .locals 1

    .line 54
    sget-boolean v0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->h:Z

    return v0
.end method

.method private d()V
    .locals 2

    .line 291
    sget-object v0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->a:Ljava/lang/String;

    const-string v1, "onHomeKeyPressed - Close notice."

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->e()V

    return-void
.end method

.method static synthetic d(Lcom/samsung/android/app/music/milk/event/WebViewActivity;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->i:Z

    return p0
.end method

.method static synthetic e(Lcom/samsung/android/app/music/milk/event/WebViewActivity;)Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->j:Ljava/lang/String;

    return-object p0
.end method

.method private e()V
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 298
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    .line 299
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->setResult(ILandroid/content/Intent;)V

    .line 301
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->a()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->g:Lcom/samsung/android/app/music/model/milkevent/EventPopup;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/milkevent/EventPopup;->getPopupId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->g:Lcom/samsung/android/app/music/model/milkevent/EventPopup;

    .line 302
    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/milkevent/EventPopup;->getDoNotShowTime()J

    .line 306
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->finish()V

    return-void
.end method

.method private f()V
    .locals 1

    .line 447
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->f:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->f:Z

    return-void
.end method

.method private g()V
    .locals 4

    .line 548
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->e:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/music/milk/event/WebViewActivity$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity$4;-><init>(Lcom/samsung/android/app/music/milk/event/WebViewActivity;)V

    const-wide/32 v2, 0x9c40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method protected a()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    .locals 1

    .line 310
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    return-object v0
.end method

.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 571
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->d:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 573
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->d:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected a(Ljava/lang/String;)Z
    .locals 17

    move-object/from16 v1, p0

    .line 314
    sget-object v0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleDeepLink - URL : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 317
    invoke-static {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Landroid/net/Uri;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

    move-result-object v2

    .line 318
    invoke-static {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->b(Landroid/net/Uri;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

    move-result-object v3

    .line 319
    invoke-static {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->c(Landroid/net/Uri;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v2, :cond_9

    if-eqz v3, :cond_9

    if-nez v4, :cond_0

    goto/16 :goto_4

    .line 325
    :cond_0
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 327
    sget-object v7, Lcom/samsung/android/app/music/milk/event/WebViewActivity$5;->c:[I

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;->ordinal()I

    move-result v2

    aget v2, v7, v2

    const/4 v7, 0x1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_3

    .line 330
    :pswitch_0
    sget-object v2, Lcom/samsung/android/app/music/milk/event/WebViewActivity$5;->b:[I

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    .line 422
    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->SHARE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    if-ne v4, v2, :cond_7

    .line 423
    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->LINK:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    .line 424
    invoke-static {v2, v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    .line 426
    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->LINK:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    iget-object v3, v1, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->b:Landroid/webkit/WebView;

    .line 427
    invoke-virtual {v3}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_2

    .line 418
    :pswitch_1
    invoke-virtual {v6, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 419
    invoke-static {}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->a()Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;

    move-result-object v0

    invoke-virtual {v0, v1, v6}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->a(Landroid/support/v4/app/FragmentActivity;Landroid/content/Intent;)Z

    goto/16 :goto_3

    .line 332
    :pswitch_2
    sget-object v2, Lcom/samsung/android/app/music/milk/event/WebViewActivity$5;->a:[I

    invoke-virtual {v4}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x2

    packed-switch v2, :pswitch_data_2

    goto/16 :goto_3

    .line 409
    :pswitch_3
    new-instance v0, Lcom/samsung/android/app/music/help/SendLogDialog;

    invoke-direct {v0}, Lcom/samsung/android/app/music/help/SendLogDialog;-><init>()V

    .line 411
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 412
    sget-object v3, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 413
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto/16 :goto_3

    .line 404
    :pswitch_4
    invoke-static {v1, v3}, Lcom/samsung/android/app/music/help/MuseUtils;->a(Landroid/content/Context;I)V

    .line 406
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->finish()V

    goto/16 :goto_3

    .line 401
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->onBackPressed()V

    goto/16 :goto_3

    .line 398
    :pswitch_6
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->e()V

    goto/16 :goto_3

    .line 357
    :pswitch_7
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->f()V

    .line 359
    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->PERIOD:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    .line 360
    invoke-static {v2, v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 361
    sget-object v4, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->UNIT:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    .line 362
    invoke-static {v4, v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const-wide/high16 v8, -0x8000000000000000L

    const-string v4, "never"

    .line 365
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-wide v8, 0x7fffffffffffffffL

    goto/16 :goto_1

    :cond_1
    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 368
    iget-boolean v4, v1, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->f:Z

    if-eqz v4, :cond_4

    .line 370
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 371
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 372
    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v12

    const/4 v6, 0x5

    .line 373
    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v10, v4

    .line 371
    invoke-virtual/range {v10 .. v16}, Ljava/util/Calendar;->set(IIIIII)V

    const-string v8, "day"

    .line 374
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 376
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 375
    invoke-virtual {v4, v6, v0}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    :cond_2
    const-string v8, "month"

    .line 377
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 379
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 378
    invoke-virtual {v4, v3, v0}, Ljava/util/Calendar;->add(II)V

    .line 382
    :cond_3
    :goto_0
    sget-object v0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleDeepLink - Popup will not show until "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 382
    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 390
    :catch_0
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->e()V

    return v5

    .line 395
    :cond_4
    :goto_1
    iget-object v0, v1, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->g:Lcom/samsung/android/app/music/model/milkevent/EventPopup;

    invoke-virtual {v0, v8, v9}, Lcom/samsung/android/app/music/model/milkevent/EventPopup;->setDoNotShowTime(J)V

    goto :goto_3

    .line 335
    :pswitch_8
    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->TARGET:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    .line 336
    invoke-static {v2, v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    :try_start_1
    const-string v3, "browser"

    .line 339
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "application"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 340
    :cond_5
    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->LINK:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    .line 341
    invoke-static {v2, v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 342
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    .line 343
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    .line 344
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 345
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 352
    :cond_6
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->CLOSE_AND_LAUNCH:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    if-ne v4, v0, :cond_8

    .line 353
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->e()V

    goto :goto_3

    :catch_1
    move-exception v0

    .line 348
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    return v7

    .line 432
    :cond_7
    :goto_2
    invoke-virtual {v6, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 433
    invoke-static {}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->a()Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;

    move-result-object v2

    invoke-virtual {v2, v1, v6}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->a(Landroid/support/v4/app/FragmentActivity;Landroid/content/Intent;)Z

    .line 435
    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->STAY:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->getString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->OPTION:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    .line 436
    invoke-static {v3, v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 435
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 437
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->e()V

    :cond_8
    :goto_3
    return v7

    :cond_9
    :goto_4
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 252
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 253
    sget-object p1, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->a:Ljava/lang/String;

    const-string v0, "onConfigurationChanged"

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .line 107
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->l:Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->addOnBackPressedListener(Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;)V

    .line 110
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.LOCALE_CHANGED"

    .line 111
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.HEADSET_PLUG"

    .line 112
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const p1, 0x7f04015e

    .line 115
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->setContentView(I)V

    const p1, 0x7f13040f

    .line 116
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->b:Landroid/webkit/WebView;

    const p1, 0x7f130411

    .line 117
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->d:Landroid/view/View;

    .line 119
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->b:Landroid/webkit/WebView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 120
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 121
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 122
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->b:Landroid/webkit/WebView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 124
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object p1

    .line 125
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " SAMSUNGMUSIC"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 127
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->b:Landroid/webkit/WebView;

    new-instance v0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity$2;-><init>(Lcom/samsung/android/app/music/milk/event/WebViewActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 230
    new-instance p1, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;-><init>(Lcom/samsung/android/app/music/milk/event/WebViewActivity;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->k:Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;

    .line 231
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->b:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->k:Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 233
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->e:Landroid/os/Handler;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->k:Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;->onHideCustomView()V

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 277
    invoke-super {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 283
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->d()V

    const/4 p1, 0x1

    return p1

    .line 287
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 265
    invoke-super {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onPause()V

    .line 267
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 245
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 246
    sget-object v0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->a:Ljava/lang/String;

    const-string v1, "onRestoreInstanceState"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 258
    invoke-super {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onResume()V

    .line 260
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 238
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 239
    sget-object v0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->a:Ljava/lang/String;

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    return-void
.end method
