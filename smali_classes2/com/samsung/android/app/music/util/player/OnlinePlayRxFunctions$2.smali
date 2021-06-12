.class final Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions;->a(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/functions/Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/samsung/android/app/music/model/UserInfo;",
        "Lio/reactivex/ObservableSource<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/UserInfo;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/model/UserInfo;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isSigned()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 66
    iget-object p1, p0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$2;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/music/network/request/browse/PersonalCurationApi;->a(Landroid/content/Context;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$2;->b:Ljava/lang/String;

    .line 67
    invoke-static {v0}, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions;->a(Ljava/lang/String;)Lio/reactivex/functions/Function;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 71
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Throwable;)Lio/reactivex/Observable;

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

    .line 62
    check-cast p1, Lcom/samsung/android/app/music/model/UserInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$2;->a(Lcom/samsung/android/app/music/model/UserInfo;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
