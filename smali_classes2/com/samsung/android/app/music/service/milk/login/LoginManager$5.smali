.class Lcom/samsung/android/app/music/service/milk/login/LoginManager$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


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
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/samsung/android/app/music/service/milk/SABundle;",
        "Lio/reactivex/Observable<",
        "Lcom/samsung/android/app/music/model/UserInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/samsung/android/app/music/service/milk/login/LoginManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/login/LoginManager;Z)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$5;->b:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    iput-boolean p2, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$5;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/service/milk/SABundle;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/service/milk/SABundle;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/UserInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 346
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$5;->b:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/UserInfo;->getUserStatus()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$5;->b:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    .line 347
    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/UserInfo;->getUserStatus()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$5;->b:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    .line 348
    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/UserInfo;->getUserStatus()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$5;->a:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "LoginManager"

    const-string v0, "doAccountSignIn. re-use existing info."

    .line 354
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$5;->b:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const-string v0, "LoginManager"

    const-string v1, "doAccountSignIn. call signin API"

    .line 349
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$5;->b:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->c(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/network/transport/UserAccountTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/UserAccountTransport;

    move-result-object v0

    const/16 v1, 0x65

    .line 352
    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/SABundle;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/SABundle;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/samsung/android/app/music/network/transport/UserAccountTransport;->a(ILjava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

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

    .line 343
    check-cast p1, Lcom/samsung/android/app/music/service/milk/SABundle;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager$5;->a(Lcom/samsung/android/app/music/service/milk/SABundle;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
