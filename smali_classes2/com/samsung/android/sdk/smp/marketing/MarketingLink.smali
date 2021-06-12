.class Lcom/samsung/android/sdk/smp/marketing/MarketingLink;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final j:Ljava/lang/String; = "MarketingLink"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field d:I

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/os/Bundle;)Lcom/samsung/android/sdk/smp/marketing/MarketingLink;
    .locals 3

    .line 60
    new-instance v0, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;

    invoke-direct {v0}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;-><init>()V

    const-string v1, "type"

    .line 61
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->a:Ljava/lang/String;

    const-string v1, "url"

    .line 62
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->b:Ljava/lang/String;

    const-string v1, "pkg"

    .line 63
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->g:Ljava/lang/String;

    const-string v1, "ref"

    .line 64
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->c:Ljava/util/ArrayList;

    const-string v1, "action"

    .line 65
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->e:Ljava/lang/String;

    const-string v1, "comp"

    const/4 v2, 0x0

    .line 66
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->d:I

    const-string v1, "data"

    .line 67
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->f:Ljava/lang/String;

    const-string v1, "cls"

    .line 68
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->h:Ljava/lang/String;

    const-string v1, "extra"

    .line 69
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    iput-object p0, v0, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->i:Landroid/os/Bundle;

    return-object v0
.end method

.method private static a(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 153
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 158
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 159
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 154
    :cond_1
    new-instance p0, Lorg/json/JSONException;

    const-string v0, "Invalid JSONArray"

    invoke-direct {p0, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static a(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/smp/marketing/MarketingLink;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "action"

    .line 33
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 34
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 35
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 37
    new-instance v4, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;

    invoke-direct {v4}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;-><init>()V

    const-string v5, "type"

    .line 38
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->a:Ljava/lang/String;

    const-string v5, "pkg"

    const/4 v6, 0x0

    .line 39
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->g:Ljava/lang/String;

    const-string v5, "url"

    .line 40
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->b:Ljava/lang/String;

    const-string v5, "ref"

    .line 41
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 42
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 43
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v4, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->c:Ljava/util/ArrayList;

    const/4 v7, 0x0

    .line 44
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 45
    iget-object v8, v4, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    const-string v5, "action"

    .line 48
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->e:Ljava/lang/String;

    const-string v5, "comp"

    .line 49
    invoke-virtual {v3, v5, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->d:I

    const-string v5, "data"

    .line 50
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->f:Ljava/lang/String;

    const-string v5, "cls"

    .line 51
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->h:Ljava/lang/String;

    .line 52
    invoke-static {v3}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->b(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v4, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->i:Landroid/os/Bundle;

    .line 54
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "app"

    .line 217
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 218
    iget-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->g:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_0
    const-string v0, "url"

    .line 222
    iget-object v3, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    iget-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_1
    const-string v0, "intent"

    .line 227
    iget-object v3, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 228
    iget-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->g:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    .line 232
    :cond_2
    iget p1, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->d:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return v2

    :cond_3
    const-string v0, "2"

    .line 239
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "ignore"

    .line 240
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v2

    :cond_4
    const-string p1, "api"

    .line 244
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 245
    iget-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static a(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/smp/marketing/MarketingLink;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 205
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 206
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;

    .line 207
    invoke-direct {v1, p1}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method private static b(Lorg/json/JSONObject;)Landroid/os/Bundle;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "extra"

    .line 106
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 107
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 108
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 109
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 110
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x1

    .line 111
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 112
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    const/4 v6, 0x2

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_1

    .line 144
    :pswitch_0
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    int-to-short v3, v3

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    goto :goto_1

    .line 141
    :pswitch_1
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v5

    double-to-float v3, v5

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_1

    .line 138
    :pswitch_2
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v5

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_1

    .line 135
    :pswitch_3
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->b(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 132
    :pswitch_4
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->d(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    .line 129
    :pswitch_5
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 126
    :pswitch_6
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    .line 123
    :pswitch_7
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 120
    :pswitch_8
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->c(Lorg/json/JSONArray;)[I

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto :goto_1

    .line 117
    :pswitch_9
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 114
    :pswitch_a
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 274
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "|"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private static b(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 166
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 171
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 172
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 167
    :cond_1
    new-instance p0, Lorg/json/JSONException;

    const-string v0, "Invalid JSONArray"

    invoke-direct {p0, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static c(Lorg/json/JSONArray;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 179
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 184
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 185
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 180
    :cond_1
    new-instance p0, Lorg/json/JSONException;

    const-string v0, "Invalid JSONArray"

    invoke-direct {p0, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static d(Lorg/json/JSONArray;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 192
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 197
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 198
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 193
    :cond_1
    new-instance p0, Lorg/json/JSONException;

    const-string v0, "Invalid JSONArray"

    invoke-direct {p0, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method a()Landroid/os/Bundle;
    .locals 3

    .line 75
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "type"

    .line 76
    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "url"

    .line 77
    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pkg"

    .line 78
    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ref"

    .line 79
    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "action"

    .line 80
    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "comp"

    .line 81
    iget v2, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "data"

    .line 82
    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cls"

    .line 83
    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "extra"

    .line 84
    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->i:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 254
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    const-string v0, ""

    const/4 v1, 0x0

    .line 256
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 257
    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "mid"

    .line 258
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 259
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    const-string v3, "uid"

    .line 261
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 262
    new-instance v3, Lcom/samsung/android/sdk/smp/storage/PrefManager;

    invoke-direct {v3, p1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->f()Ljava/lang/String;

    move-result-object v3

    .line 263
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 267
    :cond_2
    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "referrer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method b()Ljava/lang/String;
    .locals 4

    .line 90
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->a:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 91
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->a:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x468ec964

    if-eq v2, v3, :cond_3

    const v3, 0x17a1a

    if-eq v2, v3, :cond_2

    const v3, 0x17a21

    if-eq v2, v3, :cond_1

    const v3, 0x1c56f

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "url"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "app"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const-string v2, "api"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x2

    goto :goto_0

    :cond_3
    const-string v2, "intent"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x3

    :cond_4
    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 98
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->f:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->g:Ljava/lang/String;

    :goto_1
    return-object v0

    .line 96
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->b:Ljava/lang/String;

    return-object v0

    .line 93
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->g:Ljava/lang/String;

    return-object v0

    :cond_6
    :goto_2
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
