.class public Lcom/samsung/android/app/music/network/interceptor/MusicServerApiCallControlInterceptor$ApiNetworkConnectionController$Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/network/interceptor/MusicServerApiCallControlInterceptor$ApiNetworkConnectionController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/network/interceptor/MusicServerApiCallControlInterceptor$ApiNetworkConnectionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Impl"
.end annotation


# static fields
.field private static final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/network/interceptor/MusicServerApiCallControlInterceptor$ApiNetworkConnectionController$Impl;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    sget-object v0, Lcom/samsung/android/app/music/network/interceptor/MusicServerApiCallControlInterceptor$ApiNetworkConnectionController$Impl;->a:Ljava/util/ArrayList;

    const-string v1, "startClient"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lcom/samsung/android/app/music/network/interceptor/MusicServerApiCallControlInterceptor$ApiNetworkConnectionController$Impl;->a:Ljava/util/ArrayList;

    const-string v1, "signIn"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lcom/samsung/android/app/music/network/interceptor/MusicServerApiCallControlInterceptor$ApiNetworkConnectionController$Impl;->a:Ljava/util/ArrayList;

    const-string v1, "deviceRegister"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lcom/samsung/android/app/music/network/interceptor/MusicServerApiCallControlInterceptor$ApiNetworkConnectionController$Impl;->a:Ljava/util/ArrayList;

    const-string v1, "storeData"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lcom/samsung/android/app/music/network/interceptor/MusicServerApiCallControlInterceptor$ApiNetworkConnectionController$Impl;->a:Ljava/util/ArrayList;

    const-string v1, "simple"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lcom/samsung/android/app/music/network/interceptor/MusicServerApiCallControlInterceptor$ApiNetworkConnectionController$Impl;->a:Ljava/util/ArrayList;

    const-string v1, "legalInfo"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lcom/samsung/android/app/music/network/interceptor/MusicServerApiCallControlInterceptor$ApiNetworkConnectionController$Impl;->a:Ljava/util/ArrayList;

    const-string v1, "updateUserInfo"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lcom/samsung/android/app/music/network/interceptor/MusicServerApiCallControlInterceptor$ApiNetworkConnectionController$Impl;->a:Ljava/util/ArrayList;

    const-string v1, "checkCountry"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private b(Lokhttp3/Request;)Ljava/lang/String;
    .locals 1

    .line 121
    invoke-virtual {p1}, Lokhttp3/Request;->a()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->k()Ljava/util/List;

    move-result-object p1

    .line 122
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 123
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a(Landroid/content/Context;Lokhttp3/Request;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ConnectException;
        }
    .end annotation

    .line 77
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/network/interceptor/MusicServerApiCallControlInterceptor$ApiNetworkConnectionController$Impl;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "connectivity"

    .line 79
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 80
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const-string v1, "ApiNetworkConnectionController"

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "assertNetworkAvailable. pid - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", processState - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {p1, v3}, Lcom/samsung/android/app/music/util/AndroidUtils;->a(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ApiNetworkConnectionController"

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "assertNetworkAvailable. networkInfo - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    new-instance p1, Ljava/net/ConnectException;

    invoke-direct {p1}, Ljava/net/ConnectException;-><init>()V

    throw p1

    .line 91
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/network/interceptor/MusicServerApiCallControlInterceptor$ApiNetworkConnectionController$Impl;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 92
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/network/interceptor/MusicServerApiCallControlInterceptor$ApiNetworkConnectionController$Impl;->a(Lokhttp3/Request;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 93
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/network/interceptor/MusicServerApiCallControlInterceptor$ApiNetworkConnectionController$Impl;->c(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 94
    :cond_2
    new-instance p1, Lcom/samsung/android/app/music/network/exception/MobileNetworkNotAllowedException;

    invoke-direct {p1, p2}, Lcom/samsung/android/app/music/network/exception/MobileNetworkNotAllowedException;-><init>(Lokhttp3/Request;)V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method a(Landroid/content/Context;)Z
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 101
    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->b(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method a(Lokhttp3/Request;)Z
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 116
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/network/interceptor/MusicServerApiCallControlInterceptor$ApiNetworkConnectionController$Impl;->b(Lokhttp3/Request;)Ljava/lang/String;

    move-result-object p1

    .line 117
    sget-object v0, Lcom/samsung/android/app/music/network/interceptor/MusicServerApiCallControlInterceptor$ApiNetworkConnectionController$Impl;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method b(Landroid/content/Context;)Z
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 106
    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->f(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method c(Landroid/content/Context;)Z
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 111
    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->g(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method
