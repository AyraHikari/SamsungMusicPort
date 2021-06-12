.class public Lcom/samsung/android/app/music/network/interceptor/LoginInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field private final a:Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

.field private b:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;)V
    .locals 0
    .param p1    # Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/samsung/android/app/music/network/interceptor/LoginInterceptor;->a:Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/network/interceptor/LoginInterceptor;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/app/music/network/interceptor/LoginInterceptor;->a:Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    return-object p0
.end method

.method private a(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/music/model/UserInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/music/network/exception/LoginFailedException;
        }
    .end annotation

    .line 76
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->getUserStatus()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const-string p1, "LoginInterceptor"

    const-string v0, "handleException. sign in failed."

    .line 77
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    new-instance p1, Lcom/samsung/android/app/music/network/exception/LoginFailedException;

    invoke-direct {p1}, Lcom/samsung/android/app/music/network/exception/LoginFailedException;-><init>()V

    throw p1
.end method

.method private a(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/music/network/exception/LoginFailedException;
        }
    .end annotation

    const-string v0, "LoginInterceptor"

    const-string v1, "waitLogin."

    .line 43
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    new-instance v0, Lcom/samsung/android/app/music/network/interceptor/LoginInterceptor$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/network/interceptor/LoginInterceptor$1;-><init>(Lcom/samsung/android/app/music/network/interceptor/LoginInterceptor;)V

    .line 45
    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 63
    :try_start_0
    invoke-virtual {v0}, Lio/reactivex/Observable;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/model/UserInfo;

    const-string v1, "LoginInterceptor"

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waitLogin. done. user info - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/UserInfo;->getUserStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/network/interceptor/LoginInterceptor;->a(Lcom/samsung/android/app/music/model/UserInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 67
    iput-object v0, p0, Lcom/samsung/android/app/music/network/interceptor/LoginInterceptor;->b:Ljava/lang/Exception;

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waitLogin. exception is occurred. e - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", req - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "LoginInterceptor"

    .line 68
    invoke-static {v1, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object p1, p0, Lcom/samsung/android/app/music/network/interceptor/LoginInterceptor;->a:Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a()Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/network/interceptor/LoginInterceptor;->a(Lcom/samsung/android/app/music/model/UserInfo;)V

    .line 71
    throw v0
.end method


# virtual methods
.method public a(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 1
    .param p1    # Lokhttp3/Interceptor$Chain;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->a()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->a()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/network/interceptor/LoginInterceptor;->a(Ljava/lang/String;)V

    .line 39
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->a()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->a(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
