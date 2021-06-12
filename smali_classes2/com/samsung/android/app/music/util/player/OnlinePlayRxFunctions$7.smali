.class final Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions;->b(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/functions/Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Ljava/lang/String;",
        "Lio/reactivex/ObservableSource<",
        "Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$7;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$7;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;",
            ">;"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$7;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$7;->b:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

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

    .line 208
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$7;->a(Ljava/lang/String;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
