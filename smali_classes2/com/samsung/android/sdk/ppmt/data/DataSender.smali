.class public Lcom/samsung/android/sdk/ppmt/data/DataSender;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/ppmt/data/DataSender$TrackingData;,
        Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "DataSender"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Lorg/json/JSONObject;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/ppmt/data/DataSender$TrackingData;",
            ">;Z)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 332
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 334
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 335
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 336
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    const-string v4, "deregi"

    .line 339
    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 340
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;

    .line 341
    iget-object v6, p3, Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;->c:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v8, 0xc51

    if-eq v7, v8, :cond_1

    const/16 v5, 0xc70

    if-eq v7, v5, :cond_0

    goto :goto_1

    :cond_0
    const-string v5, "cs"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const-string v7, "bs"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v4, 0x0

    :cond_2
    :goto_1
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 346
    :pswitch_0
    iget-object v4, p3, Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;->a:Ljava/lang/String;

    iget-object p3, p3, Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;->b:Ljava/lang/String;

    invoke-virtual {v2, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 343
    :pswitch_1
    iget-object v4, p3, Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;->a:Ljava/lang/String;

    iget-object p3, p3, Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;->b:Ljava/lang/String;

    invoke-virtual {v1, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_3
    const-string p1, "bAgreement"

    .line 351
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "bAgreement"

    .line 352
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    const-string p1, "bAgreementDate"

    .line 354
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "bAgreementDate"

    .line 355
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->z()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 358
    :cond_5
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result p0

    if-lez p0, :cond_6

    const-string p0, "basics"

    .line 359
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 360
    :cond_6
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result p0

    if-lez p0, :cond_7

    const-string p0, "customs"

    .line 361
    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    const-string p0, "dts"

    .line 363
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_c

    .line 366
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/ppmt/data/DataSender$TrackingData;

    .line 367
    iget-object p3, p1, Lcom/samsung/android/sdk/ppmt/data/DataSender$TrackingData;->b:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x68ac462

    if-eq v1, v2, :cond_8

    goto :goto_3

    :cond_8
    const-string v1, "start"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9

    const/4 p3, 0x0

    goto :goto_4

    :cond_9
    :goto_3
    const/4 p3, -0x1

    :goto_4
    if-eqz p3, :cond_a

    goto :goto_2

    .line 369
    :cond_a
    iget-object p1, p1, Lcom/samsung/android/sdk/ppmt/data/DataSender$TrackingData;->c:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    goto :goto_2

    .line 373
    :cond_b
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_c

    const-string p0, "start"

    .line 374
    invoke-virtual {v0, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    .line 378
    sget-object p1, Lcom/samsung/android/sdk/ppmt/data/DataSender;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "json parsing error. getUpdatedDataBody. "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_5
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Ljava/util/ArrayList;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/ppmt/data/DataSender$TrackingData;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    .line 386
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/ppmt/data/DataSender$TrackingData;

    .line 387
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/samsung/android/sdk/ppmt/data/DataSender$TrackingData;->c:Ljava/lang/String;

    .line 388
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    goto :goto_0

    :cond_0
    const-string p0, "}"

    .line 391
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 396
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 397
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    :goto_1
    return-object p0
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 10

    .line 102
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/Ppmt;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    sget-object p0, Lcom/samsung/android/sdk/ppmt/data/DataSender;->a:Ljava/lang/String;

    const-string p1, "tracking data send. not initialized or tnc agreement is false."

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 108
    sget-object v0, Lcom/samsung/android/sdk/ppmt/data/DataSender;->a:Ljava/lang/String;

    const-string v1, "retry send tracking data."

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v0

    if-nez v0, :cond_2

    .line 113
    sget-object p0, Lcom/samsung/android/sdk/ppmt/data/DataSender;->a:Ljava/lang/String;

    const-string p1, "send tracking data. db handler returns null."

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 116
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c()Ljava/util/ArrayList;

    move-result-object v1

    .line 117
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->d()Ljava/util/ArrayList;

    move-result-object v2

    .line 118
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->e()Ljava/util/ArrayList;

    move-result-object v3

    .line 120
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->w()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 121
    sget-object p0, Lcom/samsung/android/sdk/ppmt/data/DataSender;->a:Ljava/lang/String;

    const-string p1, "sendTracking data. dereg state."

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    return-void

    .line 126
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v4, v5

    if-gtz v4, :cond_4

    .line 130
    sget-object p0, Lcom/samsung/android/sdk/ppmt/data/DataSender;->a:Ljava/lang/String;

    const-string p1, "no tracking data to send."

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    return-void

    .line 139
    :cond_4
    invoke-static {v1}, Lcom/samsung/android/sdk/ppmt/data/DataSender;->a(Ljava/util/ArrayList;)Lorg/json/JSONObject;

    move-result-object v4

    .line 140
    invoke-static {v2}, Lcom/samsung/android/sdk/ppmt/data/DataSender;->b(Ljava/util/ArrayList;)Lorg/json/JSONObject;

    move-result-object v5

    .line 141
    invoke-static {v3}, Lcom/samsung/android/sdk/ppmt/data/DataSender;->c(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v6

    .line 142
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 144
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_5

    const-string v8, "loc"

    .line 145
    invoke-virtual {v7, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_6

    const-string v4, "iap"

    .line 147
    invoke-virtual {v7, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_7

    const-string v4, "uc"

    .line 149
    invoke-virtual {v7, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 151
    sget-object v5, Lcom/samsung/android/sdk/ppmt/data/DataSender;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get tracking data error. "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_7
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-wide/16 v5, -0x1

    if-lez v4, :cond_8

    .line 156
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/ppmt/data/DataSender$TrackingData;

    iget-wide v8, v1, Lcom/samsung/android/sdk/ppmt/data/DataSender$TrackingData;->a:J

    goto :goto_1

    :cond_8
    move-wide v8, v5

    .line 158
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 159
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/ppmt/data/DataSender$TrackingData;

    iget-wide v1, v1, Lcom/samsung/android/sdk/ppmt/data/DataSender$TrackingData;->a:J

    goto :goto_2

    :cond_9
    move-wide v1, v5

    .line 161
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_a

    .line 162
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/ppmt/data/DataSender$TrackingData;

    iget-wide v5, v3, Lcom/samsung/android/sdk/ppmt/data/DataSender$TrackingData;->a:J

    .line 164
    :cond_a
    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 167
    new-instance v3, Lcom/samsung/android/sdk/ppmt/network/request/TrackingRequest;

    invoke-direct {v3, p0, v7}, Lcom/samsung/android/sdk/ppmt/network/request/TrackingRequest;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    const/16 v4, 0x3c

    .line 168
    invoke-static {p0, v3, v4}, Lcom/samsung/android/sdk/ppmt/network/NetworkManager;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/network/request/NetworkRequest;I)Lcom/samsung/android/sdk/ppmt/network/NetworkResult;

    move-result-object v3

    .line 169
    iget-boolean v4, v3, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;->a:Z

    if-eqz v4, :cond_b

    .line 170
    sget-object p1, Lcom/samsung/android/sdk/ppmt/data/DataSender;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tracking data sending succeeded. Code:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", Message:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;->c:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->b(J)Z

    const-string p1, "send_collected_data"

    .line 172
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/data/DataManager;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    .line 175
    :cond_b
    sget-object v1, Lcom/samsung/android/sdk/ppmt/data/DataSender;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tracking data sending failed. Code:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;->b:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", Message:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget v1, v3, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;->b:I

    invoke-static {v1}, Lcom/samsung/android/sdk/ppmt/data/DataSender;->a(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 177
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/data/DataSender;->f(Landroid/content/Context;Z)V

    .line 180
    :cond_c
    :goto_3
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    return-void
.end method

.method private static a(I)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x1ce

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x230

    if-ne p0, v1, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static b(Ljava/util/ArrayList;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/ppmt/data/DataSender$TrackingData;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    .line 404
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/ppmt/data/DataSender$TrackingData;

    .line 405
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/samsung/android/sdk/ppmt/data/DataSender$TrackingData;->c:Ljava/lang/String;

    .line 406
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    goto :goto_0

    :cond_0
    const-string p0, "}"

    .line 409
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 414
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 415
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    :goto_1
    return-object p0
.end method

.method public static b(Landroid/content/Context;Z)V
    .locals 8

    .line 184
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/Ppmt;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    sget-object p0, Lcom/samsung/android/sdk/ppmt/data/DataSender;->a:Ljava/lang/String;

    const-string p1, "updated data send. not initialized or tnc agreement is false."

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 190
    sget-object v0, Lcom/samsung/android/sdk/ppmt/data/DataSender;->a:Ljava/lang/String;

    const-string v1, "retry send updated data."

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v0

    if-nez v0, :cond_2

    .line 195
    sget-object p0, Lcom/samsung/android/sdk/ppmt/data/DataSender;->a:Ljava/lang/String;

    const-string p1, "send updated data. db handler returns null."

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 198
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->g()J

    move-result-wide v1

    const-string v3, "start"

    .line 199
    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->w(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 201
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v4

    .line 203
    invoke-virtual {v4}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->w()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 204
    sget-object p0, Lcom/samsung/android/sdk/ppmt/data/DataSender;->a:Ljava/lang/String;

    const-string p1, "send updated data. dereg state."

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    return-void

    :cond_3
    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-gtz v1, :cond_4

    .line 210
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->t()Z

    move-result v1

    if-nez v1, :cond_4

    .line 211
    sget-object p0, Lcom/samsung/android/sdk/ppmt/data/DataSender;->a:Ljava/lang/String;

    const-string p1, "no updated data to send."

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    return-void

    .line 215
    :cond_4
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->h()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    .line 216
    invoke-static {p0, v1, v3, v2}, Lcom/samsung/android/sdk/ppmt/data/DataSender;->a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Lorg/json/JSONObject;

    move-result-object v5

    .line 219
    new-instance v6, Lcom/samsung/android/sdk/ppmt/network/request/UploadRequest;

    invoke-direct {v6, p0, v5}, Lcom/samsung/android/sdk/ppmt/network/request/UploadRequest;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    const/16 v5, 0x3c

    .line 220
    invoke-static {p0, v6, v5}, Lcom/samsung/android/sdk/ppmt/network/NetworkManager;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/network/request/NetworkRequest;I)Lcom/samsung/android/sdk/ppmt/network/NetworkResult;

    move-result-object v5

    .line 221
    iget-boolean v6, v5, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;->a:Z

    if-eqz v6, :cond_7

    .line 222
    sget-object p1, Lcom/samsung/android/sdk/ppmt/data/DataSender;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updated data sending succeeded. Code:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;->b:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Message:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;->c:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-virtual {v4}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->u()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->b(J)V

    .line 225
    invoke-virtual {v4, v2}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->b(Z)V

    .line 227
    :cond_5
    invoke-virtual {v4, v2}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Z)V

    .line 229
    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Ljava/util/ArrayList;)Z

    .line 231
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_6

    .line 232
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/ppmt/data/DataSender$TrackingData;

    iget-wide v1, p1, Lcom/samsung/android/sdk/ppmt/data/DataSender$TrackingData;->a:J

    .line 233
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c(J)Z

    :cond_6
    const-string p1, "send_updated_data"

    .line 235
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/data/DataManager;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 238
    :cond_7
    sget-object v1, Lcom/samsung/android/sdk/ppmt/data/DataSender;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updated data sending failed. Code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v5, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v5, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget v1, v5, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;->b:I

    invoke-static {v1}, Lcom/samsung/android/sdk/ppmt/data/DataSender;->a(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 240
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/data/DataSender;->e(Landroid/content/Context;Z)V

    .line 242
    :cond_8
    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    return-void
.end method

.method private static c(Ljava/util/ArrayList;)Lorg/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/ppmt/data/DataSender$TrackingData;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .line 421
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 422
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/ppmt/data/DataSender$TrackingData;

    .line 424
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, v1, Lcom/samsung/android/sdk/ppmt/data/DataSender$TrackingData;->c:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string v1, ""

    goto :goto_1

    :cond_0
    iget-object v1, v1, Lcom/samsung/android/sdk/ppmt/data/DataSender$TrackingData;->c:Ljava/lang/String;

    :goto_1
    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 426
    sget-object v2, Lcom/samsung/android/sdk/ppmt/data/DataSender;->a:Ljava/lang/String;

    const-string v3, "getAppUsageDataArray json error. "

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static c(Landroid/content/Context;Z)V
    .locals 8

    .line 246
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/Ppmt;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    sget-object v0, Lcom/samsung/android/sdk/ppmt/data/DataSender;->a:Ljava/lang/String;

    const-string v1, "cannot send reg data. tncAgree : false"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->w()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 253
    sget-object p0, Lcom/samsung/android/sdk/ppmt/data/DataSender;->a:Ljava/lang/String;

    const-string p1, "cannot send reg data. dereg state"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 257
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v1

    if-nez v1, :cond_2

    .line 259
    sget-object p0, Lcom/samsung/android/sdk/ppmt/data/DataSender;->a:Ljava/lang/String;

    const-string p1, "cannot send reg data. db null"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 264
    :cond_2
    :try_start_0
    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->i()Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_3

    .line 266
    sget-object p0, Lcom/samsung/android/sdk/ppmt/data/DataSender;->a:Ljava/lang/String;

    const-string p1, "fail to send force-reg. update data empty"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    return-void

    :cond_3
    :try_start_1
    const-string v3, "start"

    .line 269
    invoke-virtual {v1, v3}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->w(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    .line 271
    invoke-static {p0, v2, v3, v4}, Lcom/samsung/android/sdk/ppmt/data/DataSender;->a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Lorg/json/JSONObject;

    move-result-object v5

    .line 273
    new-instance v6, Lcom/samsung/android/sdk/ppmt/network/request/UploadRequest;

    invoke-direct {v6, p0, v5}, Lcom/samsung/android/sdk/ppmt/network/request/UploadRequest;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    const/16 v5, 0x3c

    .line 274
    invoke-static {p0, v6, v5}, Lcom/samsung/android/sdk/ppmt/network/NetworkManager;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/network/request/NetworkRequest;I)Lcom/samsung/android/sdk/ppmt/network/NetworkResult;

    move-result-object v5

    .line 275
    iget-boolean v6, v5, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;->a:Z

    if-eqz v6, :cond_5

    .line 276
    sget-object p1, Lcom/samsung/android/sdk/ppmt/data/DataSender;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send force-reg success. code:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;->b:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", msg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;->c:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Ljava/util/ArrayList;)Z

    .line 280
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 281
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/ppmt/data/DataSender$TrackingData;

    iget-wide v2, p1, Lcom/samsung/android/sdk/ppmt/data/DataSender$TrackingData;->a:J

    .line 282
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c(J)Z

    :cond_4
    const-string p1, "send_force_reg"

    .line 284
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/data/DataManager;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 286
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->b(J)V

    .line 287
    invoke-virtual {v0, v4}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Z)V

    goto :goto_0

    .line 289
    :cond_5
    sget-object v0, Lcom/samsung/android/sdk/ppmt/data/DataSender;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to send force-reg. code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v5, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v5, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget v0, v5, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;->b:I

    invoke-static {v0}, Lcom/samsung/android/sdk/ppmt/data/DataSender;->a(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 291
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/data/DataSender;->h(Landroid/content/Context;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 294
    :cond_6
    :goto_0
    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    throw p0
.end method

.method public static d(Landroid/content/Context;Z)V
    .locals 4

    .line 299
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v0

    .line 301
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->x()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 304
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v1

    if-nez v1, :cond_1

    .line 306
    sget-object p0, Lcom/samsung/android/sdk/ppmt/data/DataSender;->a:Ljava/lang/String;

    const-string p1, "send dereg. db handler returns null."

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 309
    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->j()Ljava/util/ArrayList;

    move-result-object v2

    .line 310
    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    if-nez v2, :cond_2

    .line 313
    sget-object p0, Lcom/samsung/android/sdk/ppmt/data/DataSender;->a:Ljava/lang/String;

    const-string p1, "send dereg. mandatory data is null."

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 316
    invoke-static {p0, v2, v1, v3}, Lcom/samsung/android/sdk/ppmt/data/DataSender;->a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Lorg/json/JSONObject;

    move-result-object v1

    .line 318
    new-instance v2, Lcom/samsung/android/sdk/ppmt/network/request/UploadRequest;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/sdk/ppmt/network/request/UploadRequest;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    const/16 v1, 0x3c

    .line 319
    invoke-static {p0, v2, v1}, Lcom/samsung/android/sdk/ppmt/network/NetworkManager;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/network/request/NetworkRequest;I)Lcom/samsung/android/sdk/ppmt/network/NetworkResult;

    move-result-object v1

    .line 320
    iget-boolean v2, v1, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;->a:Z

    if-eqz v2, :cond_3

    .line 321
    sget-object p1, Lcom/samsung/android/sdk/ppmt/data/DataSender;->a:Ljava/lang/String;

    const-string v1, "dereg success."

    invoke-static {p1, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "send_dereg"

    .line 322
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/data/DataManager;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 323
    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->d(Z)V

    .line 324
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/data/DataManager;->d(Landroid/content/Context;)V

    goto :goto_0

    .line 326
    :cond_3
    sget-object v0, Lcom/samsung/android/sdk/ppmt/data/DataSender;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dereg fail. Code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;->c:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/data/DataSender;->g(Landroid/content/Context;Z)V

    :goto_0
    return-void
.end method

.method private static e(Landroid/content/Context;Z)V
    .locals 5

    .line 442
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 445
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->h()I

    move-result p1

    add-int/2addr p1, v1

    .line 446
    sget-object v2, Lcom/samsung/android/sdk/ppmt/data/DataSender;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send updated data retry count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 448
    :goto_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->b(I)V

    const/4 v0, 0x3

    if-lt p1, v0, :cond_1

    .line 450
    sget-object p0, Lcom/samsung/android/sdk/ppmt/data/DataSender;->a:Ljava/lang/String;

    const-string p1, "over max retry : send updated data"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 454
    :cond_1
    new-instance p1, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;

    invoke-direct {p1}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;-><init>()V

    sget-object v0, Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;->SEND_UPDATED_DATA:Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;

    .line 455
    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;->a(Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;)Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;

    move-result-object p1

    const-string v0, "is_retry"

    .line 456
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;->a(Ljava/lang/String;Z)Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;

    move-result-object p1

    .line 457
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;->a()Lcom/samsung/android/sdk/ppmt/schedule/Job;

    move-result-object p1

    .line 458
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->c()Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x2bf20

    add-long/2addr v1, v3

    invoke-interface {v0, p0, p1, v1, v2}, Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/schedule/Job;J)V

    return-void
.end method

.method private static f(Landroid/content/Context;Z)V
    .locals 5

    .line 462
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 465
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->f()I

    move-result p1

    add-int/2addr p1, v1

    .line 466
    sget-object v2, Lcom/samsung/android/sdk/ppmt/data/DataSender;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send tracking data retry count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 468
    :goto_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(I)V

    const/4 v0, 0x3

    if-lt p1, v0, :cond_1

    .line 470
    sget-object p0, Lcom/samsung/android/sdk/ppmt/data/DataSender;->a:Ljava/lang/String;

    const-string p1, "over max retry : send tracking data"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 474
    :cond_1
    new-instance p1, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;

    invoke-direct {p1}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;-><init>()V

    sget-object v0, Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;->SEND_TRACKING_DATA:Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;

    .line 475
    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;->a(Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;)Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;

    move-result-object p1

    const-string v0, "is_retry"

    .line 476
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;->a(Ljava/lang/String;Z)Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;

    move-result-object p1

    .line 477
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;->a()Lcom/samsung/android/sdk/ppmt/schedule/Job;

    move-result-object p1

    .line 478
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->c()Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x2bf20

    add-long/2addr v1, v3

    invoke-interface {v0, p0, p1, v1, v2}, Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/schedule/Job;J)V

    return-void
.end method

.method private static g(Landroid/content/Context;Z)V
    .locals 5

    .line 482
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 485
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->j()I

    move-result p1

    add-int/2addr p1, v1

    .line 486
    sget-object v2, Lcom/samsung/android/sdk/ppmt/data/DataSender;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dereg retry count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 488
    :goto_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->c(I)V

    const/4 v0, 0x3

    if-lt p1, v0, :cond_1

    .line 490
    sget-object p0, Lcom/samsung/android/sdk/ppmt/data/DataSender;->a:Ljava/lang/String;

    const-string p1, "over max retry : dereg"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 494
    :cond_1
    new-instance p1, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;

    invoke-direct {p1}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;-><init>()V

    sget-object v0, Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;->SEND_DEREG_REQUEST:Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;

    .line 495
    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;->a(Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;)Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;

    move-result-object p1

    const-string v0, "is_retry"

    .line 496
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;->a(Ljava/lang/String;Z)Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;

    move-result-object p1

    .line 497
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;->a()Lcom/samsung/android/sdk/ppmt/schedule/Job;

    move-result-object p1

    .line 498
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->c()Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x2bf20

    add-long/2addr v1, v3

    invoke-interface {v0, p0, p1, v1, v2}, Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/schedule/Job;J)V

    return-void
.end method

.method private static h(Landroid/content/Context;Z)V
    .locals 5

    .line 502
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 505
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->l()I

    move-result p1

    add-int/2addr p1, v1

    .line 506
    sget-object v2, Lcom/samsung/android/sdk/ppmt/data/DataSender;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "force-reg retry count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 508
    :goto_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->d(I)V

    const/4 v0, 0x3

    if-lt p1, v0, :cond_1

    .line 510
    sget-object p0, Lcom/samsung/android/sdk/ppmt/data/DataSender;->a:Ljava/lang/String;

    const-string p1, "over max retry : force-reg"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 514
    :cond_1
    new-instance p1, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;

    invoke-direct {p1}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;-><init>()V

    sget-object v0, Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;->SEND_FORCE_REG_DATA:Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;

    .line 515
    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;->a(Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;)Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;

    move-result-object p1

    const-string v0, "is_retry"

    .line 516
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;->a(Ljava/lang/String;Z)Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;

    move-result-object p1

    .line 517
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;->a()Lcom/samsung/android/sdk/ppmt/schedule/Job;

    move-result-object p1

    .line 518
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->c()Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x2bf20

    add-long/2addr v1, v3

    invoke-interface {v0, p0, p1, v1, v2}, Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/schedule/Job;J)V

    return-void
.end method
