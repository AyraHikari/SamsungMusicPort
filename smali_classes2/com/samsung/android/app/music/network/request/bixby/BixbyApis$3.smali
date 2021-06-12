.class final Lcom/samsung/android/app/music/network/request/bixby/BixbyApis$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/network/request/bixby/BixbyApis;->a(Landroid/content/Context;I)Lio/reactivex/Observable;
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
        "Lcom/samsung/android/app/music/model/bixby/TPOPlaylistResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/samsung/android/app/music/network/request/bixby/BixbyApis$3;->a:Landroid/content/Context;

    iput p2, p0, Lcom/samsung/android/app/music/network/request/bixby/BixbyApis$3;->b:I

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
            "Lcom/samsung/android/app/music/model/bixby/TPOPlaylistResponse;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/music/network/request/bixby/BixbyApis$3;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/network/transport/BixbyTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/BixbyTransport;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/network/request/bixby/BixbyApis$3;->b:I

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/network/transport/BixbyTransport;->a(I)Lio/reactivex/Observable;

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

    .line 35
    invoke-virtual {p0}, Lcom/samsung/android/app/music/network/request/bixby/BixbyApis$3;->a()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
