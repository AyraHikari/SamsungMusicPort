.class final Lcom/samsung/android/app/music/network/request/contents/ContentsApis$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/network/request/contents/ContentsApis;->a(Landroid/content/Context;Ljava/lang/String;I)Lio/reactivex/Observable;
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
        "Lcom/samsung/android/app/music/model/contents/ArtistDetailRelatedArtistsModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/samsung/android/app/music/network/request/contents/ContentsApis$5;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/music/network/request/contents/ContentsApis$5;->b:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/app/music/network/request/contents/ContentsApis$5;->c:I

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
            "Lcom/samsung/android/app/music/model/contents/ArtistDetailRelatedArtistsModel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/music/network/request/contents/ContentsApis$5;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/network/transport/ContentsTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/ContentsTransport;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/network/request/contents/ContentsApis$5;->b:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/app/music/network/request/contents/ContentsApis$5;->c:I

    .line 92
    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/music/network/transport/ContentsTransport;->a(Ljava/lang/String;I)Lio/reactivex/Observable;

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

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/app/music/network/request/contents/ContentsApis$5;->a()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
