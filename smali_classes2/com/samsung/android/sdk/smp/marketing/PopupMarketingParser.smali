.class public Lcom/samsung/android/sdk/smp/marketing/PopupMarketingParser;
.super Lcom/samsung/android/sdk/smp/marketing/MarketingParser;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;I)I
    .locals 1

    .line 72
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    .line 77
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

.method private a(Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;,
            Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException;
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 154
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "body"

    .line 158
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p3, "body"

    .line 159
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketingParser;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    .line 161
    :try_start_0
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->a(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    :catch_0
    new-instance p1, Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p1

    :cond_0
    const-string v0, "web"

    .line 165
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->e(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    .line 155
    :cond_2
    new-instance p1, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p1
.end method

.method private a(Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException;,
            Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;
        }
    .end annotation

    .line 172
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "popupmain"

    .line 176
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    sget-object v0, Lcom/samsung/android/sdk/smp/marketing/MarketingData;->a:[Ljava/lang/String;

    invoke-static {p1, p3, v0}, Lcom/samsung/android/sdk/smp/common/FileIOUtil;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 181
    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :cond_0
    new-instance p1, Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void

    .line 173
    :cond_2
    new-instance p1, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/marketing/Marketing;Lorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException;
        }
    .end annotation

    .line 21
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/marketing/Marketing;Lorg/json/JSONObject;)V

    .line 25
    move-object p1, p2

    check-cast p1, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;

    :try_start_0
    const-string v0, "disturb"

    const/4 v1, 0x0

    .line 28
    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p3

    const/4 v0, 0x1

    if-ne v0, p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 27
    :goto_0
    invoke-virtual {p1, p3}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->c(Z)V

    .line 29
    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->b()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 30
    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->c(Z)V

    .line 33
    :cond_1
    new-instance p3, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "pop"

    .line 34
    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->e(I)V

    const-string v2, "bottom"

    .line 36
    invoke-virtual {p3, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 35
    :goto_1
    invoke-virtual {p1, v2}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->a(Z)V

    const-string v2, "close"

    .line 38
    invoke-virtual {p3, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_3

    const/4 v1, 0x1

    .line 37
    :cond_3
    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->b(Z)V

    const-string v1, "btnalign"

    .line 39
    invoke-virtual {p3, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->f(I)V

    const-string v0, "color"

    .line 41
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    const v0, -0x19191a

    const v1, -0xa0a0b

    const v2, -0x50506

    const/high16 v3, -0x22000000

    if-nez p3, :cond_4

    .line 43
    invoke-virtual {p1, v2}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->g(I)V

    .line 44
    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->h(I)V

    .line 45
    invoke-virtual {p1, v3}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->i(I)V

    .line 46
    invoke-virtual {p1, v3}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->j(I)V

    .line 47
    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->k(I)V

    goto :goto_2

    :cond_4
    const-string v4, "bg"

    .line 50
    invoke-virtual {p3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketingParser;->a(Ljava/lang/String;I)I

    move-result v2

    .line 49
    invoke-virtual {p1, v2}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->g(I)V

    const-string v2, "bottom"

    .line 53
    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketingParser;->a(Ljava/lang/String;I)I

    move-result v1

    .line 52
    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->h(I)V

    const-string v1, "text"

    .line 56
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketingParser;->a(Ljava/lang/String;I)I

    move-result v1

    .line 55
    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->i(I)V

    const-string v1, "btntext"

    .line 59
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketingParser;->a(Ljava/lang/String;I)I

    move-result v1

    .line 58
    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->j(I)V

    const-string v1, "line"

    .line 62
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3, v0}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketingParser;->a(Ljava/lang/String;I)I

    move-result p3

    .line 61
    invoke-virtual {p1, p3}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->k(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception p1

    .line 66
    sget-object p3, Lcom/samsung/android/sdk/smp/marketing/PopupMarketingParser;->a:Ljava/lang/String;

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

    invoke-static {p3, p2, p1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    new-instance p1, Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p1
.end method

.method public a(Lcom/samsung/android/sdk/smp/marketing/Marketing;Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException;,
            Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    .line 90
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;

    :try_start_0
    const-string v1, "pop"

    .line 92
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 94
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->n()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 95
    :goto_0
    sget-object v4, Lcom/samsung/android/sdk/smp/marketing/MarketingData$Popup;->a:[[Ljava/lang/String;

    aget-object v4, v4, v1

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 96
    sget-object v4, Lcom/samsung/android/sdk/smp/marketing/MarketingData$Popup;->a:[[Ljava/lang/String;

    aget-object v4, v4, v1

    aget-object v4, v4, v3

    invoke-direct {p0, v0, p2, v4}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketingParser;->a(Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;Lorg/json/JSONObject;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->o()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "btn1"

    .line 100
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "text"

    .line 101
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 102
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xa

    if-le v4, v5, :cond_1

    .line 103
    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 105
    :cond_1
    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->c(Ljava/lang/String;)V

    .line 107
    invoke-static {v1}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->a(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->a(Ljava/util/ArrayList;)V

    .line 108
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->C()Ljava/util/ArrayList;

    move-result-object v1

    const-string v3, "2"

    invoke-static {v1, v3}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->a(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "btn2"

    .line 113
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_5

    const-string v1, "text"

    .line 115
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_2

    .line 117
    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 119
    :cond_2
    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->d(Ljava/lang/String;)V

    .line 121
    invoke-static {p2}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->a(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->b(Ljava/util/ArrayList;)V

    .line 122
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->D()Ljava/util/ArrayList;

    move-result-object p2

    const-string v0, "2"

    invoke-static {p2, v0}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->a(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    .line 123
    :cond_3
    sget-object p2, Lcom/samsung/android/sdk/smp/marketing/PopupMarketingParser;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fail to parse resource. invalid landing page"

    invoke-static {p2, v0, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    new-instance p2, Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p2}, Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p2

    .line 109
    :cond_4
    sget-object p2, Lcom/samsung/android/sdk/smp/marketing/PopupMarketingParser;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fail to parse resource. invalid landing page"

    invoke-static {p2, v0, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    new-instance p2, Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p2}, Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_1
    return-void

    :catch_0
    move-exception p2

    .line 129
    sget-object v0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketingParser;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->c()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid resource file. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance p1, Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p1

    .line 87
    :cond_6
    new-instance p1, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p1
.end method

.method public b(Landroid/content/Context;Lcom/samsung/android/sdk/smp/marketing/Marketing;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException;,
            Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 143
    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/smp/marketing/MarketingData;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 144
    check-cast p2, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;

    .line 146
    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->n()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    .line 147
    :goto_0
    sget-object v2, Lcom/samsung/android/sdk/smp/marketing/MarketingData$Popup;->b:[[Ljava/lang/String;

    aget-object v2, v2, v0

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 148
    sget-object v2, Lcom/samsung/android/sdk/smp/marketing/MarketingData$Popup;->b:[[Ljava/lang/String;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    invoke-direct {p0, p1, p2, v2}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketingParser;->a(Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 140
    :cond_1
    new-instance p1, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p1
.end method
