.class Lcom/samsung/android/app/music/util/UserLogManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/util/UserLogManager;->a()Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lio/reactivex/Observable<",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/util/UserLogManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/util/UserLogManager;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/samsung/android/app/music/util/UserLogManager$3;->a:Lcom/samsung/android/app/music/util/UserLogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "UserLogManager-"

    const-string v1, "makeLogFile"

    .line 280
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/samsung/android/app/music/util/UserLogManager$3;->a:Lcom/samsung/android/app/music/util/UserLogManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/util/UserLogManager$3;->a:Lcom/samsung/android/app/music/util/UserLogManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/util/UserLogManager;->a(Lcom/samsung/android/app/music/util/UserLogManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/util/UserLogManager;->a(Ljava/lang/String;)Z

    .line 282
    iget-object v0, p0, Lcom/samsung/android/app/music/util/UserLogManager$3;->a:Lcom/samsung/android/app/music/util/UserLogManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/util/UserLogManager$3;->a:Lcom/samsung/android/app/music/util/UserLogManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/util/UserLogManager;->a(Lcom/samsung/android/app/music/util/UserLogManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/util/UserLogManager$3;->a:Lcom/samsung/android/app/music/util/UserLogManager;

    invoke-static {v2}, Lcom/samsung/android/app/music/util/UserLogManager;->b(Lcom/samsung/android/app/music/util/UserLogManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/util/UserLogManager;->a(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x1

    .line 283
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 277
    invoke-virtual {p0}, Lcom/samsung/android/app/music/util/UserLogManager$3;->a()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
