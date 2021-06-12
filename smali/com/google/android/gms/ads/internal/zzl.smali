.class final Lcom/google/android/gms/ads/internal/zzl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/zzafp;

.field final synthetic b:Lcom/google/android/gms/internal/zzafb;

.field final synthetic c:Lcom/google/android/gms/ads/internal/zzi;

.field private synthetic d:Lcom/google/android/gms/internal/zznu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzi;Lcom/google/android/gms/internal/zzafp;Lcom/google/android/gms/internal/zzafb;Lcom/google/android/gms/internal/zznu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzl;->c:Lcom/google/android/gms/ads/internal/zzi;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzl;->a:Lcom/google/android/gms/internal/zzafp;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzl;->b:Lcom/google/android/gms/internal/zzafb;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/zzl;->d:Lcom/google/android/gms/internal/zznu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->a:Lcom/google/android/gms/internal/zzafp;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafp;->b:Lcom/google/android/gms/internal/zzaax;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzaax;->s:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->c:Lcom/google/android/gms/ads/internal/zzi;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzi;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->z:Lcom/google/android/gms/internal/zzoa;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzl;->a:Lcom/google/android/gms/internal/zzafp;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzafp;->b:Lcom/google/android/gms/internal/zzaax;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzaax;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->e()Lcom/google/android/gms/internal/zzahn;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->a:Lcom/google/android/gms/internal/zzafp;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafp;->b:Lcom/google/android/gms/internal/zzaax;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaax;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzahn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/zznv;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzl;->c:Lcom/google/android/gms/ads/internal/zzi;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzl;->a:Lcom/google/android/gms/internal/zzafp;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzafp;->b:Lcom/google/android/gms/internal/zzaax;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzaax;->c:Ljava/lang/String;

    invoke-direct {v2, v3, v0, v4}, Lcom/google/android/gms/internal/zznv;-><init>(Lcom/google/android/gms/ads/internal/zzae;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->c:Lcom/google/android/gms/ads/internal/zzi;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzi;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    const/4 v3, 0x1

    iput v3, v0, Lcom/google/android/gms/ads/internal/zzbt;->F:I

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->c:Lcom/google/android/gms/ads/internal/zzi;

    iput-boolean v1, v0, Lcom/google/android/gms/ads/internal/zzi;->zzanm:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->c:Lcom/google/android/gms/ads/internal/zzi;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzi;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->z:Lcom/google/android/gms/internal/zzoa;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzoa;->zza(Lcom/google/android/gms/internal/zznx;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v2, "Could not call the onCustomRenderedAdLoadedListener."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->c:Lcom/google/android/gms/ads/internal/zzi;

    iput-boolean v3, v0, Lcom/google/android/gms/ads/internal/zzi;->zzanm:Z

    :cond_1
    new-instance v0, Lcom/google/android/gms/ads/internal/zzw;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzl;->c:Lcom/google/android/gms/ads/internal/zzi;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzi;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzl;->b:Lcom/google/android/gms/internal/zzafb;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzl;->a:Lcom/google/android/gms/internal/zzafp;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzafp;->b:Lcom/google/android/gms/internal/zzaax;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzaax;->F:Lcom/google/android/gms/internal/zzaaz;

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/gms/ads/internal/zzw;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzafb;Lcom/google/android/gms/internal/zzaaz;)V

    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzl;->c:Lcom/google/android/gms/ads/internal/zzi;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzl;->a:Lcom/google/android/gms/internal/zzafp;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzl;->b:Lcom/google/android/gms/internal/zzafb;

    invoke-virtual {v2, v3, v0, v4}, Lcom/google/android/gms/ads/internal/zzi;->zza(Lcom/google/android/gms/internal/zzafp;Lcom/google/android/gms/ads/internal/zzw;Lcom/google/android/gms/internal/zzafb;)Lcom/google/android/gms/internal/zzanh;

    move-result-object v9
    :try_end_1
    .catch Lcom/google/android/gms/internal/zzanv; {:try_start_1 .. :try_end_1} :catch_1

    new-instance v2, Lcom/google/android/gms/ads/internal/zzn;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/ads/internal/zzn;-><init>(Lcom/google/android/gms/ads/internal/zzl;Lcom/google/android/gms/ads/internal/zzw;)V

    invoke-interface {v9, v2}, Lcom/google/android/gms/internal/zzanh;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v2, Lcom/google/android/gms/ads/internal/zzo;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/ads/internal/zzo;-><init>(Lcom/google/android/gms/ads/internal/zzl;Lcom/google/android/gms/ads/internal/zzw;)V

    invoke-interface {v9, v2}, Lcom/google/android/gms/internal/zzanh;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->c:Lcom/google/android/gms/ads/internal/zzi;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzi;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iput v1, v0, Lcom/google/android/gms/ads/internal/zzbt;->F:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->c:Lcom/google/android/gms/ads/internal/zzi;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzi;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->d()Lcom/google/android/gms/internal/zzya;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzl;->c:Lcom/google/android/gms/ads/internal/zzi;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzi;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/zzbt;->c:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/zzl;->c:Lcom/google/android/gms/ads/internal/zzi;

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/zzl;->a:Lcom/google/android/gms/internal/zzafp;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzl;->c:Lcom/google/android/gms/ads/internal/zzi;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzi;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v8, v1, Lcom/google/android/gms/ads/internal/zzbt;->d:Lcom/google/android/gms/internal/zzcv;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzl;->c:Lcom/google/android/gms/ads/internal/zzi;

    iget-object v10, v1, Lcom/google/android/gms/ads/internal/zzi;->zzanw:Lcom/google/android/gms/internal/zzux;

    iget-object v11, p0, Lcom/google/android/gms/ads/internal/zzl;->c:Lcom/google/android/gms/ads/internal/zzi;

    iget-object v12, p0, Lcom/google/android/gms/ads/internal/zzl;->d:Lcom/google/android/gms/internal/zznu;

    invoke-static/range {v5 .. v12}, Lcom/google/android/gms/internal/zzya;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/zzafp;Lcom/google/android/gms/internal/zzcv;Lcom/google/android/gms/internal/zzanh;Lcom/google/android/gms/internal/zzux;Lcom/google/android/gms/internal/zzyb;Lcom/google/android/gms/internal/zznu;)Lcom/google/android/gms/internal/zzaif;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzbt;->h:Lcom/google/android/gms/internal/zzaif;

    return-void

    :catch_1
    move-exception v0

    const-string v1, "Could not obtain webview."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/google/android/gms/internal/zzahn;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/zzm;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/zzm;-><init>(Lcom/google/android/gms/ads/internal/zzl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
