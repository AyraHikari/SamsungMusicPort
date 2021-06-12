.class Lcom/samsung/android/app/music/milk/deeplink/task/RecommendLaunchTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/browse/BrowseLauncher$OnLaunchResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/deeplink/task/RecommendLaunchTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/deeplink/task/RecommendLaunchTask;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/deeplink/task/RecommendLaunchTask;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendLaunchTask$1;->a:Lcom/samsung/android/app/music/milk/deeplink/task/RecommendLaunchTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "DeepLink-RecommendLaunchTask"

    const-string v1, "onLaunchSuccess"

    .line 27
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(ILjava/lang/Throwable;)V
    .locals 2
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string p2, "DeepLink-RecommendLaunchTask"

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLaunchFailure : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    const/16 v0, 0x44e

    if-ne p1, v0, :cond_0

    .line 34
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendLaunchTask$1;->a:Lcom/samsung/android/app/music/milk/deeplink/task/RecommendLaunchTask;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a()Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isDeviceSignedIn()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 35
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendLaunchTask$1;->a:Lcom/samsung/android/app/music/milk/deeplink/task/RecommendLaunchTask;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    const v0, 0x7f0b028c

    invoke-static {p1, v0, p2}, Lcom/samsung/android/app/music/milk/MilkToast;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x200c

    if-ne p1, v0, :cond_1

    .line 39
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendLaunchTask$1;->a:Lcom/samsung/android/app/music/milk/deeplink/task/RecommendLaunchTask;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    const v0, 0x7f0b0391

    invoke-static {p1, v0, p2}, Lcom/samsung/android/app/music/milk/MilkToast;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 41
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method
