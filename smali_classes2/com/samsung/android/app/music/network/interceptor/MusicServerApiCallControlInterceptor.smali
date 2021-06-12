.class public Lcom/samsung/android/app/music/network/interceptor/MusicServerApiCallControlInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/network/interceptor/MusicServerApiCallControlInterceptor$ApiNetworkConnectionController;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/samsung/android/app/music/network/interceptor/MusicServerApiCallControlInterceptor$ApiNetworkConnectionController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 36
    new-instance v0, Lcom/samsung/android/app/music/network/interceptor/MusicServerApiCallControlInterceptor$ApiNetworkConnectionController$Impl;

    invoke-direct {v0}, Lcom/samsung/android/app/music/network/interceptor/MusicServerApiCallControlInterceptor$ApiNetworkConnectionController$Impl;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/network/interceptor/MusicServerApiCallControlInterceptor;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/network/interceptor/MusicServerApiCallControlInterceptor$ApiNetworkConnectionController;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/network/interceptor/MusicServerApiCallControlInterceptor$ApiNetworkConnectionController;)V
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerApiCallControlInterceptor;->a:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerApiCallControlInterceptor;->b:Lcom/samsung/android/app/music/network/interceptor/MusicServerApiCallControlInterceptor$ApiNetworkConnectionController;

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 3
    .param p1    # Lokhttp3/Interceptor$Chain;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->a()Lokhttp3/Request;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerApiCallControlInterceptor;->b:Lcom/samsung/android/app/music/network/interceptor/MusicServerApiCallControlInterceptor$ApiNetworkConnectionController;

    iget-object v2, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerApiCallControlInterceptor;->a:Landroid/content/Context;

    invoke-interface {v1, v2, v0}, Lcom/samsung/android/app/music/network/interceptor/MusicServerApiCallControlInterceptor$ApiNetworkConnectionController;->a(Landroid/content/Context;Lokhttp3/Request;)V

    .line 49
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->a(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
