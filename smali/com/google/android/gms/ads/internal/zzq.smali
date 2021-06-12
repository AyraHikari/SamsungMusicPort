.class public final Lcom/google/android/gms/ads/internal/zzq;
.super Lcom/google/android/gms/ads/internal/zzd;

# interfaces
.implements Lcom/google/android/gms/internal/zzot;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private zzamr:Z

.field private zzaof:Lcom/google/android/gms/internal/zzafo;

.field private zzaog:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzv;Lcom/google/android/gms/internal/zzjn;Ljava/lang/String;Lcom/google/android/gms/internal/zzux;Lcom/google/android/gms/internal/zzakd;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/zzd;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzjn;Ljava/lang/String;Lcom/google/android/gms/internal/zzux;Lcom/google/android/gms/internal/zzakd;Lcom/google/android/gms/ads/internal/zzv;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzaog:Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/zzq;)Lcom/google/android/gms/internal/zzafo;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzaof:Lcom/google/android/gms/internal/zzafo;

    return-object p0
.end method

.method private static zza(Lcom/google/android/gms/internal/zzafp;I)Lcom/google/android/gms/internal/zzafo;
    .locals 42

    move-object/from16 v0, p0

    move/from16 v5, p1

    new-instance v41, Lcom/google/android/gms/internal/zzafo;

    move-object/from16 v1, v41

    iget-object v2, v0, Lcom/google/android/gms/internal/zzafp;->a:Lcom/google/android/gms/internal/zzaat;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzaat;->d:Lcom/google/android/gms/internal/zzjj;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzafp;->b:Lcom/google/android/gms/internal/zzaax;

    iget-object v4, v3, Lcom/google/android/gms/internal/zzaax;->d:Ljava/util/List;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzafp;->b:Lcom/google/android/gms/internal/zzaax;

    iget-object v6, v3, Lcom/google/android/gms/internal/zzaax;->f:Ljava/util/List;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzafp;->b:Lcom/google/android/gms/internal/zzaax;

    iget-object v7, v3, Lcom/google/android/gms/internal/zzaax;->j:Ljava/util/List;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzafp;->b:Lcom/google/android/gms/internal/zzaax;

    iget v8, v3, Lcom/google/android/gms/internal/zzaax;->l:I

    iget-object v3, v0, Lcom/google/android/gms/internal/zzafp;->b:Lcom/google/android/gms/internal/zzaax;

    iget-wide v9, v3, Lcom/google/android/gms/internal/zzaax;->k:J

    iget-object v3, v0, Lcom/google/android/gms/internal/zzafp;->a:Lcom/google/android/gms/internal/zzaat;

    iget-object v11, v3, Lcom/google/android/gms/internal/zzaat;->j:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzafp;->b:Lcom/google/android/gms/internal/zzaax;

    iget-boolean v12, v3, Lcom/google/android/gms/internal/zzaax;->h:Z

    iget-object v3, v0, Lcom/google/android/gms/internal/zzafp;->c:Lcom/google/android/gms/internal/zzui;

    move-object/from16 v16, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/zzafp;->b:Lcom/google/android/gms/internal/zzaax;

    iget-wide v13, v3, Lcom/google/android/gms/internal/zzaax;->i:J

    move-wide/from16 v18, v13

    iget-object v3, v0, Lcom/google/android/gms/internal/zzafp;->d:Lcom/google/android/gms/internal/zzjn;

    move-object/from16 v20, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/zzafp;->b:Lcom/google/android/gms/internal/zzaax;

    iget-wide v13, v3, Lcom/google/android/gms/internal/zzaax;->g:J

    move-wide/from16 v21, v13

    iget-wide v13, v0, Lcom/google/android/gms/internal/zzafp;->f:J

    move-wide/from16 v23, v13

    iget-wide v13, v0, Lcom/google/android/gms/internal/zzafp;->g:J

    move-wide/from16 v25, v13

    iget-object v3, v0, Lcom/google/android/gms/internal/zzafp;->b:Lcom/google/android/gms/internal/zzaax;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzaax;->o:Ljava/lang/String;

    move-object/from16 v27, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/zzafp;->h:Lorg/json/JSONObject;

    move-object/from16 v28, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/zzafp;->b:Lcom/google/android/gms/internal/zzaax;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzaax;->B:Lcom/google/android/gms/internal/zzaeq;

    move-object/from16 v30, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/zzafp;->b:Lcom/google/android/gms/internal/zzaax;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzaax;->C:Ljava/util/List;

    move-object/from16 v31, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/zzafp;->b:Lcom/google/android/gms/internal/zzaax;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzaax;->C:Ljava/util/List;

    move-object/from16 v32, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/zzafp;->b:Lcom/google/android/gms/internal/zzaax;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/zzaax;->E:Z

    move/from16 v33, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/zzafp;->b:Lcom/google/android/gms/internal/zzaax;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzaax;->F:Lcom/google/android/gms/internal/zzaaz;

    move-object/from16 v34, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/zzafp;->b:Lcom/google/android/gms/internal/zzaax;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzaax;->I:Ljava/util/List;

    move-object/from16 v36, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/zzafp;->b:Lcom/google/android/gms/internal/zzaax;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzaax;->M:Ljava/lang/String;

    move-object/from16 v37, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/zzafp;->i:Lcom/google/android/gms/internal/zzis;

    move-object/from16 v38, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/zzafp;->b:Lcom/google/android/gms/internal/zzaax;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/zzaax;->P:Z

    move/from16 v39, v3

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzafp;->j:Z

    move/from16 v40, v0

    const/4 v3, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v29, 0x0

    const/16 v35, 0x0

    invoke-direct/range {v1 .. v40}, Lcom/google/android/gms/internal/zzafo;-><init>(Lcom/google/android/gms/internal/zzjj;Lcom/google/android/gms/internal/zzanh;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/zzuh;Lcom/google/android/gms/internal/zzva;Ljava/lang/String;Lcom/google/android/gms/internal/zzui;Lcom/google/android/gms/internal/zzuk;JLcom/google/android/gms/internal/zzjn;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/zzou;Lcom/google/android/gms/internal/zzaeq;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/zzaaz;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/zzis;ZZ)V

    return-object v41
.end method

.method private final zzb(Lcom/google/android/gms/internal/zzafo;Lcom/google/android/gms/internal/zzafo;)Z
    .locals 25

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Lcom/google/android/gms/ads/internal/zzq;->zzd(Ljava/util/List;)V

    iget-object v2, v7, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/zzbt;->d()Z

    move-result v2

    const/4 v8, 0x0

    if-nez v2, :cond_0

    const-string v0, "Native ad does not have custom rendering mode."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v7, v8}, Lcom/google/android/gms/ads/internal/zza;->zzi(I)V

    return v8

    :cond_0
    :try_start_0
    iget-object v2, v0, Lcom/google/android/gms/internal/zzafo;->o:Lcom/google/android/gms/internal/zzva;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzafo;->o:Lcom/google/android/gms/internal/zzva;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzva;->zzme()Lcom/google/android/gms/internal/zzvj;

    move-result-object v2

    move-object v5, v2

    goto :goto_1

    :cond_1
    move-object v5, v1

    :goto_1
    iget-object v2, v0, Lcom/google/android/gms/internal/zzafo;->o:Lcom/google/android/gms/internal/zzva;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/google/android/gms/internal/zzafo;->o:Lcom/google/android/gms/internal/zzva;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzva;->zzmf()Lcom/google/android/gms/internal/zzvm;

    move-result-object v2

    move-object v6, v2

    goto :goto_2

    :cond_2
    move-object v6, v1

    :goto_2
    iget-object v2, v0, Lcom/google/android/gms/internal/zzafo;->o:Lcom/google/android/gms/internal/zzva;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/google/android/gms/internal/zzafo;->o:Lcom/google/android/gms/internal/zzva;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzva;->zzmj()Lcom/google/android/gms/internal/zzqm;

    move-result-object v2

    goto :goto_3

    :cond_3
    move-object v2, v1

    :goto_3
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/ads/internal/zzq;->zzc(Lcom/google/android/gms/internal/zzafo;)Ljava/lang/String;

    move-result-object v3

    if-eqz v5, :cond_6

    iget-object v4, v7, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzbt;->q:Lcom/google/android/gms/internal/zzqq;

    if-eqz v4, :cond_6

    new-instance v6, Lcom/google/android/gms/internal/zzoj;

    invoke-interface {v5}, Lcom/google/android/gms/internal/zzvj;->getHeadline()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5}, Lcom/google/android/gms/internal/zzvj;->getImages()Ljava/util/List;

    move-result-object v11

    invoke-interface {v5}, Lcom/google/android/gms/internal/zzvj;->getBody()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5}, Lcom/google/android/gms/internal/zzvj;->zzjs()Lcom/google/android/gms/internal/zzpq;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v5}, Lcom/google/android/gms/internal/zzvj;->zzjs()Lcom/google/android/gms/internal/zzpq;

    move-result-object v2

    move-object v13, v2

    goto :goto_4

    :cond_4
    move-object v13, v1

    :goto_4
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

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {v5}, Lcom/google/android/gms/internal/zzvj;->zzml()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/zzn;->zzx(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    :cond_5
    move-object/from16 v22, v1

    invoke-interface {v5}, Lcom/google/android/gms/internal/zzvj;->zzjx()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v23

    move-object v9, v6

    move-object/from16 v24, v3

    invoke-direct/range {v9 .. v24}, Lcom/google/android/gms/internal/zzoj;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/zzpq;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzog;Landroid/os/Bundle;Lcom/google/android/gms/internal/zzll;Landroid/view/View;Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;)V

    new-instance v9, Lcom/google/android/gms/internal/zzor;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/zzbt;->c:Landroid/content/Context;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/zzbt;->d:Lcom/google/android/gms/internal/zzcv;

    move-object v1, v9

    move-object/from16 v3, p0

    move-object v10, v6

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzor;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzot;Lcom/google/android/gms/internal/zzcv;Lcom/google/android/gms/internal/zzvj;Lcom/google/android/gms/internal/zzou;)V

    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/zzoj;->zzb(Lcom/google/android/gms/internal/zzos;)V

    sget-object v1, Lcom/google/android/gms/internal/zzahn;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/ads/internal/zzs;

    invoke-direct {v2, v7, v10}, Lcom/google/android/gms/ads/internal/zzs;-><init>(Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/zzoj;)V

    :goto_5
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_7

    :cond_6
    if-eqz v6, :cond_9

    iget-object v4, v7, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzbt;->r:Lcom/google/android/gms/internal/zzqt;

    if-eqz v4, :cond_9

    new-instance v5, Lcom/google/android/gms/internal/zzol;

    invoke-interface {v6}, Lcom/google/android/gms/internal/zzvm;->getHeadline()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6}, Lcom/google/android/gms/internal/zzvm;->getImages()Ljava/util/List;

    move-result-object v11

    invoke-interface {v6}, Lcom/google/android/gms/internal/zzvm;->getBody()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6}, Lcom/google/android/gms/internal/zzvm;->zzjz()Lcom/google/android/gms/internal/zzpq;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-interface {v6}, Lcom/google/android/gms/internal/zzvm;->zzjz()Lcom/google/android/gms/internal/zzpq;

    move-result-object v2

    move-object v13, v2

    goto :goto_6

    :cond_7
    move-object v13, v1

    :goto_6
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

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-interface {v6}, Lcom/google/android/gms/internal/zzvm;->zzml()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/zzn;->zzx(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    :cond_8
    move-object/from16 v19, v1

    invoke-interface {v6}, Lcom/google/android/gms/internal/zzvm;->zzjx()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v20

    move-object v9, v5

    move-object/from16 v21, v3

    invoke-direct/range {v9 .. v21}, Lcom/google/android/gms/internal/zzol;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/zzpq;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzog;Landroid/os/Bundle;Lcom/google/android/gms/internal/zzll;Landroid/view/View;Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;)V

    new-instance v9, Lcom/google/android/gms/internal/zzor;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/zzbt;->c:Landroid/content/Context;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/zzbt;->d:Lcom/google/android/gms/internal/zzcv;

    move-object v1, v9

    move-object/from16 v3, p0

    move-object v10, v5

    move-object v5, v6

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzor;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzot;Lcom/google/android/gms/internal/zzcv;Lcom/google/android/gms/internal/zzvm;Lcom/google/android/gms/internal/zzou;)V

    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/zzol;->zzb(Lcom/google/android/gms/internal/zzos;)V

    sget-object v1, Lcom/google/android/gms/internal/zzahn;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/ads/internal/zzt;

    invoke-direct {v2, v7, v10}, Lcom/google/android/gms/ads/internal/zzt;-><init>(Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/zzol;)V

    goto :goto_5

    :cond_9
    if-eqz v2, :cond_a

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->t:Landroid/support/v4/util/SimpleArrayMap;

    if-eqz v1, :cond_a

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->t:Landroid/support/v4/util/SimpleArrayMap;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzqm;->getCustomTemplateId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_a

    sget-object v1, Lcom/google/android/gms/internal/zzahn;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/ads/internal/zzu;

    invoke-direct {v3, v7, v2}, Lcom/google/android/gms/ads/internal/zzu;-><init>(Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/zzqm;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_7
    invoke-super/range {p0 .. p2}, Lcom/google/android/gms/ads/internal/zzd;->zza(Lcom/google/android/gms/internal/zzafo;Lcom/google/android/gms/internal/zzafo;)Z

    move-result v0

    return v0

    :cond_a
    :try_start_1
    const-string v0, "No matching mapper/listener for retrieved native ad template."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/google/android/gms/ads/internal/zza;->zzi(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return v8

    :catch_0
    move-exception v0

    const-string v1, "Failed to get native ad mapper"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method private final zzc(Lcom/google/android/gms/internal/zzafo;Lcom/google/android/gms/internal/zzafo;)Z
    .locals 4

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/zzaq;->a(Lcom/google/android/gms/internal/zzafo;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->f:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/zzbu;->getNextView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    instance-of v3, v2, Lcom/google/android/gms/internal/zzanh;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzanh;->destroy()V

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzbt;->f:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/ads/internal/zzbu;->removeView(Landroid/view/View;)V

    :cond_2
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/zzaq;->b(Lcom/google/android/gms/internal/zzafo;)Z

    move-result p2

    if-nez p2, :cond_3

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/zza;->zzg(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->i()Lcom/google/android/gms/internal/zzaft;

    move-result-object p2

    const-string v0, "AdLoaderManager.swapBannerViews"

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/zzaft;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string p2, "Could not add mediation view to view hierarchy."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/zzbt;->f:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/internal/zzbu;->getChildCount()I

    move-result p2

    const/4 v0, 0x1

    if-le p2, v0, :cond_4

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/zzbt;->f:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/internal/zzbu;->showNext()V

    :cond_4
    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/zzbt;->f:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzbu;->getNextView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/zzbt;->f:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/internal/zzbu;->removeView(Landroid/view/View;)V

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzbt;->c()V

    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/zzbt;->f:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zza;->zzbs()Lcom/google/android/gms/internal/zzjn;

    move-result-object p2

    iget p2, p2, Lcom/google/android/gms/internal/zzjn;->g:I

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/internal/zzbu;->setMinimumWidth(I)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/zzbt;->f:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zza;->zzbs()Lcom/google/android/gms/internal/zzjn;

    move-result-object p2

    iget p2, p2, Lcom/google/android/gms/internal/zzjn;->d:I

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/internal/zzbu;->setMinimumHeight(I)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/zzbt;->f:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzbu;->requestLayout()V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/zzbt;->f:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/ads/internal/zzbu;->setVisibility(I)V

    return v0
.end method

.method private final zzcy()Lcom/google/android/gms/internal/zzui;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzafo;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafo;->q:Lcom/google/android/gms/internal/zzui;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final getVideoController()Lcom/google/android/gms/internal/zzll;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final pause()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzaog:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/zzd;->pause()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native Ad does not support pause()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final resume()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzaog:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/zzd;->resume()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native Ad does not support resume()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setManualImpressionsEnabled(Z)V
    .locals 1

    const-string v0, "setManualImpressionsEnabled must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzamr:Z

    return-void
.end method

.method public final showInterstitial()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Interstitial is not supported by AdLoaderManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzafp;Lcom/google/android/gms/internal/zznu;)V
    .locals 10

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzaof:Lcom/google/android/gms/internal/zzafo;

    iget v0, p1, Lcom/google/android/gms/internal/zzafp;->e:I

    const/4 v1, 0x0

    const/4 v2, -0x2

    if-eq v0, v2, :cond_0

    iget v0, p1, Lcom/google/android/gms/internal/zzafp;->e:I

    invoke-static {p1, v0}, Lcom/google/android/gms/ads/internal/zzq;->zza(Lcom/google/android/gms/internal/zzafp;I)Lcom/google/android/gms/internal/zzafo;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzaof:Lcom/google/android/gms/internal/zzafo;

    goto :goto_1

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/zzafp;->b:Lcom/google/android/gms/internal/zzaax;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzaax;->h:Z

    if-nez v0, :cond_1

    const-string v0, "partialAdState is not mediation"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/google/android/gms/ads/internal/zzq;->zza(Lcom/google/android/gms/internal/zzafp;I)Lcom/google/android/gms/internal/zzafo;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzaof:Lcom/google/android/gms/internal/zzafo;

    if-eqz v0, :cond_2

    sget-object p1, Lcom/google/android/gms/internal/zzahn;->a:Landroid/os/Handler;

    new-instance p2, Lcom/google/android/gms/ads/internal/zzr;

    invoke-direct {p2, p0}, Lcom/google/android/gms/ads/internal/zzr;-><init>(Lcom/google/android/gms/ads/internal/zzq;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    iget-object v0, p1, Lcom/google/android/gms/internal/zzafp;->d:Lcom/google/android/gms/internal/zzjn;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzafp;->d:Lcom/google/android/gms/internal/zzjn;

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/zzbt;->i:Lcom/google/android/gms/internal/zzjn;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iput v1, v0, Lcom/google/android/gms/ads/internal/zzbt;->F:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->d()Lcom/google/android/gms/internal/zzya;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/zzbt;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/zzbt;->d:Lcom/google/android/gms/internal/zzcv;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/zzq;->zzanw:Lcom/google/android/gms/internal/zzux;

    move-object v3, p0

    move-object v4, p1

    move-object v8, p0

    move-object v9, p2

    invoke-static/range {v2 .. v9}, Lcom/google/android/gms/internal/zzya;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/zzafp;Lcom/google/android/gms/internal/zzcv;Lcom/google/android/gms/internal/zzanh;Lcom/google/android/gms/internal/zzux;Lcom/google/android/gms/internal/zzyb;Lcom/google/android/gms/internal/zznu;)Lcom/google/android/gms/internal/zzaif;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzbt;->h:Lcom/google/android/gms/internal/zzaif;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzoa;)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "CustomRendering is not supported by AdLoaderManager."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzoq;)V
    .locals 0

    const-string p1, "Unexpected call to AdLoaderManager method"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzos;)V
    .locals 0

    const-string p1, "Unexpected call to AdLoaderManager method"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    return-void
.end method

.method protected final zza(Lcom/google/android/gms/internal/zzafo;Lcom/google/android/gms/internal/zzafo;)Z
    .locals 4
    .param p1    # Lcom/google/android/gms/internal/zzafo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzbt;->d()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p2, Lcom/google/android/gms/internal/zzafo;->m:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/zza;->zzi(I)V

    const-string p1, "newState is not mediation."

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v0, p2, Lcom/google/android/gms/internal/zzafo;->n:Lcom/google/android/gms/internal/zzuh;

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    iget-object v0, p2, Lcom/google/android/gms/internal/zzafo;->n:Lcom/google/android/gms/internal/zzuh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzuh;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzbt;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->f:Lcom/google/android/gms/ads/internal/zzbu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->f:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzbu;->a()Lcom/google/android/gms/internal/zzaig;

    move-result-object v0

    iget-object v3, p2, Lcom/google/android/gms/internal/zzafo;->z:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzaig;->c(Ljava/lang/String;)V

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzd;->zza(Lcom/google/android/gms/internal/zzafo;Lcom/google/android/gms/internal/zzafo;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzbt;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzq;->zzc(Lcom/google/android/gms/internal/zzafo;Lcom/google/android/gms/internal/zzafo;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/zza;->zzi(I)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzbt;->e()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-super {p0, p2, v1}, Lcom/google/android/gms/ads/internal/zzd;->zza(Lcom/google/android/gms/internal/zzafo;Z)V

    :cond_4
    const/4 p1, 0x1

    :goto_2
    if-nez p1, :cond_5

    return v1

    :cond_5
    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/zzq;->zzaog:Z

    goto :goto_3

    :cond_6
    iget-object v0, p2, Lcom/google/android/gms/internal/zzafo;->n:Lcom/google/android/gms/internal/zzuh;

    if-eqz v0, :cond_8

    iget-object v0, p2, Lcom/google/android/gms/internal/zzafo;->n:Lcom/google/android/gms/internal/zzuh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzuh;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzq;->zzb(Lcom/google/android/gms/internal/zzafo;Lcom/google/android/gms/internal/zzafo;)Z

    move-result p1

    if-nez p1, :cond_7

    return v1

    :cond_7
    :goto_3
    new-instance p1, Ljava/util/ArrayList;

    new-array p2, v2, [Ljava/lang/Integer;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v1

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/zzq;->zze(Ljava/util/List;)V

    return v2

    :cond_8
    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/zza;->zzi(I)V

    const-string p1, "Response is neither banner nor native."

    goto/16 :goto_0

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "AdLoader API does not support custom rendering."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final zza(Lcom/google/android/gms/internal/zzjj;Lcom/google/android/gms/internal/zzafo;Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzjj;)Z
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->y:Ljava/util/List;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->y:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->y:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    const-string v1, "Requesting only banner Ad from AdLoader or calling loadAd on returned banner is not yet supported"

    invoke-static {v1}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/google/android/gms/ads/internal/zza;->zzi(I)V

    return v4

    :cond_1
    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->x:Lcom/google/android/gms/internal/zzrf;

    if-eqz v2, :cond_5

    iget-boolean v2, v1, Lcom/google/android/gms/internal/zzjj;->i:Z

    iget-boolean v5, v0, Lcom/google/android/gms/ads/internal/zzq;->zzamr:Z

    if-ne v2, v5, :cond_2

    goto :goto_3

    :cond_2
    new-instance v2, Lcom/google/android/gms/internal/zzjj;

    iget v7, v1, Lcom/google/android/gms/internal/zzjj;->b:I

    iget-wide v8, v1, Lcom/google/android/gms/internal/zzjj;->c:J

    iget-object v10, v1, Lcom/google/android/gms/internal/zzjj;->d:Landroid/os/Bundle;

    iget v11, v1, Lcom/google/android/gms/internal/zzjj;->e:I

    iget-object v12, v1, Lcom/google/android/gms/internal/zzjj;->f:Ljava/util/List;

    iget-boolean v13, v1, Lcom/google/android/gms/internal/zzjj;->g:Z

    iget v14, v1, Lcom/google/android/gms/internal/zzjj;->h:I

    iget-boolean v5, v1, Lcom/google/android/gms/internal/zzjj;->i:Z

    if-nez v5, :cond_4

    iget-boolean v5, v0, Lcom/google/android/gms/ads/internal/zzq;->zzamr:Z

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v15, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v15, 0x1

    :goto_2
    iget-object v3, v1, Lcom/google/android/gms/internal/zzjj;->j:Ljava/lang/String;

    move-object/from16 v16, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/zzjj;->k:Lcom/google/android/gms/internal/zzmn;

    move-object/from16 v17, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/zzjj;->l:Landroid/location/Location;

    move-object/from16 v18, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/zzjj;->m:Ljava/lang/String;

    move-object/from16 v19, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/zzjj;->n:Landroid/os/Bundle;

    move-object/from16 v20, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/zzjj;->o:Landroid/os/Bundle;

    move-object/from16 v21, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/zzjj;->p:Ljava/util/List;

    move-object/from16 v22, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/zzjj;->q:Ljava/lang/String;

    move-object/from16 v23, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/zzjj;->r:Ljava/lang/String;

    move-object/from16 v24, v3

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zzjj;->s:Z

    move/from16 v25, v1

    move-object v6, v2

    invoke-direct/range {v6 .. v25}, Lcom/google/android/gms/internal/zzjj;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/zzmn;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v1, v2

    :goto_3
    invoke-super {v0, v1}, Lcom/google/android/gms/ads/internal/zzd;->zzb(Lcom/google/android/gms/internal/zzjj;)Z

    move-result v1

    return v1

    :cond_5
    invoke-super/range {p0 .. p1}, Lcom/google/android/gms/ads/internal/zzd;->zzb(Lcom/google/android/gms/internal/zzjj;)Z

    move-result v1

    return v1
.end method

.method protected final zzby()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/zzd;->zzby()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/internal/zzafo;->n:Lcom/google/android/gms/internal/zzuh;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafo;->n:Lcom/google/android/gms/internal/zzuh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzuh;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->x:Lcom/google/android/gms/internal/zzrf;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->x:Lcom/google/android/gms/internal/zzrf;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/zzn;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/google/android/gms/internal/zzrf;->zza(Lcom/google/android/gms/internal/zzks;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call PublisherAdViewLoadedListener.onPublisherAdViewLoaded()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final zzcj()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    if-eqz v0, :cond_0

    const-string v0, "com.google.ads.mediation.admob.AdMobAdapter"

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafo;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafo;->n:Lcom/google/android/gms/internal/zzuh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafo;->n:Lcom/google/android/gms/internal/zzuh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzuh;->b()Z

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

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    if-eqz v0, :cond_0

    const-string v0, "com.google.ads.mediation.admob.AdMobAdapter"

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafo;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafo;->n:Lcom/google/android/gms/internal/zzuh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafo;->n:Lcom/google/android/gms/internal/zzuh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzuh;->b()Z

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

    const-string v0, "Unexpected call to AdLoaderManager method"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final zzcw()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzq;->zzcy()Lcom/google/android/gms/internal/zzui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzq;->zzcy()Lcom/google/android/gms/internal/zzui;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzui;->o:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzcx()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzq;->zzcy()Lcom/google/android/gms/internal/zzui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzq;->zzcy()Lcom/google/android/gms/internal/zzui;

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

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzbt;->C:Ljava/util/List;

    return-void
.end method

.method public final zze(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "setAllowedAdTypes must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzbt;->y:Ljava/util/List;

    return-void
.end method

.method public final zzs(Ljava/lang/String;)Lcom/google/android/gms/internal/zzqw;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const-string v0, "getOnCustomClickListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->s:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzqw;

    return-object p1
.end method
