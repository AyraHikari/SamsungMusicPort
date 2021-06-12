.class Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$10$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$10;->a(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$10;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$10;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$10$1;->a:Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "OnlinePlayRxFunctions"

    const-string v1, "invokePlayContentCallbacks"

    .line 288
    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 289
    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$10$1;->a:Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$10;

    iget-object v0, v0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$10;->a:Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$OnPlayContentResultListener;

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$10$1;->a:Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$10;

    iget v0, v0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$10;->b:I

    .line 291
    instance-of v1, p1, Lcom/samsung/android/app/music/network/exception/ServerResponseException;

    if-eqz v1, :cond_0

    .line 292
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/music/network/exception/ServerResponseException;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/network/exception/ServerResponseException;->getResultCode()I

    move-result v0

    .line 294
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$10$1;->a:Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$10;

    iget-object v1, v1, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$10;->a:Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$OnPlayContentResultListener;

    invoke-interface {v1, v0, p1}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$OnPlayContentResultListener;->a(ILjava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 285
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$10$1;->a(Ljava/lang/Throwable;)V

    return-void
.end method
