.class public final Lcom/google/android/gms/internal/zzaft;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzahg;
.implements Lcom/google/android/gms/internal/zzhj;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private A:J

.field private B:J

.field private C:I

.field private D:Lorg/json/JSONObject;

.field private E:I

.field private final F:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final G:Lcom/google/android/gms/internal/zzafv;

.field private final a:Ljava/lang/Object;

.field private final b:Lcom/google/android/gms/internal/zzafx;

.field private c:Lcom/google/android/gms/internal/zzfs;

.field private d:Ljava/math/BigInteger;

.field private final e:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/google/android/gms/internal/zzafq;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzafz;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Z

.field private i:I

.field private j:Z

.field private k:Landroid/content/Context;

.field private l:Lcom/google/android/gms/internal/zzakd;

.field private m:Lcom/google/android/gms/internal/zznk;

.field private n:Z

.field private o:Z

.field private p:Lcom/google/android/gms/internal/zzhk;

.field private q:Lcom/google/android/gms/internal/zzhf;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/Boolean;

.field private u:Ljava/lang/String;

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Ljava/lang/String;

.field private z:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzahn;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaft;->a:Ljava/lang/Object;

    sget-object p1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaft;->d:Ljava/math/BigInteger;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaft;->e:Ljava/util/HashSet;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaft;->f:Ljava/util/HashMap;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzaft;->g:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaft;->h:Z

    iput p1, p0, Lcom/google/android/gms/internal/zzaft;->i:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzaft;->j:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/zzaft;->m:Lcom/google/android/gms/internal/zznk;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaft;->n:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaft;->o:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/zzaft;->p:Lcom/google/android/gms/internal/zzhk;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzaft;->q:Lcom/google/android/gms/internal/zzhf;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzaft;->t:Ljava/lang/Boolean;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzaft;->v:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzaft;->w:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzaft;->x:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaft;->y:Ljava/lang/String;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzaft;->z:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzaft;->A:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzaft;->B:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzaft;->C:I

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaft;->D:Lorg/json/JSONObject;

    iput p1, p0, Lcom/google/android/gms/internal/zzaft;->E:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaft;->F:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, Lcom/google/android/gms/internal/zzafv;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/zzafv;-><init>(Lcom/google/android/gms/internal/zzafu;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaft;->G:Lcom/google/android/gms/internal/zzafv;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->c()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/zzafx;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzafx;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaft;->b:Lcom/google/android/gms/internal/zzafx;

    return-void
.end method

.method private final b(I)Ljava/util/concurrent/Future;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaft;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/zzaft;->C:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaft;->k:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzagh;->b(Landroid/content/Context;I)Ljava/util/concurrent/Future;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private final b(J)Ljava/util/concurrent/Future;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaft;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-wide p1, p0, Lcom/google/android/gms/internal/zzaft;->A:J

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaft;->k:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/google/android/gms/internal/zzagh;->a(Landroid/content/Context;J)Ljava/util/concurrent/Future;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/google/android/gms/internal/zzafy;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaft;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "app"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaft;->b:Lcom/google/android/gms/internal/zzafx;

    invoke-virtual {v3, p1, p3}, Lcom/google/android/gms/internal/zzafx;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object p3, p0, Lcom/google/android/gms/internal/zzaft;->f:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaft;->f:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzafz;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzafz;->a()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const-string p3, "slots"

    invoke-virtual {v1, p3, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object p3, p0, Lcom/google/android/gms/internal/zzaft;->e:Ljava/util/HashSet;

    invoke-virtual {p3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzafq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzafq;->d()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string p3, "ads"

    invoke-virtual {v1, p3, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzaft;->e:Ljava/util/HashSet;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/zzafy;->zza(Ljava/util/HashSet;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzaft;->e:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/internal/zzakv;
    .locals 3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->k()Lcom/google/android/gms/common/util/zzd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzaft;->z:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaft;->a:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaft;->y:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaft;->y:Ljava/lang/String;

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzaft;->z:J

    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/internal/zzagh;->a(Landroid/content/Context;Ljava/lang/String;J)Lcom/google/android/gms/internal/zzakv;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzakl;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzaku;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Landroid/content/Context;)Lcom/google/android/gms/internal/zzhk;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/zznh;->K:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zznh;->S:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/zznh;->Q:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaft;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaft;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaft;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eqz v2, :cond_6

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/zzaft;->q:Lcom/google/android/gms/internal/zzhf;

    if-nez p1, :cond_4

    new-instance p1, Lcom/google/android/gms/internal/zzhf;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzhf;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaft;->q:Lcom/google/android/gms/internal/zzhf;

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/zzaft;->p:Lcom/google/android/gms/internal/zzhk;

    if-nez p1, :cond_5

    new-instance p1, Lcom/google/android/gms/internal/zzhk;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaft;->q:Lcom/google/android/gms/internal/zzhf;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaft;->k:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzzp;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/zzzt;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/google/android/gms/internal/zzhk;-><init>(Lcom/google/android/gms/internal/zzhf;Lcom/google/android/gms/internal/zzzt;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaft;->p:Lcom/google/android/gms/internal/zzhk;

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/internal/zzaft;->p:Lcom/google/android/gms/internal/zzhk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzhk;->a()V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzaft;->p:Lcom/google/android/gms/internal/zzhk;

    monitor-exit v0

    return-object p1

    :cond_6
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(I)Ljava/util/concurrent/Future;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaft;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/zzaft;->E:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaft;->k:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzagh;->a(Landroid/content/Context;I)Ljava/util/concurrent/Future;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final a(J)Ljava/util/concurrent/Future;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaft;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-wide p1, p0, Lcom/google/android/gms/internal/zzaft;->B:J

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaft;->k:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/google/android/gms/internal/zzagh;->b(Landroid/content/Context;J)Ljava/util/concurrent/Future;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/concurrent/Future;
    .locals 6

    iget-object p1, p0, Lcom/google/android/gms/internal/zzaft;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaft;->D:Lorg/json/JSONObject;

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v5, "template_id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v1, 0x1

    if-ne p4, v1, :cond_1

    const-string v1, "uses_media_view"

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-ne v1, p4, :cond_1

    const/4 p2, 0x0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p2

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "template_id"

    invoke-virtual {v2, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "uses_media_view"

    invoke-virtual {v2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p3, "timestamp_ms"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->k()Lcom/google/android/gms/common/util/zzd;

    move-result-object p4

    invoke-interface {p4}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, p3, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    iget-object p3, p0, Lcom/google/android/gms/internal/zzaft;->D:Lorg/json/JSONObject;

    invoke-virtual {p3, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p2

    :try_start_2
    const-string p3, "Could not update native advanced settings"

    invoke-static {p3, p2}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    iget-object p2, p0, Lcom/google/android/gms/internal/zzaft;->k:Landroid/content/Context;

    iget-object p3, p0, Lcom/google/android/gms/internal/zzaft;->D:Lorg/json/JSONObject;

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/zzagh;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object p2

    monitor-exit p1

    return-object p2

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2
.end method

.method public final a(Landroid/content/Context;Z)Ljava/util/concurrent/Future;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaft;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzaft;->h:Z

    if-eq p2, v1, :cond_0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzaft;->h:Z

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzagh;->a(Landroid/content/Context;Z)Ljava/util/concurrent/Future;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaft;->a:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaft;->r:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaft;->r:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaft;->k:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzagh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Landroid/content/Context;Lcom/google/android/gms/internal/zzakd;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaft;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzaft;->j:Z

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzaft;->k:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaft;->l:Lcom/google/android/gms/internal/zzakd;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->h()Lcom/google/android/gms/internal/zzhg;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/zzhg;->a(Lcom/google/android/gms/internal/zzhj;)V

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/zzagh;->a(Landroid/content/Context;Lcom/google/android/gms/internal/zzahg;)Ljava/util/concurrent/Future;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/zzagh;->b(Landroid/content/Context;Lcom/google/android/gms/internal/zzahg;)Ljava/util/concurrent/Future;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/zzagh;->h(Landroid/content/Context;Lcom/google/android/gms/internal/zzahg;)Ljava/util/concurrent/Future;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/zzagh;->f(Landroid/content/Context;Lcom/google/android/gms/internal/zzahg;)Ljava/util/concurrent/Future;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/zzagh;->c(Landroid/content/Context;Lcom/google/android/gms/internal/zzahg;)Ljava/util/concurrent/Future;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/zzagh;->d(Landroid/content/Context;Lcom/google/android/gms/internal/zzahg;)Ljava/util/concurrent/Future;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/zzagh;->e(Landroid/content/Context;Lcom/google/android/gms/internal/zzahg;)Ljava/util/concurrent/Future;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/zzagh;->g(Landroid/content/Context;Lcom/google/android/gms/internal/zzahg;)Ljava/util/concurrent/Future;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/zzagh;->i(Landroid/content/Context;Lcom/google/android/gms/internal/zzahg;)Ljava/util/concurrent/Future;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/zzagh;->j(Landroid/content/Context;Lcom/google/android/gms/internal/zzahg;)Ljava/util/concurrent/Future;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/zzagh;->k(Landroid/content/Context;Lcom/google/android/gms/internal/zzahg;)Ljava/util/concurrent/Future;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaft;->k:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzzp;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/zzzt;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->e()Lcom/google/android/gms/internal/zzahn;

    move-result-object v1

    iget-object p2, p2, Lcom/google/android/gms/internal/zzakd;->b:Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/zzahn;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaft;->u:Ljava/lang/String;

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x1

    if-lt p2, v1, :cond_0

    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object p2

    invoke-virtual {p2}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    move-result p2

    if-nez p2, :cond_0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzaft;->w:Z

    :cond_0
    new-instance p2, Lcom/google/android/gms/internal/zzfs;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaft;->l:Lcom/google/android/gms/internal/zzakd;

    invoke-direct {p2, p1, v1}, Lcom/google/android/gms/internal/zzfs;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzakd;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaft;->c:Lcom/google/android/gms/internal/zzfs;

    new-instance p1, Lcom/google/android/gms/internal/zznj;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzaft;->k:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaft;->l:Lcom/google/android/gms/internal/zzakd;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzakd;->b:Ljava/lang/String;

    invoke-direct {p1, p2, v1}, Lcom/google/android/gms/internal/zznj;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->m()Lcom/google/android/gms/internal/zznm;

    invoke-static {p1}, Lcom/google/android/gms/internal/zznm;->a(Lcom/google/android/gms/internal/zznj;)Lcom/google/android/gms/internal/zznk;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaft;->m:Lcom/google/android/gms/internal/zznk;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "Cannot initialize CSI reporter."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzaft;->j:Z

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaft;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "use_https"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzaft;->h:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzaft;->h:Z

    const-string v1, "webview_cache_version"

    iget v2, p0, Lcom/google/android/gms/internal/zzaft;->i:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/zzaft;->i:I

    const-string v1, "content_url_opted_out"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "content_url_opted_out"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzaft;->a(Z)V

    :cond_0
    const-string v1, "content_url_hashes"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "content_url_hashes"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzaft;->r:Ljava/lang/String;

    :cond_1
    const-string v1, "auto_collect_location"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzaft;->x:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzaft;->x:Z

    const-string v1, "content_vertical_opted_out"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "content_vertical_opted_out"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzaft;->b(Z)V

    :cond_2
    const-string v1, "content_vertical_hashes"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "content_vertical_hashes"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzaft;->s:Ljava/lang/String;

    :cond_3
    const-string v1, "native_advanced_settings"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "native_advanced_settings"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzaft;->D:Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "Could not convert native advanced settings to json object"

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    const-string v1, "version_code"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "version_code"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/zzaft;->E:I

    :cond_5
    const-string v1, "app_settings_json"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "app_settings_json"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaft;->y:Ljava/lang/String;

    :goto_1
    iput-object v1, p0, Lcom/google/android/gms/internal/zzaft;->y:Ljava/lang/String;

    const-string v1, "app_settings_last_update_ms"

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzaft;->z:J

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/zzaft;->z:J

    const-string v1, "app_last_background_time_ms"

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzaft;->A:J

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/zzaft;->A:J

    const-string v1, "request_in_session_count"

    iget v2, p0, Lcom/google/android/gms/internal/zzaft;->C:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/zzaft;->C:I

    const-string v1, "first_ad_req_time_ms"

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzaft;->B:J

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/zzaft;->B:J

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final a(Lcom/google/android/gms/internal/zzafq;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaft;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaft;->e:Ljava/util/HashSet;

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

.method public final a(Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaft;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzaft;->t:Ljava/lang/Boolean;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/internal/zzafz;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaft;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaft;->f:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaft;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzzp;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/zzzt;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzzt;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/util/HashSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/google/android/gms/internal/zzafq;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaft;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaft;->e:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaft;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzaft;->n:Z

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaft;->k:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzagh;->b(Landroid/content/Context;Z)Ljava/util/concurrent/Future;

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzaft;->n:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/zzaft;->k:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaft;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/zzhk;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzhk;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "start fetching content..."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzagf;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzhk;->a()V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaft;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzaft;->n:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b(Landroid/content/Context;Z)Ljava/util/concurrent/Future;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaft;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzaft;->x:Z

    if-eq p2, v1, :cond_0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzaft;->x:Z

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzagh;->c(Landroid/content/Context;Z)Ljava/util/concurrent/Future;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaft;->a:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaft;->s:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaft;->s:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaft;->k:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzagh;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaft;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzaft;->o:Z

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaft;->k:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzagh;->b(Landroid/content/Context;Z)Ljava/util/concurrent/Future;

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaft;->k:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzagh;->b(Landroid/content/Context;Z)Ljava/util/concurrent/Future;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzaft;->o:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/zzaft;->k:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaft;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/zzhk;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzhk;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "start fetching content..."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzagf;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzhk;->a()V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaft;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzaft;->o:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final c()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaft;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaft;->d:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaft;->d:Ljava/math/BigInteger;

    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzaft;->d:Ljava/math/BigInteger;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final c(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaft;->G:Lcom/google/android/gms/internal/zzafv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzafv;->a(Z)V

    return-void
.end method

.method public final d()Lcom/google/android/gms/internal/zzafx;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaft;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaft;->b:Lcom/google/android/gms/internal/zzafx;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final d(Z)V
    .locals 4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->k()Lcom/google/android/gms/common/util/zzd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v0

    if-eqz p1, :cond_1

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzaft;->A:J

    sub-long/2addr v0, v2

    sget-object p1, Lcom/google/android/gms/internal/zznh;->aw:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzaft;->b:Lcom/google/android/gms/internal/zzafx;

    const/4 v0, -0x1

    iput v0, p1, Lcom/google/android/gms/internal/zzafx;->a:I

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzaft;->b:Lcom/google/android/gms/internal/zzafx;

    iget v0, p0, Lcom/google/android/gms/internal/zzaft;->C:I

    iput v0, p1, Lcom/google/android/gms/internal/zzafx;->a:I

    return-void

    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzaft;->b(J)Ljava/util/concurrent/Future;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzaft;->b:Lcom/google/android/gms/internal/zzafx;

    iget p1, p1, Lcom/google/android/gms/internal/zzafx;->a:I

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaft;->b(I)Ljava/util/concurrent/Future;

    return-void
.end method

.method public final e()Lcom/google/android/gms/internal/zznk;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaft;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaft;->m:Lcom/google/android/gms/internal/zznk;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final f()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaft;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzaft;->h:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzaft;->w:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final g()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaft;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaft;->r:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final h()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaft;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaft;->s:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final i()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaft;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaft;->t:Ljava/lang/Boolean;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final j()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaft;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzaft;->x:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final k()J
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaft;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/zzaft;->A:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final l()J
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaft;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/zzaft;->B:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final m()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaft;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/zzaft;->E:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final n()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaft;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/zzaft;->C:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final o()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaft;->G:Lcom/google/android/gms/internal/zzafv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzafv;->a()Z

    move-result v0

    return v0
.end method

.method public final p()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaft;->G:Lcom/google/android/gms/internal/zzafv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzafv;->b()Z

    move-result v0

    return v0
.end method

.method public final q()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaft;->G:Lcom/google/android/gms/internal/zzafv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzafv;->c()V

    return-void
.end method

.method public final r()Lcom/google/android/gms/internal/zzafs;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaft;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/google/android/gms/internal/zzafs;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaft;->y:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzaft;->z:J

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzafs;-><init>(Ljava/lang/String;J)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final s()Lorg/json/JSONObject;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaft;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaft;->D:Lorg/json/JSONObject;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final t()Ljava/util/concurrent/Future;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaft;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaft;->k:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzagh;->a(Landroid/content/Context;)Ljava/util/concurrent/Future;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final u()Lcom/google/android/gms/internal/zzfs;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaft;->c:Lcom/google/android/gms/internal/zzfs;

    return-object v0
.end method

.method public final v()Landroid/content/res/Resources;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaft;->l:Lcom/google/android/gms/internal/zzakd;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzakd;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaft;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaft;->k:Landroid/content/Context;

    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->zzgww:Lcom/google/android/gms/dynamite/DynamiteModule$zzd;

    const-string v3, "com.google.android.gms.ads.dynamite"

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->zza(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$zzd;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzaqb()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$zzc; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_1
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "Cannot load resource from dynamite apk or local jar"

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final w()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaft;->F:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public final x()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaft;->F:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void
.end method

.method public final y()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaft;->F:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method
