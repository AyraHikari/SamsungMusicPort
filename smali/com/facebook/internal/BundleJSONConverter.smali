.class public Lcom/facebook/internal/BundleJSONConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/BundleJSONConverter$Setter;
    }
.end annotation


# static fields
.field private static final SETTERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/facebook/internal/BundleJSONConverter$Setter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/internal/BundleJSONConverter;->SETTERS:Ljava/util/Map;

    .line 43
    sget-object v0, Lcom/facebook/internal/BundleJSONConverter;->SETTERS:Ljava/util/Map;

    const-class v1, Ljava/lang/Boolean;

    new-instance v2, Lcom/facebook/internal/BundleJSONConverter$1;

    invoke-direct {v2}, Lcom/facebook/internal/BundleJSONConverter$1;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/facebook/internal/BundleJSONConverter;->SETTERS:Ljava/util/Map;

    const-class v1, Ljava/lang/Integer;

    new-instance v2, Lcom/facebook/internal/BundleJSONConverter$2;

    invoke-direct {v2}, Lcom/facebook/internal/BundleJSONConverter$2;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/facebook/internal/BundleJSONConverter;->SETTERS:Ljava/util/Map;

    const-class v1, Ljava/lang/Long;

    new-instance v2, Lcom/facebook/internal/BundleJSONConverter$3;

    invoke-direct {v2}, Lcom/facebook/internal/BundleJSONConverter$3;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/facebook/internal/BundleJSONConverter;->SETTERS:Ljava/util/Map;

    const-class v1, Ljava/lang/Double;

    new-instance v2, Lcom/facebook/internal/BundleJSONConverter$4;

    invoke-direct {v2}, Lcom/facebook/internal/BundleJSONConverter$4;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/facebook/internal/BundleJSONConverter;->SETTERS:Ljava/util/Map;

    const-class v1, Ljava/lang/String;

    new-instance v2, Lcom/facebook/internal/BundleJSONConverter$5;

    invoke-direct {v2}, Lcom/facebook/internal/BundleJSONConverter$5;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/facebook/internal/BundleJSONConverter;->SETTERS:Ljava/util/Map;

    const-class v1, [Ljava/lang/String;

    new-instance v2, Lcom/facebook/internal/BundleJSONConverter$6;

    invoke-direct {v2}, Lcom/facebook/internal/BundleJSONConverter$6;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/facebook/internal/BundleJSONConverter;->SETTERS:Ljava/util/Map;

    const-class v1, Lorg/json/JSONArray;

    new-instance v2, Lcom/facebook/internal/BundleJSONConverter$7;

    invoke-direct {v2}, Lcom/facebook/internal/BundleJSONConverter$7;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 175
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 177
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 178
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 179
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 180
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 181
    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v3, v4, :cond_1

    goto :goto_0

    .line 187
    :cond_1
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_2

    .line 188
    check-cast v3, Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/facebook/internal/BundleJSONConverter;->convertToBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 192
    :cond_2
    sget-object v4, Lcom/facebook/internal/BundleJSONConverter;->SETTERS:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/internal/BundleJSONConverter$Setter;

    if-eqz v4, :cond_3

    .line 196
    invoke-interface {v4, v0, v2, v3}, Lcom/facebook/internal/BundleJSONConverter$Setter;->setOnBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 194
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return-object v0
.end method

.method public static convertToJSON(Landroid/os/Bundle;)Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 137
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 139
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 140
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    instance-of v4, v3, Ljava/util/List;

    if-eqz v4, :cond_2

    .line 148
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 150
    check-cast v3, Ljava/util/List;

    .line 151
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 152
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 154
    :cond_1
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 159
    :cond_2
    instance-of v4, v3, Landroid/os/Bundle;

    if-eqz v4, :cond_3

    .line 160
    check-cast v3, Landroid/os/Bundle;

    invoke-static {v3}, Lcom/facebook/internal/BundleJSONConverter;->convertToJSON(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 164
    :cond_3
    sget-object v4, Lcom/facebook/internal/BundleJSONConverter;->SETTERS:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/internal/BundleJSONConverter$Setter;

    if-eqz v4, :cond_4

    .line 168
    invoke-interface {v4, v0, v2, v3}, Lcom/facebook/internal/BundleJSONConverter$Setter;->setOnJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 166
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    return-object v0
.end method
