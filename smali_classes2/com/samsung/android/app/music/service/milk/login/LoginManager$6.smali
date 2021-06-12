.class Lcom/samsung/android/app/music/service/milk/login/LoginManager$6;
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
        "Ljava/lang/Boolean;",
        "Lio/reactivex/Observable<",
        "Lcom/samsung/android/app/music/service/milk/SABundle;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/samsung/android/app/music/service/milk/login/LoginManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/login/LoginManager;ZZ)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$6;->c:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    iput-boolean p2, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$6;->a:Z

    iput-boolean p3, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$6;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
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

    .line 341
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$6;->c:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$6;->a:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$6;->b:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->a(Lcom/samsung/android/app/music/service/milk/login/LoginManager;Z)Lio/reactivex/Observable;

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

    .line 338
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager$6;->a(Ljava/lang/Boolean;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
