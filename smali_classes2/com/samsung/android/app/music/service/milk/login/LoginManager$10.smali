.class Lcom/samsung/android/app/music/service/milk/login/LoginManager$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


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
        "Lio/reactivex/functions/Function<",
        "Lcom/samsung/android/app/music/model/UserInfo;",
        "Lio/reactivex/Observable<",
        "Lcom/samsung/android/app/music/service/milk/SABundle;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/samsung/android/app/music/service/milk/login/LoginManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/login/LoginManager;II)V
    .locals 0

    .line 453
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$10;->c:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    iput p2, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$10;->a:I

    iput p3, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$10;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/UserInfo;)Lio/reactivex/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/model/UserInfo;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/service/milk/SABundle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "LoginManager"

    const-string v1, "doSimpleSignIn call"

    .line 456
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->getResultCode()I

    move-result v0

    if-nez v0, :cond_1

    .line 459
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$10;->c:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->a(Lcom/samsung/android/app/music/service/milk/login/LoginManager;Lcom/samsung/android/app/music/model/UserInfo;)V

    .line 461
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string p1, "responseData"

    .line 462
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$10;->c:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object v0

    invoke-virtual {v6, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 463
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$10;->c:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->a(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 464
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$10;->c:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->a(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$10;->a:I

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$10;->b:I

    const/16 v4, 0x191

    const/4 v5, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;->a(IIIILandroid/content/Intent;)V

    .line 469
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$10;->c:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->c(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$10;->c:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/provider/sync/MdrmContentUtils;->a(Landroid/content/Context;Lcom/samsung/android/app/music/model/UserInfo;)V

    .line 471
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$10;->c:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->c(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/SyncManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/SyncManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/SyncManager;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 473
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 475
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$10;->c:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->d(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Lcom/samsung/android/app/music/service/milk/LegalManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/LegalManager;->c()V

    .line 476
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$10;->c:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->d(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Lcom/samsung/android/app/music/service/milk/LegalManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/LegalManager;->b()V

    .line 477
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$10;->c:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->c(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->i(Landroid/content/Context;)V

    .line 482
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$10;->c:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->a(Lcom/samsung/android/app/music/service/milk/login/LoginManager;Z)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 479
    :cond_1
    new-instance v0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$LoginFailException;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$10;->c:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->getResultCode()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager$LoginFailException;-><init>(Lcom/samsung/android/app/music/service/milk/login/LoginManager;I)V

    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 453
    check-cast p1, Lcom/samsung/android/app/music/model/UserInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager$10;->a(Lcom/samsung/android/app/music/model/UserInfo;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
