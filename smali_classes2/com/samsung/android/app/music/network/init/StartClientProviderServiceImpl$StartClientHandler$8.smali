.class final Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;->a()Lio/reactivex/functions/Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/samsung/android/app/music/model/basic/StartClientModel;",
        "Lcom/samsung/android/app/music/model/basic/StartClientModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/basic/StartClientModel;)Lcom/samsung/android/app/music/model/basic/StartClientModel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 436
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/basic/StartClientModel;->getResultCode()I

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 437
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/network/exception/StartClientFailException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result code is not success. code - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/basic/StartClientModel;->getResultCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/network/exception/StartClientFailException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 434
    :cond_1
    new-instance p1, Lcom/samsung/android/app/music/network/exception/StartClientFailException;

    const-string v0, "response is null"

    invoke-direct {p1, v0}, Lcom/samsung/android/app/music/network/exception/StartClientFailException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 430
    check-cast p1, Lcom/samsung/android/app/music/model/basic/StartClientModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$8;->a(Lcom/samsung/android/app/music/model/basic/StartClientModel;)Lcom/samsung/android/app/music/model/basic/StartClientModel;

    move-result-object p1

    return-object p1
.end method
