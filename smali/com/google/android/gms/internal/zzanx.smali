.class final Lcom/google/android/gms/internal/zzanx;
.super Landroid/webkit/WebView;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/webkit/DownloadListener;
.implements Lcom/google/android/gms/internal/zzanh;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private A:Lcom/google/android/gms/internal/zzns;

.field private B:Lcom/google/android/gms/internal/zzns;

.field private C:Lcom/google/android/gms/internal/zznt;

.field private D:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private E:Lcom/google/android/gms/ads/internal/overlay/zzd;

.field private F:Z

.field private G:Lcom/google/android/gms/internal/zzajq;

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private L:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzana;",
            ">;"
        }
    .end annotation
.end field

.field private final M:Landroid/view/WindowManager;

.field private final N:Lcom/google/android/gms/internal/zzis;

.field private final a:Lcom/google/android/gms/internal/zzaoz;

.field private final b:Ljava/lang/Object;

.field private final c:Lcom/google/android/gms/internal/zzcv;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/internal/zzakd;

.field private final e:Lcom/google/android/gms/ads/internal/zzbl;

.field private final f:Lcom/google/android/gms/ads/internal/zzv;

.field private g:Lcom/google/android/gms/internal/zzani;

.field private h:Lcom/google/android/gms/ads/internal/overlay/zzd;

.field private i:Lcom/google/android/gms/internal/zzapa;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Ljava/lang/Boolean;

.field private p:I

.field private q:Z

.field private r:Z

.field private s:Ljava/lang/String;

.field private t:Lcom/google/android/gms/internal/zzaoa;

.field private u:Z

.field private v:Z

.field private w:Lcom/google/android/gms/internal/zzoq;

.field private x:I

.field private y:I

.field private z:Lcom/google/android/gms/internal/zzns;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzaoz;Lcom/google/android/gms/internal/zzapa;Ljava/lang/String;ZZLcom/google/android/gms/internal/zzcv;Lcom/google/android/gms/internal/zzakd;Lcom/google/android/gms/internal/zznu;Lcom/google/android/gms/ads/internal/zzbl;Lcom/google/android/gms/ads/internal/zzv;Lcom/google/android/gms/internal/zzis;)V
    .locals 2
    .param p6    # Lcom/google/android/gms/internal/zzcv;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance p5, Ljava/lang/Object;

    invoke-direct {p5}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/zzanx;->b:Ljava/lang/Object;

    const/4 p5, 0x1

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzanx;->q:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzanx;->r:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/google/android/gms/internal/zzanx;->s:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/zzanx;->H:I

    iput v1, p0, Lcom/google/android/gms/internal/zzanx;->I:I

    iput v1, p0, Lcom/google/android/gms/internal/zzanx;->J:I

    iput v1, p0, Lcom/google/android/gms/internal/zzanx;->K:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzanx;->a:Lcom/google/android/gms/internal/zzaoz;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzanx;->i:Lcom/google/android/gms/internal/zzapa;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzanx;->j:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzanx;->m:Z

    iput v1, p0, Lcom/google/android/gms/internal/zzanx;->p:I

    iput-object p6, p0, Lcom/google/android/gms/internal/zzanx;->c:Lcom/google/android/gms/internal/zzcv;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzanx;->d:Lcom/google/android/gms/internal/zzakd;

    iput-object p9, p0, Lcom/google/android/gms/internal/zzanx;->e:Lcom/google/android/gms/ads/internal/zzbl;

    iput-object p10, p0, Lcom/google/android/gms/internal/zzanx;->f:Lcom/google/android/gms/ads/internal/zzv;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzanx;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "window"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzanx;->M:Landroid/view/WindowManager;

    iput-object p11, p0, Lcom/google/android/gms/internal/zzanx;->N:Lcom/google/android/gms/internal/zzis;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzanx;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzanx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    :try_start_0
    invoke-virtual {p2, p5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    const-string p4, "Unable to enable Javascript."

    invoke-static {p4, p3}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {p2, p5}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    invoke-virtual {p2, p5}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x15

    if-lt p3, p4, :cond_0

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->e()Lcom/google/android/gms/internal/zzahn;

    move-result-object p3

    iget-object p4, p7, Lcom/google/android/gms/internal/zzakd;->b:Ljava/lang/String;

    invoke-virtual {p3, p1, p4}, Lcom/google/android/gms/internal/zzahn;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->g()Lcom/google/android/gms/internal/zzaht;

    move-result-object p3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzanx;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p3, p4, p2}, Lcom/google/android/gms/internal/zzaht;->a(Landroid/content/Context;Landroid/webkit/WebSettings;)Z

    invoke-virtual {p0, p0}, Lcom/google/android/gms/internal/zzanx;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzanx;->N()V

    invoke-static {}, Lcom/google/android/gms/common/util/zzq;->zzamj()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Lcom/google/android/gms/internal/zzaod;

    new-instance p3, Lcom/google/android/gms/internal/zzaoe;

    invoke-direct {p3, p0}, Lcom/google/android/gms/internal/zzaoe;-><init>(Lcom/google/android/gms/internal/zzanh;)V

    invoke-direct {p2, p0, p3}, Lcom/google/android/gms/internal/zzaod;-><init>(Lcom/google/android/gms/internal/zzaog;Lcom/google/android/gms/internal/zzaof;)V

    const-string p3, "googleAdsJsInterface"

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/zzanx;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    const-string p2, "accessibility"

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/zzanx;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string p2, "accessibilityTraversal"

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/zzanx;->removeJavascriptInterface(Ljava/lang/String;)V

    new-instance p2, Lcom/google/android/gms/internal/zzajq;

    iget-object p3, p0, Lcom/google/android/gms/internal/zzanx;->a:Lcom/google/android/gms/internal/zzaoz;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzaoz;->a()Landroid/app/Activity;

    move-result-object p3

    const/4 p4, 0x0

    invoke-direct {p2, p3, p0, p0, p4}, Lcom/google/android/gms/internal/zzajq;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzanx;->G:Lcom/google/android/gms/internal/zzajq;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzanx;->R()V

    new-instance p2, Lcom/google/android/gms/internal/zznt;

    new-instance p3, Lcom/google/android/gms/internal/zznu;

    const-string p6, "make_wv"

    iget-object p7, p0, Lcom/google/android/gms/internal/zzanx;->j:Ljava/lang/String;

    invoke-direct {p3, p5, p6, p7}, Lcom/google/android/gms/internal/zznu;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/zznt;-><init>(Lcom/google/android/gms/internal/zznu;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzanx;->C:Lcom/google/android/gms/internal/zznt;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzanx;->C:Lcom/google/android/gms/internal/zznt;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zznt;->a()Lcom/google/android/gms/internal/zznu;

    move-result-object p2

    invoke-virtual {p2, p8}, Lcom/google/android/gms/internal/zznu;->a(Lcom/google/android/gms/internal/zznu;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzanx;->C:Lcom/google/android/gms/internal/zznt;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zznt;->a()Lcom/google/android/gms/internal/zznu;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/zznn;->a(Lcom/google/android/gms/internal/zznu;)Lcom/google/android/gms/internal/zzns;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/zzanx;->A:Lcom/google/android/gms/internal/zzns;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzanx;->C:Lcom/google/android/gms/internal/zznt;

    const-string p3, "native:view_create"

    iget-object p5, p0, Lcom/google/android/gms/internal/zzanx;->A:Lcom/google/android/gms/internal/zzns;

    invoke-virtual {p2, p3, p5}, Lcom/google/android/gms/internal/zznt;->a(Ljava/lang/String;Lcom/google/android/gms/internal/zzns;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/zzanx;->B:Lcom/google/android/gms/internal/zzns;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzanx;->z:Lcom/google/android/gms/internal/zzns;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->g()Lcom/google/android/gms/internal/zzaht;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zzaht;->b(Landroid/content/Context;)V

    return-void
.end method

.method private final K()Z
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->g:Lcom/google/android/gms/internal/zzani;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzani;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->g:Lcom/google/android/gms/internal/zzani;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzani;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->e()Lcom/google/android/gms/internal/zzahn;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->M:Landroid/view/WindowManager;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzahn;->a(Landroid/view/WindowManager;)Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->a()Lcom/google/android/gms/internal/zzajr;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzajr;->b(Landroid/util/DisplayMetrics;I)I

    move-result v4

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->a()Lcom/google/android/gms/internal/zzajr;

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzajr;->b(Landroid/util/DisplayMetrics;I)I

    move-result v5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzanx;->a:Lcom/google/android/gms/internal/zzaoz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaoz;->a()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->e()Lcom/google/android/gms/internal/zzahn;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzahn;->a(Landroid/app/Activity;)[I

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->a()Lcom/google/android/gms/internal/zzajr;

    aget v6, v2, v1

    invoke-static {v0, v6}, Lcom/google/android/gms/internal/zzajr;->b(Landroid/util/DisplayMetrics;I)I

    move-result v6

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->a()Lcom/google/android/gms/internal/zzajr;

    aget v2, v2, v3

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzajr;->b(Landroid/util/DisplayMetrics;I)I

    move-result v2

    move v7, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v6, v4

    move v7, v5

    :goto_1
    iget v2, p0, Lcom/google/android/gms/internal/zzanx;->I:I

    if-ne v2, v4, :cond_3

    iget v2, p0, Lcom/google/android/gms/internal/zzanx;->H:I

    if-ne v2, v5, :cond_3

    iget v2, p0, Lcom/google/android/gms/internal/zzanx;->J:I

    if-ne v2, v6, :cond_3

    iget v2, p0, Lcom/google/android/gms/internal/zzanx;->K:I

    if-ne v2, v7, :cond_3

    return v1

    :cond_3
    iget v2, p0, Lcom/google/android/gms/internal/zzanx;->I:I

    if-ne v2, v4, :cond_4

    iget v2, p0, Lcom/google/android/gms/internal/zzanx;->H:I

    if-eq v2, v5, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    iput v4, p0, Lcom/google/android/gms/internal/zzanx;->I:I

    iput v5, p0, Lcom/google/android/gms/internal/zzanx;->H:I

    iput v6, p0, Lcom/google/android/gms/internal/zzanx;->J:I

    iput v7, p0, Lcom/google/android/gms/internal/zzanx;->K:I

    new-instance v3, Lcom/google/android/gms/internal/zzxb;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/zzxb;-><init>(Lcom/google/android/gms/internal/zzanh;)V

    iget v8, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->M:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v9

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/internal/zzxb;->a(IIIIFI)V

    return v1
.end method

.method private final L()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzanx;->o:Ljava/lang/Boolean;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final M()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->C:Lcom/google/android/gms/internal/zznt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zznt;->a()Lcom/google/android/gms/internal/zznu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzanx;->A:Lcom/google/android/gms/internal/zzns;

    const-string v2, "aeh2"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zznn;->a(Lcom/google/android/gms/internal/zznu;Lcom/google/android/gms/internal/zzns;[Ljava/lang/String;)Z

    return-void
.end method

.method private final N()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzanx;->m:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzanx;->i:Lcom/google/android/gms/internal/zzapa;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzapa;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v1, v2, :cond_2

    const-string v1, "Disabling hardware acceleration on an AdView."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzanx;->b:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzanx;->n:Z

    if-nez v2, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->g()Lcom/google/android/gms/internal/zzaht;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/android/gms/internal/zzaht;->c(Landroid/view/View;)Z

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzanx;->n:Z

    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    :cond_2
    const-string v1, "Enabling hardware acceleration on an AdView."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzanx;->O()V

    goto :goto_2

    :cond_3
    :goto_1
    const-string v1, "Enabling hardware acceleration on an overlay."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;)V

    goto :goto_0

    :goto_2
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private final O()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzanx;->n:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->g()Lcom/google/android/gms/internal/zzaht;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/zzaht;->b(Landroid/view/View;)Z

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzanx;->n:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final P()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzanx;->F:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzanx;->F:Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->i()Lcom/google/android/gms/internal/zzaft;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaft;->x()V

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

.method private final Q()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/google/android/gms/internal/zzanx;->L:Ljava/util/Map;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final R()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->C:Lcom/google/android/gms/internal/zznt;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->C:Lcom/google/android/gms/internal/zznt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zznt;->a()Lcom/google/android/gms/internal/zznu;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->i()Lcom/google/android/gms/internal/zzaft;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaft;->e()Lcom/google/android/gms/internal/zznk;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->i()Lcom/google/android/gms/internal/zzaft;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaft;->e()Lcom/google/android/gms/internal/zznk;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zznk;->a(Lcom/google/android/gms/internal/zznu;)Z

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzanx;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzanx;->y:I

    return p1
.end method

.method static a(Landroid/content/Context;Lcom/google/android/gms/internal/zzapa;Ljava/lang/String;ZZLcom/google/android/gms/internal/zzcv;Lcom/google/android/gms/internal/zzakd;Lcom/google/android/gms/internal/zznu;Lcom/google/android/gms/ads/internal/zzbl;Lcom/google/android/gms/ads/internal/zzv;Lcom/google/android/gms/internal/zzis;)Lcom/google/android/gms/internal/zzanx;
    .locals 13
    .param p5    # Lcom/google/android/gms/internal/zzcv;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    new-instance v1, Lcom/google/android/gms/internal/zzaoz;

    move-object v0, p0

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzaoz;-><init>(Landroid/content/Context;)V

    new-instance v12, Lcom/google/android/gms/internal/zzanx;

    move-object v0, v12

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/zzanx;-><init>(Lcom/google/android/gms/internal/zzaoz;Lcom/google/android/gms/internal/zzapa;Ljava/lang/String;ZZLcom/google/android/gms/internal/zzcv;Lcom/google/android/gms/internal/zzakd;Lcom/google/android/gms/internal/zznu;Lcom/google/android/gms/ads/internal/zzbl;Lcom/google/android/gms/ads/internal/zzv;Lcom/google/android/gms/internal/zzis;)V

    return-object v12
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzanx;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzanx;->b:Ljava/lang/Object;

    return-object p0
.end method

.method private final a(Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzanx;->o:Ljava/lang/Boolean;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->i()Lcom/google/android/gms/internal/zzaft;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzaft;->a(Ljava/lang/Boolean;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic b(Lcom/google/android/gms/internal/zzanx;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/zzanx;->y:I

    return p0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/zzanx;)V
    .locals 0

    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method private final c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzanx;->z()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzanx;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "The webview is destroyed. Ignoring action."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private final d(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/common/util/zzq;->zzaml()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzanx;->L()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->i()Lcom/google/android/gms/internal/zzaft;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaft;->i()Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzanx;->o:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzanx;->o:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :try_start_1
    const-string v2, "(function(){})()"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/internal/zzanx;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzanx;->a(Ljava/lang/Boolean;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    const/4 v2, 0x0

    :try_start_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzanx;->a(Ljava/lang/Boolean;)V

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzanx;->L()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzanx;->z()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/zzanx;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_2

    :cond_2
    const-string p1, "The webview is destroyed. Ignoring action."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    :goto_2
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_3
    const-string v0, "javascript:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzanx;->c(Ljava/lang/String;)V

    return-void

    :cond_5
    const-string v0, "javascript:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_6
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzanx;->c(Ljava/lang/String;)V

    return-void
.end method

.method private final f(Z)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "isVisible"

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onAdVisibilityChanged"

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzanx;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Destroying WebView!"

    invoke-static {v1}, Lcom/google/android/gms/internal/zzagf;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzanx;->P()V

    sget-object v1, Lcom/google/android/gms/internal/zzahn;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zzanz;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzanz;-><init>(Lcom/google/android/gms/internal/zzanx;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final B()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzanx;->q:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final C()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzanx;->r:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final D()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/zzanx;->x:I

    if-lez v1, :cond_0

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

.method public final E()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->G:Lcom/google/android/gms/internal/zzajq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzajq;->a()V

    return-void
.end method

.method public final F()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->B:Lcom/google/android/gms/internal/zzns;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->C:Lcom/google/android/gms/internal/zznt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zznt;->a()Lcom/google/android/gms/internal/zznu;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zznn;->a(Lcom/google/android/gms/internal/zznu;)Lcom/google/android/gms/internal/zzns;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzanx;->B:Lcom/google/android/gms/internal/zzns;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->C:Lcom/google/android/gms/internal/zznt;

    const-string v1, "native:view_load"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzanx;->B:Lcom/google/android/gms/internal/zzns;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zznt;->a(Ljava/lang/String;Lcom/google/android/gms/internal/zzns;)V

    :cond_0
    return-void
.end method

.method public final G()Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->D:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final H()Lcom/google/android/gms/internal/zzoq;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzanx;->w:Lcom/google/android/gms/internal/zzoq;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final I()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzanx;->setBackgroundColor(I)V

    return-void
.end method

.method public final J()V
    .locals 1

    const-string v0, "Cannot add text view to inner AdWebView"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a()Lcom/google/android/gms/internal/zzamg;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(I)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->C:Lcom/google/android/gms/internal/zznt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zznt;->a()Lcom/google/android/gms/internal/zznu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzanx;->A:Lcom/google/android/gms/internal/zzns;

    const-string v2, "aebb2"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zznn;->a(Lcom/google/android/gms/internal/zznu;Lcom/google/android/gms/internal/zzns;[Ljava/lang/String;)Z

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzanx;->M()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->C:Lcom/google/android/gms/internal/zznt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zznt;->a()Lcom/google/android/gms/internal/zznu;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->C:Lcom/google/android/gms/internal/zznt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zznt;->a()Lcom/google/android/gms/internal/zznu;

    move-result-object v0

    const-string v1, "close_type"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zznu;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "closetype"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "version"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzanx;->d:Lcom/google/android/gms/internal/zzakd;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzakd;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onhide"

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzanx;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->a:Lcom/google/android/gms/internal/zzaoz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzaoz;->setBaseContext(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzanx;->G:Lcom/google/android/gms/internal/zzajq;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->a:Lcom/google/android/gms/internal/zzaoz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaoz;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzajq;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/internal/overlay/zzc;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->g:Lcom/google/android/gms/internal/zzani;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzani;->a(Lcom/google/android/gms/ads/internal/overlay/zzc;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/internal/overlay/zzd;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzanx;->h:Lcom/google/android/gms/ads/internal/overlay/zzd;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Lcom/google/android/gms/internal/zzaoa;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzanx;->t:Lcom/google/android/gms/internal/zzaoa;

    if-eqz v1, :cond_0

    const-string p1, "Attempt to create multiple AdWebViewVideoControllers."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzanx;->t:Lcom/google/android/gms/internal/zzaoa;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Lcom/google/android/gms/internal/zzapa;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzanx;->i:Lcom/google/android/gms/internal/zzapa;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzanx;->requestLayout()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Lcom/google/android/gms/internal/zzgs;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p1, Lcom/google/android/gms/internal/zzgs;->a:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzanx;->u:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean p1, p1, Lcom/google/android/gms/internal/zzgs;->a:Z

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzanx;->f(Z)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Lcom/google/android/gms/internal/zzoq;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzanx;->w:Lcom/google/android/gms/internal/zzoq;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->i()Lcom/google/android/gms/internal/zzaft;

    move-result-object v1

    const-string v2, "AdWebViewImpl.loadUrlUnsafe"

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/zzaft;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v1, "Could not call loadUrl. "

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/internal/gmsg/zzt<",
            "-",
            "Lcom/google/android/gms/internal/zzanh;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->g:Lcom/google/android/gms/internal/zzani;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->g:Lcom/google/android/gms/internal/zzani;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzani;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->e()Lcom/google/android/gms/internal/zzahn;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzahn;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzanx;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catch_0
    const-string p1, "Could not convert parameters to JSON."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    if-nez p2, :cond_0

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(window.AFMA_ReceiveMessage || function() {})(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Dispatching AFMA event: "

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzanx;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->g:Lcom/google/android/gms/internal/zzani;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzani;->a(Z)V

    return-void
.end method

.method public final a(ZI)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->g:Lcom/google/android/gms/internal/zzani;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzani;->a(ZI)V

    return-void
.end method

.method public final a(ZILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->g:Lcom/google/android/gms/internal/zzani;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzani;->a(ZILjava/lang/String;)V

    return-void
.end method

.method public final a(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->g:Lcom/google/android/gms/internal/zzani;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzani;->a(ZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b()Lcom/google/android/gms/internal/zzaoa;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzanx;->t:Lcom/google/android/gms/internal/zzaoa;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/zzanx;->p:I

    iget-object p1, p0, Lcom/google/android/gms/internal/zzanx;->h:Lcom/google/android/gms/ads/internal/overlay/zzd;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzanx;->h:Lcom/google/android/gms/ads/internal/overlay/zzd;

    iget v1, p0, Lcom/google/android/gms/internal/zzanx;->p:I

    invoke-virtual {p1, v1}, Lcom/google/android/gms/ads/internal/overlay/zzd;->setRequestedOrientation(I)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Lcom/google/android/gms/ads/internal/overlay/zzd;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzanx;->E:Lcom/google/android/gms/ads/internal/overlay/zzd;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->b:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, ""

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzanx;->s:Ljava/lang/String;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/internal/gmsg/zzt<",
            "-",
            "Lcom/google/android/gms/internal/zzanh;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->g:Lcom/google/android/gms/internal/zzani;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->g:Lcom/google/android/gms/internal/zzani;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzani;->b(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    if-nez p2, :cond_0

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzanx;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzanx;->m:Z

    if-eq p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzanx;->m:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzanx;->N()V

    if-eqz v1, :cond_2

    new-instance v1, Lcom/google/android/gms/internal/zzxb;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzxb;-><init>(Lcom/google/android/gms/internal/zzanh;)V

    if-eqz p1, :cond_1

    const-string p1, "expanded"

    goto :goto_1

    :cond_1
    const-string p1, "default"

    :goto_1
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzxb;->c(Ljava/lang/String;)V

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c()Lcom/google/android/gms/internal/zzns;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->A:Lcom/google/android/gms/internal/zzns;

    return-object v0
.end method

.method public final c(Z)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzanx;->h:Lcom/google/android/gms/ads/internal/overlay/zzd;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzanx;->h:Lcom/google/android/gms/ads/internal/overlay/zzd;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzanx;->g:Lcom/google/android/gms/internal/zzani;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzani;->b()Z

    move-result v2

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zza(ZZ)V

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzanx;->k:Z

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final d()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->a:Lcom/google/android/gms/internal/zzaoz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaoz;->a()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public final d(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzanx;->q:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final destroy()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzanx;->R()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzanx;->G:Lcom/google/android/gms/internal/zzajq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzajq;->b()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzanx;->h:Lcom/google/android/gms/ads/internal/overlay/zzd;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzanx;->h:Lcom/google/android/gms/ads/internal/overlay/zzd;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/overlay/zzd;->close()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzanx;->h:Lcom/google/android/gms/ads/internal/overlay/zzd;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/overlay/zzd;->onDestroy()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/zzanx;->h:Lcom/google/android/gms/ads/internal/overlay/zzd;

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzanx;->g:Lcom/google/android/gms/internal/zzani;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzani;->l()V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzanx;->l:Z

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->x()Lcom/google/android/gms/internal/zzamz;

    invoke-static {p0}, Lcom/google/android/gms/internal/zzamz;->a(Lcom/google/android/gms/internal/zzamp;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzanx;->Q()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzanx;->l:Z

    const-string v1, "Initiating WebView self destruct sequence in 3..."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzagf;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzanx;->g:Lcom/google/android/gms/internal/zzani;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzani;->g()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final e()Lcom/google/android/gms/ads/internal/zzv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->f:Lcom/google/android/gms/ads/internal/zzv;

    return-object v0
.end method

.method public final e(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/zzanx;->x:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/gms/internal/zzanx;->x:I

    iget p1, p0, Lcom/google/android/gms/internal/zzanx;->x:I

    if-gtz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzanx;->h:Lcom/google/android/gms/ads/internal/overlay/zzd;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzanx;->h:Lcom/google/android/gms/ads/internal/overlay/zzd;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zznb()V

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

.method public final evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzanx;->z()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "The webview is destroyed. Ignoring action."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_0
    monitor-exit v0

    return-void

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final f()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzanx;->q()Lcom/google/android/gms/ads/internal/overlay/zzd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzna()V

    :cond_0
    return-void
.end method

.method protected final finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->b:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzanx;->l:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzanx;->g:Lcom/google/android/gms/internal/zzani;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzani;->l()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->x()Lcom/google/android/gms/internal/zzamz;

    invoke-static {p0}, Lcom/google/android/gms/internal/zzamz;->a(Lcom/google/android/gms/internal/zzamp;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzanx;->Q()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzanx;->P()V

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_1
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final g()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzanx;->s:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final h()Lcom/google/android/gms/internal/zznt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->C:Lcom/google/android/gms/internal/zznt;

    return-object v0
.end method

.method public final i()Lcom/google/android/gms/internal/zzakd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->d:Lcom/google/android/gms/internal/zzakd;

    return-object v0
.end method

.method public final j()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzanx;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public final k()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzanx;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public final l()Landroid/webkit/WebView;
    .locals 0

    return-object p0
.end method

.method public final loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzanx;->z()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "The webview is destroyed. Ignoring action."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzanx;->z()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "The webview is destroyed. Ignoring action."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final loadUrl(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzanx;->z()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->i()Lcom/google/android/gms/internal/zzaft;

    move-result-object v1

    const-string v2, "AdWebViewImpl.loadUrl"

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/zzaft;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v1, "Could not call loadUrl. "

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-string p1, "The webview is destroyed. Ignoring action."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final m()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzanx;->M()V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "version"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzanx;->d:Lcom/google/android/gms/internal/zzakd;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzakd;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onhide"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzanx;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final n()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->z:Lcom/google/android/gms/internal/zzns;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->C:Lcom/google/android/gms/internal/zznt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zznt;->a()Lcom/google/android/gms/internal/zznu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzanx;->A:Lcom/google/android/gms/internal/zzns;

    const-string v2, "aes2"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zznn;->a(Lcom/google/android/gms/internal/zznu;Lcom/google/android/gms/internal/zzns;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->C:Lcom/google/android/gms/internal/zznt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zznt;->a()Lcom/google/android/gms/internal/zznu;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zznn;->a(Lcom/google/android/gms/internal/zznu;)Lcom/google/android/gms/internal/zzns;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzanx;->z:Lcom/google/android/gms/internal/zzns;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->C:Lcom/google/android/gms/internal/zznt;

    const-string v1, "native:view_show"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzanx;->z:Lcom/google/android/gms/internal/zzns;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zznt;->a(Ljava/lang/String;Lcom/google/android/gms/internal/zzns;)V

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "version"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzanx;->d:Lcom/google/android/gms/internal/zzakd;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzakd;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onshow"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzanx;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final o()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "app_muted"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->e()Lcom/google/android/gms/internal/zzahn;

    invoke-static {}, Lcom/google/android/gms/internal/zzahn;->d()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "app_volume"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->e()Lcom/google/android/gms/internal/zzahn;

    invoke-static {}, Lcom/google/android/gms/internal/zzahn;->c()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "device_volume"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->e()Lcom/google/android/gms/internal/zzahn;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzanx;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzahn;->j(Landroid/content/Context;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "volume"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzanx;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method protected final onAttachedToWindow()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzanx;->z()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzanx;->G:Lcom/google/android/gms/internal/zzajq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzajq;->c()V

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzanx;->u:Z

    iget-object v2, p0, Lcom/google/android/gms/internal/zzanx;->g:Lcom/google/android/gms/internal/zzani;

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzanx;->g:Lcom/google/android/gms/internal/zzani;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzani;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzanx;->v:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzanx;->g:Lcom/google/android/gms/internal/zzani;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzani;->d()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->y()Lcom/google/android/gms/internal/zzaln;

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/zzaln;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzanx;->g:Lcom/google/android/gms/internal/zzani;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzani;->e()Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->y()Lcom/google/android/gms/internal/zzaln;

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/zzaln;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_2
    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzanx;->v:Z

    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzanx;->K()Z

    const/4 v1, 0x1

    :cond_4
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzanx;->f(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected final onDetachedFromWindow()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzanx;->z()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzanx;->G:Lcom/google/android/gms/internal/zzajq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzajq;->d()V

    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzanx;->v:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzanx;->g:Lcom/google/android/gms/internal/zzani;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzanx;->g:Lcom/google/android/gms/internal/zzani;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzani;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzanx;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzanx;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzanx;->g:Lcom/google/android/gms/internal/zzani;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzani;->d()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->g()Lcom/google/android/gms/internal/zzaht;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzanx;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/google/android/gms/internal/zzaht;->a(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzanx;->g:Lcom/google/android/gms/internal/zzani;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzani;->e()Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzanx;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_2
    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzanx;->v:Z

    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzanx;->f(Z)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->e()Lcom/google/android/gms/internal/zzahn;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzanx;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/google/android/gms/internal/zzahn;->a(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x33

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p2, p3

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Couldn\'t find an Activity to view url/mimetype: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzanx;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzanx;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzanx;->g:Lcom/google/android/gms/internal/zzani;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/zzanx;->g:Lcom/google/android/gms/internal/zzani;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzani;->m()Lcom/google/android/gms/internal/zzanq;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/zzanx;->g:Lcom/google/android/gms/internal/zzani;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzani;->m()Lcom/google/android/gms/internal/zzanq;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzanq;->a()V

    :cond_2
    return-void
.end method

.method public final onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    sget-object v0, Lcom/google/android/gms/internal/zznh;->ar:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    const/4 v2, -0x1

    const/4 v3, 0x0

    cmpl-float v4, v0, v3

    if-lez v4, :cond_0

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/zzanx;->canScrollVertically(I)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    const/4 v4, 0x1

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/zzanx;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    cmpl-float v0, v1, v3

    if-lez v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/zzanx;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    cmpg-float v0, v1, v3

    if-gez v0, :cond_4

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/zzanx;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const/4 p1, 0x0

    return p1

    :cond_4
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final onGlobalLayout()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzanx;->K()Z

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzanx;->q()Lcom/google/android/gms/ads/internal/overlay/zzd;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzmy()V

    :cond_0
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzanx;->z()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2, v2}, Lcom/google/android/gms/internal/zzanx;->setMeasuredDimension(II)V

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzanx;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_14

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzanx;->m:Z

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/google/android/gms/internal/zzanx;->i:Lcom/google/android/gms/internal/zzapa;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzapa;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_8

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzanx;->i:Lcom/google/android/gms/internal/zzapa;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzapa;->f()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzanx;->b()Lcom/google/android/gms/internal/zzaoa;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaoa;->getAspectRatio()F

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    cmpl-float v2, v1, v2

    if-nez v2, :cond_3

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V

    monitor-exit v0

    return-void

    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-float v2, p2

    mul-float v2, v2, v1

    float-to-int v2, v2

    int-to-float v3, p1

    div-float/2addr v3, v1

    float-to-int v3, v3

    if-nez p2, :cond_4

    if-eqz v3, :cond_4

    int-to-float p2, v3

    mul-float p2, p2, v1

    float-to-int v2, p2

    move p2, v3

    goto :goto_1

    :cond_4
    if-nez p1, :cond_5

    if-eqz v2, :cond_5

    int-to-float p1, v2

    div-float/2addr p1, v1

    float-to-int v3, p1

    move p1, v2

    :cond_5
    :goto_1
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzanx;->setMeasuredDimension(II)V

    monitor-exit v0

    return-void

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzanx;->i:Lcom/google/android/gms/internal/zzapa;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzapa;->c()Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Lcom/google/android/gms/internal/zznh;->bW:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {}, Lcom/google/android/gms/common/util/zzq;->zzamj()Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_3

    :cond_7
    const-string v1, "/contentHeight"

    new-instance v2, Lcom/google/android/gms/internal/zzany;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzany;-><init>(Lcom/google/android/gms/internal/zzanx;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/zzanx;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    const-string v1, "(function() {  var height = -1;  if (document.body) {    height = document.body.offsetHeight;  } else if (document.documentElement) {    height = document.documentElement.offsetHeight;  }  var url = \'gmsg://mobileads.google.com/contentHeight?\';  url += \'height=\' + height;  try {    window.googleAdsJsInterface.notify(url);  } catch (e) {    var frame = document.getElementById(\'afma-notify-fluid\');    if (!frame) {      frame = document.createElement(\'IFRAME\');      frame.id = \'afma-notify-fluid\';      frame.style.display = \'none\';      var body = document.body || document.documentElement;      body.appendChild(frame);    }    frame.src = url;  }})();"

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzanx;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzanx;->a:Lcom/google/android/gms/internal/zzaoz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaoz;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget v2, p0, Lcom/google/android/gms/internal/zzanx;->y:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_8

    iget p2, p0, Lcom/google/android/gms/internal/zzanx;->y:I

    int-to-float p2, p2

    mul-float p2, p2, v1

    float-to-int p2, p2

    goto :goto_2

    :cond_8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    :goto_2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzanx;->setMeasuredDimension(II)V

    monitor-exit v0

    return-void

    :cond_9
    :goto_3
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V

    monitor-exit v0

    return-void

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/zzanx;->i:Lcom/google/android/gms/internal/zzapa;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzapa;->d()Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzanx;->M:Landroid/view/WindowManager;

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/zzanx;->setMeasuredDimension(II)V

    monitor-exit v0

    return-void

    :cond_b
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, -0x80000000

    const v6, 0x7fffffff

    if-eq v1, v5, :cond_d

    if-ne v1, v4, :cond_c

    goto :goto_4

    :cond_c
    const v1, 0x7fffffff

    goto :goto_5

    :cond_d
    :goto_4
    move v1, p1

    :goto_5
    if-eq v3, v5, :cond_e

    if-ne v3, v4, :cond_f

    :cond_e
    move v6, p2

    :cond_f
    iget-object v3, p0, Lcom/google/android/gms/internal/zzanx;->i:Lcom/google/android/gms/internal/zzapa;

    iget v3, v3, Lcom/google/android/gms/internal/zzapa;->b:I

    const/16 v4, 0x8

    if-gt v3, v1, :cond_12

    iget-object v1, p0, Lcom/google/android/gms/internal/zzanx;->i:Lcom/google/android/gms/internal/zzapa;

    iget v1, v1, Lcom/google/android/gms/internal/zzapa;->a:I

    if-le v1, v6, :cond_10

    goto :goto_6

    :cond_10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzanx;->getVisibility()I

    move-result p1

    if-eq p1, v4, :cond_11

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/zzanx;->setVisibility(I)V

    :cond_11
    iget-object p1, p0, Lcom/google/android/gms/internal/zzanx;->i:Lcom/google/android/gms/internal/zzapa;

    iget p1, p1, Lcom/google/android/gms/internal/zzapa;->b:I

    iget-object p2, p0, Lcom/google/android/gms/internal/zzanx;->i:Lcom/google/android/gms/internal/zzapa;

    iget p2, p2, Lcom/google/android/gms/internal/zzapa;->a:I

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzanx;->setMeasuredDimension(II)V

    goto :goto_7

    :cond_12
    :goto_6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzanx;->a:Lcom/google/android/gms/internal/zzaoz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaoz;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iget-object v3, p0, Lcom/google/android/gms/internal/zzanx;->i:Lcom/google/android/gms/internal/zzapa;

    iget v3, v3, Lcom/google/android/gms/internal/zzapa;->b:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    float-to-int v3, v3

    iget-object v5, p0, Lcom/google/android/gms/internal/zzanx;->i:Lcom/google/android/gms/internal/zzapa;

    iget v5, v5, Lcom/google/android/gms/internal/zzapa;->a:I

    int-to-float v5, v5

    div-float/2addr v5, v1

    float-to-int v5, v5

    int-to-float p1, p1

    div-float/2addr p1, v1

    float-to-int p1, p1

    int-to-float p2, p2

    div-float/2addr p2, v1

    float-to-int p2, p2

    const/16 v1, 0x67

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Not enough space to show ad. Needs "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " dp, but only has "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " dp."

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzanx;->getVisibility()I

    move-result p1

    if-eq p1, v4, :cond_13

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzanx;->setVisibility(I)V

    :cond_13
    invoke-virtual {p0, v2, v2}, Lcom/google/android/gms/internal/zzanx;->setMeasuredDimension(II)V

    :goto_7
    monitor-exit v0

    return-void

    :cond_14
    :goto_8
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onPause()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzanx;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->onPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not pause webview."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onResume()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzanx;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not resume webview."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->g:Lcom/google/android/gms/internal/zzani;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzani;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzanx;->w:Lcom/google/android/gms/internal/zzoq;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzanx;->w:Lcom/google/android/gms/internal/zzoq;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/zzoq;->a(Landroid/view/MotionEvent;)V

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->c:Lcom/google/android/gms/internal/zzcv;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->c:Lcom/google/android/gms/internal/zzcv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzcv;->a(Landroid/view/MotionEvent;)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzanx;->z()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x0

    return p1

    :cond_3
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final p()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->a:Lcom/google/android/gms/internal/zzaoz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaoz;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final q()Lcom/google/android/gms/ads/internal/overlay/zzd;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzanx;->h:Lcom/google/android/gms/ads/internal/overlay/zzd;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final r()Lcom/google/android/gms/ads/internal/overlay/zzd;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzanx;->E:Lcom/google/android/gms/ads/internal/overlay/zzd;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final s()Lcom/google/android/gms/internal/zzapa;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzanx;->i:Lcom/google/android/gms/internal/zzapa;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzanx;->D:Ljava/lang/ref/WeakReference;

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    instance-of v0, p1, Lcom/google/android/gms/internal/zzani;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzani;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzanx;->g:Lcom/google/android/gms/internal/zzani;

    :cond_0
    return-void
.end method

.method public final stopLoading()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzanx;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->stopLoading()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not stop loading webview."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final t()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzanx;->j:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final u()Lcom/google/android/gms/internal/zzani;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->g:Lcom/google/android/gms/internal/zzani;

    return-object v0
.end method

.method public final v()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzanx;->k:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final w()Lcom/google/android/gms/internal/zzcv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->c:Lcom/google/android/gms/internal/zzcv;

    return-object v0
.end method

.method public final x()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzanx;->m:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final y()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/zzanx;->p:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final z()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzanx;->l:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzcq()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzanx;->r:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzanx;->e:Lcom/google/android/gms/ads/internal/zzbl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzanx;->e:Lcom/google/android/gms/ads/internal/zzbl;

    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/zzbl;->zzcq()V

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

.method public final zzcr()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanx;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzanx;->r:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzanx;->e:Lcom/google/android/gms/ads/internal/zzbl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzanx;->e:Lcom/google/android/gms/ads/internal/zzbl;

    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/zzbl;->zzcr()V

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
