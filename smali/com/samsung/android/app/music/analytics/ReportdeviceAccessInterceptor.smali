.class public Lcom/samsung/android/app/music/analytics/ReportdeviceAccessInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/samsung/android/app/music/analytics/ReportdeviceAccessInterceptor;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->a()Lokhttp3/Request;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/samsung/android/app/music/analytics/ReportdeviceAccessInterceptor;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 35
    invoke-virtual {v0}, Lokhttp3/Request;->e()Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v2, "osType"

    const-string v3, "A"

    invoke-virtual {v0, v2, v3}, Lokhttp3/Request$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v2, "clientLangCode"

    .line 36
    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "appVersion"

    .line 37
    invoke-static {}, Lcom/samsung/android/app/music/util/AndroidUtils;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "osVersion"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 38
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "clientRequestTime"

    .line 39
    invoke-static {}, Lcom/samsung/android/app/music/util/AES;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "appType"

    const-string v2, "1"

    .line 40
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "platform"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "access_token"

    iget-object v2, p0, Lcom/samsung/android/app/music/analytics/ReportdeviceAccessInterceptor;->a:Landroid/content/Context;

    const-string v3, "NOLOGINUSR"

    .line 41
    invoke-static {v2, v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "60000"

    .line 42
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "deviceId"

    iget-object v2, p0, Lcom/samsung/android/app/music/analytics/ReportdeviceAccessInterceptor;->a:Landroid/content/Context;

    .line 43
    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "uniqueId"

    iget-object v2, p0, Lcom/samsung/android/app/music/analytics/ReportdeviceAccessInterceptor;->a:Landroid/content/Context;

    .line 44
    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "shopId"

    iget-object v2, p0, Lcom/samsung/android/app/music/analytics/ReportdeviceAccessInterceptor;->a:Landroid/content/Context;

    .line 45
    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "channelId"

    iget-object v2, p0, Lcom/samsung/android/app/music/analytics/ReportdeviceAccessInterceptor;->a:Landroid/content/Context;

    .line 46
    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->a()Lokhttp3/Request;

    move-result-object v0

    .line 47
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->a(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
