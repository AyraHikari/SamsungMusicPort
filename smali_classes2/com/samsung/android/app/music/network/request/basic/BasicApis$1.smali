.class final Lcom/samsung/android/app/music/network/request/basic/BasicApis$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/network/request/basic/BasicApis;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
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
        "Lcom/samsung/android/app/music/model/basic/StartClientModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/samsung/android/app/music/network/request/basic/BasicApis$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/music/network/request/basic/BasicApis$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/music/network/request/basic/BasicApis$1;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/app/music/network/request/basic/BasicApis$1;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/app/music/network/request/basic/BasicApis$1;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/app/music/network/request/basic/BasicApis$1;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/app/music/network/request/basic/BasicApis$1;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/samsung/android/app/music/network/request/basic/BasicApis$1;->h:Ljava/lang/String;

    iput-object p9, p0, Lcom/samsung/android/app/music/network/request/basic/BasicApis$1;->i:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lio/reactivex/Observable;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/basic/StartClientModel;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/music/network/request/basic/BasicApis$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/network/transport/BasicTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/BasicTransport;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/app/music/network/request/basic/BasicApis$1;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/app/music/network/request/basic/BasicApis$1;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/app/music/network/request/basic/BasicApis$1;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/app/music/network/request/basic/BasicApis$1;->e:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/app/music/network/request/basic/BasicApis$1;->f:Ljava/lang/String;

    iget-object v8, p0, Lcom/samsung/android/app/music/network/request/basic/BasicApis$1;->g:Ljava/lang/String;

    iget-object v9, p0, Lcom/samsung/android/app/music/network/request/basic/BasicApis$1;->h:Ljava/lang/String;

    iget-object v10, p0, Lcom/samsung/android/app/music/network/request/basic/BasicApis$1;->i:Ljava/lang/String;

    const/16 v2, 0x1388

    .line 36
    invoke-interface/range {v1 .. v10}, Lcom/samsung/android/app/music/network/transport/BasicTransport;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

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

    .line 32
    invoke-virtual {p0}, Lcom/samsung/android/app/music/network/request/basic/BasicApis$1;->a()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
