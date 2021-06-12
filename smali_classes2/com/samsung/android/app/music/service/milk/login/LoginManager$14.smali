.class Lcom/samsung/android/app/music/service/milk/login/LoginManager$14;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/milk/login/LoginManager;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber<",
        "Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Z

.field final synthetic d:Lcom/samsung/android/app/music/service/milk/login/LoginManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/login/LoginManager;IIZ)V
    .locals 0

    .line 613
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$14;->d:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    iput p2, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$14;->a:I

    iput p3, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$14;->b:I

    iput-boolean p4, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$14;->c:Z

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;)V
    .locals 6

    const-string v0, "LoginManager"

    .line 626
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkSubscriptionUser onNext - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;->getResultCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 626
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$14;->d:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->a(Lcom/samsung/android/app/music/service/milk/login/LoginManager;Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;)Z

    move-result p1

    .line 635
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v0, "responseData"

    .line 636
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$14;->d:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 637
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$14;->d:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->a(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 638
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$14;->d:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->a(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$14;->a:I

    iget v2, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$14;->b:I

    const/16 v3, 0x193

    const/4 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;->a(IIIILandroid/content/Intent;)V

    :cond_1
    if-eqz p1, :cond_2

    const-string p1, "LoginManager"

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkSubscriptionUser changed feature : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$14;->d:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    .line 646
    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/UserInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 645
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$14;->d:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->c(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->i(Landroid/content/Context;)V

    .line 649
    iget-boolean p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$14;->c:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$14;->d:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isDrmProductUser()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "LoginManager"

    const-string v0, "checkSubscriptionUser drm feature is gone "

    .line 650
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$14;->d:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->e(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)V

    goto :goto_0

    :cond_2
    const-string p1, "LoginManager"

    const-string v0, "checkSubscriptionUser do not changed feature"

    .line 656
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$14;->d:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->c(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$14;->d:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/provider/sync/MdrmContentUtils;->a(Landroid/content/Context;Lcom/samsung/android/app/music/model/UserInfo;)V

    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    const-string p1, "LoginManager"

    const-string v0, "checkSubscriptionUser onError"

    .line 621
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 613
    check-cast p1, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager$14;->a(Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;)V

    return-void
.end method
