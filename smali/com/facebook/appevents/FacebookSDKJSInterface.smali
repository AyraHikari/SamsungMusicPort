.class Lcom/facebook/appevents/FacebookSDKJSInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final PARAMETER_FBSDK_PIXEL_REFERRAL:Ljava/lang/String; = "_fb_pixel_referral_id"

.field private static final PROTOCOL:Ljava/lang/String; = "fbmq-0.1"

.field public static final TAG:Ljava/lang/String; = "FacebookSDKJSInterface"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/facebook/appevents/FacebookSDKJSInterface;->context:Landroid/content/Context;

    return-void
.end method

.method private static jsonStringToBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .line 58
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-static {v0}, Lcom/facebook/appevents/FacebookSDKJSInterface;->jsonToBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 63
    :catch_0
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0
.end method

.method private static jsonToBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 46
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 47
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 48
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 50
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 51
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getProtocol()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "fbmq-0.1"

    return-object v0
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    if-nez p1, :cond_0

    .line 69
    sget-object p1, Lcom/facebook/LoggingBehavior;->DEVELOPER_ERRORS:Lcom/facebook/LoggingBehavior;

    sget-object p2, Lcom/facebook/appevents/FacebookSDKJSInterface;->TAG:Ljava/lang/String;

    const-string p3, "Can\'t bridge an event without a referral Pixel ID. Check your webview Pixel configuration"

    invoke-static {p1, p2, p3}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/facebook/appevents/FacebookSDKJSInterface;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    .line 76
    invoke-static {p3}, Lcom/facebook/appevents/FacebookSDKJSInterface;->jsonStringToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p3

    const-string v1, "_fb_pixel_referral_id"

    .line 77
    invoke-virtual {p3, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0, p2, p3}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
