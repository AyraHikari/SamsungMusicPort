.class public abstract Lcom/samsung/android/sdk/ppmt/network/request/NetworkJSonRequest;
.super Lcom/samsung/android/sdk/ppmt/network/request/NetworkRequest;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String; = "NetworkJSonRequest"


# instance fields
.field protected a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/network/request/NetworkRequest;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/network/request/NetworkJSonRequest;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "basics"

    .line 36
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "basics"

    .line 37
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    .line 39
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    const-string v1, "mcc"

    .line 43
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 44
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/network/request/NetworkJSonRequest;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/sdk/ppmt/common/DeviceInfo;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mcc"

    if-nez v1, :cond_1

    const-string v1, ""

    .line 45
    :cond_1
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const-string v1, "nmcc"

    .line 47
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 48
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/network/request/NetworkJSonRequest;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/sdk/ppmt/common/DeviceInfo;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "nmcc"

    if-nez v1, :cond_3

    const-string v1, ""

    .line 49
    :cond_3
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    const-string v1, "cc"

    .line 51
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 52
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/network/request/NetworkJSonRequest;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->A()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cc"

    if-nez v1, :cond_5

    const-string v1, ""

    .line 53
    :cond_5
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    const-string v1, "basics"

    .line 56
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/PpmtInternalException$InvalidDataException;
        }
    .end annotation

    .line 129
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/network/request/NetworkJSonRequest;->e()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 134
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/samsung/android/sdk/ppmt/exception/PpmtInternalException$InvalidDataException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/network/request/NetworkJSonRequest;->a:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 65
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/network/request/NetworkJSonRequest;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->o()Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->p()Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->s()Ljava/lang/String;

    move-result-object v3

    .line 69
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->q()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 76
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "ptype"

    .line 77
    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "aid"

    .line 78
    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "uid"

    .line 79
    invoke-virtual {v4, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ppmtid"

    .line 80
    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ids"

    .line 82
    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/network/request/NetworkJSonRequest;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/ppmt/common/TestModeManager;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "test"

    .line 86
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/common/TestModeManager;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-void

    .line 72
    :cond_1
    sget-object p1, Lcom/samsung/android/sdk/ppmt/network/request/NetworkJSonRequest;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mandatory data is empty : ptype("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), aid("

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), ppmtId("

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance p1, Lcom/samsung/android/sdk/ppmt/exception/PpmtInternalException$InvalidDataException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/ppmt/exception/PpmtInternalException$InvalidDataException;-><init>()V

    throw p1

    .line 61
    :cond_2
    sget-object p1, Lcom/samsung/android/sdk/ppmt/network/request/NetworkJSonRequest;->b:Ljava/lang/String;

    const-string v0, "fail to create network request. context null"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance p1, Lcom/samsung/android/sdk/ppmt/exception/PpmtInternalException$InvalidDataException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/ppmt/exception/PpmtInternalException$InvalidDataException;-><init>()V

    throw p1
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/samsung/android/sdk/ppmt/exception/PpmtInternalException$InvalidDataException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/network/request/NetworkJSonRequest;->a:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/network/request/NetworkJSonRequest;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->n()Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->o()Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->p()Ljava/lang/String;

    move-result-object v3

    .line 100
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->s()Ljava/lang/String;

    move-result-object v4

    .line 101
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->q()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 108
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "pid"

    .line 109
    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ptype"

    .line 110
    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "aid"

    .line 111
    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "uid"

    .line 112
    invoke-virtual {v5, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ppmtid"

    .line 113
    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ids"

    .line 115
    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/network/request/NetworkJSonRequest;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/ppmt/common/TestModeManager;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "test"

    .line 119
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/common/TestModeManager;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-void

    .line 104
    :cond_1
    sget-object p1, Lcom/samsung/android/sdk/ppmt/network/request/NetworkJSonRequest;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mandatory data is empty : pid("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), ptype("

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), aid("

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), ppmtId("

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance p1, Lcom/samsung/android/sdk/ppmt/exception/PpmtInternalException$InvalidDataException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/ppmt/exception/PpmtInternalException$InvalidDataException;-><init>()V

    throw p1

    .line 92
    :cond_2
    sget-object p1, Lcom/samsung/android/sdk/ppmt/network/request/NetworkJSonRequest;->b:Ljava/lang/String;

    const-string v0, "fail to create network request. context null"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    new-instance p1, Lcom/samsung/android/sdk/ppmt/exception/PpmtInternalException$InvalidDataException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/ppmt/exception/PpmtInternalException$InvalidDataException;-><init>()V

    throw p1
.end method

.method public abstract d()Z
.end method

.method public abstract e()Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/PpmtInternalException$InvalidDataException;
        }
    .end annotation
.end method
