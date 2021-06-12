.class final Lcom/samsung/android/app/music/network/request/contents/ContentsApis$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/network/request/contents/ContentsApis;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Lio/reactivex/Observable;
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
        "Lcom/samsung/android/app/music/model/contents/ArtistDetailTracksModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/samsung/android/app/music/network/request/contents/ContentsApis$2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/music/network/request/contents/ContentsApis$2;->b:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/app/music/network/request/contents/ContentsApis$2;->c:I

    iput-object p4, p0, Lcom/samsung/android/app/music/network/request/contents/ContentsApis$2;->d:Ljava/lang/String;

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
            "Lcom/samsung/android/app/music/model/contents/ArtistDetailTracksModel;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/network/request/contents/ContentsApis$2;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/network/transport/ContentsTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/ContentsTransport;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/network/request/contents/ContentsApis$2;->b:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/app/music/network/request/contents/ContentsApis$2;->c:I

    iget-object v3, p0, Lcom/samsung/android/app/music/network/request/contents/ContentsApis$2;->d:Ljava/lang/String;

    .line 51
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/app/music/network/transport/ContentsTransport;->a(Ljava/lang/String;ILjava/lang/String;)Lio/reactivex/Observable;

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
    invoke-virtual {p0}, Lcom/samsung/android/app/music/network/request/contents/ContentsApis$2;->a()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
