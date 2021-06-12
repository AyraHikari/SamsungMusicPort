.class public final Lcom/google/android/gms/internal/zzyf;
.super Lcom/google/android/gms/internal/zzyc;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private d:Ljava/lang/Object;

.field private e:Landroid/widget/PopupWindow;

.field private f:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzafp;Lcom/google/android/gms/internal/zzanh;Lcom/google/android/gms/internal/zzyb;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzyc;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzafp;Lcom/google/android/gms/internal/zzanh;Lcom/google/android/gms/internal/zzyb;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzyf;->d:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzyf;->f:Z

    return-void
.end method

.method private final e()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyf;->d:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzyf;->f:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzyf;->a:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzyf;->a:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzyf;->e:Landroid/widget/PopupWindow;

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzyf;->e:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzyf;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzyf;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    iput-object v2, p0, Lcom/google/android/gms/internal/zzyf;->e:Landroid/widget/PopupWindow;

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method protected final a(I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzyf;->e()V

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzyc;->a(I)V

    return-void
.end method

.method protected final b()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyf;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyf;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzyf;->a:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzyf;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzyf;->b:Lcom/google/android/gms/internal/zzanh;

    if-eqz v3, :cond_4

    check-cast v3, Landroid/view/View;

    invoke-virtual {v2, v3, v4, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzyf;->d:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v5, p0, Lcom/google/android/gms/internal/zzyf;->f:Z

    if-eqz v5, :cond_3

    monitor-exit v3

    return-void

    :cond_3
    new-instance v5, Landroid/widget/PopupWindow;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct {v5, v2, v7, v7, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v5, p0, Lcom/google/android/gms/internal/zzyf;->e:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzyf;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzyf;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    const-string v2, "Displaying the 1x1 popup off the screen."

    invoke-static {v2}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzyf;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0, v6, v4, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    iput-object v1, p0, Lcom/google/android/gms/internal/zzyf;->e:Landroid/widget/PopupWindow;

    :goto_1
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_4
    throw v1

    :cond_5
    :goto_2
    return-void
.end method

.method public final c()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzyf;->e()V

    invoke-super {p0}, Lcom/google/android/gms/internal/zzyc;->c()V

    return-void
.end method
