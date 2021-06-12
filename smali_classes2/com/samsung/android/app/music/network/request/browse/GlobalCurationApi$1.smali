.class final Lcom/samsung/android/app/music/network/request/browse/GlobalCurationApi$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/network/request/browse/GlobalCurationApi;->a(Landroid/content/Context;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lio/reactivex/Observable<",
        "Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/samsung/android/app/music/network/request/browse/GlobalCurationApi$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/network/request/browse/GlobalCurationApi$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/network/transport/BrowseTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/BrowseTransport;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/network/request/browse/GlobalCurationApi$1;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/network/request/browse/GlobalCurationApi;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/network/request/browse/GlobalCurationApi$1;->a:Landroid/content/Context;

    const/4 v3, 0x3

    .line 51
    invoke-static {v2, v3}, Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/music/network/transport/BrowseTransport;->a(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 52
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/network/request/browse/GlobalCurationApi$1$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/network/request/browse/GlobalCurationApi$1$2;-><init>(Lcom/samsung/android/app/music/network/request/browse/GlobalCurationApi$1;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/network/request/browse/GlobalCurationApi$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/network/request/browse/GlobalCurationApi$1$1;-><init>(Lcom/samsung/android/app/music/network/request/browse/GlobalCurationApi$1;)V

    .line 61
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

    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/app/music/network/request/browse/GlobalCurationApi$1;->a()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
