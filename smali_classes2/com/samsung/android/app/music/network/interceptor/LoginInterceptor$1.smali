.class Lcom/samsung/android/app/music/network/interceptor/LoginInterceptor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/network/interceptor/LoginInterceptor;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lio/reactivex/Observable<",
        "Lcom/samsung/android/app/music/model/UserInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/network/interceptor/LoginInterceptor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/network/interceptor/LoginInterceptor;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/samsung/android/app/music/network/interceptor/LoginInterceptor$1;->a:Lcom/samsung/android/app/music/network/interceptor/LoginInterceptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/UserInfo;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/samsung/android/app/music/network/interceptor/LoginInterceptor$1$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/network/interceptor/LoginInterceptor$1$1;-><init>(Lcom/samsung/android/app/music/network/interceptor/LoginInterceptor$1;)V

    invoke-static {v0}, Lio/reactivex/Observable;->a(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

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

    .line 45
    invoke-virtual {p0}, Lcom/samsung/android/app/music/network/interceptor/LoginInterceptor$1;->a()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
