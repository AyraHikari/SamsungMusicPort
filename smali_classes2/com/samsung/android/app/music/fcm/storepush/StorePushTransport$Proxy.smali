.class public Lcom/samsung/android/app/music/fcm/storepush/StorePushTransport$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/fcm/storepush/StorePushTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# static fields
.field private static final BASE_URL:Ljava/lang/String; = "https://log.glb.samsungmilkradio.com"

.field private static transport:Lcom/samsung/android/app/music/fcm/storepush/StorePushTransport;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/fcm/storepush/StorePushTransport;
    .locals 2

    .line 33
    sget-object v0, Lcom/samsung/android/app/music/fcm/storepush/StorePushTransport$Proxy;->transport:Lcom/samsung/android/app/music/fcm/storepush/StorePushTransport;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "https://log.glb.samsungmilkradio.com"

    .line 35
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 36
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->a(Z)Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/network/interceptor/MusicServerApiCallControlInterceptor;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/network/interceptor/MusicServerApiCallControlInterceptor;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->a(Lokhttp3/Interceptor;)Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/network/interceptor/MusicServerMandatoryHeaderInterceptor;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/network/interceptor/MusicServerMandatoryHeaderInterceptor;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->a(Lokhttp3/Interceptor;)Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;

    move-result-object p0

    const-class v0, Lcom/samsung/android/app/music/fcm/storepush/StorePushTransport;

    .line 39
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushTransport;

    sput-object p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushTransport$Proxy;->transport:Lcom/samsung/android/app/music/fcm/storepush/StorePushTransport;

    .line 41
    :cond_0
    sget-object p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushTransport$Proxy;->transport:Lcom/samsung/android/app/music/fcm/storepush/StorePushTransport;

    return-object p0
.end method
