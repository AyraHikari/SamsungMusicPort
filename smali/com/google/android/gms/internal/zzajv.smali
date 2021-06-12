.class public final Lcom/google/android/gms/internal/zzajv;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# static fields
.field private static a:Ljava/lang/Object;

.field private static b:Z
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static c:Z
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static d:Lcom/google/android/gms/common/util/zzd;

.field private static final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzajv;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/internal/zzajv;->b:Z

    sput-boolean v0, Lcom/google/android/gms/internal/zzajv;->c:Z

    invoke-static {}, Lcom/google/android/gms/common/util/zzh;->zzamg()Lcom/google/android/gms/common/util/zzd;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/zzajv;->d:Lcom/google/android/gms/common/util/zzd;

    new-instance v1, Ljava/util/HashSet;

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lcom/google/android/gms/internal/zzajv;->e:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzajv;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/zzajv;->c()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_3

    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_2

    new-array p1, v2, [Ljava/lang/String;

    const-string v2, "network_request_"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    aput-object v0, p1, v1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_3

    :cond_2
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "ad_request_"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    aput-object p1, v3, v1

    const-string p1, "network_request_"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_2
    aput-object p1, v3, v2

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_3
    iput-object p1, p0, Lcom/google/android/gms/internal/zzajv;->f:Ljava/util/List;

    return-void
.end method

.method public static a()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzajv;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lcom/google/android/gms/internal/zzajv;->b:Z

    sput-boolean v1, Lcom/google/android/gms/internal/zzajv;->c:Z

    const-string v1, "Ad debug logging enablement is out of date."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzakb;->e(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static final synthetic a(ILjava/util/Map;Landroid/util/JsonWriter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "params"

    invoke-virtual {p2, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string v0, "firstline"

    invoke-virtual {p2, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string v0, "code"

    invoke-virtual {p2, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    invoke-virtual {p2}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzajv;->a(Landroid/util/JsonWriter;Ljava/util/Map;)V

    invoke-virtual {p2}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method

.method private static a(Landroid/util/JsonWriter;Ljava/util/Map;)V
    .locals 4
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonWriter;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "headers"

    invoke-virtual {p0, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/zzajv;->e:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string v3, "name"

    invoke-virtual {p0, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    const-string v3, "value"

    invoke-virtual {p0, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {p0}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string v2, "name"

    invoke-virtual {p0, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    const-string v1, "value"

    invoke-virtual {p0, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {p0}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    goto :goto_0

    :cond_3
    const-string p1, "Connection headers should be either Map<String, String> or Map<String, List<String>>"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzakb;->c(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    return-void
.end method

.method static final synthetic a(Ljava/lang/String;Landroid/util/JsonWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "params"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    if-eqz p0, :cond_0

    const-string v0, "error_description"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method

.method private final a(Ljava/lang/String;Lcom/google/android/gms/internal/zzaka;)V
    .locals 5

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Landroid/util/JsonWriter;

    invoke-direct {v1, v0}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    :try_start_0
    invoke-virtual {v1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string v2, "timestamp"

    invoke-virtual {v1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/zzajv;->d:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v3}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    const-string v2, "event"

    invoke-virtual {v1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    const-string p1, "components"

    invoke-virtual {v1, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzajv;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/zzaka;->a(Landroid/util/JsonWriter;)V

    invoke-virtual {v1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    invoke-virtual {v1}, Landroid/util/JsonWriter;->flush()V

    invoke-virtual {v1}, Landroid/util/JsonWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "unable to log"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzakb;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzajv;->c(Ljava/lang/String;)V

    return-void
.end method

.method static final synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BLandroid/util/JsonWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "params"

    invoke-virtual {p4, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string v0, "firstline"

    invoke-virtual {p4, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string v0, "uri"

    invoke-virtual {p4, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    const-string p0, "verb"

    invoke-virtual {p4, p0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {p4}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    invoke-static {p4, p2}, Lcom/google/android/gms/internal/zzajv;->a(Landroid/util/JsonWriter;Ljava/util/Map;)V

    if-eqz p3, :cond_0

    const-string p0, "body"

    invoke-virtual {p4, p0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object p0

    invoke-static {p3}, Lcom/google/android/gms/common/util/zzb;->zzk([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    :cond_0
    invoke-virtual {p4}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method

.method private final a(Ljava/util/Map;I)V
    .locals 2
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;I)V"
        }
    .end annotation

    const-string v0, "onNetworkResponse"

    new-instance v1, Lcom/google/android/gms/internal/zzajx;

    invoke-direct {v1, p2, p1}, Lcom/google/android/gms/internal/zzajx;-><init>(ILjava/util/Map;)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzajv;->a(Ljava/lang/String;Lcom/google/android/gms/internal/zzaka;)V

    return-void
.end method

.method public static a(Z)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzajv;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/google/android/gms/internal/zzajv;->b:Z

    sput-boolean p0, Lcom/google/android/gms/internal/zzajv;->c:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static final synthetic a([BLandroid/util/JsonWriter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "params"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    array-length v0, p0

    invoke-static {p0}, Lcom/google/android/gms/common/util/zzb;->zzk([B)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_0

    const-string v1, "body"

    :goto_0
    invoke-virtual {p1, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/internal/zzajr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v1, "bodydigest"

    goto :goto_0

    :cond_1
    :goto_1
    const-string p0, "bodylength"

    invoke-virtual {p1, p0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object p0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zznh;->aT:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "development_settings_enabled"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method private final b(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "onNetworkRequestError"

    new-instance v1, Lcom/google/android/gms/internal/zzajz;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzajz;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzajv;->a(Ljava/lang/String;Lcom/google/android/gms/internal/zzaka;)V

    return-void
.end method

.method private final b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V
    .locals 2
    .param p3    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;[B)V"
        }
    .end annotation

    const-string v0, "onNetworkRequest"

    new-instance v1, Lcom/google/android/gms/internal/zzajw;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzajw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzajv;->a(Ljava/lang/String;Lcom/google/android/gms/internal/zzaka;)V

    return-void
.end method

.method public static b()Z
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzajv;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/google/android/gms/internal/zzajv;->b:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static declared-synchronized c(Ljava/lang/String;)V
    .locals 5

    const-class v0, Lcom/google/android/gms/internal/zzajv;

    monitor-enter v0

    :try_start_0
    const-string v1, "GMA Debug BEGIN"

    invoke-static {v1}, Lcom/google/android/gms/internal/zzakb;->d(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    add-int/lit16 v2, v1, 0xfa0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const-string v4, "GMA Debug CONTENT "

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/internal/zzakb;->d(Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :cond_1
    const-string p0, "GMA Debug FINISH"

    invoke-static {p0}, Lcom/google/android/gms/internal/zzakb;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static c()Z
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzajv;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/google/android/gms/internal/zzajv;->b:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/google/android/gms/internal/zzajv;->c:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/google/android/gms/internal/zzajv;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzajv;->a([B)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V
    .locals 1
    .param p3    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;[B)V"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/zzajv;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzajv;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V

    return-void
.end method

.method public final a(Ljava/net/HttpURLConnection;I)V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/zzajv;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/zzajv;->a(Ljava/util/Map;I)V

    const/16 v0, 0xc8

    if-lt p2, v0, :cond_2

    const/16 v0, 0x12c

    if-lt p2, v0, :cond_4

    :cond_2
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string p2, "Can not get error message from error HttpURLConnection\n"

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {p1}, Lcom/google/android/gms/internal/zzakb;->e(Ljava/lang/String;)V

    move-object p1, v1

    :goto_2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzajv;->b(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public final a(Ljava/net/HttpURLConnection;[B)V
    .locals 3
    .param p2    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/google/android/gms/internal/zzajv;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    :goto_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, v2, v0, p2}, Lcom/google/android/gms/internal/zzajv;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V

    return-void
.end method

.method public final a([B)V
    .locals 2

    const-string v0, "onNetworkResponseBody"

    new-instance v1, Lcom/google/android/gms/internal/zzajy;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzajy;-><init>([B)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzajv;->a(Ljava/lang/String;Lcom/google/android/gms/internal/zzaka;)V

    return-void
.end method
