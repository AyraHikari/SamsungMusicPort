.class Lcom/samsung/android/app/music/service/milk/login/LoginManager$11;
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
        "Ljava/lang/Boolean;",
        "Lio/reactivex/Observable<",
        "Lcom/samsung/android/app/music/model/UserInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/android/app/music/service/milk/login/LoginManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/login/LoginManager;Ljava/lang/String;)V
    .locals 0

    .line 447
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$11;->b:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    iput-object p2, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$11;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
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

    .line 450
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$11;->b:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->c(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/network/transport/UserAccountTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/UserAccountTransport;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$11;->b:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    .line 451
    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->c(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$11;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/app/music/util/AES;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x67

    .line 450
    invoke-interface {p1, v1, v0}, Lcom/samsung/android/app/music/network/transport/UserAccountTransport;->a(ILjava/lang/String;)Lio/reactivex/Observable;

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

    .line 447
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager$11;->a(Ljava/lang/Boolean;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
