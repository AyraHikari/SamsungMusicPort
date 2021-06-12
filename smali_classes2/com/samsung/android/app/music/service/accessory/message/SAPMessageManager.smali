.class public Lcom/samsung/android/app/music/service/accessory/message/SAPMessageManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/accessory/message/SAPMessageManager$OnHandleSAPMessageListener;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "SAPMessageManager"


# instance fields
.field private b:Lcom/samsung/android/app/music/service/accessory/message/SAPMessageManager$OnHandleSAPMessageListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/music/service/accessory/message/SAPMessageManager$OnHandleSAPMessageListener;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v0, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageManager;->a:Ljava/lang/String;

    const-string v1, "SAPMessageManager()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iput-object p1, p0, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageManager;->b:Lcom/samsung/android/app/music/service/accessory/message/SAPMessageManager$OnHandleSAPMessageListener;

    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    :try_start_0
    const-string v0, "msgId"

    .line 59
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 61
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 69
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "account-rsp"

    .line 70
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageManager;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v1, "token"

    .line 73
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "dummy"

    .line 72
    :cond_0
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "email"

    .line 75
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p2, ""

    .line 74
    :cond_1
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    iget-object p1, p0, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageManager;->b:Lcom/samsung/android/app/music/service/accessory/message/SAPMessageManager$OnHandleSAPMessageListener;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageManager$OnHandleSAPMessageListener;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 79
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a([B)V
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 42
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "msgId"

    .line 43
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageManager;->b:Lcom/samsung/android/app/music/service/accessory/message/SAPMessageManager$OnHandleSAPMessageListener;

    invoke-interface {v1, v0, p1}, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageManager$OnHandleSAPMessageListener;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 46
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method
