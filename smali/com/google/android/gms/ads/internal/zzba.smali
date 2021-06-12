.class public final Lcom/google/android/gms/ads/internal/zzba;
.super Lcom/google/android/gms/ads/internal/zzd;

# interfaces
.implements Lcom/google/android/gms/internal/zzot;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private zzanz:Z

.field private zzarj:Z

.field private zzark:Lcom/google/android/gms/internal/zzalf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzalf<",
            "Lcom/google/android/gms/internal/zzou;",
            ">;"
        }
    .end annotation
.end field

.field private zzarl:Lcom/google/android/gms/internal/zzanh;

.field private zzarm:I

.field private zzarn:Lcom/google/android/gms/internal/zzzb;

.field private final zzaro:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzv;Lcom/google/android/gms/internal/zzjn;Ljava/lang/String;Lcom/google/android/gms/internal/zzux;Lcom/google/android/gms/internal/zzakd;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/zzba;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzv;Lcom/google/android/gms/internal/zzjn;Ljava/lang/String;Lcom/google/android/gms/internal/zzux;Lcom/google/android/gms/internal/zzakd;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzv;Lcom/google/android/gms/internal/zzjn;Ljava/lang/String;Lcom/google/android/gms/internal/zzux;Lcom/google/android/gms/internal/zzakd;Z)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/zzd;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzjn;Ljava/lang/String;Lcom/google/android/gms/internal/zzux;Lcom/google/android/gms/internal/zzakd;Lcom/google/android/gms/ads/internal/zzv;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzba;->mLock:Ljava/lang/Object;

    new-instance p1, Lcom/google/android/gms/internal/zzalf;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzalf;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzba;->zzark:Lcom/google/android/gms/internal/zzalf;

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/ads/internal/zzba;->zzarm:I

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzba;->zzaro:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/google/android/gms/ads/internal/zzba;->zzarj:Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/zzba;Lcom/google/android/gms/ads/internal/zzbt;Lcom/google/android/gms/ads/internal/zzbt;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/google/android/gms/ads/internal/zzba;->zza(Lcom/google/android/gms/ads/internal/zzbt;Lcom/google/android/gms/ads/internal/zzbt;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/ads/internal/zzbt;Lcom/google/android/gms/ads/internal/zzbt;)V
    .locals 1

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/zzbt;->q:Lcom/google/android/gms/internal/zzqq;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->q:Lcom/google/android/gms/internal/zzqq;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/zzbt;->q:Lcom/google/android/gms/internal/zzqq;

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/zzbt;->r:Lcom/google/android/gms/internal/zzqt;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->r:Lcom/google/android/gms/internal/zzqt;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/zzbt;->r:Lcom/google/android/gms/internal/zzqt;

    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/zzbt;->s:Landroid/support/v4/util/SimpleArrayMap;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->s:Landroid/support/v4/util/SimpleArrayMap;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/zzbt;->s:Landroid/support/v4/util/SimpleArrayMap;

    :cond_2
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/zzbt;->t:Landroid/support/v4/util/SimpleArrayMap;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->t:Landroid/support/v4/util/SimpleArrayMap;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/zzbt;->t:Landroid/support/v4/util/SimpleArrayMap;

    :cond_3
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/zzbt;->v:Lcom/google/android/gms/internal/zzmr;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->v:Lcom/google/android/gms/internal/zzmr;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/zzbt;->v:Lcom/google/android/gms/internal/zzmr;

    :cond_4
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/zzbt;->u:Lcom/google/android/gms/internal/zzpe;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->u:Lcom/google/android/gms/internal/zzpe;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/zzbt;->u:Lcom/google/android/gms/internal/zzpe;

    :cond_5
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/zzbt;->C:Ljava/util/List;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->C:Ljava/util/List;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/zzbt;->C:Ljava/util/List;

    :cond_6
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/zzbt;->l:Lcom/google/android/gms/internal/zzafq;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->l:Lcom/google/android/gms/internal/zzafq;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/zzbt;->l:Lcom/google/android/gms/internal/zzafq;

    :cond_7
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/zzbt;->D:Lcom/google/android/gms/internal/zzafz;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->D:Lcom/google/android/gms/internal/zzafz;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/zzbt;->D:Lcom/google/android/gms/internal/zzafz;

    :cond_8
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/zzbt;->m:Lcom/google/android/gms/internal/zzke;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->m:Lcom/google/android/gms/internal/zzke;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/zzbt;->m:Lcom/google/android/gms/internal/zzke;

    :cond_9
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/zzbt;->n:Lcom/google/android/gms/internal/zzkh;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->n:Lcom/google/android/gms/internal/zzkh;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/zzbt;->n:Lcom/google/android/gms/internal/zzkh;

    :cond_a
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/zzbt;->i:Lcom/google/android/gms/internal/zzjn;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->i:Lcom/google/android/gms/internal/zzjn;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/zzbt;->i:Lcom/google/android/gms/internal/zzjn;

    :cond_b
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    :cond_c
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/zzbt;->k:Lcom/google/android/gms/internal/zzafp;

    if-nez v0, :cond_d

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/zzbt;->k:Lcom/google/android/gms/internal/zzafp;

    iput-object p0, p1, Lcom/google/android/gms/ads/internal/zzbt;->k:Lcom/google/android/gms/internal/zzafp;

    :cond_d
    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/zzoj;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzahn;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/zzbe;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/zzbe;-><init>(Lcom/google/android/gms/ads/internal/zzba;Lcom/google/android/gms/internal/zzoj;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/zzol;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzahn;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/zzbf;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/zzbf;-><init>(Lcom/google/android/gms/ads/internal/zzba;Lcom/google/android/gms/internal/zzol;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final zzcy()Lcom/google/android/gms/internal/zzui;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzba;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzba;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzafo;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzba;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafo;->q:Lcom/google/android/gms/internal/zzui;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private final zzdw()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzba;->zzdq()Lcom/google/android/gms/internal/zzzb;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzzb;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getAdUnitId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzba;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzba;->zzaro:Ljava/lang/String;

    return-object v0
.end method

.method public final pause()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native Ad DOES NOT support pause()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final resume()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native Ad DOES NOT support resume()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final showInterstitial()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Interstitial is NOT supported by NativeAdManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzafp;Lcom/google/android/gms/internal/zznu;)V
    .locals 12

    iget-object v0, p1, Lcom/google/android/gms/internal/zzafp;->d:Lcom/google/android/gms/internal/zzjn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzba;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzafp;->d:Lcom/google/android/gms/internal/zzjn;

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzbt;->i:Lcom/google/android/gms/internal/zzjn;

    :cond_0
    iget v0, p1, Lcom/google/android/gms/internal/zzafp;->e:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    sget-object p2, Lcom/google/android/gms/internal/zzahn;->a:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/ads/internal/zzbb;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/ads/internal/zzbb;-><init>(Lcom/google/android/gms/ads/internal/zzba;Lcom/google/android/gms/internal/zzafp;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/internal/zzafp;->a:Lcom/google/android/gms/internal/zzaat;

    iget v0, v0, Lcom/google/android/gms/internal/zzaat;->Z:I

    const/4 v1, 0x1

    const/4 v7, 0x0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzba;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iput v7, v0, Lcom/google/android/gms/ads/internal/zzbt;->F:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzba;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->d()Lcom/google/android/gms/internal/zzya;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzba;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/zzbt;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzba;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/zzbt;->d:Lcom/google/android/gms/internal/zzcv;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/zzba;->zzanw:Lcom/google/android/gms/internal/zzux;

    move-object v3, p0

    move-object v4, p1

    move-object v8, p0

    move-object v9, p2

    invoke-static/range {v2 .. v9}, Lcom/google/android/gms/internal/zzya;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/zzafp;Lcom/google/android/gms/internal/zzcv;Lcom/google/android/gms/internal/zzanh;Lcom/google/android/gms/internal/zzux;Lcom/google/android/gms/internal/zzyb;Lcom/google/android/gms/internal/zznu;)Lcom/google/android/gms/internal/zzaif;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzbt;->h:Lcom/google/android/gms/internal/zzaif;

    const-string p1, "AdRenderer: "

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zzba;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/zzbt;->h:Lcom/google/android/gms/internal/zzaif;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;)V

    return-void

    :cond_3
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzafp;->b:Lcom/google/android/gms/internal/zzaax;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzaax;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "slots"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "ads"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzba;->zzdw()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v0, :cond_6

    new-instance v11, Lcom/google/android/gms/ads/internal/zzbc;

    move-object v1, v11

    move-object v2, p0

    move v3, v10

    move-object v4, p2

    move v5, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/ads/internal/zzbc;-><init>(Lcom/google/android/gms/ads/internal/zzba;ILorg/json/JSONArray;ILcom/google/android/gms/internal/zzafp;)V

    invoke-static {v8, v11}, Lcom/google/android/gms/internal/zzahh;->a(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/zzakv;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result p1

    if-ge v7, p1, :cond_7

    :try_start_1
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzakv;

    sget-object p2, Lcom/google/android/gms/internal/zznh;->bn:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/gms/internal/zzakv;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzou;

    sget-object p2, Lcom/google/android/gms/internal/zzahn;->a:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/ads/internal/zzbd;

    invoke-direct {v0, p0, p1, v7, v9}, Lcom/google/android/gms/ads/internal/zzbd;-><init>(Lcom/google/android/gms/ads/internal/zzba;Lcom/google/android/gms/internal/zzou;ILjava/util/List;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    const-string p2, "Exception occurred while getting an ad response"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_1
    move-exception p1

    const-string p2, "Exception occurred while getting an ad response"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_7
    return-void

    :catch_2
    move-exception p1

    const-string p2, "Malformed native ad response"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v7}, Lcom/google/android/gms/ads/internal/zza;->zzi(I)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzoa;)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "CustomRendering is NOT supported by NativeAdManager."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzoq;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzba;->zzarl:Lcom/google/android/gms/internal/zzanh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzba;->zzarl:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzanh;->a(Lcom/google/android/gms/internal/zzoq;)V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzos;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzba;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafo;->j:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->i()Lcom/google/android/gms/internal/zzaft;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaft;->u()Lcom/google/android/gms/internal/zzfs;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzba;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->i:Lcom/google/android/gms/internal/zzjn;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzba;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    new-instance v3, Lcom/google/android/gms/internal/zzfv;

    invoke-direct {v3, p1}, Lcom/google/android/gms/internal/zzfv;-><init>(Lcom/google/android/gms/internal/zzos;)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/zzfs;->a(Lcom/google/android/gms/internal/zzjn;Lcom/google/android/gms/internal/zzafo;Lcom/google/android/gms/internal/zzhd;Lcom/google/android/gms/internal/zzanh;)V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzxl;)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "In App Purchase is NOT supported by NativeAdManager."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final zza(Lcom/google/android/gms/internal/zzafo;Lcom/google/android/gms/internal/zzafo;)Z
    .locals 25

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/ads/internal/zzba;->zzd(Ljava/util/List;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzba;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/zzbt;->d()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-boolean v1, v8, Lcom/google/android/gms/internal/zzafo;->m:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/ads/internal/zzba;->zzdw()V

    :try_start_0
    iget-object v1, v8, Lcom/google/android/gms/internal/zzafo;->o:Lcom/google/android/gms/internal/zzva;

    if-eqz v1, :cond_0

    iget-object v1, v8, Lcom/google/android/gms/internal/zzafo;->o:Lcom/google/android/gms/internal/zzva;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzva;->zzme()Lcom/google/android/gms/internal/zzvj;

    move-result-object v1

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, v0

    :goto_0
    iget-object v1, v8, Lcom/google/android/gms/internal/zzafo;->o:Lcom/google/android/gms/internal/zzva;

    if-eqz v1, :cond_1

    iget-object v1, v8, Lcom/google/android/gms/internal/zzafo;->o:Lcom/google/android/gms/internal/zzva;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzva;->zzmf()Lcom/google/android/gms/internal/zzvm;

    move-result-object v1

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object v6, v0

    :goto_1
    iget-object v1, v8, Lcom/google/android/gms/internal/zzafo;->o:Lcom/google/android/gms/internal/zzva;

    if-eqz v1, :cond_2

    iget-object v1, v8, Lcom/google/android/gms/internal/zzafo;->o:Lcom/google/android/gms/internal/zzva;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzva;->zzmj()Lcom/google/android/gms/internal/zzqm;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v0

    :goto_2
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/ads/internal/zzba;->zzc(Lcom/google/android/gms/internal/zzafo;)Ljava/lang/String;

    move-result-object v3

    if-eqz v5, :cond_5

    iget-object v4, v7, Lcom/google/android/gms/ads/internal/zzba;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzbt;->q:Lcom/google/android/gms/internal/zzqq;

    if-eqz v4, :cond_5

    new-instance v6, Lcom/google/android/gms/internal/zzoj;

    invoke-interface {v5}, Lcom/google/android/gms/internal/zzvj;->getHeadline()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5}, Lcom/google/android/gms/internal/zzvj;->getImages()Ljava/util/List;

    move-result-object v11

    invoke-interface {v5}, Lcom/google/android/gms/internal/zzvj;->getBody()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5}, Lcom/google/android/gms/internal/zzvj;->zzjs()Lcom/google/android/gms/internal/zzpq;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v5}, Lcom/google/android/gms/internal/zzvj;->zzjs()Lcom/google/android/gms/internal/zzpq;

    move-result-object v1

    move-object v13, v1

    goto :goto_3

    :cond_3
    move-object v13, v0

    :goto_3
    invoke-interface {v5}, Lcom/google/android/gms/internal/zzvj;->getCallToAction()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5}, Lcom/google/android/gms/internal/zzvj;->getStarRating()D

    move-result-wide v15

    invoke-interface {v5}, Lcom/google/android/gms/internal/zzvj;->getStore()Ljava/lang/String;

    move-result-object v17

    invoke-interface {v5}, Lcom/google/android/gms/internal/zzvj;->getPrice()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-interface {v5}, Lcom/google/android/gms/internal/zzvj;->getExtras()Landroid/os/Bundle;

    move-result-object v20

    invoke-interface {v5}, Lcom/google/android/gms/internal/zzvj;->getVideoController()Lcom/google/android/gms/internal/zzll;

    move-result-object v21

    invoke-interface {v5}, Lcom/google/android/gms/internal/zzvj;->zzml()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v5}, Lcom/google/android/gms/internal/zzvj;->zzml()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzn;->zzx(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :cond_4
    move-object/from16 v22, v0

    invoke-interface {v5}, Lcom/google/android/gms/internal/zzvj;->zzjx()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v23

    move-object v9, v6

    move-object/from16 v24, v3

    invoke-direct/range {v9 .. v24}, Lcom/google/android/gms/internal/zzoj;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/zzpq;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzog;Landroid/os/Bundle;Lcom/google/android/gms/internal/zzll;Landroid/view/View;Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzor;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzba;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/zzbt;->c:Landroid/content/Context;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzba;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/zzbt;->d:Lcom/google/android/gms/internal/zzcv;

    move-object v1, v0

    move-object/from16 v3, p0

    move-object v9, v6

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzor;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzot;Lcom/google/android/gms/internal/zzcv;Lcom/google/android/gms/internal/zzvj;Lcom/google/android/gms/internal/zzou;)V

    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/zzoj;->zzb(Lcom/google/android/gms/internal/zzos;)V

    invoke-direct {v7, v9}, Lcom/google/android/gms/ads/internal/zzba;->zza(Lcom/google/android/gms/internal/zzoj;)V

    goto/16 :goto_5

    :cond_5
    if-eqz v6, :cond_8

    iget-object v4, v7, Lcom/google/android/gms/ads/internal/zzba;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzbt;->r:Lcom/google/android/gms/internal/zzqt;

    if-eqz v4, :cond_8

    new-instance v5, Lcom/google/android/gms/internal/zzol;

    invoke-interface {v6}, Lcom/google/android/gms/internal/zzvm;->getHeadline()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6}, Lcom/google/android/gms/internal/zzvm;->getImages()Ljava/util/List;

    move-result-object v11

    invoke-interface {v6}, Lcom/google/android/gms/internal/zzvm;->getBody()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6}, Lcom/google/android/gms/internal/zzvm;->zzjz()Lcom/google/android/gms/internal/zzpq;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v6}, Lcom/google/android/gms/internal/zzvm;->zzjz()Lcom/google/android/gms/internal/zzpq;

    move-result-object v1

    move-object v13, v1

    goto :goto_4

    :cond_6
    move-object v13, v0

    :goto_4
    invoke-interface {v6}, Lcom/google/android/gms/internal/zzvm;->getCallToAction()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v6}, Lcom/google/android/gms/internal/zzvm;->getAdvertiser()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-interface {v6}, Lcom/google/android/gms/internal/zzvm;->getExtras()Landroid/os/Bundle;

    move-result-object v17

    invoke-interface {v6}, Lcom/google/android/gms/internal/zzvm;->getVideoController()Lcom/google/android/gms/internal/zzll;

    move-result-object v18

    invoke-interface {v6}, Lcom/google/android/gms/internal/zzvm;->zzml()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v6}, Lcom/google/android/gms/internal/zzvm;->zzml()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzn;->zzx(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :cond_7
    move-object/from16 v19, v0

    invoke-interface {v6}, Lcom/google/android/gms/internal/zzvm;->zzjx()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v20

    move-object v9, v5

    move-object/from16 v21, v3

    invoke-direct/range {v9 .. v21}, Lcom/google/android/gms/internal/zzol;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/zzpq;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzog;Landroid/os/Bundle;Lcom/google/android/gms/internal/zzll;Landroid/view/View;Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzor;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzba;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/zzbt;->c:Landroid/content/Context;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzba;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/zzbt;->d:Lcom/google/android/gms/internal/zzcv;

    move-object v1, v0

    move-object/from16 v3, p0

    move-object v9, v5

    move-object v5, v6

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzor;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzot;Lcom/google/android/gms/internal/zzcv;Lcom/google/android/gms/internal/zzvm;Lcom/google/android/gms/internal/zzou;)V

    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/zzol;->zzb(Lcom/google/android/gms/internal/zzos;)V

    invoke-direct {v7, v9}, Lcom/google/android/gms/ads/internal/zzba;->zza(Lcom/google/android/gms/internal/zzol;)V

    goto/16 :goto_5

    :cond_8
    if-eqz v1, :cond_9

    iget-object v0, v7, Lcom/google/android/gms/ads/internal/zzba;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->t:Landroid/support/v4/util/SimpleArrayMap;

    if-eqz v0, :cond_9

    iget-object v0, v7, Lcom/google/android/gms/ads/internal/zzba;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->t:Landroid/support/v4/util/SimpleArrayMap;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzqm;->getCustomTemplateId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/google/android/gms/internal/zzahn;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/ads/internal/zzbh;

    invoke-direct {v2, v7, v1}, Lcom/google/android/gms/ads/internal/zzbh;-><init>(Lcom/google/android/gms/ads/internal/zzba;Lcom/google/android/gms/internal/zzqm;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    :cond_9
    const-string v0, "No matching mapper/listener for retrieved native ad template."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Lcom/google/android/gms/ads/internal/zza;->zzi(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v0

    const-string v1, "Failed to get native ad mapper"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_a
    iget-object v0, v8, Lcom/google/android/gms/internal/zzafo;->B:Lcom/google/android/gms/internal/zzou;

    iget-boolean v1, v7, Lcom/google/android/gms/ads/internal/zzba;->zzarj:Z

    if-eqz v1, :cond_b

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzba;->zzark:Lcom/google/android/gms/internal/zzalf;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzalf;->b(Ljava/lang/Object;)V

    goto :goto_5

    :cond_b
    instance-of v1, v0, Lcom/google/android/gms/internal/zzol;

    if-eqz v1, :cond_c

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzba;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->r:Lcom/google/android/gms/internal/zzqt;

    if-eqz v1, :cond_c

    iget-object v0, v8, Lcom/google/android/gms/internal/zzafo;->B:Lcom/google/android/gms/internal/zzou;

    check-cast v0, Lcom/google/android/gms/internal/zzol;

    invoke-direct {v7, v0}, Lcom/google/android/gms/ads/internal/zzba;->zza(Lcom/google/android/gms/internal/zzol;)V

    goto :goto_5

    :cond_c
    instance-of v1, v0, Lcom/google/android/gms/internal/zzoj;

    if-eqz v1, :cond_d

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzba;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->q:Lcom/google/android/gms/internal/zzqq;

    if-eqz v1, :cond_d

    iget-object v0, v8, Lcom/google/android/gms/internal/zzafo;->B:Lcom/google/android/gms/internal/zzou;

    check-cast v0, Lcom/google/android/gms/internal/zzoj;

    invoke-direct {v7, v0}, Lcom/google/android/gms/ads/internal/zzba;->zza(Lcom/google/android/gms/internal/zzoj;)V

    goto :goto_5

    :cond_d
    instance-of v1, v0, Lcom/google/android/gms/internal/zzon;

    if-eqz v1, :cond_e

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzba;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->t:Landroid/support/v4/util/SimpleArrayMap;

    if-eqz v1, :cond_e

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzba;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->t:Landroid/support/v4/util/SimpleArrayMap;

    check-cast v0, Lcom/google/android/gms/internal/zzon;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzon;->getCustomTemplateId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzon;->getCustomTemplateId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzahn;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/ads/internal/zzbg;

    invoke-direct {v2, v7, v0, v8}, Lcom/google/android/gms/ads/internal/zzbg;-><init>(Lcom/google/android/gms/ads/internal/zzba;Ljava/lang/String;Lcom/google/android/gms/internal/zzafo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_5
    invoke-super/range {p0 .. p2}, Lcom/google/android/gms/ads/internal/zzd;->zza(Lcom/google/android/gms/internal/zzafo;Lcom/google/android/gms/internal/zzafo;)Z

    move-result v0

    return v0

    :cond_e
    const-string v0, "No matching listener for retrieved native ad template."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Lcom/google/android/gms/ads/internal/zza;->zzi(I)V

    return v2

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native ad DOES NOT have custom rendering mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final zza(Lcom/google/android/gms/internal/zzjj;Lcom/google/android/gms/internal/zzafo;Z)Z
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzba;->zzann:Lcom/google/android/gms/ads/internal/zzbi;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzbi;->d()Z

    move-result p1

    return p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzjj;Lcom/google/android/gms/internal/zznu;)Z
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzba;->zzdp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget v0, p0, Lcom/google/android/gms/ads/internal/zzba;->zzarm:I

    invoke-super {p0, p1, p2, v0}, Lcom/google/android/gms/ads/internal/zzd;->zza(Lcom/google/android/gms/internal/zzjj;Lcom/google/android/gms/internal/zznu;I)Z

    move-result p1

    return p1

    :catch_0
    move-exception p1

    const-string p2, "Error initializing webview."

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/android/gms/internal/zzakb;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Ads"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected final zzby()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/zza;->zzc(Z)V

    return-void
.end method

.method protected final zzc(IZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzba;->zzdw()V

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzd;->zzc(IZ)V

    return-void
.end method

.method protected final zzc(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/internal/zzd;->zzc(Z)V

    iget-boolean p1, p0, Lcom/google/android/gms/ads/internal/zzba;->zzanz:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/zznh;->bS:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzba;->zzds()V

    :cond_0
    return-void
.end method

.method public final zzci()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzba;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzafo;->o:Lcom/google/android/gms/internal/zzva;

    if-nez v1, :cond_0

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/zzd;->zzci()V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, v0, Lcom/google/android/gms/internal/zzafo;->o:Lcom/google/android/gms/internal/zzva;

    const/4 v1, 0x0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzva;->zzme()Lcom/google/android/gms/internal/zzvj;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzvj;->getVideoController()Lcom/google/android/gms/internal/zzll;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/zzva;->zzmf()Lcom/google/android/gms/internal/zzvm;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzvm;->getVideoController()Lcom/google/android/gms/internal/zzll;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lcom/google/android/gms/internal/zzva;->zzmj()Lcom/google/android/gms/internal/zzqm;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqm;->getVideoController()Lcom/google/android/gms/internal/zzll;

    move-result-object v1

    :cond_3
    :goto_0
    if-nez v1, :cond_4

    return-void

    :cond_4
    invoke-interface {v1}, Lcom/google/android/gms/internal/zzll;->zzij()Lcom/google/android/gms/internal/zzlo;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlo;->onVideoEnd()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Unable to call onVideoEnd()"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzcj()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzba;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    if-eqz v0, :cond_0

    const-string v0, "com.google.ads.mediation.admob.AdMobAdapter"

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzba;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafo;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zza;->zzca()V

    return-void

    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/ads/internal/zzd;->zzcj()V

    return-void
.end method

.method public final zzco()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzba;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    if-eqz v0, :cond_0

    const-string v0, "com.google.ads.mediation.admob.AdMobAdapter"

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzba;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafo;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zza;->zzbz()V

    return-void

    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/ads/internal/zzd;->zzco()V

    return-void
.end method

.method public final zzcv()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzba;->zzarl:Lcom/google/android/gms/internal/zzanh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzba;->zzarl:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzanh;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzba;->zzarl:Lcom/google/android/gms/internal/zzanh;

    :cond_0
    return-void
.end method

.method public final zzcw()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzba;->zzcy()Lcom/google/android/gms/internal/zzui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzba;->zzcy()Lcom/google/android/gms/internal/zzui;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzui;->o:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzcx()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzba;->zzcy()Lcom/google/android/gms/internal/zzui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzba;->zzcy()Lcom/google/android/gms/internal/zzui;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzui;->p:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzd(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "setNativeTemplates must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzba;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzbt;->C:Ljava/util/List;

    return-void
.end method

.method final zzdp()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzanv;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzba;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Initializing webview native ads utills"

    invoke-static {v1}, Lcom/google/android/gms/internal/zzagf;->a(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/zzzf;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzba;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v3, v2, Lcom/google/android/gms/ads/internal/zzbt;->c:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/zzba;->zzaro:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzba;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v6, v2, Lcom/google/android/gms/ads/internal/zzbt;->d:Lcom/google/android/gms/internal/zzcv;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzba;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v7, v2, Lcom/google/android/gms/ads/internal/zzbt;->e:Lcom/google/android/gms/internal/zzakd;

    move-object v2, v1

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/zzzf;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzba;Ljava/lang/String;Lcom/google/android/gms/internal/zzcv;Lcom/google/android/gms/internal/zzakd;)V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/zzba;->zzarn:Lcom/google/android/gms/internal/zzzb;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzdq()Lcom/google/android/gms/internal/zzzb;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzba;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzba;->zzarn:Lcom/google/android/gms/internal/zzzb;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected final zzdr()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Lcom/google/android/gms/internal/zzou;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzba;->zzark:Lcom/google/android/gms/internal/zzalf;

    return-object v0
.end method

.method public final zzds()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzba;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzba;->zzarl:Lcom/google/android/gms/internal/zzanh;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->i()Lcom/google/android/gms/internal/zzaft;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaft;->u()Lcom/google/android/gms/internal/zzfs;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzba;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->i:Lcom/google/android/gms/internal/zzjn;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzba;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzba;->zzarl:Lcom/google/android/gms/internal/zzanh;

    if-eqz v3, :cond_0

    check-cast v3, Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzba;->zzarl:Lcom/google/android/gms/internal/zzanh;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzfs;->a(Lcom/google/android/gms/internal/zzjn;Lcom/google/android/gms/internal/zzafo;Landroid/view/View;Lcom/google/android/gms/internal/zzanh;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzba;->zzanz:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    throw v0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzba;->zzanz:Z

    const-string v0, "Request to enable ActiveView before adState is available."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final zzdt()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzba;->zzanz:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzba;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzba;->zzarl:Lcom/google/android/gms/internal/zzanh;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->i()Lcom/google/android/gms/internal/zzaft;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaft;->u()Lcom/google/android/gms/internal/zzfs;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzba;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzfs;->a(Lcom/google/android/gms/internal/zzafo;)V

    return-void

    :cond_0
    const-string v0, "Request to enable ActiveView before adState is available."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final zzdu()Landroid/support/v4/util/SimpleArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzqz;",
            ">;"
        }
    .end annotation

    const-string v0, "getOnCustomTemplateAdLoadedListeners must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzba;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->t:Landroid/support/v4/util/SimpleArrayMap;

    return-object v0
.end method

.method public final zzdv()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzba;->zzarl:Lcom/google/android/gms/internal/zzanh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzba;->zzarl:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzanh;->b()Lcom/google/android/gms/internal/zzaoa;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzba;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->u:Lcom/google/android/gms/internal/zzpe;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzba;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->u:Lcom/google/android/gms/internal/zzpe;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzpe;->g:Lcom/google/android/gms/internal/zzmr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzba;->zzarl:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzanh;->b()Lcom/google/android/gms/internal/zzaoa;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzba;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->u:Lcom/google/android/gms/internal/zzpe;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzpe;->g:Lcom/google/android/gms/internal/zzmr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaoa;->zzb(Lcom/google/android/gms/internal/zzmr;)V

    :cond_0
    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/zzanh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzba;->zzarl:Lcom/google/android/gms/internal/zzanh;

    return-void
.end method

.method protected final zzi(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/ads/internal/zza;->zzc(IZ)V

    return-void
.end method

.method public final zzj(I)V
    .locals 1

    const-string v0, "setMaxNumberOfAds must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    iput p1, p0, Lcom/google/android/gms/ads/internal/zzba;->zzarm:I

    return-void
.end method

.method public final zzs(Ljava/lang/String;)Lcom/google/android/gms/internal/zzqw;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const-string v0, "getOnCustomClickListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzba;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->s:Landroid/support/v4/util/SimpleArrayMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzba;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->s:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzqw;

    return-object p1
.end method
