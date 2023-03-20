.class public Lcom/google/android/gms/ads/internal/ClientApi;
.super Lcom/google/android/gms/internal/ads/be2;
.source "com.google.android.gms:play-services-ads@@18.3.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/be2;-><init>()V

    return-void
.end method


# virtual methods
.method public final B3(Lcom/google/android/gms/dynamic/a;Ljava/lang/String;Lcom/google/android/gms/internal/ads/aa;I)Lcom/google/android/gms/internal/ads/hd2;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->q1(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2
    invoke-static {p1, p3, p4}, Lcom/google/android/gms/internal/ads/hu;->b(Landroid/content/Context;Lcom/google/android/gms/internal/ads/aa;I)Lcom/google/android/gms/internal/ads/hu;

    move-result-object p3

    .line 3
    new-instance p4, Lcom/google/android/gms/internal/ads/mu0;

    invoke-direct {p4, p3, p1, p2}, Lcom/google/android/gms/internal/ads/mu0;-><init>(Lcom/google/android/gms/internal/ads/hu;Landroid/content/Context;Ljava/lang/String;)V

    return-object p4
.end method

.method public final D3(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/dynamic/a;)Lcom/google/android/gms/internal/ads/r1;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->q1(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/dynamic/b;->q1(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/dynamic/b;->q1(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/HashMap;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/qc0;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/qc0;-><init>(Landroid/view/View;Ljava/util/HashMap;Ljava/util/HashMap;)V

    return-object v0
.end method

.method public final F7(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/ic2;Ljava/lang/String;Lcom/google/android/gms/internal/ads/aa;I)Lcom/google/android/gms/internal/ads/od2;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->q1(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2
    invoke-static {p1, p4, p5}, Lcom/google/android/gms/internal/ads/hu;->b(Landroid/content/Context;Lcom/google/android/gms/internal/ads/aa;I)Lcom/google/android/gms/internal/ads/hu;

    move-result-object p4

    .line 3
    new-instance p5, Lcom/google/android/gms/internal/ads/ou0;

    invoke-direct {p5, p4, p1, p2, p3}, Lcom/google/android/gms/internal/ads/ou0;-><init>(Lcom/google/android/gms/internal/ads/hu;Landroid/content/Context;Lcom/google/android/gms/internal/ads/ic2;Ljava/lang/String;)V

    return-object p5
.end method

.method public final H4(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/ic2;Ljava/lang/String;I)Lcom/google/android/gms/internal/ads/od2;
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->q1(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/fn;

    const v1, 0x12bd1e8

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, p4, v2, v3}, Lcom/google/android/gms/internal/ads/fn;-><init>(IIZZ)V

    .line 3
    new-instance p4, Lcom/google/android/gms/ads/internal/l;

    invoke-direct {p4, p1, p2, p3, v0}, Lcom/google/android/gms/ads/internal/l;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ic2;Ljava/lang/String;Lcom/google/android/gms/internal/ads/fn;)V

    return-object p4
.end method

.method public final K4(Lcom/google/android/gms/dynamic/a;)Lcom/google/android/gms/internal/ads/fe2;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final M2(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/ic2;Ljava/lang/String;Lcom/google/android/gms/internal/ads/aa;I)Lcom/google/android/gms/internal/ads/od2;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->q1(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2
    invoke-static {p1, p4, p5}, Lcom/google/android/gms/internal/ads/hu;->b(Landroid/content/Context;Lcom/google/android/gms/internal/ads/aa;I)Lcom/google/android/gms/internal/ads/hu;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/hu;->n()Lcom/google/android/gms/internal/ads/e31;

    move-result-object p2

    .line 4
    invoke-interface {p2, p3}, Lcom/google/android/gms/internal/ads/e31;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/e31;

    move-result-object p2

    .line 5
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/e31;->c(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/e31;

    move-result-object p1

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/e31;->a()Lcom/google/android/gms/internal/ads/f31;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/f31;->a()Lcom/google/android/gms/internal/ads/z21;

    move-result-object p1

    return-object p1
.end method

.method public final Y3(Lcom/google/android/gms/dynamic/a;Ljava/lang/String;Lcom/google/android/gms/internal/ads/aa;I)Lcom/google/android/gms/internal/ads/tg;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->q1(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2
    invoke-static {p1, p3, p4}, Lcom/google/android/gms/internal/ads/hu;->b(Landroid/content/Context;Lcom/google/android/gms/internal/ads/aa;I)Lcom/google/android/gms/internal/ads/hu;

    move-result-object p3

    .line 3
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/hu;->r()Lcom/google/android/gms/internal/ads/n51;

    move-result-object p3

    .line 4
    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/n51;->b(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/n51;

    move-result-object p1

    .line 5
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/n51;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/n51;

    move-result-object p1

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/n51;->a()Lcom/google/android/gms/internal/ads/o51;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/o51;->a()Lcom/google/android/gms/internal/ads/j51;

    move-result-object p1

    return-object p1
.end method

.method public final Z6(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/dynamic/a;)Lcom/google/android/gms/internal/ads/p1;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->q1(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/dynamic/b;->q1(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/pc0;

    const v1, 0x12bd1e8

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/pc0;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;I)V

    return-object v0
.end method

.method public final b2(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/aa;I)Lcom/google/android/gms/internal/ads/zf;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->q1(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/hu;->b(Landroid/content/Context;Lcom/google/android/gms/internal/ads/aa;I)Lcom/google/android/gms/internal/ads/hu;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/hu;->r()Lcom/google/android/gms/internal/ads/n51;

    move-result-object p2

    .line 4
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/n51;->b(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/n51;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/n51;->a()Lcom/google/android/gms/internal/ads/o51;

    move-result-object p1

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/o51;->b()Lcom/google/android/gms/internal/ads/q51;

    move-result-object p1

    return-object p1
.end method

.method public final c3(Lcom/google/android/gms/dynamic/a;)Lcom/google/android/gms/internal/ads/jd;
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->q1(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->f(Landroid/content/Intent;)Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/r;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/r;-><init>(Landroid/app/Activity;)V

    return-object v0

    .line 4
    :cond_0
    iget v1, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->q:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 5
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/r;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/r;-><init>(Landroid/app/Activity;)V

    return-object v0

    .line 6
    :cond_1
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/u;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/ads/internal/overlay/u;-><init>(Landroid/app/Activity;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-object v1

    .line 7
    :cond_2
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/z;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/z;-><init>(Landroid/app/Activity;)V

    return-object v0

    .line 8
    :cond_3
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/x;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/x;-><init>(Landroid/app/Activity;)V

    return-object v0

    .line 9
    :cond_4
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/s;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/s;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public final f8(Lcom/google/android/gms/dynamic/a;I)Lcom/google/android/gms/internal/ads/fe2;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->q1(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/hu;->t(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/hu;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/hu;->k()Lcom/google/android/gms/internal/ads/ew;

    move-result-object p1

    return-object p1
.end method

.method public final h4(Lcom/google/android/gms/dynamic/a;)Lcom/google/android/gms/internal/ads/td;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final h7(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/ic2;Ljava/lang/String;Lcom/google/android/gms/internal/ads/aa;I)Lcom/google/android/gms/internal/ads/od2;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->q1(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2
    invoke-static {p1, p4, p5}, Lcom/google/android/gms/internal/ads/hu;->b(Landroid/content/Context;Lcom/google/android/gms/internal/ads/aa;I)Lcom/google/android/gms/internal/ads/hu;

    move-result-object p4

    .line 3
    new-instance p5, Lcom/google/android/gms/internal/ads/ru0;

    invoke-direct {p5, p4, p1, p2, p3}, Lcom/google/android/gms/internal/ads/ru0;-><init>(Lcom/google/android/gms/internal/ads/hu;Landroid/content/Context;Lcom/google/android/gms/internal/ads/ic2;Ljava/lang/String;)V

    return-object p5
.end method
