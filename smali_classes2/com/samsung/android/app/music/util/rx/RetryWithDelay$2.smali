.class Lcom/samsung/android/app/music/util/rx/RetryWithDelay$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/util/rx/RetryWithDelay;->a(Lio/reactivex/Observable;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Ljava/lang/Throwable;",
        "Lio/reactivex/Observable<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/util/rx/RetryWithDelay;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/util/rx/RetryWithDelay;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/samsung/android/app/music/util/rx/RetryWithDelay$2;->a:Lcom/samsung/android/app/music/util/rx/RetryWithDelay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lio/reactivex/Observable<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "RetryWithDelay"

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retry - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/util/rx/RetryWithDelay$2;->a:Lcom/samsung/android/app/music/util/rx/RetryWithDelay;

    .line 49
    invoke-static {v2}, Lcom/samsung/android/app/music/util/rx/RetryWithDelay;->a(Lcom/samsung/android/app/music/util/rx/RetryWithDelay;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", max - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/util/rx/RetryWithDelay$2;->a:Lcom/samsung/android/app/music/util/rx/RetryWithDelay;

    invoke-static {v2}, Lcom/samsung/android/app/music/util/rx/RetryWithDelay;->b(Lcom/samsung/android/app/music/util/rx/RetryWithDelay;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", throwable - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/util/rx/RetryWithDelay$2;->a:Lcom/samsung/android/app/music/util/rx/RetryWithDelay;

    invoke-static {v0}, Lcom/samsung/android/app/music/util/rx/RetryWithDelay;->c(Lcom/samsung/android/app/music/util/rx/RetryWithDelay;)Lcom/samsung/android/app/music/util/rx/RetryWithDelay$Condition;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/util/rx/RetryWithDelay$Condition;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/util/rx/RetryWithDelay$2;->a:Lcom/samsung/android/app/music/util/rx/RetryWithDelay;

    invoke-static {v0}, Lcom/samsung/android/app/music/util/rx/RetryWithDelay;->d(Lcom/samsung/android/app/music/util/rx/RetryWithDelay;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/music/util/rx/RetryWithDelay$2;->a:Lcom/samsung/android/app/music/util/rx/RetryWithDelay;

    invoke-static {v1}, Lcom/samsung/android/app/music/util/rx/RetryWithDelay;->b(Lcom/samsung/android/app/music/util/rx/RetryWithDelay;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 55
    iget-object p1, p0, Lcom/samsung/android/app/music/util/rx/RetryWithDelay$2;->a:Lcom/samsung/android/app/music/util/rx/RetryWithDelay;

    invoke-static {p1}, Lcom/samsung/android/app/music/util/rx/RetryWithDelay;->e(Lcom/samsung/android/app/music/util/rx/RetryWithDelay;)I

    move-result p1

    int-to-long v0, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, p1}, Lio/reactivex/Observable;->a(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 60
    :cond_0
    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Throwable;)Lio/reactivex/Observable;

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

    .line 45
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/util/rx/RetryWithDelay$2;->a(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
