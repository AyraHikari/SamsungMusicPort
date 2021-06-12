.class Lcom/samsung/android/app/music/service/milk/login/LoginManager$4;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/milk/login/LoginManager;->a(IIZZ)V
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

    .line 358
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$4;->c:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    iput p2, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$4;->a:I

    iput p3, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$4;->b:I

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 8

    const-string v0, "LoginManager"

    const-string v1, "doAccountSignIn onNext"

    .line 407
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->getResultCode()I

    move-result v0

    if-nez v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$4;->c:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->a(Lcom/samsung/android/app/music/service/milk/login/LoginManager;Lcom/samsung/android/app/music/model/UserInfo;)V

    .line 411
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$4;->c:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->c(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.android.app.music.KEY_USER_ID"

    .line 412
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/util/AES;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 411
    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string p1, "responseData"

    .line 415
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$4;->c:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object v0

    invoke-virtual {v7, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 416
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$4;->c:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->a(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 417
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$4;->c:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->a(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$4;->b:I

    iget v4, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$4;->a:I

    const/16 v5, 0x191

    const/4 v6, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;->a(IIIILandroid/content/Intent;)V

    .line 423
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$4;->c:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->c(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$4;->c:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/provider/sync/MdrmContentUtils;->a(Landroid/content/Context;Lcom/samsung/android/app/music/model/UserInfo;)V

    .line 425
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$4;->c:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->c(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/SyncManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/SyncManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/SyncManager;->a()V

    .line 426
    invoke-static {}, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->d()Lcom/samsung/android/app/music/list/sync/ListSyncManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 428
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 430
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$4;->c:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->d(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Lcom/samsung/android/app/music/service/milk/LegalManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/LegalManager;->c()V

    .line 431
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$4;->c:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->d(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Lcom/samsung/android/app/music/service/milk/LegalManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/LegalManager;->b()V

    .line 432
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$4;->c:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->c(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->i(Landroid/content/Context;)V

    goto :goto_1

    .line 434
    :cond_1
    new-instance v0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$LoginFailException;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$4;->c:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->getResultCode()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager$LoginFailException;-><init>(Lcom/samsung/android/app/music/service/milk/login/LoginManager;I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/milk/login/LoginManager$4;->onError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public onComplete()V
    .locals 2

    const-string v0, "LoginManager"

    const-string v1, "doAccountSignIn onComplete"

    .line 361
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 8

    .line 366
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, "LoginManager"

    const-string v1, "doAccountSignIn onError"

    .line 367
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$4;->c:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/model/UserInfo;->setUserStatus(I)V

    .line 371
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 373
    instance-of v0, p1, Lcom/samsung/android/app/music/service/milk/exception/SACallbackException;

    const/16 v1, 0xc1d

    if-eqz v0, :cond_0

    .line 374
    check-cast p1, Lcom/samsung/android/app/music/service/milk/exception/SACallbackException;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/exception/SACallbackException;->getErrorCode()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LoginManager"

    .line 376
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doAccountSignIn onError from SA "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$4;->c:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->a(Lcom/samsung/android/app/music/service/milk/login/LoginManager;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "responseData"

    .line 381
    new-instance v0, Lcom/samsung/android/app/music/model/ResponseModel;

    iget v2, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$4;->a:I

    .line 382
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/app/music/model/ResponseModel;-><init>(Ljava/lang/String;I)V

    .line 381
    invoke-virtual {v7, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 385
    :cond_0
    instance-of v0, p1, Lcom/samsung/android/app/music/service/milk/login/LoginManager$LoginFailException;

    if-eqz v0, :cond_2

    const-string v0, "LoginManager"

    .line 386
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doAccountSignIn onError  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Lcom/samsung/android/app/music/service/milk/login/LoginManager$LoginFailException;

    .line 387
    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager$LoginFailException;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 386
    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager$LoginFailException;->getErrorCode()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 390
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$4;->c:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$4;->b:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3, v3}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->a(Lcom/samsung/android/app/music/service/milk/login/LoginManager;IIZZ)V

    :cond_1
    const-string v0, "responseData"

    .line 393
    new-instance v1, Lcom/samsung/android/app/music/model/ResponseModel;

    iget v2, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$4;->a:I

    .line 394
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 395
    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager$LoginFailException;->getErrorCode()I

    move-result p1

    invoke-direct {v1, v2, p1}, Lcom/samsung/android/app/music/model/ResponseModel;-><init>(Ljava/lang/String;I)V

    .line 393
    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 398
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$4;->c:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->a(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 399
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$4;->c:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->a(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$4;->b:I

    iget v4, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$4;->a:I

    const/16 v5, 0x191

    const/4 v6, 0x5

    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;->a(IIIILandroid/content/Intent;)V

    :cond_3
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 358
    check-cast p1, Lcom/samsung/android/app/music/model/UserInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager$4;->a(Lcom/samsung/android/app/music/model/UserInfo;)V

    return-void
.end method
