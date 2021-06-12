.class Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$10$2;
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
        "Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$10;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$10;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$10$2;->a:Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;)V
    .locals 2

    const-string v0, "OnlinePlayRxFunctions"

    const-string v1, "invokePlayContentCallbacks. success"

    .line 280
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$10$2;->a:Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$10;

    iget-object v0, v0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$10;->a:Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$OnPlayContentResultListener;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$10$2;->a:Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$10;

    iget-object v0, v0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$10;->a:Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$OnPlayContentResultListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$OnPlayContentResultListener;->a(Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;)V

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

    .line 277
    check-cast p1, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$10$2;->a(Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;)V

    return-void
.end method
