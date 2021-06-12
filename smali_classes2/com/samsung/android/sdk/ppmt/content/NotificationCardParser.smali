.class public Lcom/samsung/android/sdk/ppmt/content/NotificationCardParser;
.super Lcom/samsung/android/sdk/ppmt/content/CardParser;
.source "SourceFile"


# instance fields
.field private final b:[[Ljava/lang/String;

.field private final c:[[Ljava/lang/String;

.field private final d:[[Ljava/lang/String;

.field private final e:[[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 17
    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/content/CardParser;-><init>()V

    const/4 v0, 0x3

    .line 21
    new-array v1, v0, [[Ljava/lang/String;

    const-string v2, "contentTitle"

    const-string v3, "contentText"

    const-string v4, "subContentText"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v3, [Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-array v2, v3, [Ljava/lang/String;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCardParser;->b:[[Ljava/lang/String;

    const/4 v1, 0x5

    .line 27
    new-array v2, v1, [[Ljava/lang/String;

    new-array v6, v3, [Ljava/lang/String;

    aput-object v6, v2, v3

    const-string v6, "contentTitle"

    const-string v7, "contentText"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    const-string v6, "contentTitle"

    const-string v7, "contentText"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const-string v6, "contentTitle"

    const-string v7, "contentText"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v0

    new-array v6, v3, [Ljava/lang/String;

    const/4 v7, 0x4

    aput-object v6, v2, v7

    iput-object v2, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCardParser;->c:[[Ljava/lang/String;

    .line 35
    new-array v2, v0, [[Ljava/lang/String;

    const-string v6, "smallIcon"

    const-string v8, "largeIcon"

    filled-new-array {v6, v8}, [Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    const-string v6, "banner"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    const-string v6, "flip_f"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    iput-object v2, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCardParser;->d:[[Ljava/lang/String;

    .line 41
    new-array v1, v1, [[Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/String;

    aput-object v2, v1, v3

    const-string v2, "smallIcon"

    const-string v3, "largeIcon"

    const-string v6, "bigPicture"

    filled-new-array {v2, v3, v6}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "smallIcon"

    const-string v3, "largeIcon"

    const-string v4, "bigPicture"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "smallIcon"

    const-string v3, "largeIcon"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "flip_e"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v7

    iput-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCardParser;->e:[[Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/samsung/android/sdk/ppmt/content/NotificationCard;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 146
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "contentTitle"

    .line 150
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, v1}, Lcom/samsung/android/sdk/ppmt/content/NotificationCardParser;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "contentText"

    .line 152
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, v1}, Lcom/samsung/android/sdk/ppmt/content/NotificationCardParser;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "subContentText"

    .line 154
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 155
    invoke-virtual {p2, p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, v1}, Lcom/samsung/android/sdk/ppmt/content/NotificationCardParser;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->f(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    .line 147
    :cond_3
    new-instance p1, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;-><init>()V

    throw p1
.end method

.method private a(Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/content/NotificationCard;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;
        }
    .end annotation

    .line 161
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    if-eqz p2, :cond_a

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "flip_f"

    .line 165
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "flip_e"

    .line 166
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/CardData;->a:[Ljava/lang/String;

    invoke-static {p1, p3, v0}, Lcom/samsung/android/sdk/ppmt/common/FileIOUtils;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "largeIcon"

    .line 183
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->h(Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    const-string v0, "smallIcon"

    .line 185
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->g(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    if-eqz p1, :cond_4

    const-string v0, "bigPicture"

    .line 191
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 192
    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->i(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const-string v0, "banner"

    .line 193
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 194
    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->j(Ljava/lang/String;)V

    goto :goto_3

    .line 189
    :cond_4
    new-instance p1, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;-><init>()V

    throw p1

    :cond_5
    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_1
    const/16 v2, 0xa

    if-gt v1, v2, :cond_9

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/ppmt/content/CardData;->a:[Ljava/lang/String;

    invoke-static {p1, v2, v3}, Lcom/samsung/android/sdk/ppmt/common/FileIOUtils;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    if-eq v1, v0, :cond_6

    goto :goto_3

    .line 171
    :cond_6
    new-instance p1, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;-><init>()V

    throw p1

    :cond_7
    const-string v3, "flip_f"

    .line 175
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 176
    invoke-virtual {p2, v2}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->k(Ljava/lang/String;)V

    goto :goto_2

    .line 178
    :cond_8
    invoke-virtual {p2, v2}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->l(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_9
    :goto_3
    return-void

    .line 162
    :cond_a
    new-instance p1, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/content/Card;Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException;
        }
    .end annotation

    .line 52
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/sdk/ppmt/content/CardParser;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/content/Card;Lorg/json/JSONObject;)V

    .line 53
    check-cast p2, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;

    .line 55
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "f"

    .line 56
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->f(I)V

    const-string v0, "e"

    .line 57
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->g(I)V

    const-string p1, "fa"

    .line 59
    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 60
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->v()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    const-string v0, "fp"

    .line 61
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "e"

    .line 62
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->j(I)V

    .line 63
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->I()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz p1, :cond_1

    const-string v0, "e"

    .line 68
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->l(I)V

    goto :goto_0

    .line 64
    :cond_0
    sget-object p1, Lcom/samsung/android/sdk/ppmt/content/NotificationCardParser;->a:Ljava/lang/String;

    const-string p2, "invalid flipping period"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance p1, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;-><init>()V

    throw p1

    .line 71
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->u()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    const-string v0, "fp"

    .line 72
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "f"

    .line 73
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->i(I)V

    .line 74
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->H()I

    move-result v0

    if-lez v0, :cond_2

    if-eqz p1, :cond_3

    const-string v0, "f"

    .line 79
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->k(I)V

    goto :goto_1

    .line 75
    :cond_2
    sget-object p1, Lcom/samsung/android/sdk/ppmt/content/NotificationCardParser;->a:Ljava/lang/String;

    const-string p2, "invalid flipping period"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    new-instance p1, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;-><init>()V

    throw p1

    :cond_3
    :goto_1
    const-string p1, "chan"

    const/4 v0, 0x2

    .line 83
    invoke-virtual {p3, p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    const/4 p3, 0x1

    if-eq p1, p3, :cond_4

    if-eq p1, v0, :cond_4

    const/4 p1, 0x2

    .line 87
    :cond_4
    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->h(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 89
    sget-object p2, Lcom/samsung/android/sdk/ppmt/content/NotificationCardParser;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid userdata. "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance p1, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;-><init>()V

    throw p1
.end method

.method public a(Lcom/samsung/android/sdk/ppmt/content/Card;Lorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 101
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;

    :try_start_0
    const-string v1, "ticker"

    .line 103
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v3, " "

    .line 104
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->c(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 107
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCardParser;->b:[[Ljava/lang/String;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->u()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 108
    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCardParser;->b:[[Ljava/lang/String;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->u()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    aget-object v3, v3, v2

    invoke-direct {p0, v0, p2, v3}, Lcom/samsung/android/sdk/ppmt/content/NotificationCardParser;->a(Lcom/samsung/android/sdk/ppmt/content/NotificationCard;Lorg/json/JSONObject;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCardParser;->c:[[Ljava/lang/String;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->v()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 111
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCardParser;->c:[[Ljava/lang/String;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->v()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    aget-object v2, v2, v1

    invoke-direct {p0, v0, p2, v2}, Lcom/samsung/android/sdk/ppmt/content/NotificationCardParser;->a(Lcom/samsung/android/sdk/ppmt/content/NotificationCard;Lorg/json/JSONObject;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 114
    :cond_1
    invoke-static {p2}, Lcom/samsung/android/sdk/ppmt/content/CardAction;->a(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object p2

    const-string v1, "1"

    .line 115
    invoke-static {p2, v1}, Lcom/samsung/android/sdk/ppmt/content/CardAction;->a(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 119
    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->a(Ljava/util/ArrayList;)V

    return-void

    .line 116
    :cond_2
    sget-object p2, Lcom/samsung/android/sdk/ppmt/content/NotificationCardParser;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] fail to parse resource. invalid landing page"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    new-instance p2, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;

    invoke-direct {p2}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;-><init>()V

    throw p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p2

    .line 122
    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/NotificationCardParser;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to parse resource. "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    new-instance p1, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;-><init>()V

    throw p1

    .line 98
    :cond_3
    new-instance p1, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;-><init>()V

    throw p1
.end method

.method public b(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/content/Card;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 134
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ppmt/content/Card;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/ppmt/content/CardData;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 135
    check-cast p2, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 136
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCardParser;->d:[[Ljava/lang/String;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->u()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 137
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCardParser;->d:[[Ljava/lang/String;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->u()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    aget-object v2, v2, v1

    invoke-direct {p0, p1, p2, v2}, Lcom/samsung/android/sdk/ppmt/content/NotificationCardParser;->a(Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/content/NotificationCard;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCardParser;->e:[[Ljava/lang/String;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->v()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 140
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/NotificationCardParser;->e:[[Ljava/lang/String;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;->v()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    aget-object v1, v1, v0

    invoke-direct {p0, p1, p2, v1}, Lcom/samsung/android/sdk/ppmt/content/NotificationCardParser;->a(Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/content/NotificationCard;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 131
    :cond_2
    new-instance p1, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;-><init>()V

    throw p1
.end method
