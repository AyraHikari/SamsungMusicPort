.class public final Lcom/samsung/android/app/music/milk/event/EventPromotionActivity;
.super Lcom/samsung/android/app/music/milk/event/WebViewActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/event/EventPromotionActivity$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/milk/event/EventPromotionActivity$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/milk/event/EventPromotionActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/event/EventPromotionActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/event/EventPromotionActivity;->a:Lcom/samsung/android/app/music/milk/event/EventPromotionActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;-><init>()V

    return-void
.end method

.method public static final a(Landroid/app/Activity;)V
    .locals 6

    sget-object v0, Lcom/samsung/android/app/music/milk/event/EventPromotionActivity;->a:Lcom/samsung/android/app/music/milk/event/EventPromotionActivity$Companion;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/event/EventPromotionActivity$Companion;->a(Lcom/samsung/android/app/music/milk/event/EventPromotionActivity$Companion;Landroid/app/Activity;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public static final a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 6

    sget-object v0, Lcom/samsung/android/app/music/milk/event/EventPromotionActivity;->a:Lcom/samsung/android/app/music/milk/event/EventPromotionActivity$Companion;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/event/EventPromotionActivity$Companion;->a(Lcom/samsung/android/app/music/milk/event/EventPromotionActivity$Companion;Landroid/app/Activity;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public static final a(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/music/milk/event/EventPromotionActivity;->a:Lcom/samsung/android/app/music/milk/event/EventPromotionActivity$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/app/music/milk/event/EventPromotionActivity$Companion;->a(Landroid/app/Activity;Ljava/lang/String;Z)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/milk/event/EventPromotionActivity;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/event/EventPromotionActivity;->d()V

    return-void
.end method

.method private final d()V
    .locals 8

    const-string v0, "EventPromotionActivity"

    const-string v1, "loadUrl "

    .line 69
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/event/EventPromotionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 71
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/event/EventPromotionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "web_url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/event/EventPromotionActivity;->b:Landroid/webkit/WebView;

    const-string v3, "mWebView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EventPromotionActivity"

    .line 74
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadUrl - Loaded url : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_2

    const-string v0, "EventPromotionActivity"

    const-string v1, "loadUrl - Loaded URL already exist."

    .line 77
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 81
    :cond_2
    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 82
    invoke-static {}, Lcom/samsung/android/app/music/util/AndroidUtils;->a()Ljava/lang/String;

    move-result-object v5

    .line 83
    invoke-static {v0}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "y"

    goto :goto_2

    :cond_3
    const-string v0, "n"

    .line 84
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/event/EventPromotionActivity;->a()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v6

    const-string v7, "milkService"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->h()Ljava/lang/String;

    move-result-object v6

    .line 86
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v7, "uid"

    invoke-virtual {v1, v7, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "app_version"

    .line 87
    invoke-virtual {v1, v2, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "accountYn"

    .line 88
    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "access_token"

    .line 89
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    const/4 v3, 0x1

    :cond_5
    if-eqz v3, :cond_6

    .line 90
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "access_token"

    invoke-virtual {v0, v1, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 92
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/event/EventPromotionActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 21
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/event/EventPromotionActivity;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string v3, "Event"

    .line 25
    new-array v4, v2, [Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    new-instance v5, Lcom/samsung/android/app/music/bixby/v1/executor/globalmenu/LaunchEventResponseExecutor;

    invoke-direct {v5, v0}, Lcom/samsung/android/app/music/bixby/v1/executor/globalmenu/LaunchEventResponseExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;)V

    check-cast v5, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    aput-object v5, v4, v1

    .line 24
    invoke-interface {v0, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;)V

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/event/EventPromotionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v3, "window"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 32
    sget v3, Lcom/samsung/android/app/music/support/android/view/WindowManagerCompat$LayoutParams;->SAMSUNG_FLAG_SOFT_INPUT_ADJUST_RESIZE_FULLSCREEN:I

    sget v4, Lcom/samsung/android/app/music/support/android/view/WindowManagerCompat$LayoutParams;->SAMSUNG_FLAG_SOFT_INPUT_DELAYED_ADJUST_RESIZE:I

    or-int/2addr v3, v4

    .line 30
    invoke-static {v0, v3}, Lcom/samsung/android/app/music/support/android/view/WindowManagerCompat$LayoutParams;->addExtensionFlags(Landroid/view/WindowManager$LayoutParams;I)V

    .line 34
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/event/EventPromotionActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const-string v4, "window"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    if-nez p1, :cond_2

    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/event/EventPromotionActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "check_login"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 40
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/event/EventPromotionActivity;->a(Z)V

    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/event/EventPromotionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/milk/event/EventPromotionActivity$onCreate$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/event/EventPromotionActivity$onCreate$2;-><init>(Lcom/samsung/android/app/music/milk/event/EventPromotionActivity;)V

    check-cast v0, Lcom/samsung/android/app/music/service/milk/login/UserInfoReceiver;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Lcom/samsung/android/app/music/service/milk/login/UserInfoReceiver;)V

    goto :goto_0

    .line 53
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/event/EventPromotionActivity;->d()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 59
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->onStart()V

    .line 61
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/event/EventPromotionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "web_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    const-string v0, "EventPromotionActivity"

    const-string v1, "onStart - Promotion url is null."

    .line 63
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/event/EventPromotionActivity;->finish()V

    :cond_2
    return-void
.end method
