.class public Lcom/samsung/android/app/music/network/rx/RetrofitRxFunctions;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/samsung/android/app/music/model/ResponseModel;",
            ">()",
            "Lio/reactivex/functions/Function<",
            "TT;",
            "Lio/reactivex/ObservableSource<",
            "TT;>;>;"
        }
    .end annotation

    .line 13
    new-instance v0, Lcom/samsung/android/app/music/network/rx/RetrofitRxFunctions$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/network/rx/RetrofitRxFunctions$1;-><init>()V

    return-object v0
.end method
