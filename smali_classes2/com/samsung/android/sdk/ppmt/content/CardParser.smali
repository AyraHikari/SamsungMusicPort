.class public abstract Lcom/samsung/android/sdk/ppmt/content/CardParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final a:Ljava/lang/String; = "CardParser"


# instance fields
.field private final b:I

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3c

    .line 27
    iput v0, p0, Lcom/samsung/android/sdk/ppmt/content/CardParser;->b:I

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/samsung/android/sdk/ppmt/content/CardParser;->c:I

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/samsung/android/sdk/ppmt/content/Card;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    if-ltz p4, :cond_1

    .line 69
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p3, "marketingType"

    .line 70
    invoke-virtual {v0, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 72
    invoke-static {p1, p2, p3, p4, p5}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/samsung/android/sdk/ppmt/content/Card;

    move-result-object p2

    .line 73
    invoke-static {p2}, Lcom/samsung/android/sdk/ppmt/content/CardParser;->a(Lcom/samsung/android/sdk/ppmt/content/Card;)Lcom/samsung/android/sdk/ppmt/content/CardParser;

    move-result-object p3

    .line 74
    invoke-virtual {p3, p0, p2, v0}, Lcom/samsung/android/sdk/ppmt/content/CardParser;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/content/Card;Lorg/json/JSONObject;)V

    .line 76
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ppmt/content/Card;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p2

    .line 77
    :cond_0
    new-instance p0, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException;-><init>()V

    throw p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 82
    sget-object p2, Lcom/samsung/android/sdk/ppmt/content/CardParser;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "["

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "] "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    sget-object p0, Lcom/samsung/android/sdk/ppmt/content/CardParser;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] invalid appdata"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance p0, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;-><init>()V

    throw p0

    .line 64
    :cond_1
    sget-object p0, Lcom/samsung/android/sdk/ppmt/content/CardParser;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] invalid appdata"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance p0, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;-><init>()V

    throw p0
.end method

.method public static a(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/content/CardAppData;
    .locals 5

    .line 41
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 42
    sget-object p0, Lcom/samsung/android/sdk/ppmt/content/CardParser;->a:Ljava/lang/String;

    const-string v0, "invalid appdata. appdata null"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 47
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "mid"

    .line 48
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "type"

    .line 49
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "userdata"

    .line 50
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "targetid"

    .line 51
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    new-instance v4, Lcom/samsung/android/sdk/ppmt/content/CardAppData;

    invoke-direct {v4, p0, v2, v3, v0}, Lcom/samsung/android/sdk/ppmt/content/CardAppData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception p0

    .line 55
    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/CardParser;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    sget-object p0, Lcom/samsung/android/sdk/ppmt/content/CardParser;->a:Ljava/lang/String;

    const-string v0, "invalid appdata"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private static a(Lcom/samsung/android/sdk/ppmt/content/Card;)Lcom/samsung/android/sdk/ppmt/content/CardParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException;
        }
    .end annotation

    .line 32
    instance-of v0, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;

    if-eqz v0, :cond_0

    .line 33
    new-instance p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCardParser;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCardParser;-><init>()V

    return-object p0

    .line 34
    :cond_0
    instance-of p0, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;

    if-eqz p0, :cond_1

    .line 35
    new-instance p0, Lcom/samsung/android/sdk/ppmt/content/PopupCardParser;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/content/PopupCardParser;-><init>()V

    return-object p0

    .line 37
    :cond_1
    new-instance p0, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException;-><init>()V

    throw p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;,
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 166
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "type1"

    .line 167
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "type2"

    .line 168
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "lang1"

    .line 169
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v3, "lang2"

    .line 170
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 173
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/common/DeviceInfo;->a(Landroid/content/Context;)I

    move-result p0

    const/4 v4, 0x1

    if-ne p0, v4, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "bURL"

    .line 178
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "fname"

    .line 179
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "type1"

    .line 180
    invoke-static {v1, p0, v0, v2, p1}, Lcom/samsung/android/sdk/ppmt/content/CardParser;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    .line 184
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    move-object p1, v1

    goto :goto_0

    :cond_2
    const-string p0, "bURL"

    .line 190
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "fname"

    .line 191
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "type2"

    .line 192
    invoke-static {v0, p0, p1, v3, v1}, Lcom/samsung/android/sdk/ppmt/content/CardParser;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    :goto_0
    return-object p1

    .line 162
    :cond_4
    sget-object p0, Lcom/samsung/android/sdk/ppmt/content/CardParser;->a:Ljava/lang/String;

    const-string p1, "fail to get resource url. invalid params"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    new-instance p0, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;-><init>()V

    throw p0
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

    .line 230
    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/common/DeviceInfo;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 233
    :goto_0
    :try_start_0
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 234
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

    .line 241
    invoke-static {p3}, Lcom/samsung/android/sdk/ppmt/content/CardParser;->a(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v2

    .line 242
    sget-object p3, Lcom/samsung/android/sdk/ppmt/content/CardParser;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "use sub locale : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-nez v2, :cond_4

    .line 246
    sget-object p0, Lcom/samsung/android/sdk/ppmt/content/CardParser;->a:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "cannot get resource locale:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". use default url"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p4

    .line 250
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

    .line 252
    sget-object p1, Lcom/samsung/android/sdk/ppmt/content/CardParser;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fail to get res url by locale."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 226
    :cond_5
    :goto_2
    sget-object p0, Lcom/samsung/android/sdk/ppmt/content/CardParser;->a:Ljava/lang/String;

    const-string p1, "fail to get res url by locale. invalid params"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

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

    .line 199
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/common/DeviceInfo;->c()Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 201
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 203
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

    .line 212
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/common/DeviceInfo;->c()Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 214
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 215
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 216
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
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$LocaleNotMatchException;
        }
    .end annotation

    .line 283
    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/common/DeviceInfo;->b()Ljava/lang/String;

    move-result-object v0

    .line 284
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 285
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/ppmt/content/CardParser;->a(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v0

    .line 286
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 287
    sget-object v1, Lcom/samsung/android/sdk/ppmt/content/CardParser;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "use sub locale : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 289
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

    .line 290
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 293
    sget-object v1, Lcom/samsung/android/sdk/ppmt/content/CardParser;->a:Ljava/lang/String;

    const-string v2, "use default locale"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 291
    :cond_1
    new-instance p0, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$LocaleNotMatchException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$LocaleNotMatchException;-><init>()V

    throw p0

    .line 296
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 298
    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/CardParser;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    sget-object p0, Lcom/samsung/android/sdk/ppmt/content/CardParser;->a:Ljava/lang/String;

    const-string v0, "invalid text resource"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    new-instance p0, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;-><init>()V

    throw p0
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/content/Card;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;,
            Ljava/io/IOException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$LocaleNotMatchException;
        }
    .end annotation

    .line 261
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/ppmt/content/CardData;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    invoke-static {v0}, Lcom/samsung/android/sdk/ppmt/common/FileIOUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x7b

    .line 262
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 263
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 264
    invoke-static {v1}, Lcom/samsung/android/sdk/ppmt/content/CardParser;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 266
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/content/CardParser;->a(Lcom/samsung/android/sdk/ppmt/content/Card;)Lcom/samsung/android/sdk/ppmt/content/CardParser;

    move-result-object v1

    .line 267
    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/sdk/ppmt/content/CardParser;->a(Lcom/samsung/android/sdk/ppmt/content/Card;Lorg/json/JSONObject;)V

    .line 268
    invoke-virtual {v1, p0, p1}, Lcom/samsung/android/sdk/ppmt/content/CardParser;->b(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/content/Card;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 270
    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/CardParser;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    sget-object p0, Lcom/samsung/android/sdk/ppmt/content/CardParser;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] invalid resource"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    new-instance p0, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;-><init>()V

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

    goto/16 :goto_2

    :cond_0
    if-ne p2, p3, :cond_1

    .line 141
    sget-object p2, Lcom/samsung/android/sdk/ppmt/content/CardParser;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "["

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] invalid displaytime"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

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

    .line 153
    sget-object p2, Lcom/samsung/android/sdk/ppmt/content/CardParser;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "["

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] invalid cctime"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_4
    const/4 p1, 0x1

    return p1

    .line 149
    :cond_5
    :goto_0
    sget-object p2, Lcom/samsung/android/sdk/ppmt/content/CardParser;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "["

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] invalid random"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 145
    :cond_6
    :goto_1
    sget-object p2, Lcom/samsung/android/sdk/ppmt/content/CardParser;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "["

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] invalid ttl"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 137
    :cond_7
    :goto_2
    sget-object p2, Lcom/samsung/android/sdk/ppmt/content/CardParser;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "["

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] invalid displaytime"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    .line 305
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const-string p2, "<br>"

    goto :goto_0

    :cond_0
    const-string p2, "\n"

    .line 314
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

    .line 315
    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p1
.end method

.method public a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/content/Card;Lorg/json/JSONObject;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException;
        }
    .end annotation

    move-object/from16 v1, p2

    move-object/from16 v0, p3

    :try_start_0
    const-string v2, "st"

    .line 91
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Ljava/lang/String;)V

    const-string v2, "cardDisplayTime"

    .line 92
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\p{Space}"

    const-string v4, ""

    .line 93
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    .line 94
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v3, "ttl"

    .line 95
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\p{Space}"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    .line 96
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 97
    array-length v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    array-length v4, v3

    if-ne v4, v5, :cond_4

    const/4 v4, 0x0

    .line 101
    aget-object v6, v2, v4

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(I)V

    const/4 v6, 0x1

    .line 102
    aget-object v2, v2, v6

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/ppmt/content/Card;->b(I)V

    .line 103
    aget-object v2, v3, v4

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(J)V

    .line 104
    aget-object v2, v3, v6

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/ppmt/content/Card;->b(J)V

    const-string v2, "random"

    const/16 v3, 0x3c

    .line 106
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 105
    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/ppmt/content/Card;->c(I)V

    const-string v2, "contents"

    .line 107
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/ppmt/content/Card;->b(Ljava/lang/String;)V

    const-string v2, "cctime"

    .line 108
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/ppmt/content/Card;->d(I)V

    const-string v2, "freq"

    .line 110
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, -0x1

    .line 112
    invoke-virtual {v1, v2, v2, v2, v2}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(IIII)V

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result v7

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    const/4 v8, 0x3

    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v3, v7, v5, v2}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(IIII)V

    .line 118
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/ppmt/content/Card;->e()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/ppmt/content/Card;->i()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/ppmt/content/Card;->j()I

    move-result v11

    .line 119
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/ppmt/content/Card;->k()J

    move-result-wide v12

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/ppmt/content/Card;->l()J

    move-result-wide v14

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/ppmt/content/Card;->m()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/ppmt/content/Card;->n()I

    move-result v17

    move-object/from16 v8, p0

    .line 118
    invoke-direct/range {v8 .. v17}, Lcom/samsung/android/sdk/ppmt/content/CardParser;->a(Ljava/lang/String;IIJJII)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "event"

    .line 123
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/ppmt/content/Card;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "optin"

    .line 124
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_1

    const/4 v4, 0x1

    :cond_1
    invoke-virtual {v1, v4}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Z)V

    :cond_2
    return-void

    .line 120
    :cond_3
    new-instance v0, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;-><init>()V

    throw v0

    .line 98
    :cond_4
    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/CardParser;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/ppmt/content/Card;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] invalid ttl/displaytime"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance v0, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 127
    sget-object v2, Lcom/samsung/android/sdk/ppmt/content/CardParser;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/ppmt/content/Card;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/CardParser;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/ppmt/content/Card;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] invalid userdata"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    new-instance v0, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;-><init>()V

    throw v0
.end method

.method public abstract a(Lcom/samsung/android/sdk/ppmt/content/Card;Lorg/json/JSONObject;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract b(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/content/Card;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;
        }
    .end annotation
.end method
