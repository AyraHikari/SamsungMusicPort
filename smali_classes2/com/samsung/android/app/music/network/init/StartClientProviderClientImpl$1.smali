.class Lcom/samsung/android/app/music/network/init/StartClientProviderClientImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/network/init/StartClientProviderClientImpl;->a()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Ljava/lang/Boolean;",
        "Lio/reactivex/Observable<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/network/init/StartClientProviderClientImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/network/init/StartClientProviderClientImpl;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderClientImpl$1;->a:Lcom/samsung/android/app/music/network/init/StartClientProviderClientImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object p1, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderClientImpl$1;->a:Lcom/samsung/android/app/music/network/init/StartClientProviderClientImpl;

    iget-object v0, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderClientImpl$1;->a:Lcom/samsung/android/app/music/network/init/StartClientProviderClientImpl;

    invoke-static {v0}, Lcom/samsung/android/app/music/network/init/StartClientProviderClientImpl;->a(Lcom/samsung/android/app/music/network/init/StartClientProviderClientImpl;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/network/init/StartClientProviderClientImpl;->a(Lcom/samsung/android/app/music/network/init/StartClientProviderClientImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    iget-object p1, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderClientImpl$1;->a:Lcom/samsung/android/app/music/network/init/StartClientProviderClientImpl;

    invoke-static {p1}, Lcom/samsung/android/app/music/network/init/StartClientProviderClientImpl;->b(Lcom/samsung/android/app/music/network/init/StartClientProviderClientImpl;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 60
    new-instance p1, Lcom/samsung/android/app/music/network/exception/StartClientFailException;

    const-string v0, "server url is null"

    invoke-direct {p1, v0}, Lcom/samsung/android/app/music/network/exception/StartClientFailException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderClientImpl$1;->a:Lcom/samsung/android/app/music/network/init/StartClientProviderClientImpl;

    invoke-static {p1}, Lcom/samsung/android/app/music/network/init/StartClientProviderClientImpl;->b(Lcom/samsung/android/app/music/network/init/StartClientProviderClientImpl;)Ljava/lang/String;

    move-result-object p1

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

    .line 55
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/network/init/StartClientProviderClientImpl$1;->a(Ljava/lang/Boolean;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
