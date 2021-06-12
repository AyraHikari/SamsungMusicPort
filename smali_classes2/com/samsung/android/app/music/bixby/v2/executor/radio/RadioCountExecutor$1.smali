.class Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor$1;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor;->execute(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber<",
        "Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

.field final synthetic b:Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor$1;->b:Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor;

    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor$1;->a:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor$1;->a:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 45
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 46
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRadioPlayCount() - onError. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    instance-of v0, p1, Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor$StreamingUserException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 50
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor;->a()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor$StreamingUserException;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor$StreamingUserException;->getErrorMsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const-string v0, "Music_25_1"

    invoke-direct {p1, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    const-string v0, "totalFreeCount"

    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "playCount"

    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "freeCount"

    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 56
    :cond_0
    instance-of v0, p1, Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor$GetRadioCountException;

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    .line 57
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor;->a()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor$GetRadioCountException;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor$GetRadioCountException;->getErrorMsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const-string v0, "Music_0_5"

    invoke-direct {p1, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_1
    instance-of v0, p1, Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor$DeviceUserException;

    if-eqz v0, :cond_2

    .line 60
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor;->a()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor$GetRadioCountException;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor$GetRadioCountException;->getErrorMsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const-string v0, "Music_25_3"

    invoke-direct {p1, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    const-string v0, "totalFreeCount"

    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "playCount"

    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "freeCount"

    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 67
    :cond_2
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const-string v0, "Music_0_5"

    invoke-direct {p1, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    .line 69
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor$1;->a:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 42
    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor$1;->a(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    return-void
.end method
