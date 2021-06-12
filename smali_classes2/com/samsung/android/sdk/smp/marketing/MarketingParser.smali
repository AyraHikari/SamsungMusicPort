.class abstract Lcom/samsung/android/sdk/smp/marketing/MarketingParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/smp/marketing/MarketingParser$AppData;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "MarketingParser"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/sdk/smp/marketing/Marketing;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smp/exception/InternalException$NotSupportedTypeException;,
            Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException;
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    if-ltz p4, :cond_1

    .line 75
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p3, "marketingType"

    .line 76
    invoke-virtual {v0, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 78
    invoke-static {p1, p2, p3, p4}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/sdk/smp/marketing/Marketing;

    move-result-object p2

    .line 79
    invoke-static {p2}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->a(Lcom/samsung/android/sdk/smp/marketing/Marketing;)Lcom/samsung/android/sdk/smp/marketing/MarketingParser;

    move-result-object p3

    .line 80
    invoke-virtual {p3, p0, p2, v0}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/marketing/Marketing;Lorg/json/JSONObject;)V

    .line 82
    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p2

    .line 83
    :cond_0
    new-instance p0, Lcom/samsung/android/sdk/smp/exception/InternalException$NotSupportedTypeException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/exception/InternalException$NotSupportedTypeException;-><init>()V

    throw p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 88
    sget-object p2, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "invalid appdata. "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p1, p0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    new-instance p0, Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p0

    .line 70
    :cond_1
    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->a:Ljava/lang/String;

    const-string p2, "invalid appdata"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance p0, Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p0
.end method

.method static a(Ljava/lang/String;)Lcom/samsung/android/sdk/smp/marketing/MarketingParser$AppData;
    .locals 4

    .line 50
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 51
    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->a:Ljava/lang/String;

    const-string v0, "appdata is null"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 55
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "mid"

    .line 56
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "type"

    .line 57
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "userdata"

    .line 58
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    new-instance v3, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$AppData;

    invoke-direct {v3, p0, v2, v0}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$AppData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception p0

    .line 62
    sget-object v0, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid appdata. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private static a(Lcom/samsung/android/sdk/smp/marketing/Marketing;)Lcom/samsung/android/sdk/smp/marketing/MarketingParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smp/exception/InternalException$NotSupportedTypeException;
        }
    .end annotation

    .line 29
    instance-of v0, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;

    if-eqz v0, :cond_0

    .line 30
    new-instance p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketingParser;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketingParser;-><init>()V

    return-object p0

    .line 31
    :cond_0
    instance-of p0, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;

    if-eqz p0, :cond_1

    .line 32
    new-instance p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketingParser;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketingParser;-><init>()V

    return-object p0

    .line 34
    :cond_1
    new-instance p0, Lcom/samsung/android/sdk/smp/exception/InternalException$NotSupportedTypeException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/exception/InternalException$NotSupportedTypeException;-><init>()V

    throw p0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 163
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "type1"

    .line 164
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "type2"

    .line 165
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "lang1"

    .line 166
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v3, "lang2"

    .line 167
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 170
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/DeviceInfo;->a(Landroid/content/Context;)I

    move-result p0

    const/4 v4, 0x1

    if-ne p0, v4, :cond_2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "bURL"

    .line 175
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "fname"

    .line 176
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "type1"

    .line 177
    invoke-static {v1, p0, v0, v2, p1}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    .line 181
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    move-object p1, v1

    goto :goto_0

    :cond_3
    const-string p0, "bURL"

    .line 187
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "fname"

    .line 188
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "type2"

    .line 189
    invoke-static {v0, p0, p1, v3, v1}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_4
    :goto_0
    return-object p1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    if-eqz p3, :cond_5

    if-nez p4, :cond_0

    goto/16 :goto_2

    .line 227
    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/smp/common/DeviceInfo;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 230
    :goto_0
    :try_start_0
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 231
    invoke-virtual {p3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move-object v2, v0

    :goto_1
    if-nez v2, :cond_3

    .line 238
    invoke-static {p3}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->a(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v2

    .line 239
    sget-object p3, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "use sub locale : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, v3}, Lcom/samsung/android/sdk/smp/common/SmpLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-nez v2, :cond_4

    .line 243
    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->a:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "cannot get resource locale:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". use default url"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object p4

    .line 247
    :cond_4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 249
    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fail to get res url by locale."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 223
    :cond_5
    :goto_2
    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->a:Ljava/lang/String;

    const-string p1, "fail to get res url by locale. invalid params"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(Ljava/util/Iterator;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 196
    invoke-static {}, Lcom/samsung/android/sdk/smp/common/DeviceInfo;->c()Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 198
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 200
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 209
    invoke-static {}, Lcom/samsung/android/sdk/smp/common/DeviceInfo;->c()Ljava/lang/String;

    move-result-object v0

    .line 210
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 211
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 212
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 213
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException;,
            Lcom/samsung/android/sdk/smp/exception/InternalException$LocaleNotMatchException;
        }
    .end annotation

    .line 281
    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/smp/common/DeviceInfo;->b()Ljava/lang/String;

    move-result-object v0

    .line 282
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 283
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->a(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v0

    .line 284
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 285
    sget-object v1, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "use sub locale : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 287
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 291
    sget-object v1, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->a:Ljava/lang/String;

    const-string v2, "use default locale"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 289
    :cond_1
    new-instance p0, Lcom/samsung/android/sdk/smp/exception/InternalException$LocaleNotMatchException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/exception/InternalException$LocaleNotMatchException;-><init>()V

    throw p0

    .line 294
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 296
    sget-object v0, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid text resource. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    new-instance p0, Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p0
.end method

.method static a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/marketing/Marketing;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException;,
            Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;,
            Lcom/samsung/android/sdk/smp/exception/InternalException$NotSupportedTypeException;,
            Lcom/samsung/android/sdk/smp/exception/InternalException$LocaleNotMatchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/marketing/MarketingData;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-static {v0}, Lcom/samsung/android/sdk/smp/common/FileIOUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x7b

    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 260
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-static {v1}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 263
    invoke-static {p1}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->a(Lcom/samsung/android/sdk/smp/marketing/Marketing;)Lcom/samsung/android/sdk/smp/marketing/MarketingParser;

    move-result-object v1

    .line 264
    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->a(Lcom/samsung/android/sdk/smp/marketing/Marketing;Lorg/json/JSONObject;)V

    .line 265
    invoke-virtual {v1, p0, p1}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->b(Landroid/content/Context;Lcom/samsung/android/sdk/smp/marketing/Marketing;)V

    .line 267
    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->l()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 269
    sget-object v0, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->c()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid resource. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    new-instance p0, Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p0
.end method

.method private a(Ljava/lang/String;IIJJII)Z
    .locals 2

    const/4 v0, 0x0

    if-ltz p2, :cond_7

    const/16 v1, 0x18

    if-lt v1, p2, :cond_7

    if-ltz p3, :cond_7

    if-ge v1, p3, :cond_0

    goto :goto_2

    :cond_0
    if-ne p2, p3, :cond_1

    .line 140
    sget-object p2, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->a:Ljava/lang/String;

    const-string p3, "invalid displaytime"

    invoke-static {p2, p1, p3}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    const-wide/16 p2, 0x0

    cmp-long v1, p4, p2

    if-ltz v1, :cond_6

    cmp-long p2, p6, p2

    if-ltz p2, :cond_6

    cmp-long p2, p4, p6

    if-ltz p2, :cond_2

    goto :goto_1

    :cond_2
    if-ltz p8, :cond_5

    const/16 p2, 0x5a0

    if-le p8, p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 p2, -0x1

    if-ge p9, p2, :cond_4

    .line 152
    sget-object p2, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->a:Ljava/lang/String;

    const-string p3, "invalid cctime"

    invoke-static {p2, p1, p3}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_4
    const/4 p1, 0x1

    return p1

    .line 148
    :cond_5
    :goto_0
    sget-object p2, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->a:Ljava/lang/String;

    const-string p3, "invalid random"

    invoke-static {p2, p1, p3}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 144
    :cond_6
    :goto_1
    sget-object p2, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->a:Ljava/lang/String;

    const-string p3, "invalid ttl"

    invoke-static {p2, p1, p3}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 136
    :cond_7
    :goto_2
    sget-object p2, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->a:Ljava/lang/String;

    const-string p3, "invalid displaytime"

    invoke-static {p2, p1, p3}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method


# virtual methods
.method a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    .line 302
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const-string p2, "<br>"

    goto :goto_0

    :cond_0
    const-string p2, "\n"

    .line 311
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x200e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(?i)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 312
    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p1
.end method

.method a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/marketing/Marketing;Lorg/json/JSONObject;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException;
        }
    .end annotation

    :try_start_0
    const-string p1, "st"

    .line 96
    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Ljava/lang/String;)V

    const-string p1, "cardDisplayTime"

    .line 97
    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\p{Space}"

    const-string v1, ""

    .line 98
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ","

    .line 99
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string v0, "ttl"

    .line 100
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\p{Space}"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 102
    array-length v1, p1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    array-length v1, v0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    .line 106
    aget-object v3, p1, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(I)V

    const/4 v3, 0x1

    .line 107
    aget-object p1, p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->b(I)V

    .line 108
    aget-object p1, v0, v1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(J)V

    .line 109
    aget-object p1, v0, v3

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->b(J)V

    const-string p1, "random"

    const/16 v0, 0x3c

    .line 110
    invoke-virtual {p3, p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->c(I)V

    const-string p1, "contents"

    .line 111
    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->b(Ljava/lang/String;)V

    const-string p1, "cctime"

    .line 112
    invoke-virtual {p3, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d(I)V

    const-string p1, "freq"

    .line 114
    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 116
    invoke-virtual {p2, p1, p1, p1, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(IIII)V

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result p3

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result p1

    invoke-virtual {p2, p3, v0, v1, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(IIII)V

    .line 122
    :goto_0
    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->f()I

    move-result v4

    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->g()I

    move-result v5

    .line 123
    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->h()J

    move-result-wide v6

    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->i()J

    move-result-wide v8

    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->j()I

    move-result v10

    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->k()I

    move-result v11

    move-object v2, p0

    .line 122
    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->a(Ljava/lang/String;IIJJII)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 124
    :cond_1
    new-instance p1, Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p1

    .line 103
    :cond_2
    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->a:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->c()Ljava/lang/String;

    move-result-object p3

    const-string v0, "invalid ttl/displaytime"

    invoke-static {p1, p3, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    new-instance p1, Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 127
    sget-object p3, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->a:Ljava/lang/String;

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

    .line 128
    new-instance p1, Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p1
.end method

.method abstract a(Lcom/samsung/android/sdk/smp/marketing/Marketing;Lorg/json/JSONObject;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException;,
            Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;
        }
    .end annotation
.end method

.method abstract b(Landroid/content/Context;Lcom/samsung/android/sdk/smp/marketing/Marketing;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException;,
            Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;
        }
    .end annotation
.end method
