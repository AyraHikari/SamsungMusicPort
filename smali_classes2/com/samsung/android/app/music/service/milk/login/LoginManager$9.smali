.class Lcom/samsung/android/app/music/service/milk/login/LoginManager$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Throwable;",
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

    .line 484
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$9;->c:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    iput p2, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$9;->a:I

    iput p3, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$9;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 487
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, "LoginManager"

    const-string v1, "doSimpleSignIn doOnError"

    .line 488
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$9;->c:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/model/UserInfo;->setUserStatus(I)V

    .line 493
    instance-of v0, p1, Lcom/samsung/android/app/music/service/milk/login/LoginManager$LoginFailException;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 494
    check-cast p1, Lcom/samsung/android/app/music/service/milk/login/LoginManager$LoginFailException;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager$LoginFailException;->getErrorCode()I

    move-result p1

    const-string v0, "LoginManager"

    .line 495
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doSimpleSignIn doOnError code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xc1c

    if-ne v0, p1, :cond_1

    .line 498
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$9;->c:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->c(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "com.sec.android.app.music.KEY_USER_ID"

    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$9;->c:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    iget v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$9;->a:I

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2, v2}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->a(Lcom/samsung/android/app/music/service/milk/login/LoginManager;IIZZ)V

    return-void

    :cond_0
    const/4 p1, -0x1

    .line 504
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$9;->c:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->a(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 505
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v0, "responseData"

    .line 506
    new-instance v1, Lcom/samsung/android/app/music/model/ResponseModel;

    iget v2, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$9;->b:I

    .line 507
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/samsung/android/app/music/model/ResponseModel;-><init>(Ljava/lang/String;I)V

    .line 506
    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 508
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$9;->c:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->a(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$9;->a:I

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$9;->b:I

    const/16 v4, 0x191

    const/4 v5, 0x1

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;->a(IIIILandroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 484
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager$9;->a(Ljava/lang/Throwable;)V

    return-void
.end method
