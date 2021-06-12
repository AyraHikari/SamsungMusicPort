.class final Lcom/samsung/android/app/music/network/request/browse/TopChartApi$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/network/request/browse/TopChartApi;->a(Landroid/content/Context;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Ljava/util/List<",
        "Lcom/samsung/android/app/music/model/base/TrackModel;",
        ">;",
        "Lio/reactivex/CompletableSource;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/samsung/android/app/music/network/request/browse/TopChartApi$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Lio/reactivex/CompletableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/TrackModel;",
            ">;)",
            "Lio/reactivex/CompletableSource;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/music/network/request/browse/TopChartApi$1;->a:Landroid/content/Context;

    .line 50
    invoke-static {}, Lcom/samsung/android/app/music/browse/util/FixedPlaylistIds;->a()Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/music/network/request/browse/TopChartApi;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Lio/reactivex/Completable;

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

    .line 46
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/network/request/browse/TopChartApi$1;->a(Ljava/util/List;)Lio/reactivex/CompletableSource;

    move-result-object p1

    return-object p1
.end method
