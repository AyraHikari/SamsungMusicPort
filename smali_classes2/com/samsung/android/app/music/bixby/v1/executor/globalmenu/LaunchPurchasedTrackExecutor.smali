.class public Lcom/samsung/android/app/music/bixby/v1/executor/globalmenu/LaunchPurchasedTrackExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;


# instance fields
.field private final a:Landroid/app/Activity;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Landroid/app/Activity;)V
    .locals 0
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/globalmenu/LaunchPurchasedTrackExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    .line 31
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/globalmenu/LaunchPurchasedTrackExecutor;->a:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v1/executor/globalmenu/LaunchPurchasedTrackExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/globalmenu/LaunchPurchasedTrackExecutor;->a(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V

    return-void
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V
    .locals 3
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "LaunchSubscriptionExecutor"

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performCommand() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/globalmenu/LaunchPurchasedTrackExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->setNextCommand(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V

    .line 75
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/globalmenu/LaunchPurchasedTrackExecutor;->a:Landroid/app/Activity;

    instance-of p1, p1, Landroid/support/v4/app/FragmentActivity;

    if-eqz p1, :cond_0

    .line 76
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/globalmenu/LaunchPurchasedTrackExecutor;->a:Landroid/app/Activity;

    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity;->a(Landroid/support/v4/app/FragmentActivity;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)Z
    .locals 6
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "LAUNCH_PURCHASED_TRACK"

    .line 36
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "LaunchSubscriptionExecutor"

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "LaunchSubscriptionExecutor"

    const-string v2, "onCommandCompleted() - Should check the my music mode before execute follow-up utterance."

    .line 41
    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    const-string v2, "NLG_PRECONDITION"

    invoke-direct {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    const-string v2, "SamsungMusic"

    const-string v3, "MymusicModeOn"

    const-string v4, "yes"

    .line 45
    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    const-string v3, "NLG_PRECONDITION"

    invoke-direct {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    const-string v3, "SamsungMusic"

    const-string v4, "UserSaidCancelOrNo"

    const-string v5, "yes"

    .line 49
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/v1/executor/globalmenu/LaunchPurchasedTrackExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    new-instance v4, Lcom/samsung/android/app/music/bixby/v1/executor/globalmenu/LaunchPurchasedTrackExecutor$1;

    invoke-direct {v4, p0, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/globalmenu/LaunchPurchasedTrackExecutor$1;-><init>(Lcom/samsung/android/app/music/bixby/v1/executor/globalmenu/LaunchPurchasedTrackExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V

    invoke-interface {v3, v0, v2, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->requestUserConfirm(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager$OnUserConfirmListener;)V

    return v1

    .line 64
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/globalmenu/LaunchPurchasedTrackExecutor;->a(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
