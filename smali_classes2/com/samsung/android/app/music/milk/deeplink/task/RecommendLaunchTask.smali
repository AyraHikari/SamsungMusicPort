.class public Lcom/samsung/android/app/music/milk/deeplink/task/RecommendLaunchTask;
.super Lcom/samsung/android/app/music/milk/deeplink/task/ActivityDeepLinkTask;
.source "SourceFile"


# instance fields
.field private c:Ljava/lang/String;

.field private d:Lcom/samsung/android/app/music/browse/BrowseLauncher$OnLaunchResultListener;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Landroid/net/Uri;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/task/ActivityDeepLinkTask;-><init>(Landroid/support/v4/app/FragmentActivity;Landroid/net/Uri;)V

    .line 24
    new-instance p1, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendLaunchTask$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendLaunchTask$1;-><init>(Lcom/samsung/android/app/music/milk/deeplink/task/RecommendLaunchTask;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendLaunchTask;->d:Lcom/samsung/android/app/music/browse/BrowseLauncher$OnLaunchResultListener;

    .line 49
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->TARGET:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendLaunchTask;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendLaunchTask;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public d()V
    .locals 4

    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendLaunchTask;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->getTargetType(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "DeepLink-RecommendLaunchTask"

    .line 65
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

    .line 67
    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendLaunchTask$2;->a:[I

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 73
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    const-string v1, "WFY"

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendLaunchTask;->d:Lcom/samsung/android/app/music/browse/BrowseLauncher$OnLaunchResultListener;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/samsung/android/app/music/browse/BrowseLauncher$OnLaunchResultListener;)V

    goto :goto_0

    .line 69
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    const-string v1, "DFY"

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendLaunchTask;->d:Lcom/samsung/android/app/music/browse/BrowseLauncher$OnLaunchResultListener;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/samsung/android/app/music/browse/BrowseLauncher$OnLaunchResultListener;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    const-string v0, "DeepLink-RecommendLaunchTask"

    return-object v0
.end method
