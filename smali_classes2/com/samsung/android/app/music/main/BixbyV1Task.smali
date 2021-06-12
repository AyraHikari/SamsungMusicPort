.class public final Lcom/samsung/android/app/music/main/BixbyV1Task;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/main/MainActivityTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->a(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;IILandroid/content/Intent;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->a(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;IILandroid/content/Intent;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->a(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->a(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;Landroid/content/Intent;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->a(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/os/Bundle;Z)V
    .locals 6

    const-string p2, "activity"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Lcom/samsung/android/app/music/main/MainActivity;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 25
    new-instance v0, Lcom/samsung/android/app/music/bixby/v1/executor/LaunchAppResponseExecutor;

    invoke-direct {v0, p2}, Lcom/samsung/android/app/music/bixby/v1/executor/LaunchAppResponseExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;)V

    .line 26
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/app/music/bixby/v1/nlg/PreconditionNlg;

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/main/MainActivity;->setPreconditionNlg(Lcom/samsung/android/app/music/bixby/v1/nlg/PreconditionNlg;)V

    .line 29
    :cond_0
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v1, :cond_1

    const-string v1, "Music"

    goto :goto_0

    :cond_1
    const-string v1, "GlobalMusic"

    :goto_0
    const/16 v2, 0xb

    new-array v2, v2, [Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    const/4 v3, 0x0

    .line 30
    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    aput-object v0, v2, v3

    const/4 v0, 0x1

    new-instance v3, Lcom/samsung/android/app/music/bixby/v1/executor/MoveMainTabExecutor;

    move-object v4, p1

    check-cast v4, Lcom/samsung/android/app/musiclibrary/ui/TabControllable;

    move-object v5, p1

    check-cast v5, Lcom/samsung/android/app/music/player/PlayerLaunchable;

    invoke-direct {v3, p2, v4, v5}, Lcom/samsung/android/app/music/bixby/v1/executor/MoveMainTabExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Lcom/samsung/android/app/musiclibrary/ui/TabControllable;Lcom/samsung/android/app/music/player/PlayerLaunchable;)V

    check-cast v3, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    aput-object v3, v2, v0

    const/4 v0, 0x2

    .line 31
    new-instance v3, Lcom/samsung/android/app/music/bixby/v1/executor/local/MoveLocalTabExecutor;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, p2, v5, v4}, Lcom/samsung/android/app/music/bixby/v1/executor/local/MoveLocalTabExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/TabControllable;)V

    check-cast v3, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    aput-object v3, v2, v0

    const/4 v0, 0x3

    .line 32
    new-instance v3, Lcom/samsung/android/app/music/bixby/v1/executor/search/LaunchSearchExecutor;

    move-object v4, p1

    check-cast v4, Landroid/app/Activity;

    invoke-direct {v3, p2, v4}, Lcom/samsung/android/app/music/bixby/v1/executor/search/LaunchSearchExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Landroid/app/Activity;)V

    check-cast v3, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    aput-object v3, v2, v0

    const/4 v0, 0x4

    .line 33
    new-instance v3, Lcom/samsung/android/app/music/bixby/v1/executor/settings/LaunchSettingsExecutor;

    invoke-direct {v3, p2, v4}, Lcom/samsung/android/app/music/bixby/v1/executor/settings/LaunchSettingsExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Landroid/app/Activity;)V

    check-cast v3, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    aput-object v3, v2, v0

    const/4 v0, 0x5

    .line 34
    new-instance v3, Lcom/samsung/android/app/music/bixby/v1/executor/globalmenu/LaunchEventExecutor;

    invoke-direct {v3, p2, v4}, Lcom/samsung/android/app/music/bixby/v1/executor/globalmenu/LaunchEventExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Landroid/app/Activity;)V

    check-cast v3, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    aput-object v3, v2, v0

    const/4 v0, 0x6

    .line 35
    new-instance v3, Lcom/samsung/android/app/music/bixby/v1/executor/globalmenu/LaunchHelpExecutor;

    invoke-direct {v3, p2, v4}, Lcom/samsung/android/app/music/bixby/v1/executor/globalmenu/LaunchHelpExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Landroid/app/Activity;)V

    check-cast v3, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    aput-object v3, v2, v0

    const/4 v0, 0x7

    .line 36
    new-instance v3, Lcom/samsung/android/app/music/bixby/v1/executor/globalmenu/LaunchContactUsExecutor;

    invoke-direct {v3, p2, v4}, Lcom/samsung/android/app/music/bixby/v1/executor/globalmenu/LaunchContactUsExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Landroid/app/Activity;)V

    check-cast v3, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    aput-object v3, v2, v0

    const/16 v0, 0x8

    .line 37
    new-instance v3, Lcom/samsung/android/app/music/bixby/v1/executor/player/LaunchPlayerExecutor;

    move-object v5, p1

    check-cast v5, Lcom/samsung/android/app/music/player/ISlidePlayer;

    invoke-direct {v3, p2, v5}, Lcom/samsung/android/app/music/bixby/v1/executor/player/LaunchPlayerExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Lcom/samsung/android/app/music/player/ISlidePlayer;)V

    check-cast v3, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    aput-object v3, v2, v0

    const/16 v0, 0x9

    .line 38
    new-instance v3, Lcom/samsung/android/app/music/bixby/v1/executor/globalmenu/LaunchSubscriptionExecutor;

    move-object v5, p1

    check-cast v5, Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v3, p2, v5}, Lcom/samsung/android/app/music/bixby/v1/executor/globalmenu/LaunchSubscriptionExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Landroid/support/v4/app/FragmentActivity;)V

    check-cast v3, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    aput-object v3, v2, v0

    const/16 v0, 0xa

    .line 39
    new-instance v3, Lcom/samsung/android/app/music/bixby/v1/executor/globalmenu/LaunchPurchasedTrackExecutor;

    invoke-direct {v3, p2, v4}, Lcom/samsung/android/app/music/bixby/v1/executor/globalmenu/LaunchPurchasedTrackExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Landroid/app/Activity;)V

    check-cast v3, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    aput-object v3, v2, v0

    .line 28
    invoke-interface {p2, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;)V

    if-nez p3, :cond_2

    .line 43
    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    const-string p3, "NLG_PRECONDITION"

    invoke-direct {p2, p3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    const-string p3, "SamsungMusic"

    const-string v0, "Permission"

    const-string v1, "notallowed"

    .line 44
    invoke-virtual {p2, p3, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/main/MainActivity;->sendPreconditionNlg(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    :cond_2
    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/support/v7/view/ActionMode;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionMode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->a(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;Landroid/support/v7/view/ActionMode;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/view/Menu;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "menu"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->a(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;Landroid/view/Menu;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;Z)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->a(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;Z)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/view/MenuItem;)Z
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->a(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->d(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;)V

    return-void
.end method

.method public b(Lcom/samsung/android/app/music/main/MainActivity;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->b(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method public b(Lcom/samsung/android/app/music/main/MainActivity;Landroid/support/v7/view/ActionMode;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionMode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->b(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;Landroid/support/v7/view/ActionMode;)V

    return-void
.end method

.method public b(Lcom/samsung/android/app/music/main/MainActivity;Landroid/view/Menu;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "menu"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->b(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;Landroid/view/Menu;)V

    return-void
.end method

.method public c(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->c(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;)V

    return-void
.end method

.method public d(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->b(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;)V

    return-void
.end method

.method public e(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->e(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;)V

    return-void
.end method

.method public f(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->f(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;)V

    return-void
.end method

.method public g(Lcom/samsung/android/app/music/main/MainActivity;)Z
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->g(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;)Z

    move-result p1

    return p1
.end method

.method public h(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->h(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;)V

    return-void
.end method
