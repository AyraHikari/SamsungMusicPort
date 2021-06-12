.class public final Lcom/google/android/gms/internal/zzane;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/zzt;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/gmsg/zzt<",
        "Lcom/google/android/gms/internal/zzamp;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/internal/zzana;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Integer;"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x27

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Precache invalid numeric parameter \'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\': "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 11

    check-cast p1, Lcom/google/android/gms/internal/zzamp;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->x()Lcom/google/android/gms/internal/zzamz;

    const-string v0, "abort"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p2, p0, Lcom/google/android/gms/internal/zzane;->a:Lcom/google/android/gms/internal/zzana;

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzane;->a:Lcom/google/android/gms/internal/zzana;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzana;->b()V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzamz;->a(Lcom/google/android/gms/internal/zzamp;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Precache abort but no precache task running."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "src"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/google/android/gms/internal/zzane;->a:Lcom/google/android/gms/internal/zzana;

    if-eqz v1, :cond_3

    const-string p1, "Threadless precache task has already started."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-static {p1}, Lcom/google/android/gms/internal/zzamz;->b(Lcom/google/android/gms/internal/zzamp;)Lcom/google/android/gms/internal/zzamx;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string p1, "Precache task is already running."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-interface {p1}, Lcom/google/android/gms/internal/zzamp;->e()Lcom/google/android/gms/ads/internal/zzv;

    move-result-object v1

    if-nez v1, :cond_5

    const-string p1, "Precache requires a dependency provider."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    return-void

    :cond_5
    new-instance v1, Lcom/google/android/gms/internal/zzamo;

    const-string v2, "flags"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzamo;-><init>(Ljava/lang/String;)V

    const-string v2, "notifyBytes"

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/zzane;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "notifyMillis"

    invoke-static {p2, v3}, Lcom/google/android/gms/internal/zzane;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "player"

    invoke-static {p2, v4}, Lcom/google/android/gms/internal/zzane;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_6
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzamp;->e()Lcom/google/android/gms/ads/internal/zzv;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/zzv;->a:Lcom/google/android/gms/internal/zzanf;

    const/4 v7, 0x0

    invoke-interface {v6, p1, v4, v7, v1}, Lcom/google/android/gms/internal/zzanf;->a(Lcom/google/android/gms/internal/zzamp;ILjava/lang/String;Lcom/google/android/gms/internal/zzamo;)Lcom/google/android/gms/internal/zzana;

    move-result-object v4

    const/4 v6, 0x1

    if-nez v2, :cond_8

    if-eqz v3, :cond_7

    goto :goto_0

    :cond_7
    const/4 v7, 0x0

    goto :goto_1

    :cond_8
    :goto_0
    const/4 v7, 0x1

    :goto_1
    if-eqz v7, :cond_c

    iget-object v1, v1, Lcom/google/android/gms/internal/zzamo;->a:Ljava/lang/String;

    const-string v7, ","

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v7, v1

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_a

    aget-object v9, v1, v8

    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    const-string v10, "2"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    const/4 v5, 0x1

    goto :goto_3

    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_a
    :goto_3
    if-eqz v5, :cond_c

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    goto :goto_4

    :cond_b
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    :goto_4
    iput-object v4, p0, Lcom/google/android/gms/internal/zzane;->a:Lcom/google/android/gms/internal/zzana;

    goto :goto_5

    :cond_c
    new-instance v1, Lcom/google/android/gms/internal/zzamx;

    invoke-direct {v1, p1, v4, v0}, Lcom/google/android/gms/internal/zzamx;-><init>(Lcom/google/android/gms/internal/zzamp;Lcom/google/android/gms/internal/zzana;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzagb;->g_()Ljava/lang/Object;

    goto :goto_5

    :cond_d
    invoke-static {p1}, Lcom/google/android/gms/internal/zzamz;->b(Lcom/google/android/gms/internal/zzamp;)Lcom/google/android/gms/internal/zzamx;

    move-result-object p1

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/google/android/gms/internal/zzane;->a:Lcom/google/android/gms/internal/zzana;

    if-nez p1, :cond_e

    const-string p1, "Precache must specify a source."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    return-void

    :cond_e
    :goto_5
    const-string p1, "minBufferMs"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzane;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    :cond_f
    const-string p1, "maxBufferMs"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzane;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    :cond_10
    const-string p1, "bufferForPlaybackMs"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzane;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    :cond_11
    const-string p1, "bufferForPlaybackAfterRebufferMs"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzane;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    :cond_12
    return-void
.end method
