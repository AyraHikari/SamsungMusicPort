.class public final Lcom/google/android/gms/internal/zzuq;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, ""

    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzafo;Ljava/lang/String;ZLjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzafo;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p5, :cond_3

    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p4, :cond_1

    const-string p4, "1"

    goto :goto_0

    :cond_1
    const-string p4, "0"

    :goto_0
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_1
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "@gw_adlocid@"

    invoke-static {v0, v1, p3}, Lcom/google/android/gms/internal/zzuq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@gw_adnetrefresh@"

    invoke-static {v0, v1, p4}, Lcom/google/android/gms/internal/zzuq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@gw_qdata@"

    iget-object v2, p2, Lcom/google/android/gms/internal/zzafo;->q:Lcom/google/android/gms/internal/zzui;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzui;->h:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzuq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@gw_sdkver@"

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/zzuq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@gw_sessid@"

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzuq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@gw_seqnum@"

    iget-object v2, p2, Lcom/google/android/gms/internal/zzafo;->i:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzuq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@gw_adnetstatus@"

    iget-object v2, p2, Lcom/google/android/gms/internal/zzafo;->s:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzuq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/internal/zzafo;->n:Lcom/google/android/gms/internal/zzuh;

    if-eqz v1, :cond_2

    const-string v1, "@gw_adnetid@"

    iget-object v2, p2, Lcom/google/android/gms/internal/zzafo;->n:Lcom/google/android/gms/internal/zzuh;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzuh;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzuq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@gw_allocid@"

    iget-object v2, p2, Lcom/google/android/gms/internal/zzafo;->n:Lcom/google/android/gms/internal/zzuh;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzuh;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzuq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzafi;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->e()Lcom/google/android/gms/internal/zzahn;

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/zzahn;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/zzaeq;)V
    .locals 5
    .param p4    # Lcom/google/android/gms/internal/zzaeq;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzaeq;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->k()Lcom/google/android/gms/common/util/zzd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "@gw_rwd_userid@"

    invoke-static {v2, v3, p3}, Lcom/google/android/gms/internal/zzuq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "@gw_tmstmp@"

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/zzuq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz p4, :cond_1

    const-string v3, "@gw_rwd_itm@"

    iget-object v4, p4, Lcom/google/android/gms/internal/zzaeq;->b:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/zzuq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "@gw_rwd_amt@"

    iget v4, p4, Lcom/google/android/gms/internal/zzaeq;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/zzuq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->e()Lcom/google/android/gms/internal/zzahn;

    invoke-static {p0, p1, v2}, Lcom/google/android/gms/internal/zzahn;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static a(Ljava/lang/String;[I)Z
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    array-length v0, p1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    const-string v0, "x"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    :try_start_0
    aget-object v0, p0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, p1, v1

    const/4 v0, 0x1

    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    aput p0, p1, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v1
.end method
