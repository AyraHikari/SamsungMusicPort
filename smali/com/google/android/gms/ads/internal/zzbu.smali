.class public final Lcom/google/android/gms/ads/internal/zzbu;
.super Landroid/widget/ViewSwitcher;


# instance fields
.field private final a:Lcom/google/android/gms/internal/zzaig;

.field private final b:Lcom/google/android/gms/internal/zzajq;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/internal/zzaig;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzaig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzbu;->a:Lcom/google/android/gms/internal/zzaig;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbu;->a:Lcom/google/android/gms/internal/zzaig;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzaig;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zzbu;->a:Lcom/google/android/gms/internal/zzaig;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/zzaig;->b(Ljava/lang/String;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/google/android/gms/ads/internal/zzbu;->c:Z

    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_0

    new-instance p2, Lcom/google/android/gms/internal/zzajq;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {p2, p1, p0, p4, p5}, Lcom/google/android/gms/internal/zzajq;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzbu;->b:Lcom/google/android/gms/internal/zzajq;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/zzajq;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0, p4, p5}, Lcom/google/android/gms/internal/zzajq;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzbu;->b:Lcom/google/android/gms/internal/zzajq;

    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzbu;->b:Lcom/google/android/gms/internal/zzajq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzajq;->a()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/zzaig;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbu;->a:Lcom/google/android/gms/internal/zzaig;

    return-object v0
.end method

.method public final b()V
    .locals 1

    const-string v0, "Disable position monitoring on adFrame."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbu;->b:Lcom/google/android/gms/internal/zzajq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbu;->b:Lcom/google/android/gms/internal/zzajq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzajq;->b()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    const-string v0, "Enable debug gesture detector on adFrame."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzbu;->c:Z

    return-void
.end method

.method public final d()V
    .locals 1

    const-string v0, "Disable debug gesture detector on adFrame."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzbu;->c:Z

    return-void
.end method

.method protected final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ViewSwitcher;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbu;->b:Lcom/google/android/gms/internal/zzajq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbu;->b:Lcom/google/android/gms/internal/zzajq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzajq;->c()V

    :cond_0
    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ViewSwitcher;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbu;->b:Lcom/google/android/gms/internal/zzajq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbu;->b:Lcom/google/android/gms/internal/zzajq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzajq;->d()V

    :cond_0
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzbu;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbu;->a:Lcom/google/android/gms/internal/zzaig;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzaig;->a(Landroid/view/MotionEvent;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final removeAllViews()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzbu;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/google/android/gms/ads/internal/zzbu;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    instance-of v4, v3, Lcom/google/android/gms/internal/zzanh;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0}, Landroid/widget/ViewSwitcher;->removeAllViews()V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    check-cast v3, Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzanh;->destroy()V

    goto :goto_1

    :cond_2
    return-void
.end method
