.class Lcom/samsung/android/app/music/network/request/browse/GlobalCurationApi$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/network/request/browse/GlobalCurationApi$1;->a()Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;",
        "Lio/reactivex/ObservableSource<",
        "Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/network/request/browse/GlobalCurationApi$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/network/request/browse/GlobalCurationApi$1;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/samsung/android/app/music/network/request/browse/GlobalCurationApi$1$2;->a:Lcom/samsung/android/app/music/network/request/browse/GlobalCurationApi$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/music/network/request/browse/GlobalCurationApi$1$2;->a:Lcom/samsung/android/app/music/network/request/browse/GlobalCurationApi$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/network/request/browse/GlobalCurationApi$1;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/network/request/browse/GlobalCurationApi;->a(Landroid/content/Context;Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;)V

    .line 59
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

    .line 53
    check-cast p1, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/network/request/browse/GlobalCurationApi$1$2;->a(Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
