.class public final Lcom/google/android/gms/internal/zzui;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzuh;",
            ">;"
        }
    .end annotation
.end field

.field public final b:J

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Z

.field public final h:Ljava/lang/String;

.field public final i:J

.field public final j:Ljava/lang/String;

.field public final k:I

.field public final l:I

.field public final m:J

.field public final n:Z

.field public final o:Z

.field public final p:Z

.field public q:I

.field public r:I

.field public s:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzui;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;JIILjava/lang/String;IIJZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzuh;",
            ">;J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "JII",
            "Ljava/lang/String;",
            "IIJZ)V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzui;->a:Ljava/util/List;

    move-wide v1, p2

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzui;->b:J

    move-object v1, p4

    iput-object v1, v0, Lcom/google/android/gms/internal/zzui;->c:Ljava/util/List;

    move-object v1, p5

    iput-object v1, v0, Lcom/google/android/gms/internal/zzui;->d:Ljava/util/List;

    move-object v1, p6

    iput-object v1, v0, Lcom/google/android/gms/internal/zzui;->e:Ljava/util/List;

    move-object v1, p7

    iput-object v1, v0, Lcom/google/android/gms/internal/zzui;->f:Ljava/util/List;

    move v1, p8

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzui;->g:Z

    move-object v1, p9

    iput-object v1, v0, Lcom/google/android/gms/internal/zzui;->h:Ljava/lang/String;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzui;->i:J

    const/4 v3, 0x0

    iput v3, v0, Lcom/google/android/gms/internal/zzui;->q:I

    const/4 v4, 0x1

    iput v4, v0, Lcom/google/android/gms/internal/zzui;->r:I

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/google/android/gms/internal/zzui;->j:Ljava/lang/String;

    iput v3, v0, Lcom/google/android/gms/internal/zzui;->k:I

    const/4 v4, -0x1

    iput v4, v0, Lcom/google/android/gms/internal/zzui;->l:I

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzui;->m:J

    iput-boolean v3, v0, Lcom/google/android/gms/internal/zzui;->n:Z

    iput-boolean v3, v0, Lcom/google/android/gms/internal/zzui;->o:Z

    iput-boolean v3, v0, Lcom/google/android/gms/internal/zzui;->p:Z

    iput-boolean v3, v0, Lcom/google/android/gms/internal/zzui;->s:Z

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Mediation Response JSON: "

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->a(Ljava/lang/String;)V

    :cond_1
    const-string v0, "ad_networks"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_4

    new-instance v6, Lcom/google/android/gms/internal/zzuh;

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/android/gms/internal/zzuh;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzuh;->a()Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/google/android/gms/internal/zzui;->s:Z

    :cond_2
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-gez v5, :cond_3

    invoke-static {v6}, Lcom/google/android/gms/internal/zzui;->a(Lcom/google/android/gms/internal/zzuh;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v5, v4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    iput v5, p0, Lcom/google/android/gms/internal/zzui;->q:I

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzui;->r:I

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzui;->a:Ljava/util/List;

    const-string v0, "qdata"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzui;->h:Ljava/lang/String;

    const-string v0, "fs_model_type"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzui;->l:I

    const-string v0, "timeout_ms"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/internal/zzui;->m:J

    const-string v0, "settings"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    const-string v4, "ad_network_timeout_millis"

    invoke-virtual {p1, v4, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/internal/zzui;->b:J

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->v()Lcom/google/android/gms/internal/zzuq;

    const-string v4, "click_urls"

    invoke-static {p1, v4}, Lcom/google/android/gms/internal/zzuq;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/zzui;->c:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->v()Lcom/google/android/gms/internal/zzuq;

    const-string v4, "imp_urls"

    invoke-static {p1, v4}, Lcom/google/android/gms/internal/zzuq;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/zzui;->d:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->v()Lcom/google/android/gms/internal/zzuq;

    const-string v4, "nofill_urls"

    invoke-static {p1, v4}, Lcom/google/android/gms/internal/zzuq;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/zzui;->e:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->v()Lcom/google/android/gms/internal/zzuq;

    const-string v4, "remote_ping_urls"

    invoke-static {p1, v4}, Lcom/google/android/gms/internal/zzuq;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/zzui;->f:Ljava/util/List;

    const-string v4, "render_in_browser"

    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/gms/internal/zzui;->g:Z

    const-string v4, "refresh"

    invoke-virtual {p1, v4, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_5

    const-wide/16 v1, 0x3e8

    mul-long v1, v1, v4

    :cond_5
    iput-wide v1, p0, Lcom/google/android/gms/internal/zzui;->i:J

    const-string v1, "rewards"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaeq;->a(Lorg/json/JSONArray;)Lcom/google/android/gms/internal/zzaeq;

    move-result-object v1

    if-nez v1, :cond_6

    iput-object v0, p0, Lcom/google/android/gms/internal/zzui;->j:Ljava/lang/String;

    iput v3, p0, Lcom/google/android/gms/internal/zzui;->k:I

    goto :goto_2

    :cond_6
    iget-object v0, v1, Lcom/google/android/gms/internal/zzaeq;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzui;->j:Ljava/lang/String;

    iget v0, v1, Lcom/google/android/gms/internal/zzaeq;->c:I

    iput v0, p0, Lcom/google/android/gms/internal/zzui;->k:I

    :goto_2
    const-string v0, "use_displayed_impression"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzui;->n:Z

    const-string v0, "allow_pub_rendered_attribution"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzui;->o:Z

    const-string v0, "allow_pub_owned_ad_view"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzui;->p:Z

    return-void

    :cond_7
    iput-wide v1, p0, Lcom/google/android/gms/internal/zzui;->b:J

    iput-object v0, p0, Lcom/google/android/gms/internal/zzui;->c:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzui;->d:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzui;->e:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzui;->f:Ljava/util/List;

    iput-wide v1, p0, Lcom/google/android/gms/internal/zzui;->i:J

    iput-object v0, p0, Lcom/google/android/gms/internal/zzui;->j:Ljava/lang/String;

    iput v3, p0, Lcom/google/android/gms/internal/zzui;->k:I

    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzui;->n:Z

    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzui;->g:Z

    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzui;->o:Z

    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzui;->p:Z

    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/zzuh;)Z
    .locals 2

    iget-object p0, p0, Lcom/google/android/gms/internal/zzuh;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
