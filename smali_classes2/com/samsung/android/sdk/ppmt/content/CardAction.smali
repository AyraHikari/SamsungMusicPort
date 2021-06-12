.class public Lcom/samsung/android/sdk/ppmt/content/CardAction;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final k:Ljava/lang/String; = "CardAction"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lcom/samsung/android/sdk/ppmt/content/CardAction;
    .locals 3

    .line 60
    new-instance v0, Lcom/samsung/android/sdk/ppmt/content/CardAction;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ppmt/content/CardAction;-><init>()V

    const-string v1, "type"

    .line 61
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->a:Ljava/lang/String;

    const-string v1, "url"

    .line 62
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->b:Ljava/lang/String;

    const-string v1, "pkg"

    .line 63
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->h:Ljava/lang/String;

    const-string v1, "appParam"

    .line 64
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->c:Ljava/lang/String;

    const-string v1, "ref"

    .line 65
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->d:Ljava/util/ArrayList;

    const-string v1, "action"

    .line 66
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->f:Ljava/lang/String;

    const-string v1, "comp"

    const/4 v2, 0x0

    .line 67
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->e:I

    const-string v1, "data"

    .line 68
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->g:Ljava/lang/String;

    const-string v1, "cls"

    .line 69
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->i:Ljava/lang/String;

    const-string v1, "extra"

    .line 70
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    iput-object p0, v0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->j:Landroid/os/Bundle;

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

    .line 140
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 145
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 146
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 141
    :cond_1
    new-instance p0, Lorg/json/JSONException;

    const-string v0, "Invalid JSONArray"

    invoke-direct {p0, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/ppmt/content/CardAction;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "action"

    .line 32
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 33
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 34
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 36
    new-instance v4, Lcom/samsung/android/sdk/ppmt/content/CardAction;

    invoke-direct {v4}, Lcom/samsung/android/sdk/ppmt/content/CardAction;-><init>()V

    const-string v5, "type"

    .line 37
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/samsung/android/sdk/ppmt/content/CardAction;->a:Ljava/lang/String;

    const-string v5, "pkg"

    const/4 v6, 0x0

    .line 38
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/samsung/android/sdk/ppmt/content/CardAction;->h:Ljava/lang/String;

    const-string v5, "url"

    .line 39
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/samsung/android/sdk/ppmt/content/CardAction;->b:Ljava/lang/String;

    const-string v5, "appParam"

    .line 40
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/samsung/android/sdk/ppmt/content/CardAction;->c:Ljava/lang/String;

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

    iput-object v7, v4, Lcom/samsung/android/sdk/ppmt/content/CardAction;->d:Ljava/util/ArrayList;

    const/4 v7, 0x0

    .line 44
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 45
    iget-object v8, v4, Lcom/samsung/android/sdk/ppmt/content/CardAction;->d:Ljava/util/ArrayList;

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

    iput-object v5, v4, Lcom/samsung/android/sdk/ppmt/content/CardAction;->f:Ljava/lang/String;

    const-string v5, "comp"

    .line 49
    invoke-virtual {v3, v5, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Lcom/samsung/android/sdk/ppmt/content/CardAction;->e:I

    const-string v5, "data"

    .line 50
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/samsung/android/sdk/ppmt/content/CardAction;->g:Ljava/lang/String;

    const-string v5, "cls"

    .line 51
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/samsung/android/sdk/ppmt/content/CardAction;->i:Ljava/lang/String;

    .line 52
    invoke-static {v3}, Lcom/samsung/android/sdk/ppmt/content/CardAction;->b(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v4, Lcom/samsung/android/sdk/ppmt/content/CardAction;->j:Landroid/os/Bundle;

    .line 54
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_1
    return-object v0
.end method

.method public static a(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/ppmt/content/CardAction;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 192
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 193
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/ppmt/content/CardAction;

    .line 194
    invoke-direct {v1, p1}, Lcom/samsung/android/sdk/ppmt/content/CardAction;->b(Ljava/lang/String;)Z

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

    .line 93
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 94
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 95
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 96
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 97
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x1

    .line 98
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 99
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    const/4 v6, 0x2

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_1

    .line 131
    :pswitch_0
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    int-to-short v3, v3

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    goto :goto_1

    .line 128
    :pswitch_1
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v5

    double-to-float v3, v5

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_1

    .line 125
    :pswitch_2
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v5

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_1

    .line 122
    :pswitch_3
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/sdk/ppmt/content/CardAction;->b(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 119
    :pswitch_4
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/sdk/ppmt/content/CardAction;->d(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    .line 116
    :pswitch_5
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 113
    :pswitch_6
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    .line 110
    :pswitch_7
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/sdk/ppmt/content/CardAction;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 107
    :pswitch_8
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/sdk/ppmt/content/CardAction;->c(Lorg/json/JSONArray;)[I

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto :goto_1

    .line 104
    :pswitch_9
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 101
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
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

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

.method private b(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "app"

    .line 204
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 205
    iget-object p1, p0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->h:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_0
    const-string v0, "url"

    .line 209
    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    iget-object p1, p0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_1
    const-string v0, "intent"

    .line 214
    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 215
    iget-object p1, p0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->h:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    .line 219
    :cond_2
    iget p1, p0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->e:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return v2

    :cond_3
    const-string v0, "2"

    .line 226
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "ignore"

    .line 227
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v2

    :cond_4
    const-string p1, "api"

    .line 231
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 232
    iget-object p1, p0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->b:Ljava/lang/String;

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

.method private static c(Lorg/json/JSONArray;)[I
    .locals 3
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
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 171
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 172
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    aput v2, v0, v1

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

.method private static d(Lorg/json/JSONArray;)[Ljava/lang/String;
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

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 184
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 185
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

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


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 3

    .line 76
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "type"

    .line 77
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "url"

    .line 78
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pkg"

    .line 79
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "appParam"

    .line 80
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ref"

    .line 81
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "action"

    .line 82
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "comp"

    .line 83
    iget v2, p0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "data"

    .line 84
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cls"

    .line 85
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "extra"

    .line 86
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->j:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 241
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    const-string v0, "|"

    .line 243
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    const/4 v2, 0x0

    .line 244
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 245
    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "mid"

    .line 246
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 247
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 248
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 250
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 253
    :cond_2
    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->k:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] referrer : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method
