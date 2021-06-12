.class Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$11$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$11;->a(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$11;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$11;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$11$2;->a:Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "OnlinePlayRxFunctions"

    const-string v1, "invokePlayContentCallbacks. success"

    .line 310
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$11$2;->a:Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$11;

    iget-object v0, v0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$11;->a:Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$OnPlayRadioResultListener;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$11$2;->a:Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$11;

    iget-object v0, v0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$11;->a:Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$OnPlayRadioResultListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$OnPlayRadioResultListener;->a(Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;)V

    :cond_0
    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 307
    check-cast p1, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$11$2;->a(Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;)V

    return-void
.end method
