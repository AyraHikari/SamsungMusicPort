.class Lcom/samsung/android/app/music/util/UserLogManager$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/util/UserLogManager;->b()Lio/reactivex/Observable;
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

    .line 472
    iput-object p1, p0, Lcom/samsung/android/app/music/util/UserLogManager$5;->a:Lcom/samsung/android/app/music/util/UserLogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "UserLogManager-"

    const-string v1, "zipFiles"

    .line 475
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/samsung/android/app/music/util/UserLogManager$5;->a:Lcom/samsung/android/app/music/util/UserLogManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/util/UserLogManager$5;->a:Lcom/samsung/android/app/music/util/UserLogManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/util/UserLogManager;->a(Lcom/samsung/android/app/music/util/UserLogManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/util/UserLogManager$5;->a:Lcom/samsung/android/app/music/util/UserLogManager;

    invoke-static {v2}, Lcom/samsung/android/app/music/util/UserLogManager;->c(Lcom/samsung/android/app/music/util/UserLogManager;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/util/UserLogManager$5;->a:Lcom/samsung/android/app/music/util/UserLogManager;

    invoke-static {v3}, Lcom/samsung/android/app/music/util/UserLogManager;->d(Lcom/samsung/android/app/music/util/UserLogManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/music/util/UserLogManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    iget-object v1, p0, Lcom/samsung/android/app/music/util/UserLogManager$5;->a:Lcom/samsung/android/app/music/util/UserLogManager;

    iget-object v2, p0, Lcom/samsung/android/app/music/util/UserLogManager$5;->a:Lcom/samsung/android/app/music/util/UserLogManager;

    invoke-static {v2}, Lcom/samsung/android/app/music/util/UserLogManager;->c(Lcom/samsung/android/app/music/util/UserLogManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/util/UserLogManager;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 479
    iget-object v1, p0, Lcom/samsung/android/app/music/util/UserLogManager$5;->a:Lcom/samsung/android/app/music/util/UserLogManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/app/music/util/UserLogManager$5;->a:Lcom/samsung/android/app/music/util/UserLogManager;

    invoke-static {v3}, Lcom/samsung/android/app/music/util/UserLogManager;->c(Lcom/samsung/android/app/music/util/UserLogManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/music/util/UserLogManager$5;->a:Lcom/samsung/android/app/music/util/UserLogManager;

    invoke-static {v3}, Lcom/samsung/android/app/music/util/UserLogManager;->d(Lcom/samsung/android/app/music/util/UserLogManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/util/UserLogManager;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 481
    :cond_0
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

    .line 472
    invoke-virtual {p0}, Lcom/samsung/android/app/music/util/UserLogManager$5;->a()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
