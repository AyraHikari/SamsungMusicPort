.class public final Lcom/google/android/gms/ads/internal/js/zzn;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/android/gms/internal/zzakd;

.field private e:Lcom/google/android/gms/internal/zzaiq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaiq<",
            "Lcom/google/android/gms/ads/internal/js/zzc;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/google/android/gms/internal/zzaiq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaiq<",
            "Lcom/google/android/gms/ads/internal/js/zzc;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/google/android/gms/ads/internal/js/zzae;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzakd;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzn;->a:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/ads/internal/js/zzn;->h:I

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/js/zzn;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/js/zzn;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/js/zzn;->d:Lcom/google/android/gms/internal/zzakd;

    new-instance p1, Lcom/google/android/gms/ads/internal/js/zzz;

    invoke-direct {p1}, Lcom/google/android/gms/ads/internal/js/zzz;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/js/zzn;->e:Lcom/google/android/gms/internal/zzaiq;

    new-instance p1, Lcom/google/android/gms/ads/internal/js/zzz;

    invoke-direct {p1}, Lcom/google/android/gms/ads/internal/js/zzz;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/js/zzn;->f:Lcom/google/android/gms/internal/zzaiq;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzakd;Ljava/lang/String;Lcom/google/android/gms/internal/zzaiq;Lcom/google/android/gms/internal/zzaiq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/zzakd;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzaiq<",
            "Lcom/google/android/gms/ads/internal/js/zzc;",
            ">;",
            "Lcom/google/android/gms/internal/zzaiq<",
            "Lcom/google/android/gms/ads/internal/js/zzc;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/ads/internal/js/zzn;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzakd;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/js/zzn;->e:Lcom/google/android/gms/internal/zzaiq;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/js/zzn;->f:Lcom/google/android/gms/internal/zzaiq;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/ads/internal/js/zzn;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/ads/internal/js/zzn;->h:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/gms/ads/internal/js/zzn;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/js/zzn;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/gms/ads/internal/js/zzn;Lcom/google/android/gms/ads/internal/js/zzae;)Lcom/google/android/gms/ads/internal/js/zzae;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/js/zzn;->g:Lcom/google/android/gms/ads/internal/js/zzae;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/gms/ads/internal/js/zzn;)Lcom/google/android/gms/internal/zzakd;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/js/zzn;->d:Lcom/google/android/gms/internal/zzakd;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/gms/ads/internal/js/zzn;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/js/zzn;->a:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/gms/ads/internal/js/zzn;)Lcom/google/android/gms/internal/zzaiq;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/js/zzn;->e:Lcom/google/android/gms/internal/zzaiq;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/gms/ads/internal/js/zzn;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/ads/internal/js/zzn;->h:I

    return p0
.end method

.method static synthetic f(Lcom/google/android/gms/ads/internal/js/zzn;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/js/zzn;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/google/android/gms/ads/internal/js/zzn;)Lcom/google/android/gms/ads/internal/js/zzae;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/js/zzn;->g:Lcom/google/android/gms/ads/internal/js/zzae;

    return-object p0
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/internal/zzcv;)Lcom/google/android/gms/ads/internal/js/zzae;
    .locals 2
    .param p1    # Lcom/google/android/gms/internal/zzcv;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/google/android/gms/ads/internal/js/zzae;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/js/zzn;->f:Lcom/google/android/gms/internal/zzaiq;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/js/zzae;-><init>(Lcom/google/android/gms/internal/zzaiq;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->e()Lcom/google/android/gms/internal/zzahn;

    new-instance v1, Lcom/google/android/gms/ads/internal/js/zzo;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/ads/internal/js/zzo;-><init>(Lcom/google/android/gms/ads/internal/js/zzn;Lcom/google/android/gms/internal/zzcv;Lcom/google/android/gms/ads/internal/js/zzae;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/zzahn;->a(Ljava/lang/Runnable;)V

    new-instance p1, Lcom/google/android/gms/ads/internal/js/zzw;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/ads/internal/js/zzw;-><init>(Lcom/google/android/gms/ads/internal/js/zzn;Lcom/google/android/gms/ads/internal/js/zzae;)V

    new-instance v1, Lcom/google/android/gms/ads/internal/js/zzx;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/ads/internal/js/zzx;-><init>(Lcom/google/android/gms/ads/internal/js/zzn;Lcom/google/android/gms/ads/internal/js/zzae;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzall;->a(Lcom/google/android/gms/internal/zzalk;Lcom/google/android/gms/internal/zzali;)V

    return-object v0
.end method

.method public final b(Lcom/google/android/gms/internal/zzcv;)Lcom/google/android/gms/ads/internal/js/zzaa;
    .locals 4
    .param p1    # Lcom/google/android/gms/internal/zzcv;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/js/zzn;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzn;->g:Lcom/google/android/gms/ads/internal/js/zzae;

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzn;->g:Lcom/google/android/gms/ads/internal/js/zzae;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzall;->e()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/ads/internal/js/zzn;->h:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzn;->g:Lcom/google/android/gms/ads/internal/js/zzae;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/js/zzae;->a()Lcom/google/android/gms/ads/internal/js/zzaa;

    move-result-object v0

    monitor-exit p1

    return-object v0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/ads/internal/js/zzn;->h:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    iput v2, p0, Lcom/google/android/gms/ads/internal/js/zzn;->h:I

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/js/zzn;->a(Lcom/google/android/gms/internal/zzcv;)Lcom/google/android/gms/ads/internal/js/zzae;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzn;->g:Lcom/google/android/gms/ads/internal/js/zzae;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/js/zzae;->a()Lcom/google/android/gms/ads/internal/js/zzaa;

    move-result-object v0

    monitor-exit p1

    return-object v0

    :cond_2
    iget v0, p0, Lcom/google/android/gms/ads/internal/js/zzn;->h:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzn;->g:Lcom/google/android/gms/ads/internal/js/zzae;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/js/zzae;->a()Lcom/google/android/gms/ads/internal/js/zzaa;

    move-result-object v0

    monitor-exit p1

    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzn;->g:Lcom/google/android/gms/ads/internal/js/zzae;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/js/zzae;->a()Lcom/google/android/gms/ads/internal/js/zzaa;

    move-result-object v0

    monitor-exit p1

    return-object v0

    :cond_4
    :goto_0
    iput v2, p0, Lcom/google/android/gms/ads/internal/js/zzn;->h:I

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/js/zzn;->a(Lcom/google/android/gms/internal/zzcv;)Lcom/google/android/gms/ads/internal/js/zzae;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzn;->g:Lcom/google/android/gms/ads/internal/js/zzae;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzn;->g:Lcom/google/android/gms/ads/internal/js/zzae;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/js/zzae;->a()Lcom/google/android/gms/ads/internal/js/zzaa;

    move-result-object v0

    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
