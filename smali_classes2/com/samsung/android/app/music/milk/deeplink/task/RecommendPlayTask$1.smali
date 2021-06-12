.class Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/browse/BrowseLauncher$OnLaunchResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask$1;->a:Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "DeepLink-RecommendPlayTask"

    const-string v1, "onLaunchSuccess"

    .line 35
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(ILjava/lang/Throwable;)V
    .locals 2
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string p2, "DeepLink-RecommendPlayTask"

    .line 40
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

    .line 42
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask$1;->a:Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a()Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isDeviceSignedIn()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 43
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask$1;->a:Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask;->a:Landroid/support/v4/app/FragmentActivity;

    const v0, 0x7f0b028c

    invoke-static {p1, v0, p2}, Lcom/samsung/android/app/music/milk/MilkToast;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 44
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x200c

    if-ne p1, v0, :cond_1

    .line 47
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask$1;->a:Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask;->a:Landroid/support/v4/app/FragmentActivity;

    const v0, 0x7f0b0391

    invoke-static {p1, v0, p2}, Lcom/samsung/android/app/music/milk/MilkToast;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 49
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method
