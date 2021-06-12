.class public abstract Lcom/google/android/gms/internal/zzana;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Releasable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/zzamp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzamp;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzamp;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzana;->a:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->e()Lcom/google/android/gms/internal/zzahn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzana;->a:Landroid/content/Context;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzamp;->i()Lcom/google/android/gms/internal/zzakd;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/zzakd;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzahn;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzana;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzana;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzana;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzana;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzana;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzana;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzana;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzamp;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzamp;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "internal"

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "noCacheDir"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :sswitch_1
    const-string v1, "expireFailed"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_1

    :sswitch_2
    const-string v1, "error"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v1, "externalAbort"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x9

    goto :goto_1

    :sswitch_4
    const-string v1, "sizeExceeded"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    goto :goto_1

    :sswitch_5
    const-string v1, "playerFailed"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :sswitch_6
    const-string v1, "contentLengthMissing"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_7
    const-string v1, "downloadTimeout"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    goto :goto_1

    :sswitch_8
    const-string v1, "inProgress"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :sswitch_9
    const-string v1, "badUrl"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string v0, "policy"

    goto :goto_2

    :pswitch_1
    const-string v0, "network"

    goto :goto_2

    :pswitch_2
    const-string v0, "io"

    goto :goto_2

    :pswitch_3
    const-string v0, "internal"

    :goto_2
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x533f68d6 -> :sswitch_9
        -0x5049c18e -> :sswitch_8
        -0x36c40c47 -> :sswitch_7
        -0x274d4859 -> :sswitch_6
        -0x26475182 -> :sswitch_5
        -0x151a598c -> :sswitch_4
        -0x1e989db -> :sswitch_3
        0x5c4d208 -> :sswitch_2
        0x2293ea3c -> :sswitch_1
        0x2b3e368c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzajr;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzanc;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzanc;-><init>(Lcom/google/android/gms/internal/zzana;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/google/android/gms/internal/zzajr;->a:Landroid/os/Handler;

    new-instance v7, Lcom/google/android/gms/internal/zzand;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzand;-><init>(Lcom/google/android/gms/internal/zzana;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public abstract a(Ljava/lang/String;)Z
.end method

.method public abstract b()V
.end method
