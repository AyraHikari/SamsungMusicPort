.class public final Lcom/google/android/gms/internal/zzzy;
.super Lcom/google/android/gms/internal/zzagb;

# interfaces
.implements Lcom/google/android/gms/internal/zzaal;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field a:Lcom/google/android/gms/internal/zzaif;

.field private final b:Lcom/google/android/gms/internal/zzzx;

.field private final c:Lcom/google/android/gms/internal/zzaau;

.field private final d:Ljava/lang/Object;

.field private final e:Landroid/content/Context;

.field private final f:Lcom/google/android/gms/internal/zzis;

.field private final g:Lcom/google/android/gms/internal/zzix;

.field private h:Lcom/google/android/gms/internal/zzaat;

.field private i:Ljava/lang/Runnable;

.field private j:Lcom/google/android/gms/internal/zzaax;

.field private k:Lcom/google/android/gms/internal/zzui;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzaau;Lcom/google/android/gms/internal/zzzx;Lcom/google/android/gms/internal/zzix;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzagb;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzzy;->d:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzzy;->b:Lcom/google/android/gms/internal/zzzx;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzzy;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzzy;->c:Lcom/google/android/gms/internal/zzaau;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzzy;->g:Lcom/google/android/gms/internal/zzix;

    new-instance p1, Lcom/google/android/gms/internal/zzis;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzzy;->g:Lcom/google/android/gms/internal/zzix;

    sget-object p3, Lcom/google/android/gms/internal/zznh;->cJ:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/zzis;-><init>(Lcom/google/android/gms/internal/zzix;Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzzy;->f:Lcom/google/android/gms/internal/zzis;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzzy;->f:Lcom/google/android/gms/internal/zzis;

    new-instance p2, Lcom/google/android/gms/internal/zzzz;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/zzzz;-><init>(Lcom/google/android/gms/internal/zzzy;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzis;->a(Lcom/google/android/gms/internal/zzit;)V

    new-instance p1, Lcom/google/android/gms/internal/zzjd;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzjd;-><init>()V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzzy;->c:Lcom/google/android/gms/internal/zzaau;

    iget-object p2, p2, Lcom/google/android/gms/internal/zzaau;->j:Lcom/google/android/gms/internal/zzakd;

    iget p2, p2, Lcom/google/android/gms/internal/zzakd;->c:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Lcom/google/android/gms/internal/zzjd;->a:Ljava/lang/Integer;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzzy;->c:Lcom/google/android/gms/internal/zzaau;

    iget-object p2, p2, Lcom/google/android/gms/internal/zzaau;->j:Lcom/google/android/gms/internal/zzakd;

    iget p2, p2, Lcom/google/android/gms/internal/zzakd;->d:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Lcom/google/android/gms/internal/zzjd;->b:Ljava/lang/Integer;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzzy;->c:Lcom/google/android/gms/internal/zzaau;

    iget-object p2, p2, Lcom/google/android/gms/internal/zzaau;->j:Lcom/google/android/gms/internal/zzakd;

    iget-boolean p2, p2, Lcom/google/android/gms/internal/zzakd;->e:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Lcom/google/android/gms/internal/zzjd;->c:Ljava/lang/Integer;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzzy;->f:Lcom/google/android/gms/internal/zzis;

    new-instance p3, Lcom/google/android/gms/internal/zzaaa;

    invoke-direct {p3, p1}, Lcom/google/android/gms/internal/zzaaa;-><init>(Lcom/google/android/gms/internal/zzjd;)V

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/zzis;->a(Lcom/google/android/gms/internal/zzit;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzzy;->c:Lcom/google/android/gms/internal/zzaau;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzaau;->f:Landroid/content/pm/PackageInfo;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzzy;->f:Lcom/google/android/gms/internal/zzis;

    new-instance p2, Lcom/google/android/gms/internal/zzaab;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/zzaab;-><init>(Lcom/google/android/gms/internal/zzzy;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzis;->a(Lcom/google/android/gms/internal/zzit;)V

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/zzzy;->c:Lcom/google/android/gms/internal/zzaau;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzaau;->c:Lcom/google/android/gms/internal/zzjn;

    iget-boolean p2, p1, Lcom/google/android/gms/internal/zzjn;->e:Z

    if-eqz p2, :cond_2

    const-string p2, "interstitial_mb"

    iget-object p3, p1, Lcom/google/android/gms/internal/zzjn;->b:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/zzzy;->f:Lcom/google/android/gms/internal/zzis;

    sget-object p2, Lcom/google/android/gms/internal/zzaac;->a:Lcom/google/android/gms/internal/zzit;

    :goto_1
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzis;->a(Lcom/google/android/gms/internal/zzit;)V

    goto :goto_2

    :cond_2
    iget-boolean p2, p1, Lcom/google/android/gms/internal/zzjn;->e:Z

    if-eqz p2, :cond_3

    const-string p2, "reward_mb"

    iget-object p3, p1, Lcom/google/android/gms/internal/zzjn;->b:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/zzzy;->f:Lcom/google/android/gms/internal/zzis;

    sget-object p2, Lcom/google/android/gms/internal/zzaad;->a:Lcom/google/android/gms/internal/zzit;

    goto :goto_1

    :cond_3
    iget-boolean p2, p1, Lcom/google/android/gms/internal/zzjn;->i:Z

    if-nez p2, :cond_4

    iget-boolean p1, p1, Lcom/google/android/gms/internal/zzjn;->e:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/internal/zzzy;->f:Lcom/google/android/gms/internal/zzis;

    sget-object p2, Lcom/google/android/gms/internal/zzaae;->a:Lcom/google/android/gms/internal/zzit;

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/zzzy;->f:Lcom/google/android/gms/internal/zzis;

    sget-object p2, Lcom/google/android/gms/internal/zzaaf;->a:Lcom/google/android/gms/internal/zzit;

    goto :goto_1

    :goto_2
    iget-object p1, p0, Lcom/google/android/gms/internal/zzzy;->f:Lcom/google/android/gms/internal/zzis;

    sget-object p2, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbbm:Lcom/google/android/gms/internal/zziu$zza$zzb;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzis;->a(Lcom/google/android/gms/internal/zziu$zza$zzb;)V

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/zzaat;)Lcom/google/android/gms/internal/zzjn;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzaai;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->h:Lcom/google/android/gms/internal/zzaat;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->h:Lcom/google/android/gms/internal/zzaat;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaat;->W:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->h:Lcom/google/android/gms/internal/zzaat;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaat;->W:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->k:Lcom/google/android/gms/internal/zzui;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->k:Lcom/google/android/gms/internal/zzui;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzui;->s:Z

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->j:Lcom/google/android/gms/internal/zzaax;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzaax;->z:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/zzaat;->e:Lcom/google/android/gms/internal/zzjn;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjn;->h:[Lcom/google/android/gms/internal/zzjn;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    iget-boolean v6, v5, Lcom/google/android/gms/internal/zzjn;->j:Z

    if-eqz v6, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzjn;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzaat;->e:Lcom/google/android/gms/internal/zzjn;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzjn;->h:[Lcom/google/android/gms/internal/zzjn;

    invoke-direct {v0, v5, p1}, Lcom/google/android/gms/internal/zzjn;-><init>(Lcom/google/android/gms/internal/zzjn;[Lcom/google/android/gms/internal/zzjn;)V

    return-object v0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->j:Lcom/google/android/gms/internal/zzaax;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaax;->m:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->j:Lcom/google/android/gms/internal/zzaax;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaax;->m:Ljava/lang/String;

    const-string v3, "x"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_5

    new-instance p1, Lcom/google/android/gms/internal/zzaai;

    const-string v0, "Invalid ad size format from the ad response: "

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzy;->j:Lcom/google/android/gms/internal/zzaax;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaax;->m:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_2
    invoke-direct {p1, v0, v2}, Lcom/google/android/gms/internal/zzaai;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_5
    :try_start_0
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzaat;->e:Lcom/google/android/gms/internal/zzjn;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzjn;->h:[Lcom/google/android/gms/internal/zzjn;

    array-length v4, v1

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_9

    aget-object v6, v1, v5

    iget-object v7, p0, Lcom/google/android/gms/internal/zzzy;->e:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    iget v8, v6, Lcom/google/android/gms/internal/zzjn;->f:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_6

    iget v8, v6, Lcom/google/android/gms/internal/zzjn;->g:I

    int-to-float v8, v8

    div-float/2addr v8, v7

    float-to-int v8, v8

    goto :goto_4

    :cond_6
    iget v8, v6, Lcom/google/android/gms/internal/zzjn;->f:I

    :goto_4
    iget v9, v6, Lcom/google/android/gms/internal/zzjn;->c:I

    const/4 v10, -0x2

    if-ne v9, v10, :cond_7

    iget v9, v6, Lcom/google/android/gms/internal/zzjn;->d:I

    int-to-float v9, v9

    div-float/2addr v9, v7

    float-to-int v7, v9

    goto :goto_5

    :cond_7
    iget v7, v6, Lcom/google/android/gms/internal/zzjn;->c:I

    :goto_5
    if-ne v3, v8, :cond_8

    if-ne v0, v7, :cond_8

    iget-boolean v7, v6, Lcom/google/android/gms/internal/zzjn;->j:Z

    if-nez v7, :cond_8

    new-instance v0, Lcom/google/android/gms/internal/zzjn;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzaat;->e:Lcom/google/android/gms/internal/zzjn;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzjn;->h:[Lcom/google/android/gms/internal/zzjn;

    invoke-direct {v0, v6, p1}, Lcom/google/android/gms/internal/zzjn;-><init>(Lcom/google/android/gms/internal/zzjn;[Lcom/google/android/gms/internal/zzjn;)V

    return-object v0

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_9
    new-instance p1, Lcom/google/android/gms/internal/zzaai;

    const-string v0, "The ad size from the ad response was not one of the requested sizes: "

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzy;->j:Lcom/google/android/gms/internal/zzaax;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaax;->m:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_a
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_6
    invoke-direct {p1, v0, v2}, Lcom/google/android/gms/internal/zzaai;-><init>(Ljava/lang/String;I)V

    throw p1

    :catch_0
    nop

    new-instance p1, Lcom/google/android/gms/internal/zzaai;

    const-string v0, "Invalid ad size number from the ad response: "

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzy;->j:Lcom/google/android/gms/internal/zzaax;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaax;->m:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_b
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_7
    invoke-direct {p1, v0, v2}, Lcom/google/android/gms/internal/zzaai;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_c
    new-instance p1, Lcom/google/android/gms/internal/zzaai;

    const-string v0, "The ad response must specify one of the supported ad sizes."

    invoke-direct {p1, v0, v2}, Lcom/google/android/gms/internal/zzaai;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzzy;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzzy;->d:Ljava/lang/Object;

    return-object p0
.end method

.method private final a(ILjava/lang/String;)V
    .locals 15

    move-object v0, p0

    move/from16 v6, p1

    const/4 v1, 0x3

    if-eq v6, v1, :cond_1

    const/4 v1, -0x1

    if-ne v6, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/zzagf;->d(Ljava/lang/String;)V

    :goto_1
    iget-object v1, v0, Lcom/google/android/gms/internal/zzzy;->j:Lcom/google/android/gms/internal/zzaax;

    if-nez v1, :cond_2

    new-instance v1, Lcom/google/android/gms/internal/zzaax;

    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/zzaax;-><init>(I)V

    :goto_2
    iput-object v1, v0, Lcom/google/android/gms/internal/zzzy;->j:Lcom/google/android/gms/internal/zzaax;

    goto :goto_3

    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/zzaax;

    iget-object v2, v0, Lcom/google/android/gms/internal/zzzy;->j:Lcom/google/android/gms/internal/zzaax;

    iget-wide v2, v2, Lcom/google/android/gms/internal/zzaax;->k:J

    invoke-direct {v1, v6, v2, v3}, Lcom/google/android/gms/internal/zzaax;-><init>(IJ)V

    goto :goto_2

    :goto_3
    iget-object v1, v0, Lcom/google/android/gms/internal/zzzy;->h:Lcom/google/android/gms/internal/zzaat;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/google/android/gms/internal/zzzy;->h:Lcom/google/android/gms/internal/zzaat;

    :goto_4
    move-object v2, v1

    goto :goto_5

    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/zzaat;

    iget-object v8, v0, Lcom/google/android/gms/internal/zzzy;->c:Lcom/google/android/gms/internal/zzaau;

    const-wide/16 v9, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v13}, Lcom/google/android/gms/internal/zzaat;-><init>(Lcom/google/android/gms/internal/zzaau;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :goto_5
    new-instance v14, Lcom/google/android/gms/internal/zzafp;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzzy;->j:Lcom/google/android/gms/internal/zzaax;

    iget-object v4, v0, Lcom/google/android/gms/internal/zzzy;->k:Lcom/google/android/gms/internal/zzui;

    const/4 v5, 0x0

    const-wide/16 v7, -0x1

    iget-object v1, v0, Lcom/google/android/gms/internal/zzzy;->j:Lcom/google/android/gms/internal/zzaax;

    iget-wide v9, v1, Lcom/google/android/gms/internal/zzaax;->n:J

    const/4 v11, 0x0

    iget-object v12, v0, Lcom/google/android/gms/internal/zzzy;->f:Lcom/google/android/gms/internal/zzis;

    const/4 v13, 0x0

    move-object v1, v14

    move/from16 v6, p1

    invoke-direct/range {v1 .. v13}, Lcom/google/android/gms/internal/zzafp;-><init>(Lcom/google/android/gms/internal/zzaat;Lcom/google/android/gms/internal/zzaax;Lcom/google/android/gms/internal/zzui;Lcom/google/android/gms/internal/zzjn;IJJLorg/json/JSONObject;Lcom/google/android/gms/internal/zzis;Ljava/lang/Boolean;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/zzzy;->b:Lcom/google/android/gms/internal/zzzx;

    invoke-interface {v1, v14}, Lcom/google/android/gms/internal/zzzx;->zza(Lcom/google/android/gms/internal/zzafp;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzzy;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzzy;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/zzzy;)Lcom/google/android/gms/internal/zzaau;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzzy;->c:Lcom/google/android/gms/internal/zzaau;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/zzzy;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzzy;->i:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method final a(Lcom/google/android/gms/internal/zzakd;Lcom/google/android/gms/internal/zzalh;)Lcom/google/android/gms/internal/zzaif;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzakd;",
            "Lcom/google/android/gms/internal/zzalh<",
            "Lcom/google/android/gms/internal/zzaat;",
            ">;)",
            "Lcom/google/android/gms/internal/zzaif;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->e:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/zzaak;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzaak;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/zzaam;->a(Lcom/google/android/gms/internal/zzakd;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "Fetching ad response from local ad request service."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/zzaaq;

    invoke-direct {p1, v0, p2, p0}, Lcom/google/android/gms/internal/zzaaq;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzalh;Lcom/google/android/gms/internal/zzaal;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaan;->g_()Ljava/lang/Object;

    return-object p1

    :cond_0
    const-string v1, "Fetching ad response from remote ad request service."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->a()Lcom/google/android/gms/internal/zzajr;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzajr;->c(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p1, "Failed to connect to remote ad request service."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/zzaar;

    invoke-direct {v1, v0, p1, p2, p0}, Lcom/google/android/gms/internal/zzaar;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzakd;Lcom/google/android/gms/internal/zzalh;Lcom/google/android/gms/internal/zzaal;)V

    return-object v1
.end method

.method public final a()V
    .locals 9

    const-string v0, "AdLoaderBackgroundTask started."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzaag;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzaag;-><init>(Lcom/google/android/gms/internal/zzzy;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzzy;->i:Ljava/lang/Runnable;

    sget-object v0, Lcom/google/android/gms/internal/zzahn;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzy;->i:Ljava/lang/Runnable;

    sget-object v2, Lcom/google/android/gms/internal/zznh;->bm:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->k()Lcom/google/android/gms/common/util/zzd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v3

    sget-object v0, Lcom/google/android/gms/internal/zznh;->bk:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->c:Lcom/google/android/gms/internal/zzaau;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaau;->b:Lcom/google/android/gms/internal/zzjj;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjj;->d:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->c:Lcom/google/android/gms/internal/zzaau;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaau;->b:Lcom/google/android/gms/internal/zzjj;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjj;->d:Landroid/os/Bundle;

    const-string v1, "_ad"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v8, Lcom/google/android/gms/internal/zzaat;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzy;->c:Lcom/google/android/gms/internal/zzaau;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/zzaat;-><init>(Lcom/google/android/gms/internal/zzaau;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/google/android/gms/internal/zzzy;->h:Lcom/google/android/gms/internal/zzaat;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzy;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzy;->h:Lcom/google/android/gms/internal/zzaat;

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/zzacg;->a(Landroid/content/Context;Lcom/google/android/gms/internal/zzaat;Ljava/lang/String;)Lcom/google/android/gms/internal/zzaax;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzzy;->a(Lcom/google/android/gms/internal/zzaax;)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzall;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzall;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/zzaah;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzaah;-><init>(Lcom/google/android/gms/internal/zzzy;Lcom/google/android/gms/internal/zzalh;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/zzahh;->a(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/zzakv;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->z()Lcom/google/android/gms/internal/zzaff;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzy;->e:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzaff;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->z()Lcom/google/android/gms/internal/zzaff;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzy;->e:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzaff;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->z()Lcom/google/android/gms/internal/zzaff;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzy;->e:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzaff;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->z()Lcom/google/android/gms/internal/zzaff;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzy;->e:Landroid/content/Context;

    invoke-virtual {v1, v2, v7}, Lcom/google/android/gms/internal/zzaff;->f(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v8, Lcom/google/android/gms/internal/zzaat;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzy;->c:Lcom/google/android/gms/internal/zzaau;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/zzaat;-><init>(Lcom/google/android/gms/internal/zzaau;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/google/android/gms/internal/zzzy;->h:Lcom/google/android/gms/internal/zzaat;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzy;->h:Lcom/google/android/gms/internal/zzaat;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzalh;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/zzaax;)V
    .locals 13
    .param p1    # Lcom/google/android/gms/internal/zzaax;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Received ad response."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzzy;->j:Lcom/google/android/gms/internal/zzaax;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->k()Lcom/google/android/gms/common/util/zzd;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v6

    iget-object p1, p0, Lcom/google/android/gms/internal/zzzy;->d:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzzy;->a:Lcom/google/android/gms/internal/zzaif;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->i()Lcom/google/android/gms/internal/zzaft;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzy;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzy;->j:Lcom/google/android/gms/internal/zzaax;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/zzaax;->G:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/zzaft;->b(Landroid/content/Context;Z)Ljava/util/concurrent/Future;

    sget-object p1, Lcom/google/android/gms/internal/zznh;->aF:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzzy;->j:Lcom/google/android/gms/internal/zzaax;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/zzaax;->O:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->i()Lcom/google/android/gms/internal/zzaft;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzzy;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzy;->h:Lcom/google/android/gms/internal/zzaat;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzaat;->f:Ljava/lang/String;

    const-string v3, "admob"

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    const-string v4, "never_pool_slots"

    invoke-interface {p1, v4, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v2, "never_pool_slots"

    invoke-interface {p1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->i()Lcom/google/android/gms/internal/zzaft;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzzy;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzy;->h:Lcom/google/android/gms/internal/zzaat;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzaat;->f:Ljava/lang/String;

    const-string v3, "admob"

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    const-string v4, "never_pool_slots"

    invoke-interface {p1, v4, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/zzzy;->j:Lcom/google/android/gms/internal/zzaax;

    iget p1, p1, Lcom/google/android/gms/internal/zzaax;->e:I

    const/4 v2, -0x2

    const/4 v3, -0x3

    if-eq p1, v2, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/zzzy;->j:Lcom/google/android/gms/internal/zzaax;

    iget p1, p1, Lcom/google/android/gms/internal/zzaax;->e:I

    if-ne p1, v3, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/zzaai;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->j:Lcom/google/android/gms/internal/zzaax;

    iget v0, v0, Lcom/google/android/gms/internal/zzaax;->e:I

    const/16 v1, 0x42

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "There was a problem getting an ad response. ErrorCode: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzy;->j:Lcom/google/android/gms/internal/zzaax;

    iget v1, v1, Lcom/google/android/gms/internal/zzaax;->e:I

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/zzaai;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/google/android/gms/internal/zzzy;->j:Lcom/google/android/gms/internal/zzaax;

    iget p1, p1, Lcom/google/android/gms/internal/zzaax;->e:I

    if-eq p1, v3, :cond_7

    iget-object p1, p0, Lcom/google/android/gms/internal/zzzy;->j:Lcom/google/android/gms/internal/zzaax;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzaax;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->i()Lcom/google/android/gms/internal/zzaft;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzy;->e:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzzy;->j:Lcom/google/android/gms/internal/zzaax;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/zzaax;->u:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/zzaft;->a(Landroid/content/Context;Z)Ljava/util/concurrent/Future;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzzy;->j:Lcom/google/android/gms/internal/zzaax;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/zzaax;->h:Z
    :try_end_1
    .catch Lcom/google/android/gms/internal/zzaai; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz p1, :cond_5

    :try_start_2
    new-instance p1, Lcom/google/android/gms/internal/zzui;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzy;->j:Lcom/google/android/gms/internal/zzaax;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzaax;->c:Ljava/lang/String;

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/zzui;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzzy;->k:Lcom/google/android/gms/internal/zzui;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->i()Lcom/google/android/gms/internal/zzaft;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzy;->k:Lcom/google/android/gms/internal/zzui;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/zzui;->g:Z

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzaft;->c(Z)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/android/gms/internal/zzaai; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_0
    move-exception p1

    :try_start_3
    const-string v0, "Could not parse mediation config."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Lcom/google/android/gms/internal/zzaai;

    const-string v0, "Could not parse mediation config: "

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzy;->j:Lcom/google/android/gms/internal/zzaax;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzaax;->c:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_3
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/zzaai;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->i()Lcom/google/android/gms/internal/zzaft;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzy;->j:Lcom/google/android/gms/internal/zzaax;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/zzaax;->J:Z

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzaft;->c(Z)V

    :goto_4
    iget-object p1, p0, Lcom/google/android/gms/internal/zzzy;->j:Lcom/google/android/gms/internal/zzaax;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzaax;->H:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    sget-object p1, Lcom/google/android/gms/internal/zznh;->cm:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "Received cookie from server. Setting webview cookie in CookieManager."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->g()Lcom/google/android/gms/internal/zzaht;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzy;->e:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzaht;->c(Landroid/content/Context;)Landroid/webkit/CookieManager;

    move-result-object p1

    if-eqz p1, :cond_7

    const-string v2, "googleads.g.doubleclick.net"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzzy;->j:Lcom/google/android/gms/internal/zzaax;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzaax;->H:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    new-instance p1, Lcom/google/android/gms/internal/zzaai;

    const-string v0, "No fill from ad server."

    const/4 v1, 0x3

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/zzaai;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_7
    :goto_5
    iget-object p1, p0, Lcom/google/android/gms/internal/zzzy;->h:Lcom/google/android/gms/internal/zzaat;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzaat;->e:Lcom/google/android/gms/internal/zzjn;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzjn;->h:[Lcom/google/android/gms/internal/zzjn;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/google/android/gms/internal/zzzy;->h:Lcom/google/android/gms/internal/zzaat;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzzy;->a(Lcom/google/android/gms/internal/zzaat;)Lcom/google/android/gms/internal/zzjn;

    move-result-object p1
    :try_end_3
    .catch Lcom/google/android/gms/internal/zzaai; {:try_start_3 .. :try_end_3} :catch_2

    move-object v4, p1

    goto :goto_6

    :cond_8
    move-object v4, v0

    :goto_6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->i()Lcom/google/android/gms/internal/zzaft;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzy;->j:Lcom/google/android/gms/internal/zzaax;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/zzaax;->v:Z

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzaft;->a(Z)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->i()Lcom/google/android/gms/internal/zzaft;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzy;->j:Lcom/google/android/gms/internal/zzaax;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/zzaax;->N:Z

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzaft;->b(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzzy;->j:Lcom/google/android/gms/internal/zzaax;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzaax;->r:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    :try_start_4
    new-instance p1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzy;->j:Lcom/google/android/gms/internal/zzaax;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzaax;->r:Ljava/lang/String;

    invoke-direct {p1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v10, p1

    goto :goto_7

    :catch_1
    move-exception p1

    const-string v2, "Error parsing the JSON for Active View."

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    move-object v10, v0

    :goto_7
    iget-object p1, p0, Lcom/google/android/gms/internal/zzzy;->j:Lcom/google/android/gms/internal/zzaax;

    iget p1, p1, Lcom/google/android/gms/internal/zzaax;->Q:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p1, v2, :cond_a

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->e()Lcom/google/android/gms/internal/zzahn;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzzy;->h:Lcom/google/android/gms/internal/zzaat;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzaat;->d:Lcom/google/android/gms/internal/zzjj;

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/zzahn;->a(Lcom/google/android/gms/internal/zzjj;Z)V

    :cond_a
    iget-object p1, p0, Lcom/google/android/gms/internal/zzzy;->j:Lcom/google/android/gms/internal/zzaax;

    iget p1, p1, Lcom/google/android/gms/internal/zzaax;->Q:I

    if-ne p1, v3, :cond_b

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_b
    iget-object p1, p0, Lcom/google/android/gms/internal/zzzy;->j:Lcom/google/android/gms/internal/zzaax;

    iget p1, p1, Lcom/google/android/gms/internal/zzaax;->Q:I

    if-nez p1, :cond_c

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->e()Lcom/google/android/gms/internal/zzahn;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzzy;->h:Lcom/google/android/gms/internal/zzaat;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzaat;->d:Lcom/google/android/gms/internal/zzjj;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzahn;->a(Lcom/google/android/gms/internal/zzjj;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    move-object v12, p1

    goto :goto_8

    :cond_c
    move-object v12, v0

    :goto_8
    new-instance p1, Lcom/google/android/gms/internal/zzafp;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzy;->h:Lcom/google/android/gms/internal/zzaat;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzy;->j:Lcom/google/android/gms/internal/zzaax;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzzy;->k:Lcom/google/android/gms/internal/zzui;

    const/4 v5, -0x2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->j:Lcom/google/android/gms/internal/zzaax;

    iget-wide v8, v0, Lcom/google/android/gms/internal/zzaax;->n:J

    iget-object v11, p0, Lcom/google/android/gms/internal/zzzy;->f:Lcom/google/android/gms/internal/zzis;

    move-object v0, p1

    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/internal/zzafp;-><init>(Lcom/google/android/gms/internal/zzaat;Lcom/google/android/gms/internal/zzaax;Lcom/google/android/gms/internal/zzui;Lcom/google/android/gms/internal/zzjn;IJJLorg/json/JSONObject;Lcom/google/android/gms/internal/zzis;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->b:Lcom/google/android/gms/internal/zzzx;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzzx;->zza(Lcom/google/android/gms/internal/zzafp;)V

    :goto_9
    sget-object p1, Lcom/google/android/gms/internal/zzahn;->a:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->i:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaai;->getErrorCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaai;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/zzzy;->a(ILjava/lang/String;)V

    goto :goto_9

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method final synthetic a(Lcom/google/android/gms/internal/zzjc;)V
    .locals 1

    iget-object p1, p1, Lcom/google/android/gms/internal/zzjc;->c:Lcom/google/android/gms/internal/zzjb;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->c:Lcom/google/android/gms/internal/zzaau;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaau;->f:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/zzjb;->a:Ljava/lang/String;

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzzy;->a:Lcom/google/android/gms/internal/zzaif;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzy;->a:Lcom/google/android/gms/internal/zzaif;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzaif;->c()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final synthetic b(Lcom/google/android/gms/internal/zzjc;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzy;->c:Lcom/google/android/gms/internal/zzaau;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaau;->v:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/zzjc;->a:Ljava/lang/String;

    return-void
.end method
