.class public Lcom/samsung/android/sdk/smp/data/DataManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "DataManager"

.field private static b:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lorg/json/JSONObject;
    .locals 4

    .line 265
    invoke-static {}, Lcom/samsung/android/sdk/smp/common/TestModeUtil;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 267
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "devicename"

    .line 268
    invoke-static {}, Lcom/samsung/android/sdk/smp/common/TestModeUtil;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 271
    sget-object v2, Lcom/samsung/android/sdk/smp/data/DataManager;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    return-object v1
.end method

.method public static a(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidDataException;
        }
    .end annotation

    .line 125
    new-instance v0, Lcom/samsung/android/sdk/smp/storage/PrefManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/smp/storage/PrefManager;-><init>(Landroid/content/Context;)V

    .line 126
    invoke-static {}, Lcom/samsung/android/sdk/smp/common/GlobalData;->a()Lcom/samsung/android/sdk/smp/common/GlobalData;

    move-result-object v1

    .line 128
    invoke-static {}, Lcom/samsung/android/sdk/smp/common/DeviceInfo;->h()Ljava/lang/String;

    move-result-object v2

    .line 129
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/DeviceInfo;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 130
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/DeviceInfo;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 131
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/DeviceInfo;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 132
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/DeviceInfo;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    .line 134
    invoke-static {p0, v7}, Lcom/samsung/android/sdk/smp/common/DeviceInfo;->a(Landroid/content/Context;I)Z

    move-result v8

    xor-int/2addr v8, v7

    const/4 v9, 0x2

    .line 135
    invoke-static {p0, v9}, Lcom/samsung/android/sdk/smp/common/DeviceInfo;->a(Landroid/content/Context;I)Z

    move-result v9

    xor-int/2addr v7, v9

    .line 137
    invoke-virtual {v1, p0}, Lcom/samsung/android/sdk/smp/common/GlobalData;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 138
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 142
    invoke-virtual {v1, p0}, Lcom/samsung/android/sdk/smp/common/GlobalData;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 148
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    const-string v11, "initsts"

    .line 149
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->i()J

    move-result-wide v12

    invoke-virtual {v10, v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v11, "dcc"

    if-nez v2, :cond_0

    const-string v2, ""

    .line 150
    :cond_0
    invoke-virtual {v10, v11, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "lc"

    .line 151
    invoke-static {}, Lcom/samsung/android/sdk/smp/common/DeviceInfo;->b()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "os"

    .line 153
    invoke-static {}, Lcom/samsung/android/sdk/smp/common/DeviceInfo;->e()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "osv"

    .line 154
    invoke-static {}, Lcom/samsung/android/sdk/smp/common/DeviceInfo;->f()I

    move-result v11

    invoke-virtual {v10, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "mcc"

    if-nez v3, :cond_1

    const-string v3, ""

    .line 156
    :cond_1
    invoke-virtual {v10, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "nmcc"

    if-nez v4, :cond_2

    const-string v4, ""

    .line 157
    :cond_2
    invoke-virtual {v10, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "mnc"

    if-nez v5, :cond_3

    const-string v5, ""

    .line 158
    :cond_3
    invoke-virtual {v10, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "nmnc"

    if-nez v6, :cond_4

    const-string v6, ""

    .line 159
    :cond_4
    invoke-virtual {v10, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "model"

    .line 160
    invoke-static {}, Lcom/samsung/android/sdk/smp/common/DeviceInfo;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "sdkv"

    .line 162
    invoke-static {}, Lcom/samsung/android/sdk/smp/common/DeviceInfo;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "appv"

    .line 163
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/DeviceInfo;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v10, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "notice"

    .line 166
    invoke-virtual {p0, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "marketing"

    .line 167
    invoke-virtual {p0, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "channel"

    .line 168
    invoke-virtual {v10, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "confv"

    .line 170
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->t()I

    move-result v2

    invoke-virtual {v10, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "pid"

    .line 171
    invoke-virtual {v10, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "ptype"

    .line 172
    invoke-virtual {v10, p0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "uid"

    .line 174
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "optin"

    .line 175
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->g()Z

    move-result v1

    invoke-virtual {v10, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p0, "optintime"

    .line 176
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->h()J

    move-result-wide v0

    invoke-virtual {v10, p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-object v10

    .line 144
    :cond_5
    sget-object p0, Lcom/samsung/android/sdk/smp/data/DataManager;->a:Ljava/lang/String;

    const-string v0, "pid is null"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    new-instance p0, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidDataException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidDataException;-><init>()V

    throw p0

    .line 139
    :cond_6
    sget-object p0, Lcom/samsung/android/sdk/smp/data/DataManager;->a:Ljava/lang/String;

    const-string v0, "ptype is null"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    new-instance p0, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidDataException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidDataException;-><init>()V

    throw p0
.end method

.method static a(Landroid/content/Context;J)V
    .locals 3

    .line 318
    new-instance v0, Lcom/samsung/android/sdk/smp/task/STask;

    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->UPLOAD_CLIENTS:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/smp/task/STask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$Action;Landroid/os/Bundle;)V

    invoke-static {p0, v0, p1, p2}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;J)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3

    .line 346
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/storage/DBHandler;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 348
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 349
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 350
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 352
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    :cond_1
    return-void
.end method

.method public static b(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 6

    .line 182
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/storage/DBHandler;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 184
    sget-object p0, Lcom/samsung/android/sdk/smp/data/DataManager;->a:Ljava/lang/String;

    const-string v1, "fail to get marketing data. db open fail"

    invoke-static {p0, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 189
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 190
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->h()Ljava/util/Map;

    move-result-object v2

    .line 191
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 192
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 195
    :cond_1
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_2

    const-string v5, ""

    .line 198
    :cond_2
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 205
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 202
    :try_start_1
    sget-object v2, Lcom/samsung/android/sdk/smp/data/DataManager;->a:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    return-object v0

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    throw v0
.end method

.method public static b()V
    .locals 1

    const/4 v0, 0x1

    .line 308
    sput-boolean v0, Lcom/samsung/android/sdk/smp/data/DataManager;->b:Z

    return-void
.end method

.method public static c(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 1

    .line 210
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/storage/DBHandler;

    move-result-object p0

    if-nez p0, :cond_0

    .line 212
    sget-object p0, Lcom/samsung/android/sdk/smp/data/DataManager;->a:Ljava/lang/String;

    const-string v0, "fail to get app start data. db open fail"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 217
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->j()Lorg/json/JSONArray;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    throw v0
.end method

.method public static d(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 1

    .line 224
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/storage/DBHandler;

    move-result-object p0

    if-nez p0, :cond_0

    .line 226
    sget-object p0, Lcom/samsung/android/sdk/smp/data/DataManager;->a:Ljava/lang/String;

    const-string v0, "fail to get sessions. db open fail"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 231
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->n()Lorg/json/JSONArray;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    throw v0
.end method

.method public static e(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 7

    .line 238
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/storage/DBHandler;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 240
    sget-object p0, Lcom/samsung/android/sdk/smp/data/DataManager;->a:Ljava/lang/String;

    const-string v1, "fail to get marketing data. db open fail"

    invoke-static {p0, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 245
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 246
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->e()Ljava/util/Map;

    move-result-object v2

    .line 247
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 248
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 249
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "mid"

    .line 250
    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "feedback"

    .line 251
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 252
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 260
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 257
    :try_start_1
    sget-object v2, Lcom/samsung/android/sdk/smp/data/DataManager;->a:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    return-object v0

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    throw v0
.end method

.method public static f(Landroid/content/Context;)V
    .locals 9

    .line 279
    new-instance v0, Lcom/samsung/android/sdk/smp/storage/PrefManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/smp/storage/PrefManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 280
    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->d(I)V

    .line 281
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->j()J

    move-result-wide v1

    .line 282
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->u()J

    move-result-wide v3

    .line 283
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/32 v7, 0xea60

    mul-long v3, v3, v7

    add-long/2addr v1, v3

    cmp-long v0, v5, v1

    if-ltz v0, :cond_0

    .line 284
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x7530

    add-long/2addr v0, v2

    invoke-static {p0, v0, v1}, Lcom/samsung/android/sdk/smp/data/DataManager;->a(Landroid/content/Context;J)V

    goto :goto_0

    .line 286
    :cond_0
    invoke-static {p0, v1, v2}, Lcom/samsung/android/sdk/smp/data/DataManager;->a(Landroid/content/Context;J)V

    :goto_0
    return-void
.end method

.method public static g(Landroid/content/Context;)V
    .locals 9

    .line 291
    new-instance v0, Lcom/samsung/android/sdk/smp/storage/PrefManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/smp/storage/PrefManager;-><init>(Landroid/content/Context;)V

    .line 292
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->j()J

    move-result-wide v1

    .line 293
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->u()J

    move-result-wide v3

    .line 294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/32 v7, 0xea60

    mul-long v3, v3, v7

    add-long/2addr v1, v3

    cmp-long v0, v5, v1

    if-ltz v0, :cond_0

    .line 295
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/data/DataManager;->h(Landroid/content/Context;)V

    goto :goto_0

    .line 297
    :cond_0
    invoke-static {p0, v1, v2}, Lcom/samsung/android/sdk/smp/data/DataManager;->a(Landroid/content/Context;J)V

    :goto_0
    return-void
.end method

.method public static h(Landroid/content/Context;)V
    .locals 3

    .line 302
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/data/DataManager;->j(Landroid/content/Context;)V

    .line 303
    new-instance v0, Lcom/samsung/android/sdk/smp/task/STask;

    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->UPLOAD_CLIENTS:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/smp/task/STask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$Action;Landroid/os/Bundle;)V

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->b(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;)V

    .line 304
    new-instance v0, Lcom/samsung/android/sdk/smp/storage/PrefManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/smp/storage/PrefManager;-><init>(Landroid/content/Context;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->c(J)V

    return-void
.end method

.method public static i(Landroid/content/Context;)V
    .locals 5

    .line 312
    sget-boolean v0, Lcom/samsung/android/sdk/smp/data/DataManager;->b:Z

    if-eqz v0, :cond_0

    .line 313
    new-instance v0, Lcom/samsung/android/sdk/smp/task/STask;

    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->UPLOAD_CLIENTS:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/smp/task/STask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$Action;Landroid/os/Bundle;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x2bf20

    add-long/2addr v1, v3

    invoke-static {p0, v0, v1, v2}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;J)V

    :cond_0
    return-void
.end method

.method static j(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    .line 322
    sput-boolean v0, Lcom/samsung/android/sdk/smp/data/DataManager;->b:Z

    .line 323
    new-instance v0, Lcom/samsung/android/sdk/smp/task/STask;

    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->UPLOAD_CLIENTS:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/smp/task/STask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$Action;Landroid/os/Bundle;)V

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->c(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;)V

    return-void
.end method

.method public static k(Landroid/content/Context;)V
    .locals 3

    .line 327
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/data/DataManager;->j(Landroid/content/Context;)V

    .line 328
    new-instance v0, Lcom/samsung/android/sdk/smp/storage/PrefManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/smp/storage/PrefManager;-><init>(Landroid/content/Context;)V

    .line 329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->c(J)V

    .line 331
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/data/DataManager;->l(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 333
    new-instance v0, Lcom/samsung/android/sdk/smp/data/ClientsInitialHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/smp/data/ClientsInitialHandler;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/smp/data/ClientsNormalHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/smp/data/ClientsNormalHandler;-><init>(Landroid/content/Context;)V

    .line 335
    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/data/ClientsRequestHandler;->a()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 336
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/data/ClientsRequestHandler;->e()V

    :cond_1
    return-void
.end method

.method public static l(Landroid/content/Context;)Z
    .locals 4

    .line 341
    new-instance v0, Lcom/samsung/android/sdk/smp/storage/PrefManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/smp/storage/PrefManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->i()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static m(Landroid/content/Context;)V
    .locals 0

    .line 357
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/storage/DBHandler;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 359
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->i()V

    .line 360
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    :cond_0
    return-void
.end method
