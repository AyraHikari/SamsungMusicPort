.class public final Lcom/google/android/gms/internal/zzanr;
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

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/zzakd;Ljava/lang/String;Lcom/google/android/gms/internal/zzcv;Lcom/google/android/gms/ads/internal/zzv;)Lcom/google/android/gms/internal/zzakv;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/zzakd;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzcv;",
            "Lcom/google/android/gms/ads/internal/zzv;",
            ")",
            "Lcom/google/android/gms/internal/zzakv<",
            "Lcom/google/android/gms/internal/zzanh;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzakl;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzaku;

    move-result-object v0

    new-instance v7, Lcom/google/android/gms/internal/zzans;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzans;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzcv;Lcom/google/android/gms/internal/zzakd;Lcom/google/android/gms/ads/internal/zzv;Ljava/lang/String;)V

    sget-object p0, Lcom/google/android/gms/internal/zzala;->a:Ljava/util/concurrent/Executor;

    invoke-static {v0, v7, p0}, Lcom/google/android/gms/internal/zzakl;->a(Lcom/google/android/gms/internal/zzakv;Lcom/google/android/gms/internal/zzakg;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/zzakv;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/google/android/gms/internal/zzapa;Ljava/lang/String;ZZLcom/google/android/gms/internal/zzcv;Lcom/google/android/gms/internal/zzakd;Lcom/google/android/gms/internal/zznu;Lcom/google/android/gms/ads/internal/zzbl;Lcom/google/android/gms/ads/internal/zzv;Lcom/google/android/gms/internal/zzis;)Lcom/google/android/gms/internal/zzanh;
    .locals 14
    .param p6    # Lcom/google/android/gms/internal/zzcv;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzanv;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/zzanu;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    invoke-direct/range {v1 .. v13}, Lcom/google/android/gms/internal/zzanu;-><init>(Lcom/google/android/gms/internal/zzanr;Landroid/content/Context;Lcom/google/android/gms/internal/zzapa;Ljava/lang/String;ZZLcom/google/android/gms/internal/zzcv;Lcom/google/android/gms/internal/zzakd;Lcom/google/android/gms/internal/zznu;Lcom/google/android/gms/ads/internal/zzbl;Lcom/google/android/gms/ads/internal/zzv;Lcom/google/android/gms/internal/zzis;)V

    move-object v1, p1

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzajk;->b(Landroid/content/Context;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzanh;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzanv;

    const-string v2, "Webview initialization failed."

    move-object v3, p0

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/gms/internal/zzanv;-><init>(Lcom/google/android/gms/internal/zzanr;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
