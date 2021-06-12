.class Lcom/samsung/android/app/music/service/milk/login/LoginManager$12;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber<",
        "Lcom/samsung/android/app/music/model/UserInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/samsung/android/app/music/service/milk/login/LoginManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/login/LoginManager;II)V
    .locals 0

    .line 570
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$12;->c:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    iput p2, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$12;->a:I

    iput p3, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$12;->b:I

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 7

    const-string v0, "LoginManager"

    const-string v1, "doDeviceRegister onNext"

    .line 583
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$12;->c:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->a(Lcom/samsung/android/app/music/service/milk/login/LoginManager;Lcom/samsung/android/app/music/model/UserInfo;)V

    .line 586
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string p1, "responseData"

    .line 587
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$12;->c:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object v0

    invoke-virtual {v6, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 588
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$12;->c:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->a(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 589
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$12;->c:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->a(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$12;->a:I

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$12;->b:I

    const/16 v4, 0x191

    const/4 v5, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;->a(IIIILandroid/content/Intent;)V

    .line 594
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$12;->c:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->c(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$12;->c:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/provider/sync/MdrmContentUtils;->a(Landroid/content/Context;Lcom/samsung/android/app/music/model/UserInfo;)V

    .line 595
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$12;->c:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->d(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Lcom/samsung/android/app/music/service/milk/LegalManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/LegalManager;->c()V

    .line 596
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$12;->c:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->d(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Lcom/samsung/android/app/music/service/milk/LegalManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/LegalManager;->b()V

    .line 597
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$12;->c:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->c(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->i(Landroid/content/Context;)V

    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    const-string p1, "LoginManager"

    const-string v0, "doDeviceRegister onError"

    .line 578
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 570
    check-cast p1, Lcom/samsung/android/app/music/model/UserInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager$12;->a(Lcom/samsung/android/app/music/model/UserInfo;)V

    return-void
.end method
