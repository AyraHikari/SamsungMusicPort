.class final Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions;->b(Landroid/content/Context;)Lio/reactivex/functions/Function;
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
        "Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$8;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lio/reactivex/ObservableSource;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;",
            ">;"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$8;->a:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-static {v0, p1, v1, v2, v3}, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Lio/reactivex/Observable;

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

    .line 218
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$8;->a(Ljava/lang/String;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
