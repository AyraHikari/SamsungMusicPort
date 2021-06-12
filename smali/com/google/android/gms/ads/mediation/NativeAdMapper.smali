.class public Lcom/google/android/gms/ads/mediation/NativeAdMapper;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field protected a:Z

.field protected b:Z

.field protected c:Landroid/os/Bundle;

.field protected d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Lcom/google/android/gms/ads/VideoController;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->c:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/VideoController;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->f:Lcom/google/android/gms/ads/VideoController;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->a:Z

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->a:Z

    return v0
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->b:Z

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->b:Z

    return v0
.end method

.method public final c()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->c:Landroid/os/Bundle;

    return-object v0
.end method

.method public c(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public d()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->d:Landroid/view/View;

    return-object v0
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public final f()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->e:Landroid/view/View;

    return-object v0
.end method

.method public final g()Lcom/google/android/gms/ads/VideoController;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->f:Lcom/google/android/gms/ads/VideoController;

    return-object v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->g:Z

    return v0
.end method
