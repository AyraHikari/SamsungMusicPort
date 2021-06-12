.class final Lcom/samsung/android/app/music/network/request/basic/BasicApis$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/network/request/basic/BasicApis;->c(Landroid/content/Context;)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lio/reactivex/Single<",
        "Lcom/samsung/android/app/music/model/basic/NoticeListModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/samsung/android/app/music/network/request/basic/BasicApis$5;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lcom/samsung/android/app/music/model/basic/NoticeListModel;",
            ">;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/music/network/request/basic/BasicApis$5;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/network/transport/BrowseTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/BrowseTransport;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/music/network/transport/BrowseTransport;->b()Lio/reactivex/Single;

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

    .line 133
    invoke-virtual {p0}, Lcom/samsung/android/app/music/network/request/basic/BasicApis$5;->a()Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method
