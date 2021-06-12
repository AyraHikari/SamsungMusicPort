.class final Lcom/google/android/gms/internal/zzyu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/google/android/gms/internal/zzalf;

.field final synthetic c:Lcom/google/android/gms/internal/zzyt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzyt;Lorg/json/JSONObject;Lcom/google/android/gms/internal/zzalf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzyu;->c:Lcom/google/android/gms/internal/zzyt;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzyu;->a:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzyu;->b:Lcom/google/android/gms/internal/zzalf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzyu;->c:Lcom/google/android/gms/internal/zzyt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzyt;->a()Lcom/google/android/gms/internal/zzanh;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzapa;->b()Lcom/google/android/gms/internal/zzapa;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzanh;->a(Lcom/google/android/gms/internal/zzapa;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzyu;->c:Lcom/google/android/gms/internal/zzyt;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzyt;->a(Lcom/google/android/gms/internal/zzyt;)Lcom/google/android/gms/ads/internal/zzba;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/zzba;->zze(Lcom/google/android/gms/internal/zzanh;)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzanh;->u()Lcom/google/android/gms/internal/zzani;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzyu;->c:Lcom/google/android/gms/internal/zzyt;

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/zzyt;->a(Lcom/google/android/gms/internal/zzyt;Ljava/lang/ref/WeakReference;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzyu;->c:Lcom/google/android/gms/internal/zzyt;

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/zzyt;->b(Lcom/google/android/gms/internal/zzyt;Ljava/lang/ref/WeakReference;)Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/zzani;->a(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzyu;->c:Lcom/google/android/gms/internal/zzyt;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzyt;->a(Lcom/google/android/gms/internal/zzyt;Lcom/google/android/gms/internal/zzanh;)V

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzanh;->u()Lcom/google/android/gms/internal/zzani;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzyv;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzyv;-><init>(Lcom/google/android/gms/internal/zzyu;Lcom/google/android/gms/internal/zzanh;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzani;->a(Lcom/google/android/gms/internal/zzann;)V

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzanh;->u()Lcom/google/android/gms/internal/zzani;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzyw;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzyw;-><init>(Lcom/google/android/gms/internal/zzyu;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzani;->a(Lcom/google/android/gms/internal/zzanm;)V

    sget-object v1, Lcom/google/android/gms/internal/zznh;->bL:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzanh;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Exception occurred while getting video view"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyu;->b:Lcom/google/android/gms/internal/zzalf;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzalf;->b(Ljava/lang/Object;)V

    return-void
.end method
