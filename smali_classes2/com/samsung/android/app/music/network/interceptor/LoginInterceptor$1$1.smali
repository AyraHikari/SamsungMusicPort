.class Lcom/samsung/android/app/music/network/interceptor/LoginInterceptor$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/network/interceptor/LoginInterceptor$1;->a()Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Lcom/samsung/android/app/music/model/UserInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/network/interceptor/LoginInterceptor$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/network/interceptor/LoginInterceptor$1;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/samsung/android/app/music/network/interceptor/LoginInterceptor$1$1;->a:Lcom/samsung/android/app/music/network/interceptor/LoginInterceptor$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/ObservableEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lcom/samsung/android/app/music/model/UserInfo;",
            ">;)V"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/network/interceptor/LoginInterceptor$1$1;->a:Lcom/samsung/android/app/music/network/interceptor/LoginInterceptor$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/network/interceptor/LoginInterceptor$1;->a:Lcom/samsung/android/app/music/network/interceptor/LoginInterceptor;

    invoke-static {v0}, Lcom/samsung/android/app/music/network/interceptor/LoginInterceptor;->a(Lcom/samsung/android/app/music/network/interceptor/LoginInterceptor;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/network/interceptor/LoginInterceptor$1$1$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/network/interceptor/LoginInterceptor$1$1$1;-><init>(Lcom/samsung/android/app/music/network/interceptor/LoginInterceptor$1$1;Lio/reactivex/ObservableEmitter;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Lcom/samsung/android/app/music/service/milk/login/UserInfoReceiver;)V

    return-void
.end method
