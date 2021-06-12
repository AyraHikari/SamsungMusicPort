.class public final Lcom/google/android/gms/internal/zzxa;
.super Lcom/google/android/gms/internal/zzxb;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/zzt;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzxb;",
        "Lcom/google/android/gms/ads/internal/gmsg/zzt<",
        "Lcom/google/android/gms/internal/zzanh;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/zzanh;

.field private final b:Landroid/content/Context;

.field private final c:Landroid/view/WindowManager;

.field private final d:Lcom/google/android/gms/internal/zzmt;

.field private e:Landroid/util/DisplayMetrics;

.field private f:F

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzanh;Landroid/content/Context;Lcom/google/android/gms/internal/zzmt;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzxb;-><init>(Lcom/google/android/gms/internal/zzanh;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzxa;->g:I

    iput v0, p0, Lcom/google/android/gms/internal/zzxa;->h:I

    iput v0, p0, Lcom/google/android/gms/internal/zzxa;->j:I

    iput v0, p0, Lcom/google/android/gms/internal/zzxa;->k:I

    iput v0, p0, Lcom/google/android/gms/internal/zzxa;->l:I

    iput v0, p0, Lcom/google/android/gms/internal/zzxa;->m:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzxa;->a:Lcom/google/android/gms/internal/zzanh;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzxa;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzxa;->d:Lcom/google/android/gms/internal/zzmt;

    const-string p1, "window"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzxa;->c:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxa;->b:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->e()Lcom/google/android/gms/internal/zzahn;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzxa;->b:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzahn;->c(Landroid/app/Activity;)[I

    move-result-object v0

    aget v1, v0, v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzxa;->a:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzanh;->s()Lcom/google/android/gms/internal/zzapa;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxa;->a:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzanh;->s()Lcom/google/android/gms/internal/zzapa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzapa;->d()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->a()Lcom/google/android/gms/internal/zzajr;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxa;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzxa;->a:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzanh;->getWidth()I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzajr;->b(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzxa;->l:I

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->a()Lcom/google/android/gms/internal/zzajr;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxa;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzxa;->a:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzanh;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzajr;->b(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzxa;->m:I

    :cond_2
    sub-int v0, p2, v1

    iget v1, p0, Lcom/google/android/gms/internal/zzxa;->l:I

    iget v2, p0, Lcom/google/android/gms/internal/zzxa;->m:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzxb;->b(IIII)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxa;->a:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzanh;->u()Lcom/google/android/gms/internal/zzani;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzani;->a(II)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 8

    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzxa;->e:Landroid/util/DisplayMetrics;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzxa;->c:Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzxa;->e:Landroid/util/DisplayMetrics;

    invoke-virtual {p1, p2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzxa;->e:Landroid/util/DisplayMetrics;

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    iput p2, p0, Lcom/google/android/gms/internal/zzxa;->f:F

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/zzxa;->i:I

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->a()Lcom/google/android/gms/internal/zzajr;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzxa;->e:Landroid/util/DisplayMetrics;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzxa;->e:Landroid/util/DisplayMetrics;

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzajr;->b(Landroid/util/DisplayMetrics;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/zzxa;->g:I

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->a()Lcom/google/android/gms/internal/zzajr;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzxa;->e:Landroid/util/DisplayMetrics;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzxa;->e:Landroid/util/DisplayMetrics;

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzajr;->b(Landroid/util/DisplayMetrics;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/zzxa;->h:I

    iget-object p1, p0, Lcom/google/android/gms/internal/zzxa;->a:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzanh;->d()Landroid/app/Activity;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->e()Lcom/google/android/gms/internal/zzahn;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzahn;->a(Landroid/app/Activity;)[I

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->a()Lcom/google/android/gms/internal/zzajr;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzxa;->e:Landroid/util/DisplayMetrics;

    aget v2, p1, v0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzajr;->b(Landroid/util/DisplayMetrics;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/zzxa;->j:I

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->a()Lcom/google/android/gms/internal/zzajr;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzxa;->e:Landroid/util/DisplayMetrics;

    aget p1, p1, p2

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzajr;->b(Landroid/util/DisplayMetrics;I)I

    move-result p1

    goto :goto_1

    :cond_1
    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/zzxa;->g:I

    iput p1, p0, Lcom/google/android/gms/internal/zzxa;->j:I

    iget p1, p0, Lcom/google/android/gms/internal/zzxa;->h:I

    :goto_1
    iput p1, p0, Lcom/google/android/gms/internal/zzxa;->k:I

    iget-object p1, p0, Lcom/google/android/gms/internal/zzxa;->a:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzanh;->s()Lcom/google/android/gms/internal/zzapa;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapa;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/google/android/gms/internal/zzxa;->g:I

    iput p1, p0, Lcom/google/android/gms/internal/zzxa;->l:I

    iget p1, p0, Lcom/google/android/gms/internal/zzxa;->h:I

    iput p1, p0, Lcom/google/android/gms/internal/zzxa;->m:I

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/zzxa;->a:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {p1, v0, v0}, Lcom/google/android/gms/internal/zzanh;->measure(II)V

    :goto_2
    iget v2, p0, Lcom/google/android/gms/internal/zzxa;->g:I

    iget v3, p0, Lcom/google/android/gms/internal/zzxa;->h:I

    iget v4, p0, Lcom/google/android/gms/internal/zzxa;->j:I

    iget v5, p0, Lcom/google/android/gms/internal/zzxa;->k:I

    iget v6, p0, Lcom/google/android/gms/internal/zzxa;->f:F

    iget v7, p0, Lcom/google/android/gms/internal/zzxa;->i:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/zzxb;->a(IIIIFI)V

    new-instance p1, Lcom/google/android/gms/internal/zzwz;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzwz;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzxa;->d:Lcom/google/android/gms/internal/zzmt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzmt;->a()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzwz;->b(Z)Lcom/google/android/gms/internal/zzwz;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzxa;->d:Lcom/google/android/gms/internal/zzmt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzmt;->b()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzwz;->a(Z)Lcom/google/android/gms/internal/zzwz;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzxa;->d:Lcom/google/android/gms/internal/zzmt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzmt;->d()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzwz;->c(Z)Lcom/google/android/gms/internal/zzwz;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzxa;->d:Lcom/google/android/gms/internal/zzmt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzmt;->c()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzwz;->d(Z)Lcom/google/android/gms/internal/zzwz;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzwz;->e(Z)Lcom/google/android/gms/internal/zzwz;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/zzwx;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/zzwx;-><init>(Lcom/google/android/gms/internal/zzwz;Lcom/google/android/gms/internal/zzwy;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzxa;->a:Lcom/google/android/gms/internal/zzanh;

    const-string v2, "onDeviceFeaturesReceived"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzwx;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Lcom/google/android/gms/internal/zzanh;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 p1, 0x2

    new-array v1, p1, [I

    iget-object v2, p0, Lcom/google/android/gms/internal/zzxa;->a:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/zzanh;->getLocationOnScreen([I)V

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->a()Lcom/google/android/gms/internal/zzajr;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzxa;->b:Landroid/content/Context;

    aget v0, v1, v0

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzajr;->b(Landroid/content/Context;I)I

    move-result v0

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->a()Lcom/google/android/gms/internal/zzajr;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzxa;->b:Landroid/content/Context;

    aget p2, v1, p2

    invoke-static {v2, p2}, Lcom/google/android/gms/internal/zzajr;->b(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/zzxa;->a(II)V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->a(I)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Dispatching Ready Event."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->d(Ljava/lang/String;)V

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/zzxa;->a:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzanh;->i()Lcom/google/android/gms/internal/zzakd;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/zzakd;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzxb;->b(Ljava/lang/String;)V

    return-void
.end method
