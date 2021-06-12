.class public Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask;
.super Lcom/samsung/android/app/music/milk/deeplink/task/ActivityDeepLinkTask;
.source "SourceFile"


# instance fields
.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Lcom/samsung/android/app/music/browse/BrowseLauncher$OnLaunchResultListener;

.field private f:Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$OnPlayContentResultListener;

.field private g:Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$OnPlayRadioResultListener;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Landroid/net/Uri;)V
    .locals 1

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/task/ActivityDeepLinkTask;-><init>(Landroid/support/v4/app/FragmentActivity;Landroid/net/Uri;)V

    .line 32
    new-instance p1, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask$1;-><init>(Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask;->e:Lcom/samsung/android/app/music/browse/BrowseLauncher$OnLaunchResultListener;

    .line 54
    new-instance p1, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask$2;-><init>(Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask;->f:Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$OnPlayContentResultListener;

    .line 67
    new-instance p1, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask$3;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask$3;-><init>(Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask;->g:Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$OnPlayRadioResultListener;

    .line 82
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->TARGET:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask;->c:Ljava/lang/String;

    .line 83
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->MOD:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->getString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->TYPE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    .line 84
    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask;->d:Z

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public d()V
    .locals 4

    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->getTargetType(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "DeepLink-RecommendPlayTask"

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "execute - target : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask$4;->a:[I

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 115
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask;->a:Landroid/support/v4/app/FragmentActivity;

    const-string v1, "WFY"

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask;->e:Lcom/samsung/android/app/music/browse/BrowseLauncher$OnLaunchResultListener;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/samsung/android/app/music/browse/BrowseLauncher$OnLaunchResultListener;)V

    .line 117
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask;->d:Z

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask;->a:Landroid/support/v4/app/FragmentActivity;

    const-string v1, "WFY"

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask;->f:Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$OnPlayContentResultListener;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$OnPlayContentResultListener;)V

    goto :goto_0

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask;->a:Landroid/support/v4/app/FragmentActivity;

    const-string v1, "WFY"

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask;->g:Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$OnPlayRadioResultListener;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$OnPlayRadioResultListener;)V

    goto :goto_0

    .line 104
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask;->a:Landroid/support/v4/app/FragmentActivity;

    const-string v1, "DFY"

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask;->e:Lcom/samsung/android/app/music/browse/BrowseLauncher$OnLaunchResultListener;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/samsung/android/app/music/browse/BrowseLauncher$OnLaunchResultListener;)V

    .line 106
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask;->d:Z

    if-eqz v0, :cond_2

    .line 107
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask;->a:Landroid/support/v4/app/FragmentActivity;

    const-string v1, "DFY"

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask;->f:Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$OnPlayContentResultListener;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$OnPlayContentResultListener;)V

    goto :goto_0

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask;->a:Landroid/support/v4/app/FragmentActivity;

    const-string v1, "DFY"

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask;->g:Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$OnPlayRadioResultListener;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$OnPlayRadioResultListener;)V

    :goto_0
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

    const-string v0, "DeepLink-RecommendPlayTask"

    return-object v0
.end method
