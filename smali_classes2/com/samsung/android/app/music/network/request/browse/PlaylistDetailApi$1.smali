.class final Lcom/samsung/android/app/music/network/request/browse/PlaylistDetailApi$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/network/request/browse/PlaylistDetailApi;->a(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;
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
        "Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/samsung/android/app/music/network/request/browse/PlaylistDetailApi$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/app/music/network/request/browse/PlaylistDetailApi$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailModel;",
            ">;"
        }
    .end annotation

    const-string v0, "PlaylistDetailApi"

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestPlaylistDetail. playlist id - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/network/request/browse/PlaylistDetailApi$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/music/network/request/browse/PlaylistDetailApi$1;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/network/transport/BrowseTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/BrowseTransport;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/network/request/browse/PlaylistDetailApi$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/network/transport/BrowseTransport;->c(Ljava/lang/String;)Lio/reactivex/Observable;

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

    .line 22
    invoke-virtual {p0}, Lcom/samsung/android/app/music/network/request/browse/PlaylistDetailApi$1;->a()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
