.class Lcom/samsung/android/app/music/service/milk/login/LoginManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/milk/login/LoginManager;->a(ILcom/samsung/android/app/music/model/PushInfo;)V
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
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/samsung/android/app/music/model/PushInfo;

.field final synthetic c:Lcom/samsung/android/app/music/service/milk/login/LoginManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/login/LoginManager;ILcom/samsung/android/app/music/model/PushInfo;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$2;->c:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    iput p2, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$2;->a:I

    iput-object p3, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$2;->b:Lcom/samsung/android/app/music/model/PushInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "LoginManager"

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePushToken - isSignedIn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 254
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$2;->c:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    const/4 v0, -0x1

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$2;->a:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$2;->b:Lcom/samsung/android/app/music/model/PushInfo;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->a(Lcom/samsung/android/app/music/service/milk/login/LoginManager;IILjava/lang/String;Lcom/samsung/android/app/music/model/PushInfo;)V

    .line 256
    :cond_0
    invoke-static {}, Lio/reactivex/Observable;->b()Lio/reactivex/Observable;

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

    .line 249
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager$2;->a(Ljava/lang/Boolean;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
