.class Lcom/samsung/android/app/music/util/UserLogManager$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/util/UserLogManager;->c()Lio/reactivex/Observable;
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

    .line 509
    iput-object p1, p0, Lcom/samsung/android/app/music/util/UserLogManager$7;->a:Lcom/samsung/android/app/music/util/UserLogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lio/reactivex/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "UserLogManager-"

    const-string v1, "moveFiles"

    .line 512
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 513
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/util/UserLogManager$7;->a:Lcom/samsung/android/app/music/util/UserLogManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/util/UserLogManager;->e(Lcom/samsung/android/app/music/util/UserLogManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 514
    iget-object v1, p0, Lcom/samsung/android/app/music/util/UserLogManager$7;->a:Lcom/samsung/android/app/music/util/UserLogManager;

    iget-object v2, p0, Lcom/samsung/android/app/music/util/UserLogManager$7;->a:Lcom/samsung/android/app/music/util/UserLogManager;

    invoke-static {v2}, Lcom/samsung/android/app/music/util/UserLogManager;->e(Lcom/samsung/android/app/music/util/UserLogManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/app/music/util/UserLogManager$7;->a:Lcom/samsung/android/app/music/util/UserLogManager;

    invoke-static {v3}, Lcom/samsung/android/app/music/util/UserLogManager;->e(Lcom/samsung/android/app/music/util/UserLogManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/app/music/util/UserLogManager$7;->a:Lcom/samsung/android/app/music/util/UserLogManager;

    invoke-static {v4}, Lcom/samsung/android/app/music/util/UserLogManager;->a(Lcom/samsung/android/app/music/util/UserLogManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/app/music/util/UserLogManager;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 516
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

    .line 509
    invoke-virtual {p0}, Lcom/samsung/android/app/music/util/UserLogManager$7;->a()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
