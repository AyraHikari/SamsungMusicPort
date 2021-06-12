.class public Lcom/samsung/android/app/music/network/interceptor/MusicServerInterceptors;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    new-instance v1, Lcom/samsung/android/app/music/network/interceptor/MusicServerApiCallControlInterceptor;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/network/interceptor/MusicServerApiCallControlInterceptor;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance v1, Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance v1, Lcom/samsung/android/app/music/network/interceptor/SimpleLoggingInterceptor;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/network/interceptor/SimpleLoggingInterceptor;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v1, Lcom/samsung/android/app/music/network/interceptor/MusicServerMandatoryHeaderInterceptor;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/network/interceptor/MusicServerMandatoryHeaderInterceptor;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v1, Lcom/samsung/android/app/music/network/interceptor/MusicServerRouterInterceptor;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/network/interceptor/MusicServerRouterInterceptor;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    new-instance v1, Lcom/samsung/android/app/music/network/interceptor/MusicServerMandatoryQueryInterceptor;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/network/interceptor/MusicServerMandatoryQueryInterceptor;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
