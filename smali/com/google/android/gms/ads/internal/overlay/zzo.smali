.class public final Lcom/google/android/gms/ads/internal/overlay/zzo;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private final a:Landroid/widget/ImageButton;

.field private final b:Lcom/google/android/gms/ads/internal/overlay/zzt;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/ads/internal/overlay/zzt;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/overlay/zzo;->b:Lcom/google/android/gms/ads/internal/overlay/zzt;

    invoke-virtual {p0, p0}, Lcom/google/android/gms/ads/internal/overlay/zzo;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p3, Landroid/widget/ImageButton;

    invoke-direct {p3, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/overlay/zzo;->a:Landroid/widget/ImageButton;

    iget-object p3, p0, Lcom/google/android/gms/ads/internal/overlay/zzo;->a:Landroid/widget/ImageButton;

    const v0, 0x1080017

    invoke-virtual {p3, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object p3, p0, Lcom/google/android/gms/ads/internal/overlay/zzo;->a:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    iget-object p3, p0, Lcom/google/android/gms/ads/internal/overlay/zzo;->a:Landroid/widget/ImageButton;

    invoke-virtual {p3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p3, p0, Lcom/google/android/gms/ads/internal/overlay/zzo;->a:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->a()Lcom/google/android/gms/internal/zzajr;

    iget v1, p2, Lcom/google/android/gms/ads/internal/overlay/zzp;->a:I

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzajr;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->a()Lcom/google/android/gms/internal/zzajr;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzajr;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->a()Lcom/google/android/gms/internal/zzajr;

    iget v2, p2, Lcom/google/android/gms/ads/internal/overlay/zzp;->b:I

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/zzajr;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->a()Lcom/google/android/gms/internal/zzajr;

    iget v3, p2, Lcom/google/android/gms/ads/internal/overlay/zzp;->d:I

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/zzajr;->a(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p3, v1, v0, v2, v3}, Landroid/widget/ImageButton;->setPadding(IIII)V

    iget-object p3, p0, Lcom/google/android/gms/ads/internal/overlay/zzo;->a:Landroid/widget/ImageButton;

    const-string v0, "Interstitial close button"

    invoke-virtual {p3, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->a()Lcom/google/android/gms/internal/zzajr;

    iget p3, p2, Lcom/google/android/gms/ads/internal/overlay/zzp;->e:I

    invoke-static {p1, p3}, Lcom/google/android/gms/internal/zzajr;->a(Landroid/content/Context;I)I

    iget-object p3, p0, Lcom/google/android/gms/ads/internal/overlay/zzo;->a:Landroid/widget/ImageButton;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->a()Lcom/google/android/gms/internal/zzajr;

    iget v1, p2, Lcom/google/android/gms/ads/internal/overlay/zzp;->e:I

    iget v2, p2, Lcom/google/android/gms/ads/internal/overlay/zzp;->a:I

    add-int/2addr v1, v2

    iget v2, p2, Lcom/google/android/gms/ads/internal/overlay/zzp;->b:I

    add-int/2addr v1, v2

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzajr;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->a()Lcom/google/android/gms/internal/zzajr;

    iget v2, p2, Lcom/google/android/gms/ads/internal/overlay/zzp;->e:I

    iget p2, p2, Lcom/google/android/gms/ads/internal/overlay/zzp;->d:I

    add-int/2addr v2, p2

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/zzajr;->a(Landroid/content/Context;I)I

    move-result p1

    const/16 p2, 0x11

    invoke-direct {v0, v1, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, p3, v0}, Lcom/google/android/gms/ads/internal/overlay/zzo;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public final a(ZZ)V
    .locals 0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzo;->a:Landroid/widget/ImageButton;

    const/4 p2, 0x4

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzo;->a:Landroid/widget/ImageButton;

    const/16 p2, 0x8

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzo;->a:Landroid/widget/ImageButton;

    const/4 p2, 0x0

    goto :goto_0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzo;->b:Lcom/google/android/gms/ads/internal/overlay/zzt;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzo;->b:Lcom/google/android/gms/ads/internal/overlay/zzt;

    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/overlay/zzt;->zzmt()V

    :cond_0
    return-void
.end method
