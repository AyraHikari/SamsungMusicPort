.class final Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ObservableTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions;->a(ILcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$OnPlayContentResultListener;)Lio/reactivex/ObservableTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableTransformer<",
        "Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;",
        "Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$OnPlayContentResultListener;

.field final synthetic b:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$OnPlayContentResultListener;I)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$10;->a:Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$OnPlayContentResultListener;

    iput p2, p0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$10;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;",
            ">;)",
            "Lio/reactivex/ObservableSource<",
            "Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;",
            ">;"
        }
    .end annotation

    .line 277
    new-instance v0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$10$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$10$2;-><init>(Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$10;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->b(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$10$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$10$1;-><init>(Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$10;)V

    .line 285
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
