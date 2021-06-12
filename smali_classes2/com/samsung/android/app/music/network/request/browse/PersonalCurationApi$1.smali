.class final Lcom/samsung/android/app/music/network/request/browse/PersonalCurationApi$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/network/request/browse/PersonalCurationApi;->a(Landroid/content/Context;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/samsung/android/app/music/network/request/browse/PersonalCurationApi$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/music/network/request/browse/PersonalCurationApi$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/network/transport/BrowseTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/BrowseTransport;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/music/network/transport/BrowseTransport;->c()Lio/reactivex/Observable;

    move-result-object v0

    .line 32
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/network/request/browse/PersonalCurationApi$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/network/request/browse/PersonalCurationApi$1$1;-><init>(Lcom/samsung/android/app/music/network/request/browse/PersonalCurationApi$1;)V

    .line 33
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    invoke-virtual {p0}, Lcom/samsung/android/app/music/network/request/browse/PersonalCurationApi$1;->a()Lio/reactivex/ObservableSource;

    move-result-object v0

    return-object v0
.end method
