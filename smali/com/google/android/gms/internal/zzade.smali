.class public final Lcom/google/android/gms/internal/zzade;
.super Lcom/google/android/gms/ads/internal/zzd;

# interfaces
.implements Lcom/google/android/gms/internal/zzaef;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# static fields
.field private static zzcuy:Lcom/google/android/gms/internal/zzade;

.field private static final zzcuz:Lcom/google/android/gms/internal/zzuw;


# instance fields
.field private zzaqg:Z

.field private zzaqh:Lcom/google/android/gms/internal/zzafe;

.field private final zzcva:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzael;",
            ">;"
        }
    .end annotation
.end field

.field private zzcvb:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzuw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzuw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzade;->zzcuz:Lcom/google/android/gms/internal/zzuw;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzv;Lcom/google/android/gms/internal/zzjn;Lcom/google/android/gms/internal/zzux;Lcom/google/android/gms/internal/zzakd;)V
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/zzd;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzjn;Ljava/lang/String;Lcom/google/android/gms/internal/zzux;Lcom/google/android/gms/internal/zzakd;Lcom/google/android/gms/ads/internal/zzv;)V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzade;->zzcva:Ljava/util/Map;

    sput-object p0, Lcom/google/android/gms/internal/zzade;->zzcuy:Lcom/google/android/gms/internal/zzade;

    new-instance p2, Lcom/google/android/gms/internal/zzafe;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/zzafe;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzade;->zzaqh:Lcom/google/android/gms/internal/zzafe;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzade;I)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/zza;->zzi(I)V

    return-void
.end method

.method private static zzc(Lcom/google/android/gms/internal/zzafp;)Lcom/google/android/gms/internal/zzafp;
    .locals 44

    move-object/from16 v1, p0

    const-string v0, "Creating mediation ad response for non-mediated rewarded ad."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->a(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, v1, Lcom/google/android/gms/internal/zzafp;->b:Lcom/google/android/gms/internal/zzaax;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzacg;->a(Lcom/google/android/gms/internal/zzaax;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "pubid"

    iget-object v4, v1, Lcom/google/android/gms/internal/zzafp;->a:Lcom/google/android/gms/internal/zzaat;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzaat;->f:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lcom/google/android/gms/internal/zzuh;

    move-object v2, v0

    const/4 v4, 0x0

    const-string v5, "com.google.ads.mediation.admob.AdMobAdapter"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    const/4 v12, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v13

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v20

    const/16 v21, 0x0

    const-wide/16 v22, -0x1

    invoke-direct/range {v2 .. v23}, Lcom/google/android/gms/internal/zzuh;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;J)V

    new-instance v2, Lcom/google/android/gms/internal/zzui;

    move-object/from16 v24, v2

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/android/gms/internal/zzuh;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v25

    sget-object v0, Lcom/google/android/gms/internal/zznh;->bn:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v28

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v29

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v30

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v31

    const/16 v32, 0x0

    const-string v33, ""

    const-wide/16 v34, -0x1

    const/16 v36, 0x0

    const/16 v37, 0x1

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, -0x1

    const-wide/16 v41, -0x1

    const/16 v43, 0x0

    invoke-direct/range {v24 .. v43}, Lcom/google/android/gms/internal/zzui;-><init>(Ljava/util/List;JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;JIILjava/lang/String;IIJZ)V

    new-instance v0, Lcom/google/android/gms/internal/zzafp;

    iget-object v3, v1, Lcom/google/android/gms/internal/zzafp;->a:Lcom/google/android/gms/internal/zzaat;

    iget-object v4, v1, Lcom/google/android/gms/internal/zzafp;->b:Lcom/google/android/gms/internal/zzaax;

    iget-object v5, v1, Lcom/google/android/gms/internal/zzafp;->d:Lcom/google/android/gms/internal/zzjn;

    iget v6, v1, Lcom/google/android/gms/internal/zzafp;->e:I

    iget-wide v7, v1, Lcom/google/android/gms/internal/zzafp;->f:J

    iget-wide v9, v1, Lcom/google/android/gms/internal/zzafp;->g:J

    iget-object v11, v1, Lcom/google/android/gms/internal/zzafp;->h:Lorg/json/JSONObject;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafp;->i:Lcom/google/android/gms/internal/zzis;

    const/16 v36, 0x0

    move-object/from16 v24, v0

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    move-object/from16 v27, v2

    move-object/from16 v28, v5

    move/from16 v29, v6

    move-wide/from16 v30, v7

    move-wide/from16 v32, v9

    move-object/from16 v34, v11

    move-object/from16 v35, v1

    invoke-direct/range {v24 .. v36}, Lcom/google/android/gms/internal/zzafp;-><init>(Lcom/google/android/gms/internal/zzaat;Lcom/google/android/gms/internal/zzaax;Lcom/google/android/gms/internal/zzui;Lcom/google/android/gms/internal/zzjn;IJJLorg/json/JSONObject;Lcom/google/android/gms/internal/zzis;Ljava/lang/Boolean;)V

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "Unable to generate ad state for non-mediated rewarded video."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/google/android/gms/internal/zzafp;

    iget-object v4, v1, Lcom/google/android/gms/internal/zzafp;->a:Lcom/google/android/gms/internal/zzaat;

    iget-object v5, v1, Lcom/google/android/gms/internal/zzafp;->b:Lcom/google/android/gms/internal/zzaax;

    const/4 v6, 0x0

    iget-object v7, v1, Lcom/google/android/gms/internal/zzafp;->d:Lcom/google/android/gms/internal/zzjn;

    const/4 v8, 0x0

    iget-wide v9, v1, Lcom/google/android/gms/internal/zzafp;->f:J

    iget-wide v11, v1, Lcom/google/android/gms/internal/zzafp;->g:J

    iget-object v13, v1, Lcom/google/android/gms/internal/zzafp;->h:Lorg/json/JSONObject;

    iget-object v14, v1, Lcom/google/android/gms/internal/zzafp;->i:Lcom/google/android/gms/internal/zzis;

    const/4 v15, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v15}, Lcom/google/android/gms/internal/zzafp;-><init>(Lcom/google/android/gms/internal/zzaat;Lcom/google/android/gms/internal/zzaax;Lcom/google/android/gms/internal/zzui;Lcom/google/android/gms/internal/zzjn;IJJLorg/json/JSONObject;Lcom/google/android/gms/internal/zzis;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public static zzoa()Lcom/google/android/gms/internal/zzade;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzade;->zzcuy:Lcom/google/android/gms/internal/zzade;

    return-object v0
.end method


# virtual methods
.method public final destroy()V
    .locals 4

    const-string v0, "destroy must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzade;->zzcva:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzade;->zzcva:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzael;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzael;->a()Lcom/google/android/gms/internal/zzva;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzael;->a()Lcom/google/android/gms/internal/zzva;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzva;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    const-string v2, "Fail to destroy adapter: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final isLoaded()Z
    .locals 1

    const-string v0, "isLoaded must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzade;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->g:Lcom/google/android/gms/internal/zzagb;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzade;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->h:Lcom/google/android/gms/internal/zzaif;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzade;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzade;->zzcvb:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onContextChanged(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zzade;->zzcva:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzael;

    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzael;->a()Lcom/google/android/gms/internal/zzva;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzn;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzva;->zzg(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Unable to call Adapter.onContextChanged."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onRewardedVideoAdClosed()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->z()Lcom/google/android/gms/internal/zzaff;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzade;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaff;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzade;->zzaqh:Lcom/google/android/gms/internal/zzafe;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzafe;->a(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zza;->zzbv()V

    return-void
.end method

.method public final onRewardedVideoAdLeftApplication()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zza;->zzbw()V

    return-void
.end method

.method public final onRewardedVideoAdOpened()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->z()Lcom/google/android/gms/internal/zzaff;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzade;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaff;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzade;->zzaqh:Lcom/google/android/gms/internal/zzafe;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzafe;->a(Z)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzade;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/ads/internal/zzd;->zza(Lcom/google/android/gms/internal/zzafo;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zza;->zzbx()V

    return-void
.end method

.method public final onRewardedVideoStarted()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzade;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzade;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafo;->n:Lcom/google/android/gms/internal/zzuh;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->v()Lcom/google/android/gms/internal/zzuq;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzade;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/zzbt;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzade;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->e:Lcom/google/android/gms/internal/zzakd;

    iget-object v2, v0, Lcom/google/android/gms/internal/zzakd;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzade;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzade;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/zzbt;->b:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzade;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafo;->n:Lcom/google/android/gms/internal/zzuh;

    iget-object v6, v0, Lcom/google/android/gms/internal/zzuh;->k:Ljava/util/List;

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/zzuq;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzafo;Ljava/lang/String;ZLjava/util/List;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zza;->zzcb()V

    return-void
.end method

.method public final pause()V
    .locals 4

    const-string v0, "pause must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzade;->zzcva:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzade;->zzcva:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzael;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzael;->a()Lcom/google/android/gms/internal/zzva;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzael;->a()Lcom/google/android/gms/internal/zzva;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzva;->pause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    const-string v2, "Fail to pause adapter: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final resume()V
    .locals 4

    const-string v0, "resume must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzade;->zzcva:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzade;->zzcva:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzael;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzael;->a()Lcom/google/android/gms/internal/zzva;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzael;->a()Lcom/google/android/gms/internal/zzva;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzva;->resume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    const-string v2, "Fail to resume adapter: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final setImmersiveMode(Z)V
    .locals 1

    const-string v0, "setImmersiveMode must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzade;->zzaqg:Z

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzadv;)V
    .locals 2

    const-string v0, "loadAd must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/zzadv;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Invalid ad unit id. Aborting."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/internal/zzahn;->a:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/zzadf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzadf;-><init>(Lcom/google/android/gms/internal/zzade;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzade;->zzcvb:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzade;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzadv;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzbt;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzade;->zzaqh:Lcom/google/android/gms/internal/zzafe;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzadv;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzafe;->a(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/zzadv;->b:Lcom/google/android/gms/internal/zzjj;

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/internal/zzd;->zzb(Lcom/google/android/gms/internal/zzjj;)Z

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzafp;Lcom/google/android/gms/internal/zznu;)V
    .locals 3

    iget p2, p1, Lcom/google/android/gms/internal/zzafp;->e:I

    const/4 v0, -0x2

    if-eq p2, v0, :cond_0

    sget-object p2, Lcom/google/android/gms/internal/zzahn;->a:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/zzadg;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzadg;-><init>(Lcom/google/android/gms/internal/zzade;Lcom/google/android/gms/internal/zzafp;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/zzade;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iput-object p1, p2, Lcom/google/android/gms/ads/internal/zzbt;->k:Lcom/google/android/gms/internal/zzafp;

    iget-object p2, p1, Lcom/google/android/gms/internal/zzafp;->c:Lcom/google/android/gms/internal/zzui;

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzade;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzade;->zzc(Lcom/google/android/gms/internal/zzafp;)Lcom/google/android/gms/internal/zzafp;

    move-result-object p1

    iput-object p1, p2, Lcom/google/android/gms/ads/internal/zzbt;->k:Lcom/google/android/gms/internal/zzafp;

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/zzade;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    const/4 p2, 0x0

    iput p2, p1, Lcom/google/android/gms/ads/internal/zzbt;->F:I

    iget-object p1, p0, Lcom/google/android/gms/internal/zzade;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->d()Lcom/google/android/gms/internal/zzya;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzade;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/zzbt;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzade;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->k:Lcom/google/android/gms/internal/zzafp;

    new-instance v1, Lcom/google/android/gms/internal/zzaei;

    invoke-direct {v1, p2, v0, p0}, Lcom/google/android/gms/internal/zzaei;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzafp;Lcom/google/android/gms/internal/zzade;)V

    const-string p2, "AdRenderer: "

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p2, v0

    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzaif;->g_()Ljava/lang/Object;

    iput-object v1, p1, Lcom/google/android/gms/ads/internal/zzbt;->h:Lcom/google/android/gms/internal/zzaif;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzafo;Lcom/google/android/gms/internal/zzafo;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected final zza(Lcom/google/android/gms/internal/zzjj;Lcom/google/android/gms/internal/zzafo;Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final zzbq(Ljava/lang/String;)Lcom/google/android/gms/internal/zzael;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzade;->zzcva:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzael;

    if-nez v0, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzade;->zzanw:Lcom/google/android/gms/internal/zzux;

    const-string v2, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/zzade;->zzcuz:Lcom/google/android/gms/internal/zzuw;

    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/zzael;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/zzux;->zzbg(Ljava/lang/String;)Lcom/google/android/gms/internal/zzva;

    move-result-object v1

    invoke-direct {v2, v1, p0}, Lcom/google/android/gms/internal/zzael;-><init>(Lcom/google/android/gms/internal/zzva;Lcom/google/android/gms/internal/zzaef;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzade;->zzcva:Ljava/util/Map;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v2

    goto :goto_2

    :catch_0
    move-exception v1

    move-object v0, v2

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_0
    const-string v2, "Fail to instantiate adapter "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-object v0
.end method

.method protected final zzbv()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzade;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/zzd;->zzbv()V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/zzaeq;)V
    .locals 7
    .param p1    # Lcom/google/android/gms/internal/zzaeq;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zzade;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzade;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafo;->q:Lcom/google/android/gms/internal/zzui;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzade;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafo;->q:Lcom/google/android/gms/internal/zzui;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzui;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/zzaeq;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzade;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafo;->q:Lcom/google/android/gms/internal/zzui;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzui;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzade;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafo;->q:Lcom/google/android/gms/internal/zzui;

    iget v1, v1, Lcom/google/android/gms/internal/zzui;->k:I

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/zzaeq;-><init>(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzade;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzade;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafo;->n:Lcom/google/android/gms/internal/zzuh;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->v()Lcom/google/android/gms/internal/zzuq;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzade;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzade;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->e:Lcom/google/android/gms/internal/zzakd;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzakd;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzade;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzafo;->n:Lcom/google/android/gms/internal/zzuh;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzuh;->l:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzade;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzbt;->B:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/zzuq;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/zzaeq;)V

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->z()Lcom/google/android/gms/internal/zzaff;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzade;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaff;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->z()Lcom/google/android/gms/internal/zzaff;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzade;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzbt;->c:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->z()Lcom/google/android/gms/internal/zzaff;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzade;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzbt;->c:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzaff;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzade;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/zzbt;->b:Ljava/lang/String;

    iget-object v5, p1, Lcom/google/android/gms/internal/zzaeq;->b:Ljava/lang/String;

    iget v6, p1, Lcom/google/android/gms/internal/zzaeq;->c:I

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/zzaff;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/zza;->zza(Lcom/google/android/gms/internal/zzaeq;)V

    return-void
.end method

.method public final zzob()V
    .locals 3

    const-string v0, "showAd must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzade;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "The reward video has not loaded."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzade;->zzcvb:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzade;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafo;->p:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzade;->zzbq(Ljava/lang/String;)Lcom/google/android/gms/internal/zzael;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzael;->a()Lcom/google/android/gms/internal/zzva;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzael;->a()Lcom/google/android/gms/internal/zzva;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzade;->zzaqg:Z

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzva;->setImmersiveMode(Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzael;->a()Lcom/google/android/gms/internal/zzva;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzva;->showVideo()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call showVideo."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final zzoc()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zza;->onAdClicked()V

    return-void
.end method
