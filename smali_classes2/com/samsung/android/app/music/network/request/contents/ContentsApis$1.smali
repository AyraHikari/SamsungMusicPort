.class final Lcom/samsung/android/app/music/network/request/contents/ContentsApis$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/network/request/contents/ContentsApis;->a(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;
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
        "Lcom/samsung/android/app/music/model/contents/ArtistDetailModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/samsung/android/app/music/network/request/contents/ContentsApis$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/music/network/request/contents/ContentsApis$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/contents/ArtistDetailModel;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/music/network/request/contents/ContentsApis$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/network/transport/ContentsTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/ContentsTransport;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/network/request/contents/ContentsApis$1;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/network/transport/ContentsTransport;->a(Ljava/lang/String;)Lio/reactivex/Observable;

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

    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/app/music/network/request/contents/ContentsApis$1;->a()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
