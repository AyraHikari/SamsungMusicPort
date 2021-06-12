.class final Lcom/samsung/android/app/music/network/rx/RetrofitRxFunctions$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/network/rx/RetrofitRxFunctions;->a()Lio/reactivex/functions/Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "TT;",
        "Lio/reactivex/ObservableSource<",
        "TT;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/ResponseModel;)Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/reactivex/ObservableSource<",
            "TT;>;"
        }
    .end annotation

    .line 16
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/ResponseModel;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    new-instance v0, Lcom/samsung/android/app/music/network/exception/ServerResponseException;

    .line 18
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/ResponseModel;->getResultCode()I

    move-result v1

    .line 19
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/ResponseModel;->getResultMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/music/network/exception/ServerResponseException;-><init>(ILjava/lang/String;)V

    .line 17
    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 21
    :cond_0
    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

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

    .line 13
    check-cast p1, Lcom/samsung/android/app/music/model/ResponseModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/network/rx/RetrofitRxFunctions$1;->a(Lcom/samsung/android/app/music/model/ResponseModel;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
