.class public final Lcom/google/android/gms/ads/internal/zzx;
.super Lcom/google/android/gms/ads/internal/zzi;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private zzamr:Z

.field private zzaos:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzjn;Ljava/lang/String;Lcom/google/android/gms/internal/zzux;Lcom/google/android/gms/internal/zzakd;Lcom/google/android/gms/ads/internal/zzv;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/ads/internal/zzi;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzjn;Ljava/lang/String;Lcom/google/android/gms/internal/zzux;Lcom/google/android/gms/internal/zzakd;Lcom/google/android/gms/ads/internal/zzv;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzx;->zzaos:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private final zzd(Lcom/google/android/gms/internal/zzafo;Lcom/google/android/gms/internal/zzafo;)Z
    .locals 6
    .param p1    # Lcom/google/android/gms/internal/zzafo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-boolean v0, p2, Lcom/google/android/gms/internal/zzafo;->m:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/zzaq;->a(Lcom/google/android/gms/internal/zzafo;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "Could not get mediation view"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

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
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzbt;->f:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/ads/internal/zzbu;->removeView(Landroid/view/View;)V

    :cond_2
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/zzaq;->b(Lcom/google/android/gms/internal/zzafo;)Z

    move-result v2

    if-nez v2, :cond_7

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->z()Lcom/google/android/gms/internal/zzaff;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzbt;->c:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzaff;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lcom/google/android/gms/internal/zzgp;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzbt;->c:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/internal/zzgp;-><init>(Landroid/content/Context;Landroid/view/View;)V

    new-instance v3, Lcom/google/android/gms/internal/zzafe;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzbt;->c:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/zzbt;->b:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/internal/zzafe;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzgp;->a(Lcom/google/android/gms/internal/zzgt;)V

    :cond_3
    iget-object v2, p2, Lcom/google/android/gms/internal/zzafo;->t:Lcom/google/android/gms/internal/zzjn;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->f:Lcom/google/android/gms/ads/internal/zzbu;

    iget-object v3, p2, Lcom/google/android/gms/internal/zzafo;->t:Lcom/google/android/gms/internal/zzjn;

    iget v3, v3, Lcom/google/android/gms/internal/zzjn;->g:I

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/internal/zzbu;->setMinimumWidth(I)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->f:Lcom/google/android/gms/ads/internal/zzbu;

    iget-object p2, p2, Lcom/google/android/gms/internal/zzafo;->t:Lcom/google/android/gms/internal/zzjn;

    iget p2, p2, Lcom/google/android/gms/internal/zzjn;->d:I

    invoke-virtual {v2, p2}, Lcom/google/android/gms/ads/internal/zzbu;->setMinimumHeight(I)V

    :cond_4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/zza;->zzg(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->i()Lcom/google/android/gms/internal/zzaft;

    move-result-object p2

    const-string v0, "BannerAdManager.swapViews"

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/zzaft;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string p2, "Could not add mediation view to view hierarchy."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    :cond_5
    iget-object v0, p2, Lcom/google/android/gms/internal/zzafo;->t:Lcom/google/android/gms/internal/zzjn;

    if-eqz v0, :cond_7

    iget-object v0, p2, Lcom/google/android/gms/internal/zzafo;->b:Lcom/google/android/gms/internal/zzanh;

    if-eqz v0, :cond_7

    iget-object v0, p2, Lcom/google/android/gms/internal/zzafo;->b:Lcom/google/android/gms/internal/zzanh;

    iget-object v2, p2, Lcom/google/android/gms/internal/zzafo;->t:Lcom/google/android/gms/internal/zzjn;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzapa;->a(Lcom/google/android/gms/internal/zzjn;)Lcom/google/android/gms/internal/zzapa;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzanh;->a(Lcom/google/android/gms/internal/zzapa;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->f:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzbu;->removeAllViews()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->f:Lcom/google/android/gms/ads/internal/zzbu;

    iget-object v2, p2, Lcom/google/android/gms/internal/zzafo;->t:Lcom/google/android/gms/internal/zzjn;

    iget v2, v2, Lcom/google/android/gms/internal/zzjn;->g:I

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/zzbu;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->f:Lcom/google/android/gms/ads/internal/zzbu;

    iget-object v2, p2, Lcom/google/android/gms/internal/zzafo;->t:Lcom/google/android/gms/internal/zzjn;

    iget v2, v2, Lcom/google/android/gms/internal/zzjn;->d:I

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/zzbu;->setMinimumHeight(I)V

    iget-object p2, p2, Lcom/google/android/gms/internal/zzafo;->b:Lcom/google/android/gms/internal/zzanh;

    if-eqz p2, :cond_6

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/ads/internal/zza;->zzg(Landroid/view/View;)V

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    throw p1

    :cond_7
    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/zzbt;->f:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/internal/zzbu;->getChildCount()I

    move-result p2

    const/4 v0, 0x1

    if-le p2, v0, :cond_8

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/zzbt;->f:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/internal/zzbu;->showNext()V

    :cond_8
    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/zzbt;->f:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzbu;->getNextView()Landroid/view/View;

    move-result-object p1

    instance-of p2, p1, Lcom/google/android/gms/internal/zzanh;

    if-eqz p2, :cond_9

    check-cast p1, Lcom/google/android/gms/internal/zzanh;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzanh;->destroy()V

    goto :goto_1

    :cond_9
    if-eqz p1, :cond_a

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/zzbt;->f:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/internal/zzbu;->removeView(Landroid/view/View;)V

    :cond_a
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzbt;->c()V

    :cond_b
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/zzbt;->f:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/ads/internal/zzbu;->setVisibility(I)V

    return v0
.end method


# virtual methods
.method public final getVideoController()Lcom/google/android/gms/internal/zzll;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const-string v0, "getVideoController must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafo;->b:Lcom/google/android/gms/internal/zzanh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafo;->b:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzanh;->b()Lcom/google/android/gms/internal/zzaoa;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/zzx;->zzd(Lcom/google/android/gms/internal/zzafo;)V

    return-void
.end method

.method public final onScrollChanged()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/zzx;->zzd(Lcom/google/android/gms/internal/zzafo;)V

    return-void
.end method

.method public final setManualImpressionsEnabled(Z)V
    .locals 1

    const-string v0, "setManualImpressionsEnabled must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/zzx;->zzamr:Z

    return-void
.end method

.method public final showInterstitial()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Interstitial is NOT supported by BannerAdManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final zza(Lcom/google/android/gms/internal/zzafp;Lcom/google/android/gms/ads/internal/zzw;Lcom/google/android/gms/internal/zzafb;)Lcom/google/android/gms/internal/zzanh;
    .locals 5
    .param p2    # Lcom/google/android/gms/ads/internal/zzw;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/internal/zzafb;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzanv;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->i:Lcom/google/android/gms/internal/zzjn;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjn;->h:[Lcom/google/android/gms/internal/zzjn;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->i:Lcom/google/android/gms/internal/zzjn;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzjn;->j:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzafp;->b:Lcom/google/android/gms/internal/zzaax;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zzaax;->z:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->i:Lcom/google/android/gms/internal/zzjn;

    goto :goto_1

    :cond_0
    iget-object v1, p1, Lcom/google/android/gms/internal/zzafp;->b:Lcom/google/android/gms/internal/zzaax;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaax;->m:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "[xX]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v3, 0x1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    new-instance v3, Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v3, v2, v1}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->i:Lcom/google/android/gms/internal/zzjn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzjn;->b()Lcom/google/android/gms/ads/AdSize;

    move-result-object v3

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/zzjn;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->c:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzjn;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    :goto_1
    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzbt;->i:Lcom/google/android/gms/internal/zzjn;

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/ads/internal/zzi;->zza(Lcom/google/android/gms/internal/zzafp;Lcom/google/android/gms/ads/internal/zzw;Lcom/google/android/gms/internal/zzafb;)Lcom/google/android/gms/internal/zzanh;

    move-result-object p1

    return-object p1
.end method

.method protected final zza(Lcom/google/android/gms/internal/zzafo;Z)V
    .locals 6
    .param p1    # Lcom/google/android/gms/internal/zzafo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzi;->zza(Lcom/google/android/gms/internal/zzafo;Z)V

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzaq;->b(Lcom/google/android/gms/internal/zzafo;)Z

    move-result p2

    if-eqz p2, :cond_c

    new-instance p2, Lcom/google/android/gms/ads/internal/zzab;

    invoke-direct {p2, p0}, Lcom/google/android/gms/ads/internal/zzab;-><init>(Lcom/google/android/gms/ads/internal/zzx;)V

    if-eqz p1, :cond_c

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzaq;->b(Lcom/google/android/gms/internal/zzafo;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p1, Lcom/google/android/gms/internal/zzafo;->b:Lcom/google/android/gms/internal/zzanh;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    goto :goto_0

    :cond_0
    throw v1

    :cond_1
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_2

    const-string p1, "AdWebView is null"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    return-void

    :cond_2
    :try_start_0
    iget-object v3, p1, Lcom/google/android/gms/internal/zzafo;->n:Lcom/google/android/gms/internal/zzuh;

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/google/android/gms/internal/zzafo;->n:Lcom/google/android/gms/internal/zzuh;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzuh;->p:Ljava/util/List;

    goto :goto_1

    :cond_3
    move-object v3, v1

    :goto_1
    if-eqz v3, :cond_b

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    goto/16 :goto_4

    :cond_4
    iget-object v4, p1, Lcom/google/android/gms/internal/zzafo;->o:Lcom/google/android/gms/internal/zzva;

    if-eqz v4, :cond_5

    iget-object v4, p1, Lcom/google/android/gms/internal/zzafo;->o:Lcom/google/android/gms/internal/zzva;

    invoke-interface {v4}, Lcom/google/android/gms/internal/zzva;->zzme()Lcom/google/android/gms/internal/zzvj;

    move-result-object v4

    goto :goto_2

    :cond_5
    move-object v4, v1

    :goto_2
    iget-object v5, p1, Lcom/google/android/gms/internal/zzafo;->o:Lcom/google/android/gms/internal/zzva;

    if-eqz v5, :cond_6

    iget-object p1, p1, Lcom/google/android/gms/internal/zzafo;->o:Lcom/google/android/gms/internal/zzva;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzva;->zzmf()Lcom/google/android/gms/internal/zzvm;

    move-result-object p1

    goto :goto_3

    :cond_6
    move-object p1, v1

    :goto_3
    const-string v5, "2"

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    if-eqz v4, :cond_8

    invoke-static {v2}, Lcom/google/android/gms/dynamic/zzn;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v4, p1}, Lcom/google/android/gms/internal/zzvj;->zzi(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    invoke-interface {v4}, Lcom/google/android/gms/internal/zzvj;->getOverrideImpressionRecording()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-interface {v4}, Lcom/google/android/gms/internal/zzvj;->recordImpression()V

    :cond_7
    invoke-interface {v0}, Lcom/google/android/gms/internal/zzanh;->u()Lcom/google/android/gms/internal/zzani;

    move-result-object p1

    const-string v0, "/nativeExpressViewClicked"

    invoke-static {v4, v1, p2}, Lcom/google/android/gms/ads/internal/zzaq;->a(Lcom/google/android/gms/internal/zzvj;Lcom/google/android/gms/internal/zzvm;Lcom/google/android/gms/ads/internal/zzab;)Lcom/google/android/gms/ads/internal/gmsg/zzt;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/zzani;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    return-void

    :cond_8
    const-string v4, "1"

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    if-eqz p1, :cond_a

    invoke-static {v2}, Lcom/google/android/gms/dynamic/zzn;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/zzvm;->zzi(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzvm;->getOverrideImpressionRecording()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzvm;->recordImpression()V

    :cond_9
    invoke-interface {v0}, Lcom/google/android/gms/internal/zzanh;->u()Lcom/google/android/gms/internal/zzani;

    move-result-object v0

    const-string v2, "/nativeExpressViewClicked"

    invoke-static {v1, p1, p2}, Lcom/google/android/gms/ads/internal/zzaq;->a(Lcom/google/android/gms/internal/zzvj;Lcom/google/android/gms/internal/zzvm;Lcom/google/android/gms/ads/internal/zzab;)Lcom/google/android/gms/ads/internal/gmsg/zzt;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/google/android/gms/internal/zzani;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    return-void

    :cond_a
    const-string p1, "No matching template id and mapper"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    return-void

    :cond_b
    :goto_4
    const-string p1, "No template ids present in mediation response"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Error occurred while recording impression and registering for clicks"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzafo;Lcom/google/android/gms/internal/zzafo;)Z
    .locals 4
    .param p1    # Lcom/google/android/gms/internal/zzafo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzi;->zza(Lcom/google/android/gms/internal/zzafo;Lcom/google/android/gms/internal/zzafo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzbt;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzx;->zzd(Lcom/google/android/gms/internal/zzafo;Lcom/google/android/gms/internal/zzafo;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p2, Lcom/google/android/gms/internal/zzafo;->H:Lcom/google/android/gms/internal/zzis;

    if-eqz p1, :cond_1

    iget-object p1, p2, Lcom/google/android/gms/internal/zzafo;->H:Lcom/google/android/gms/internal/zzis;

    sget-object p2, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbbo:Lcom/google/android/gms/internal/zziu$zza$zzb;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzis;->a(Lcom/google/android/gms/internal/zziu$zza$zzb;)V

    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/zza;->zzi(I)V

    return v1

    :cond_2
    iget-boolean p1, p2, Lcom/google/android/gms/internal/zzafo;->k:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0, p2}, Lcom/google/android/gms/ads/internal/zzx;->zzd(Lcom/google/android/gms/internal/zzafo;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->y()Lcom/google/android/gms/internal/zzaln;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/zzbt;->f:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/zzaln;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->y()Lcom/google/android/gms/internal/zzaln;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/zzbt;->f:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/zzaln;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iget-boolean p1, p2, Lcom/google/android/gms/internal/zzafo;->l:Z

    if-nez p1, :cond_6

    new-instance p1, Lcom/google/android/gms/ads/internal/zzy;

    invoke-direct {p1, p0}, Lcom/google/android/gms/ads/internal/zzy;-><init>(Lcom/google/android/gms/ads/internal/zzx;)V

    iget-object v1, p2, Lcom/google/android/gms/internal/zzafo;->b:Lcom/google/android/gms/internal/zzanh;

    if-eqz v1, :cond_3

    iget-object v1, p2, Lcom/google/android/gms/internal/zzafo;->b:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzanh;->u()Lcom/google/android/gms/internal/zzani;

    move-result-object v1

    goto :goto_0

    :cond_3
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_6

    new-instance v2, Lcom/google/android/gms/ads/internal/zzz;

    invoke-direct {v2, p0, p2, p1}, Lcom/google/android/gms/ads/internal/zzz;-><init>(Lcom/google/android/gms/ads/internal/zzx;Lcom/google/android/gms/internal/zzafo;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzani;->a(Lcom/google/android/gms/internal/zzanq;)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzbt;->e()Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/google/android/gms/internal/zznh;->bJ:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    invoke-virtual {p0, p2, v1}, Lcom/google/android/gms/ads/internal/zzd;->zza(Lcom/google/android/gms/internal/zzafo;Z)V

    :cond_6
    :goto_1
    iget-object p1, p2, Lcom/google/android/gms/internal/zzafo;->b:Lcom/google/android/gms/internal/zzanh;

    if-eqz p1, :cond_8

    iget-object p1, p2, Lcom/google/android/gms/internal/zzafo;->b:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzanh;->b()Lcom/google/android/gms/internal/zzaoa;

    move-result-object p1

    iget-object v1, p2, Lcom/google/android/gms/internal/zzafo;->b:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzanh;->u()Lcom/google/android/gms/internal/zzani;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzani;->h()V

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->v:Lcom/google/android/gms/internal/zzmr;

    if-eqz v1, :cond_8

    if-eqz p1, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->v:Lcom/google/android/gms/internal/zzmr;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzaoa;->zzb(Lcom/google/android/gms/internal/zzmr;)V

    :cond_8
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzbt;->d()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p2, Lcom/google/android/gms/internal/zzafo;->b:Lcom/google/android/gms/internal/zzanh;

    if-eqz p1, :cond_e

    iget-object p1, p2, Lcom/google/android/gms/internal/zzafo;->j:Lorg/json/JSONObject;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzx;->zzanq:Lcom/google/android/gms/internal/zzfs;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->i:Lcom/google/android/gms/internal/zzjn;

    invoke-virtual {p1, v1, p2}, Lcom/google/android/gms/internal/zzfs;->a(Lcom/google/android/gms/internal/zzjn;Lcom/google/android/gms/internal/zzafo;)V

    :cond_9
    iget-object p1, p2, Lcom/google/android/gms/internal/zzafo;->b:Lcom/google/android/gms/internal/zzanh;

    if-eqz p1, :cond_c

    move-object v0, p1

    check-cast v0, Landroid/view/View;

    new-instance p1, Lcom/google/android/gms/internal/zzgp;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->c:Landroid/content/Context;

    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/internal/zzgp;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->z()Lcom/google/android/gms/internal/zzaff;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->c:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzaff;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p2, Lcom/google/android/gms/internal/zzafo;->a:Lcom/google/android/gms/internal/zzjj;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/zzx;->zza(Lcom/google/android/gms/internal/zzjj;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    new-instance v1, Lcom/google/android/gms/internal/zzafe;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzbt;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzafe;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzgp;->a(Lcom/google/android/gms/internal/zzgt;)V

    :cond_a
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzafo;->a()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p2, Lcom/google/android/gms/internal/zzafo;->b:Lcom/google/android/gms/internal/zzanh;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzgp;->a(Lcom/google/android/gms/internal/zzgt;)V

    goto :goto_2

    :cond_b
    iget-object v1, p2, Lcom/google/android/gms/internal/zzafo;->b:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzanh;->u()Lcom/google/android/gms/internal/zzani;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/ads/internal/zzaa;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzaa;-><init>(Lcom/google/android/gms/ads/internal/zzx;Lcom/google/android/gms/internal/zzgp;Lcom/google/android/gms/internal/zzafo;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzani;->a(Lcom/google/android/gms/internal/zzano;)V

    goto :goto_2

    :cond_c
    throw v0

    :cond_d
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/zzbt;->E:Landroid/view/View;

    if-eqz p1, :cond_e

    iget-object p1, p2, Lcom/google/android/gms/internal/zzafo;->j:Lorg/json/JSONObject;

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzx;->zzanq:Lcom/google/android/gms/internal/zzfs;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->i:Lcom/google/android/gms/internal/zzjn;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->E:Landroid/view/View;

    invoke-virtual {p1, v0, p2, v1}, Lcom/google/android/gms/internal/zzfs;->a(Lcom/google/android/gms/internal/zzjn;Lcom/google/android/gms/internal/zzafo;Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/zzbt;->E:Landroid/view/View;

    :cond_e
    :goto_2
    iget-boolean p1, p2, Lcom/google/android/gms/internal/zzafo;->m:Z

    if-nez p1, :cond_f

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzbt;->a(Landroid/view/View;)V

    :cond_f
    const/4 p1, 0x1

    return p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzjj;)Z
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v1, Lcom/google/android/gms/internal/zzjj;->i:Z

    iget-boolean v3, v0, Lcom/google/android/gms/ads/internal/zzx;->zzamr:Z

    if-ne v2, v3, :cond_0

    goto :goto_2

    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/zzjj;

    iget v5, v1, Lcom/google/android/gms/internal/zzjj;->b:I

    iget-wide v6, v1, Lcom/google/android/gms/internal/zzjj;->c:J

    iget-object v8, v1, Lcom/google/android/gms/internal/zzjj;->d:Landroid/os/Bundle;

    iget v9, v1, Lcom/google/android/gms/internal/zzjj;->e:I

    iget-object v10, v1, Lcom/google/android/gms/internal/zzjj;->f:Ljava/util/List;

    iget-boolean v11, v1, Lcom/google/android/gms/internal/zzjj;->g:Z

    iget v12, v1, Lcom/google/android/gms/internal/zzjj;->h:I

    iget-boolean v3, v1, Lcom/google/android/gms/internal/zzjj;->i:Z

    if-nez v3, :cond_2

    iget-boolean v3, v0, Lcom/google/android/gms/ads/internal/zzx;->zzamr:Z

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    const/4 v13, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x1

    const/4 v13, 0x1

    :goto_1
    iget-object v14, v1, Lcom/google/android/gms/internal/zzjj;->j:Ljava/lang/String;

    iget-object v15, v1, Lcom/google/android/gms/internal/zzjj;->k:Lcom/google/android/gms/internal/zzmn;

    iget-object v3, v1, Lcom/google/android/gms/internal/zzjj;->l:Landroid/location/Location;

    move-object/from16 v16, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/zzjj;->m:Ljava/lang/String;

    move-object/from16 v17, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/zzjj;->n:Landroid/os/Bundle;

    move-object/from16 v18, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/zzjj;->o:Landroid/os/Bundle;

    move-object/from16 v19, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/zzjj;->p:Ljava/util/List;

    move-object/from16 v20, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/zzjj;->q:Ljava/lang/String;

    move-object/from16 v21, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/zzjj;->r:Ljava/lang/String;

    move-object/from16 v22, v3

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zzjj;->s:Z

    move/from16 v23, v1

    move-object v4, v2

    invoke-direct/range {v4 .. v23}, Lcom/google/android/gms/internal/zzjj;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/zzmn;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v1, v2

    :goto_2
    invoke-super {v0, v1}, Lcom/google/android/gms/ads/internal/zzi;->zzb(Lcom/google/android/gms/internal/zzjj;)Z

    move-result v1

    return v1
.end method

.method protected final zzcf()Z
    .locals 6

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->e()Lcom/google/android/gms/internal/zzahn;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.INTERNET"

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzahn;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->a()Lcom/google/android/gms/internal/zzajr;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->f:Lcom/google/android/gms/ads/internal/zzbu;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzbt;->i:Lcom/google/android/gms/internal/zzjn;

    const-string v4, "Missing internet permission in AndroidManifest.xml."

    const-string v5, "Missing internet permission in AndroidManifest.xml. You must have the following declaration: <uses-permission android:name=\"android.permission.INTERNET\" />"

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzajr;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/zzjn;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->e()Lcom/google/android/gms/internal/zzahn;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzahn;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->a()Lcom/google/android/gms/internal/zzajr;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->f:Lcom/google/android/gms/ads/internal/zzbu;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzbt;->i:Lcom/google/android/gms/internal/zzjn;

    const-string v4, "Missing AdActivity with android:configChanges in AndroidManifest.xml."

    const-string v5, "Missing AdActivity with android:configChanges in AndroidManifest.xml. You must have the following declaration within the <application> element: <activity android:name=\"com.google.android.gms.ads.AdActivity\" android:configChanges=\"keyboard|keyboardHidden|orientation|screenLayout|uiMode|screenSize|smallestScreenSize\" />"

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzajr;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/zzjn;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->f:Lcom/google/android/gms/ads/internal/zzbu;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->f:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/internal/zzbu;->setVisibility(I)V

    :cond_2
    return v0
.end method

.method final zzd(Lcom/google/android/gms/internal/zzafo;)V
    .locals 3
    .param p1    # Lcom/google/android/gms/internal/zzafo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzafo;->l:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->f:Lcom/google/android/gms/ads/internal/zzbu;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->e()Lcom/google/android/gms/internal/zzahn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->f:Lcom/google/android/gms/ads/internal/zzbu;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzahn;->a(Landroid/view/View;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->f:Lcom/google/android/gms/ads/internal/zzbu;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/zzbu;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/zzafo;->b:Lcom/google/android/gms/internal/zzanh;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/zzafo;->b:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzanh;->u()Lcom/google/android/gms/internal/zzani;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/zzafo;->b:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzanh;->u()Lcom/google/android/gms/internal/zzani;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzani;->a(Lcom/google/android/gms/internal/zzanq;)V

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/ads/internal/zzd;->zza(Lcom/google/android/gms/internal/zzafo;Z)V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/google/android/gms/internal/zzafo;->l:Z

    :cond_4
    :goto_0
    return-void
.end method
