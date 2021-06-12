.class Lcom/samsung/android/sdk/smp/marketing/NotificationMarketingParser;
.super Lcom/samsung/android/sdk/smp/marketing/MarketingParser;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;-><init>()V

    return-void
.end method

.method private a(Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 119
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "contentTitle"

    .line 123
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, v1}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketingParser;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "contentText"

    .line 125
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, v1}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketingParser;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "subContentText"

    .line 127
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 128
    invoke-virtual {p2, p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, v1}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketingParser;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->f(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    .line 120
    :cond_3
    new-instance p1, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p1
.end method

.method private a(Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException;,
            Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;
        }
    .end annotation

    .line 134
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    if-eqz p2, :cond_a

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "flip_f"

    .line 138
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "flip_e"

    .line 139
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/smp/marketing/MarketingData;->a:[Ljava/lang/String;

    invoke-static {p1, p3, v0}, Lcom/samsung/android/sdk/smp/common/FileIOUtil;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "largeIcon"

    .line 156
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->h(Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    const-string v0, "smallIcon"

    .line 158
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->g(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    if-eqz p1, :cond_4

    const-string v0, "bigPicture"

    .line 164
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 165
    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->i(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const-string v0, "banner"

    .line 166
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 167
    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->j(Ljava/lang/String;)V

    goto :goto_3

    .line 162
    :cond_4
    new-instance p1, Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p1

    :cond_5
    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_1
    const/16 v2, 0xa

    if-gt v1, v2, :cond_9

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/smp/marketing/MarketingData;->a:[Ljava/lang/String;

    invoke-static {p1, v2, v3}, Lcom/samsung/android/sdk/smp/common/FileIOUtil;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    if-eq v1, v0, :cond_6

    goto :goto_3

    .line 144
    :cond_6
    new-instance p1, Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p1

    :cond_7
    const-string v3, "flip_f"

    .line 148
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 149
    invoke-virtual {p2, v2}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->k(Ljava/lang/String;)V

    goto :goto_2

    .line 151
    :cond_8
    invoke-virtual {p2, v2}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->l(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_9
    :goto_3
    return-void

    .line 135
    :cond_a
    new-instance p1, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/marketing/Marketing;Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException;
        }
    .end annotation

    .line 22
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/marketing/Marketing;Lorg/json/JSONObject;)V

    .line 23
    move-object p1, p2

    check-cast p1, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;

    .line 25
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "f"

    .line 26
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->e(I)V

    const-string v1, "e"

    .line 27
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->f(I)V

    const-string v0, "fa"

    .line 29
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 30
    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->o()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    const-string v1, "fp"

    .line 31
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "e"

    .line 32
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->i(I)V

    .line 33
    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->B()I

    move-result v1

    if-lez v1, :cond_0

    if-eqz v0, :cond_1

    const-string v1, "e"

    .line 38
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->k(I)V

    goto :goto_0

    .line 34
    :cond_0
    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketingParser;->a:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->c()Ljava/lang/String;

    move-result-object p3

    const-string v0, "invalid flipping period"

    invoke-static {p1, p3, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance p1, Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p1

    .line 41
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->n()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    const-string v1, "fp"

    .line 42
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "f"

    .line 43
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->h(I)V

    .line 44
    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->A()I

    move-result v1

    if-lez v1, :cond_2

    if-eqz v0, :cond_3

    const-string v1, "f"

    .line 49
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->j(I)V

    goto :goto_1

    .line 45
    :cond_2
    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketingParser;->a:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->c()Ljava/lang/String;

    move-result-object p3

    const-string v0, "invalid flipping period"

    invoke-static {p1, p3, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance p1, Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p1

    :cond_3
    :goto_1
    const-string v0, "chan"

    const/4 v1, 0x2

    .line 53
    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_4

    if-eq p3, v1, :cond_4

    const/4 p3, 0x2

    .line 57
    :cond_4
    invoke-virtual {p1, p3}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->g(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 59
    sget-object p3, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketingParser;->a:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->c()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid userdata. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p2, p1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance p1, Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p1
.end method

.method a(Lcom/samsung/android/sdk/smp/marketing/Marketing;Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException;,
            Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 71
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;

    :try_start_0
    const-string v1, "ticker"

    .line 73
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v3, " "

    .line 74
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->c(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->n()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->o()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 78
    :goto_0
    sget-object v5, Lcom/samsung/android/sdk/smp/marketing/MarketingData$Notification;->a:[[Ljava/lang/String;

    aget-object v5, v5, v1

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 79
    sget-object v5, Lcom/samsung/android/sdk/smp/marketing/MarketingData$Notification;->a:[[Ljava/lang/String;

    aget-object v5, v5, v1

    aget-object v5, v5, v4

    invoke-direct {p0, v0, p2, v5}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketingParser;->a(Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;Lorg/json/JSONObject;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 81
    :cond_0
    :goto_1
    sget-object v1, Lcom/samsung/android/sdk/smp/marketing/MarketingData$Notification;->b:[[Ljava/lang/String;

    aget-object v1, v1, v2

    array-length v1, v1

    if-ge v3, v1, :cond_1

    .line 82
    sget-object v1, Lcom/samsung/android/sdk/smp/marketing/MarketingData$Notification;->b:[[Ljava/lang/String;

    aget-object v1, v1, v2

    aget-object v1, v1, v3

    invoke-direct {p0, v0, p2, v1}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketingParser;->a(Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;Lorg/json/JSONObject;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 85
    :cond_1
    invoke-static {p2}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->a(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object p2

    const-string v1, "1"

    .line 86
    invoke-static {p2, v1}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->a(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 90
    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->a(Ljava/util/ArrayList;)V

    return-void

    .line 87
    :cond_2
    sget-object p2, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketingParser;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fail to parse resource. invalid landing page"

    invoke-static {p2, v0, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance p2, Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p2}, Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p2

    .line 93
    sget-object v0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketingParser;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->c()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to parse resource. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance p1, Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p1

    .line 68
    :cond_3
    new-instance p1, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p1
.end method

.method public b(Landroid/content/Context;Lcom/samsung/android/sdk/smp/marketing/Marketing;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException;,
            Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 105
    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/smp/marketing/MarketingData;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 106
    check-cast p2, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;

    .line 108
    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->n()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->o()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 109
    :goto_0
    sget-object v4, Lcom/samsung/android/sdk/smp/marketing/MarketingData$Notification;->c:[[Ljava/lang/String;

    aget-object v4, v4, v0

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 110
    sget-object v4, Lcom/samsung/android/sdk/smp/marketing/MarketingData$Notification;->c:[[Ljava/lang/String;

    aget-object v4, v4, v0

    aget-object v4, v4, v3

    invoke-direct {p0, p1, p2, v4}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketingParser;->a(Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 112
    :cond_0
    :goto_1
    sget-object v0, Lcom/samsung/android/sdk/smp/marketing/MarketingData$Notification;->d:[[Ljava/lang/String;

    aget-object v0, v0, v1

    array-length v0, v0

    if-ge v2, v0, :cond_1

    .line 113
    sget-object v0, Lcom/samsung/android/sdk/smp/marketing/MarketingData$Notification;->d:[[Ljava/lang/String;

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketingParser;->a(Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 102
    :cond_2
    new-instance p1, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p1
.end method
