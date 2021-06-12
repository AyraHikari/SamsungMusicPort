.class public final Lcom/google/android/gms/internal/zzaei;
.super Lcom/google/android/gms/internal/zzagb;

# interfaces
.implements Lcom/google/android/gms/internal/zzaeh;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/zzafp;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/concurrent/Future;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzady;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzaeb;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/lang/Object;

.field private final i:Lcom/google/android/gms/internal/zzade;

.field private final j:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzafp;Lcom/google/android/gms/internal/zzade;)V
    .locals 7

    sget-object v0, Lcom/google/android/gms/internal/zznh;->at:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzaei;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzafp;Lcom/google/android/gms/internal/zzade;J)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzafp;Lcom/google/android/gms/internal/zzade;J)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzagb;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaei;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaei;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaei;->e:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaei;->f:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaei;->g:Ljava/util/HashSet;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaei;->h:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaei;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaei;->a:Lcom/google/android/gms/internal/zzafp;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzaei;->i:Lcom/google/android/gms/internal/zzade;

    iput-wide p4, p0, Lcom/google/android/gms/internal/zzaei;->j:J

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzaei;)Lcom/google/android/gms/internal/zzade;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzaei;->i:Lcom/google/android/gms/internal/zzade;

    return-object p0
.end method

.method private final a(ILjava/lang/String;Lcom/google/android/gms/internal/zzuh;)Lcom/google/android/gms/internal/zzafo;
    .locals 44
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/internal/zzuh;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move/from16 v5, p1

    move-object/from16 v15, p2

    move-object/from16 v13, p3

    new-instance v41, Lcom/google/android/gms/internal/zzafo;

    move-object/from16 v1, v41

    iget-object v2, v0, Lcom/google/android/gms/internal/zzaei;->a:Lcom/google/android/gms/internal/zzafp;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzafp;->a:Lcom/google/android/gms/internal/zzaat;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzaat;->d:Lcom/google/android/gms/internal/zzjj;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzaei;->a:Lcom/google/android/gms/internal/zzafp;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzafp;->b:Lcom/google/android/gms/internal/zzaax;

    iget-object v4, v3, Lcom/google/android/gms/internal/zzaax;->d:Ljava/util/List;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzaei;->a:Lcom/google/android/gms/internal/zzafp;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzafp;->b:Lcom/google/android/gms/internal/zzaax;

    iget-object v6, v3, Lcom/google/android/gms/internal/zzaax;->f:Ljava/util/List;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzaei;->a:Lcom/google/android/gms/internal/zzafp;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzafp;->b:Lcom/google/android/gms/internal/zzaax;

    iget-object v7, v3, Lcom/google/android/gms/internal/zzaax;->j:Ljava/util/List;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzaei;->a:Lcom/google/android/gms/internal/zzafp;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzafp;->b:Lcom/google/android/gms/internal/zzaax;

    iget v8, v3, Lcom/google/android/gms/internal/zzaax;->l:I

    iget-object v3, v0, Lcom/google/android/gms/internal/zzaei;->a:Lcom/google/android/gms/internal/zzafp;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzafp;->b:Lcom/google/android/gms/internal/zzaax;

    iget-wide v9, v3, Lcom/google/android/gms/internal/zzaax;->k:J

    iget-object v3, v0, Lcom/google/android/gms/internal/zzaei;->a:Lcom/google/android/gms/internal/zzafp;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzafp;->a:Lcom/google/android/gms/internal/zzaat;

    iget-object v11, v3, Lcom/google/android/gms/internal/zzaat;->j:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzaei;->a:Lcom/google/android/gms/internal/zzafp;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzafp;->b:Lcom/google/android/gms/internal/zzaax;

    iget-boolean v12, v3, Lcom/google/android/gms/internal/zzaax;->h:Z

    iget-object v3, v0, Lcom/google/android/gms/internal/zzaei;->a:Lcom/google/android/gms/internal/zzafp;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzafp;->c:Lcom/google/android/gms/internal/zzui;

    move-object/from16 v16, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/zzaei;->a:Lcom/google/android/gms/internal/zzafp;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzafp;->b:Lcom/google/android/gms/internal/zzaax;

    move-object/from16 v42, v1

    move-object/from16 v43, v2

    iget-wide v1, v3, Lcom/google/android/gms/internal/zzaax;->i:J

    move-wide/from16 v18, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/zzaei;->a:Lcom/google/android/gms/internal/zzafp;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafp;->d:Lcom/google/android/gms/internal/zzjn;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/zzaei;->a:Lcom/google/android/gms/internal/zzafp;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafp;->b:Lcom/google/android/gms/internal/zzaax;

    iget-wide v1, v1, Lcom/google/android/gms/internal/zzaax;->g:J

    move-wide/from16 v21, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/zzaei;->a:Lcom/google/android/gms/internal/zzafp;

    iget-wide v1, v1, Lcom/google/android/gms/internal/zzafp;->f:J

    move-wide/from16 v23, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/zzaei;->a:Lcom/google/android/gms/internal/zzafp;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafp;->b:Lcom/google/android/gms/internal/zzaax;

    iget-wide v1, v1, Lcom/google/android/gms/internal/zzaax;->n:J

    move-wide/from16 v25, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/zzaei;->a:Lcom/google/android/gms/internal/zzafp;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafp;->b:Lcom/google/android/gms/internal/zzaax;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaax;->o:Ljava/lang/String;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/zzaei;->a:Lcom/google/android/gms/internal/zzafp;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafp;->h:Lorg/json/JSONObject;

    move-object/from16 v28, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/zzaei;->a:Lcom/google/android/gms/internal/zzafp;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafp;->b:Lcom/google/android/gms/internal/zzaax;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaax;->B:Lcom/google/android/gms/internal/zzaeq;

    move-object/from16 v30, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/zzaei;->a:Lcom/google/android/gms/internal/zzafp;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafp;->b:Lcom/google/android/gms/internal/zzaax;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaax;->C:Ljava/util/List;

    move-object/from16 v31, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/zzaei;->a:Lcom/google/android/gms/internal/zzafp;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafp;->b:Lcom/google/android/gms/internal/zzaax;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaax;->D:Ljava/util/List;

    move-object/from16 v32, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/zzaei;->a:Lcom/google/android/gms/internal/zzafp;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafp;->b:Lcom/google/android/gms/internal/zzaax;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zzaax;->E:Z

    move/from16 v33, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/zzaei;->a:Lcom/google/android/gms/internal/zzafp;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafp;->b:Lcom/google/android/gms/internal/zzaax;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaax;->F:Lcom/google/android/gms/internal/zzaaz;

    move-object/from16 v34, v1

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaei;->e()Ljava/lang/String;

    move-result-object v35

    iget-object v1, v0, Lcom/google/android/gms/internal/zzaei;->a:Lcom/google/android/gms/internal/zzafp;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafp;->b:Lcom/google/android/gms/internal/zzaax;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaax;->I:Ljava/util/List;

    move-object/from16 v36, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/zzaei;->a:Lcom/google/android/gms/internal/zzafp;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafp;->b:Lcom/google/android/gms/internal/zzaax;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaax;->M:Ljava/lang/String;

    move-object/from16 v37, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/zzaei;->a:Lcom/google/android/gms/internal/zzafp;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafp;->i:Lcom/google/android/gms/internal/zzis;

    move-object/from16 v38, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/zzaei;->a:Lcom/google/android/gms/internal/zzafp;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafp;->b:Lcom/google/android/gms/internal/zzaax;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zzaax;->P:Z

    move/from16 v39, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/zzaei;->a:Lcom/google/android/gms/internal/zzafp;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zzafp;->j:Z

    move/from16 v40, v1

    const/4 v3, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v29, 0x0

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-direct/range {v1 .. v40}, Lcom/google/android/gms/internal/zzafo;-><init>(Lcom/google/android/gms/internal/zzjj;Lcom/google/android/gms/internal/zzanh;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/zzuh;Lcom/google/android/gms/internal/zzva;Ljava/lang/String;Lcom/google/android/gms/internal/zzui;Lcom/google/android/gms/internal/zzuk;JLcom/google/android/gms/internal/zzjn;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/zzou;Lcom/google/android/gms/internal/zzaeq;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/zzaaz;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/zzis;ZZ)V

    return-object v41
.end method

.method private final e()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaei;->f:Ljava/util/List;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaei;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzaeb;

    if-eqz v2, :cond_1

    iget-object v5, v2, Lcom/google/android/gms/internal/zzaeb;->a:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v2, Lcom/google/android/gms/internal/zzaeb;->a:Ljava/lang/String;

    iget v6, v2, Lcom/google/android/gms/internal/zzaeb;->b:I

    packed-switch v6, :pswitch_data_0

    const/4 v3, 0x6

    goto :goto_1

    :pswitch_0
    const/4 v3, 0x3

    goto :goto_1

    :pswitch_1
    const/4 v3, 0x0

    goto :goto_1

    :pswitch_2
    const/4 v3, 0x4

    goto :goto_1

    :pswitch_3
    const/4 v3, 0x2

    :goto_1
    :pswitch_4
    iget-wide v6, v2, Lcom/google/android/gms/internal/zzaeb;->c:J

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x21

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a()V
    .locals 20

    move-object/from16 v11, p0

    iget-object v0, v11, Lcom/google/android/gms/internal/zzaei;->a:Lcom/google/android/gms/internal/zzafp;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafp;->c:Lcom/google/android/gms/internal/zzui;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzui;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/google/android/gms/internal/zzuh;

    iget-object v14, v13, Lcom/google/android/gms/internal/zzuh;->j:Ljava/lang/String;

    iget-object v0, v13, Lcom/google/android/gms/internal/zzuh;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.google.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "class_name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    iget-object v9, v11, Lcom/google/android/gms/internal/zzaei;->h:Ljava/lang/Object;

    monitor-enter v9

    :try_start_1
    iget-object v1, v11, Lcom/google/android/gms/internal/zzaei;->i:Lcom/google/android/gms/internal/zzade;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzade;->zzbq(Ljava/lang/String;)Lcom/google/android/gms/internal/zzael;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzael;->b()Lcom/google/android/gms/internal/zzaeg;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzael;->a()Lcom/google/android/gms/internal/zzva;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    new-instance v10, Lcom/google/android/gms/internal/zzady;

    iget-object v2, v11, Lcom/google/android/gms/internal/zzaei;->b:Landroid/content/Context;

    iget-object v6, v11, Lcom/google/android/gms/internal/zzaei;->a:Lcom/google/android/gms/internal/zzafp;

    iget-wide v4, v11, Lcom/google/android/gms/internal/zzaei;->j:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v10

    move-object v3, v0

    move-wide/from16 v16, v4

    move-object v4, v14

    move-object v5, v13

    move-object/from16 v8, p0

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    move-wide/from16 v9, v16

    :try_start_2
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/zzady;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzuh;Lcom/google/android/gms/internal/zzafp;Lcom/google/android/gms/internal/zzael;Lcom/google/android/gms/internal/zzaeh;J)V

    iget-object v1, v11, Lcom/google/android/gms/internal/zzaei;->c:Ljava/util/ArrayList;

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/internal/zzagb;->g_()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzakv;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v11, Lcom/google/android/gms/internal/zzaei;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v11, Lcom/google/android/gms/internal/zzaei;->e:Ljava/util/HashMap;

    move-object/from16 v2, v19

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    monitor-exit v18

    goto :goto_0

    :cond_4
    :goto_2
    move-object/from16 v18, v9

    iget-object v1, v11, Lcom/google/android/gms/internal/zzaei;->f:Ljava/util/List;

    new-instance v2, Lcom/google/android/gms/internal/zzaed;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzaed;-><init>()V

    iget-object v3, v13, Lcom/google/android/gms/internal/zzuh;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzaed;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/zzaed;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzaed;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/zzaed;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzaed;->a(J)Lcom/google/android/gms/internal/zzaed;

    move-result-object v0

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzaed;->a(I)Lcom/google/android/gms/internal/zzaed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaed;->a()Lcom/google/android/gms/internal/zzaeb;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v18, v9

    :goto_3
    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "Unable to determine custom event class name, skipping..."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_4
    iget-object v0, v11, Lcom/google/android/gms/internal/zzaei;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    if-ge v1, v0, :cond_c

    :try_start_3
    iget-object v0, v11, Lcom/google/android/gms/internal/zzaei;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    iget-object v3, v11, Lcom/google/android/gms/internal/zzaei;->h:Ljava/lang/Object;

    monitor-enter v3

    :try_start_4
    iget-object v0, v11, Lcom/google/android/gms/internal/zzaei;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, v11, Lcom/google/android/gms/internal/zzaei;->e:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzady;

    if-eqz v0, :cond_6

    iget-object v4, v11, Lcom/google/android/gms/internal/zzaei;->f:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzady;->e()Lcom/google/android/gms/internal/zzaeb;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    iget-object v4, v11, Lcom/google/android/gms/internal/zzaei;->h:Ljava/lang/Object;

    monitor-enter v4

    :try_start_5
    iget-object v0, v11, Lcom/google/android/gms/internal/zzaei;->g:Ljava/util/HashSet;

    iget-object v3, v11, Lcom/google/android/gms/internal/zzaei;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v11, Lcom/google/android/gms/internal/zzaei;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, v11, Lcom/google/android/gms/internal/zzaei;->e:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, v11, Lcom/google/android/gms/internal/zzaei;->e:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzady;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzady;->f()Lcom/google/android/gms/internal/zzuh;

    move-result-object v2

    :cond_7
    const/4 v1, -0x2

    invoke-direct {v11, v1, v0, v2}, Lcom/google/android/gms/internal/zzaei;->a(ILjava/lang/String;Lcom/google/android/gms/internal/zzuh;)Lcom/google/android/gms/internal/zzafo;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzajr;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zzaej;

    invoke-direct {v2, v11, v0}, Lcom/google/android/gms/internal/zzaej;-><init>(Lcom/google/android/gms/internal/zzaei;Lcom/google/android/gms/internal/zzafo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v4

    return-void

    :cond_8
    monitor-exit v4

    goto :goto_5

    :catchall_2
    move-exception v0

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    :try_start_7
    const-string v2, "Unable to resolve rewarded adapter."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    iget-object v2, v11, Lcom/google/android/gms/internal/zzaei;->h:Ljava/lang/Object;

    monitor-enter v2

    :try_start_8
    iget-object v0, v11, Lcom/google/android/gms/internal/zzaei;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, v11, Lcom/google/android/gms/internal/zzaei;->e:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzady;

    if-eqz v0, :cond_9

    iget-object v3, v11, Lcom/google/android/gms/internal/zzaei;->f:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzady;->e()Lcom/google/android/gms/internal/zzaeb;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    monitor-exit v2

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    :catchall_5
    move-exception v0

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    throw v0

    :catch_2
    :try_start_9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    iget-object v3, v11, Lcom/google/android/gms/internal/zzaei;->h:Ljava/lang/Object;

    monitor-enter v3

    :try_start_a
    iget-object v0, v11, Lcom/google/android/gms/internal/zzaei;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, v11, Lcom/google/android/gms/internal/zzaei;->e:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzady;

    if-eqz v0, :cond_a

    iget-object v1, v11, Lcom/google/android/gms/internal/zzaei;->f:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzady;->e()Lcom/google/android/gms/internal/zzaeb;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    monitor-exit v3

    goto :goto_7

    :catchall_6
    move-exception v0

    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    throw v0

    :goto_6
    iget-object v3, v11, Lcom/google/android/gms/internal/zzaei;->h:Ljava/lang/Object;

    monitor-enter v3

    :try_start_b
    iget-object v2, v11, Lcom/google/android/gms/internal/zzaei;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, v11, Lcom/google/android/gms/internal/zzaei;->e:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzady;

    if-eqz v1, :cond_b

    iget-object v2, v11, Lcom/google/android/gms/internal/zzaei;->f:Ljava/util/List;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzady;->e()Lcom/google/android/gms/internal/zzaeb;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    throw v0

    :catchall_7
    move-exception v0

    :try_start_c
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    throw v0

    :cond_c
    :goto_7
    const/4 v0, 0x3

    invoke-direct {v11, v0, v2, v2}, Lcom/google/android/gms/internal/zzaei;->a(ILjava/lang/String;Lcom/google/android/gms/internal/zzuh;)Lcom/google/android/gms/internal/zzafo;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzajr;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zzaek;

    invoke-direct {v2, v11, v0}, Lcom/google/android/gms/internal/zzaek;-><init>(Lcom/google/android/gms/internal/zzaei;Lcom/google/android/gms/internal/zzafo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaei;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaei;->g:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method
