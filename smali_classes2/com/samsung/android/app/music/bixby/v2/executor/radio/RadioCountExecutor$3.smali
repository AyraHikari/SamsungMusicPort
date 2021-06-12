.class Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor;->a(Landroid/content/Context;)Lio/reactivex/Observable;
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
        "Lcom/samsung/android/app/music/model/milkhistory/PlayUsageStatus;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor;Landroid/content/Context;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor$3;->b:Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor;

    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor$3;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/UserInfo;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/model/UserInfo;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/milkhistory/PlayUsageStatus;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isDeviceSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    new-instance p1, Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor$DeviceUserException;

    invoke-direct {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor$DeviceUserException;-><init>()V

    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 88
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isStreamingUser()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 89
    new-instance p1, Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor$StreamingUserException;

    invoke-direct {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor$StreamingUserException;-><init>()V

    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 91
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor$3;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/music/network/transport/UserMyTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/UserMyTransport;

    move-result-object p1

    const/16 v0, 0x582

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/network/transport/UserMyTransport;->d(I)Lio/reactivex/Observable;

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

    .line 83
    check-cast p1, Lcom/samsung/android/app/music/model/UserInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor$3;->a(Lcom/samsung/android/app/music/model/UserInfo;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
