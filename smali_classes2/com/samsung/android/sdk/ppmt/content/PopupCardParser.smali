.class public Lcom/samsung/android/sdk/ppmt/content/PopupCardParser;
.super Lcom/samsung/android/sdk/ppmt/content/CardParser;
.source "SourceFile"


# instance fields
.field private final b:[[Ljava/lang/String;

.field private final c:[[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 15
    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/content/CardParser;-><init>()V

    const/4 v0, 0x4

    .line 17
    new-array v1, v0, [[Ljava/lang/String;

    const-string v2, "body"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v3, [Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "body"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "web"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    iput-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCardParser;->b:[[Ljava/lang/String;

    .line 24
    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/String;

    aput-object v1, v0, v3

    const-string v1, "popupmain"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "popupmain"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    new-array v1, v3, [Ljava/lang/String;

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCardParser;->c:[[Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;I)I
    .locals 1

    .line 85
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    .line 90
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return p2
.end method

.method private a(Lcom/samsung/android/sdk/ppmt/content/PopupCard;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 162
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "body"

    .line 166
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p3, "body"

    .line 167
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/sdk/ppmt/content/PopupCardParser;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    .line 169
    :try_start_0
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->a(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 171
    :catch_0
    new-instance p1, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;-><init>()V

    throw p1

    :cond_0
    const-string v0, "web"

    .line 173
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->e(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    .line 163
    :cond_2
    new-instance p1, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;-><init>()V

    throw p1
.end method

.method private a(Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/content/PopupCard;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;
        }
    .end annotation

    .line 180
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "popupmain"

    .line 184
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/CardData;->a:[Ljava/lang/String;

    invoke-static {p1, p3, v0}, Lcom/samsung/android/sdk/ppmt/common/FileIOUtils;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 189
    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :cond_0
    new-instance p1, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void

    .line 181
    :cond_2
    new-instance p1, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/content/Card;Lorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException;
        }
    .end annotation

    .line 34
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/sdk/ppmt/content/CardParser;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/content/Card;Lorg/json/JSONObject;)V

    .line 38
    move-object p1, p2

    check-cast p1, Lcom/samsung/android/sdk/ppmt/content/PopupCard;

    :try_start_0
    const-string v0, "disturb"

    const/4 v1, 0x0

    .line 41
    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p3

    const/4 v0, 0x1

    if-ne v0, p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 40
    :goto_0
    invoke-virtual {p1, p3}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->d(Z)V

    .line 42
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->b()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 43
    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->d(Z)V

    .line 46
    :cond_1
    new-instance p3, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->h()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "pop"

    .line 47
    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->f(I)V

    const-string v2, "bottom"

    .line 49
    invoke-virtual {p3, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 48
    :goto_1
    invoke-virtual {p1, v2}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->b(Z)V

    const-string v2, "close"

    .line 51
    invoke-virtual {p3, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_3

    const/4 v1, 0x1

    .line 50
    :cond_3
    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->c(Z)V

    const-string v1, "btnalign"

    .line 52
    invoke-virtual {p3, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->g(I)V

    const-string v0, "color"

    .line 54
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    const v0, -0x19191a

    const v1, -0xa0a0b

    const v2, -0x50506

    const/high16 v3, -0x22000000

    if-nez p3, :cond_4

    .line 56
    invoke-virtual {p1, v2}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->h(I)V

    .line 57
    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->i(I)V

    .line 58
    invoke-virtual {p1, v3}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->j(I)V

    .line 59
    invoke-virtual {p1, v3}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->k(I)V

    .line 60
    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->l(I)V

    goto :goto_2

    :cond_4
    const-string v4, "bg"

    .line 63
    invoke-virtual {p3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/samsung/android/sdk/ppmt/content/PopupCardParser;->a(Ljava/lang/String;I)I

    move-result v2

    .line 62
    invoke-virtual {p1, v2}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->h(I)V

    const-string v2, "bottom"

    .line 66
    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/sdk/ppmt/content/PopupCardParser;->a(Ljava/lang/String;I)I

    move-result v1

    .line 65
    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->i(I)V

    const-string v1, "text"

    .line 69
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/sdk/ppmt/content/PopupCardParser;->a(Ljava/lang/String;I)I

    move-result v1

    .line 68
    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->j(I)V

    const-string v1, "btntext"

    .line 72
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/sdk/ppmt/content/PopupCardParser;->a(Ljava/lang/String;I)I

    move-result v1

    .line 71
    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->k(I)V

    const-string v1, "line"

    .line 75
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3, v0}, Lcom/samsung/android/sdk/ppmt/content/PopupCardParser;->a(Ljava/lang/String;I)I

    move-result p3

    .line 74
    invoke-virtual {p1, p3}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->l(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception p1

    .line 79
    sget-object p3, Lcom/samsung/android/sdk/ppmt/content/PopupCardParser;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ppmt/content/Card;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] invalid userdata. "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance p1, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;-><init>()V

    throw p1
.end method

.method public a(Lcom/samsung/android/sdk/ppmt/content/Card;Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    .line 103
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;

    :try_start_0
    const-string v1, "pop"

    .line 105
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 107
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCardParser;->b:[[Ljava/lang/String;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->u()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 108
    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCardParser;->b:[[Ljava/lang/String;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->u()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    aget-object v3, v3, v2

    invoke-direct {p0, v0, p2, v3}, Lcom/samsung/android/sdk/ppmt/content/PopupCardParser;->a(Lcom/samsung/android/sdk/ppmt/content/PopupCard;Lorg/json/JSONObject;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->v()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "btn1"

    .line 112
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "text"

    .line 113
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 114
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xa

    if-le v4, v5, :cond_1

    .line 115
    invoke-virtual {v3, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 117
    :cond_1
    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->c(Ljava/lang/String;)V

    .line 119
    invoke-static {v2}, Lcom/samsung/android/sdk/ppmt/content/CardAction;->a(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->a(Ljava/util/ArrayList;)V

    .line 120
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->J()Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "2"

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/content/CardAction;->a(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "btn2"

    .line 125
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_5

    const-string v2, "text"

    .line 127
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_2

    .line 129
    invoke-virtual {v2, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 131
    :cond_2
    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->d(Ljava/lang/String;)V

    .line 133
    invoke-static {p2}, Lcom/samsung/android/sdk/ppmt/content/CardAction;->a(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->b(Ljava/util/ArrayList;)V

    .line 134
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->K()Ljava/util/ArrayList;

    move-result-object p2

    const-string v0, "2"

    invoke-static {p2, v0}, Lcom/samsung/android/sdk/ppmt/content/CardAction;->a(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    .line 135
    :cond_3
    sget-object p2, Lcom/samsung/android/sdk/ppmt/content/PopupCardParser;->a:Ljava/lang/String;

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

    .line 136
    new-instance p2, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;

    invoke-direct {p2}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;-><init>()V

    throw p2

    .line 121
    :cond_4
    sget-object p2, Lcom/samsung/android/sdk/ppmt/content/PopupCardParser;->a:Ljava/lang/String;

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

    .line 122
    new-instance p2, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;

    invoke-direct {p2}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;-><init>()V

    throw p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_1
    return-void

    :catch_0
    move-exception p2

    .line 141
    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/PopupCardParser;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] invalid resource file. "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    new-instance p1, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;-><init>()V

    throw p1

    .line 100
    :cond_6
    new-instance p1, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;-><init>()V

    throw p1
.end method

.method public b(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/content/Card;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 153
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ppmt/content/Card;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/ppmt/content/CardData;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 154
    check-cast p2, Lcom/samsung/android/sdk/ppmt/content/PopupCard;

    const/4 v0, 0x0

    .line 155
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCardParser;->c:[[Ljava/lang/String;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->u()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCardParser;->c:[[Ljava/lang/String;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->u()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    aget-object v1, v1, v0

    invoke-direct {p0, p1, p2, v1}, Lcom/samsung/android/sdk/ppmt/content/PopupCardParser;->a(Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/content/PopupCard;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 150
    :cond_1
    new-instance p1, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;-><init>()V

    throw p1
.end method
