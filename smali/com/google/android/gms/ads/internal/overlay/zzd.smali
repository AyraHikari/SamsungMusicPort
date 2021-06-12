.class public final Lcom/google/android/gms/ads/internal/overlay/zzd;
.super Lcom/google/android/gms/internal/zzxf;

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzt;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# static fields
.field private static zzchx:I


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private zzbyk:Lcom/google/android/gms/internal/zzanh;

.field zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

.field private zzchz:Lcom/google/android/gms/ads/internal/overlay/zzi;

.field private zzcia:Lcom/google/android/gms/ads/internal/overlay/zzo;

.field private zzcib:Z

.field private zzcic:Landroid/widget/FrameLayout;

.field private zzcid:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private zzcie:Z

.field private zzcif:Z

.field private zzcig:Lcom/google/android/gms/ads/internal/overlay/zzh;

.field private zzcih:Z

.field private zzcii:I

.field private final zzcij:Ljava/lang/Object;

.field private zzcik:Ljava/lang/Runnable;

.field private zzcil:Z

.field private zzcim:Z

.field private zzcin:Z

.field private zzcio:Z

.field private zzcip:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchx:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzxf;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcib:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcie:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcif:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcih:Z

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcii:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcij:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcin:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcio:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcip:Z

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/overlay/zzd;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private final zzmw()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcin:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcin:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcii:I

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzanh;->a(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcij:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcil:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzanh;->D()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzf;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/overlay/zzf;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzd;)V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcik:Ljava/lang/Runnable;

    sget-object v1, Lcom/google/android/gms/internal/zzahn;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcik:Ljava/lang/Runnable;

    sget-object v3, Lcom/google/android/gms/internal/zznh;->aC:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v0

    return-void

    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzmx()V

    :cond_3
    :goto_1
    return-void
.end method

.method private final zzmz()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzanh;->n()V

    return-void
.end method

.method private final zzr(Z)V
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/zznh;->cI:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzp;

    invoke-direct {v1}, Lcom/google/android/gms/ads/internal/overlay/zzp;-><init>()V

    const/16 v2, 0x32

    iput v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzp;->e:I

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput v3, v1, Lcom/google/android/gms/ads/internal/overlay/zzp;->a:I

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    iput v3, v1, Lcom/google/android/gms/ads/internal/overlay/zzp;->b:I

    iput v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzp;->c:I

    iput v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzp;->d:I

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzo;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v1, p0}, Lcom/google/android/gms/ads/internal/overlay/zzo;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/ads/internal/overlay/zzt;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcia:Lcom/google/android/gms/ads/internal/overlay/zzo;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    if-eqz p1, :cond_2

    const/16 v1, 0xb

    goto :goto_2

    :cond_2
    const/16 v1, 0x9

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->g:Z

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zza(ZZ)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcig:Lcom/google/android/gms/ads/internal/overlay/zzh;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcia:Lcom/google/android/gms/ads/internal/overlay/zzo;

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzh;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final zzs(Z)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/ads/internal/overlay/zzg;
        }
    .end annotation

    move-object/from16 v1, p0

    iget-boolean v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcim:Z

    const/4 v3, 0x1

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->requestWindowFeature(I)Z

    :cond_0
    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_1a

    invoke-static {}, Lcom/google/android/gms/common/util/zzq;->isAtLeastN()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/google/android/gms/internal/zznh;->cG:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->e()Lcom/google/android/gms/internal/zzahn;

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/zzahn;->a(Landroid/app/Activity;Landroid/content/res/Configuration;)Z

    move-result v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    :goto_0
    iget-object v5, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->o:Lcom/google/android/gms/ads/internal/zzao;

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->o:Lcom/google/android/gms/ads/internal/zzao;

    iget-boolean v5, v5, Lcom/google/android/gms/ads/internal/zzao;->c:Z

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    iget-boolean v7, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcif:Z

    if-eqz v7, :cond_3

    if-eqz v5, :cond_4

    :cond_3
    if-eqz v4, :cond_4

    const/16 v4, 0x400

    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    sget-object v4, Lcom/google/android/gms/internal/zznh;->aD:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/google/android/gms/common/util/zzq;->zzaml()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->o:Lcom/google/android/gms/ads/internal/zzao;

    if-eqz v4, :cond_4

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->o:Lcom/google/android/gms/ads/internal/zzao;

    iget-boolean v4, v4, Lcom/google/android/gms/ads/internal/zzao;->g:Z

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x1002

    invoke-virtual {v4, v5}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_4
    iget-object v4, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:Lcom/google/android/gms/internal/zzanh;

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v4}, Lcom/google/android/gms/internal/zzanh;->u()Lcom/google/android/gms/internal/zzani;

    move-result-object v4

    goto :goto_2

    :cond_5
    move-object v4, v5

    :goto_2
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzani;->b()Z

    move-result v4

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    :goto_3
    iput-boolean v6, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcih:Z

    if-eqz v4, :cond_9

    iget-object v7, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v7, v7, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->j:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->g()Lcom/google/android/gms/internal/zzaht;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzaht;->a()I

    move-result v8

    if-ne v7, v8, :cond_8

    iget-object v7, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v3, :cond_7

    :goto_4
    const/4 v6, 0x1

    :cond_7
    iput-boolean v6, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcih:Z

    goto :goto_5

    :cond_8
    iget-object v7, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v7, v7, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->j:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->g()Lcom/google/android/gms/internal/zzaht;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzaht;->b()I

    move-result v8

    if-ne v7, v8, :cond_9

    iget-object v7, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_7

    goto :goto_4

    :cond_9
    :goto_5
    iget-boolean v6, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcih:Z

    const/16 v7, 0x2e

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Delay onShow to next orientation change: "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v6, v6, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->j:I

    invoke-virtual {v1, v6}, Lcom/google/android/gms/ads/internal/overlay/zzd;->setRequestedOrientation(I)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->g()Lcom/google/android/gms/internal/zzaht;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/zzaht;->a(Landroid/view/Window;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "Hardware acceleration on the AdActivity window enabled."

    invoke-static {v2}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;)V

    :cond_a
    iget-boolean v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcif:Z

    if-nez v2, :cond_b

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcig:Lcom/google/android/gms/ads/internal/overlay/zzh;

    const/high16 v6, -0x1000000

    :goto_6
    invoke-virtual {v2, v6}, Lcom/google/android/gms/ads/internal/overlay/zzh;->setBackgroundColor(I)V

    goto :goto_7

    :cond_b
    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcig:Lcom/google/android/gms/ads/internal/overlay/zzh;

    sget v6, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchx:I

    goto :goto_6

    :goto_7
    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    iget-object v6, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcig:Lcom/google/android/gms/ads/internal/overlay/zzh;

    invoke-virtual {v2, v6}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    iput-boolean v3, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcim:Z

    if-eqz p1, :cond_12

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->f()Lcom/google/android/gms/internal/zzanr;

    move-result-object v7

    iget-object v8, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:Lcom/google/android/gms/internal/zzanh;

    if-eqz v2, :cond_c

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzanh;->s()Lcom/google/android/gms/internal/zzapa;

    move-result-object v2

    move-object v9, v2

    goto :goto_8

    :cond_c
    move-object v9, v5

    :goto_8
    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:Lcom/google/android/gms/internal/zzanh;

    if-eqz v2, :cond_d

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzanh;->t()Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    goto :goto_9

    :cond_d
    move-object v10, v5

    :goto_9
    const/4 v11, 0x1

    const/4 v13, 0x0

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v14, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->m:Lcom/google/android/gms/internal/zzakd;

    const/4 v15, 0x0

    const/16 v16, 0x0

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:Lcom/google/android/gms/internal/zzanh;

    if-eqz v2, :cond_e

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzanh;->e()Lcom/google/android/gms/ads/internal/zzv;

    move-result-object v2

    move-object/from16 v17, v2

    goto :goto_a

    :cond_e
    move-object/from16 v17, v5

    :goto_a
    invoke-static {}, Lcom/google/android/gms/internal/zzis;->a()Lcom/google/android/gms/internal/zzis;

    move-result-object v18

    move v12, v4

    invoke-virtual/range {v7 .. v18}, Lcom/google/android/gms/internal/zzanr;->a(Landroid/content/Context;Lcom/google/android/gms/internal/zzapa;Ljava/lang/String;ZZLcom/google/android/gms/internal/zzcv;Lcom/google/android/gms/internal/zzakd;Lcom/google/android/gms/internal/zznu;Lcom/google/android/gms/ads/internal/zzbl;Lcom/google/android/gms/ads/internal/zzv;Lcom/google/android/gms/internal/zzis;)Lcom/google/android/gms/internal/zzanh;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbyk:Lcom/google/android/gms/internal/zzanh;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzanh;->u()Lcom/google/android/gms/internal/zzani;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v9, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->e:Lcom/google/android/gms/ads/internal/gmsg/zzb;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v10, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->i:Lcom/google/android/gms/ads/internal/overlay/zzq;

    const/4 v11, 0x1

    const/4 v12, 0x0

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:Lcom/google/android/gms/internal/zzanh;

    if-eqz v2, :cond_f

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzanh;->u()Lcom/google/android/gms/internal/zzani;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzani;->a()Lcom/google/android/gms/ads/internal/zzw;

    move-result-object v2

    move-object v13, v2

    goto :goto_b

    :cond_f
    move-object v13, v5

    :goto_b
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v6 .. v15}, Lcom/google/android/gms/internal/zzani;->a(Lcom/google/android/gms/internal/zzje;Lcom/google/android/gms/ads/internal/overlay/zzn;Lcom/google/android/gms/ads/internal/gmsg/zzb;Lcom/google/android/gms/ads/internal/overlay/zzq;ZLcom/google/android/gms/ads/internal/gmsg/zzx;Lcom/google/android/gms/ads/internal/zzw;Lcom/google/android/gms/internal/zzxc;Lcom/google/android/gms/internal/zzafb;)V

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzanh;->u()Lcom/google/android/gms/internal/zzani;

    move-result-object v2

    new-instance v6, Lcom/google/android/gms/ads/internal/overlay/zze;

    invoke-direct {v6, v1}, Lcom/google/android/gms/ads/internal/overlay/zze;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzd;)V

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/zzani;->a(Lcom/google/android/gms/internal/zzanm;)V

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->l:Ljava/lang/String;

    if-eqz v2, :cond_10

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    iget-object v6, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->l:Ljava/lang/String;

    invoke-interface {v2, v6}, Lcom/google/android/gms/internal/zzanh;->loadUrl(Ljava/lang/String;)V

    goto :goto_c

    :cond_10
    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->h:Ljava/lang/String;

    if-eqz v2, :cond_11

    iget-object v6, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v7, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->f:Ljava/lang/String;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v8, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->h:Ljava/lang/String;

    const-string v9, "text/html"

    const-string v10, "UTF-8"

    const/4 v11, 0x0

    invoke-interface/range {v6 .. v11}, Lcom/google/android/gms/internal/zzanh;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_c
    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:Lcom/google/android/gms/internal/zzanh;

    if-eqz v2, :cond_13

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/zzanh;->b(Lcom/google/android/gms/ads/internal/overlay/zzd;)V

    goto :goto_d

    :cond_11
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzg;

    const-string v2, "No URL or HTML to display in ad overlay."

    invoke-direct {v0, v2}, Lcom/google/android/gms/ads/internal/overlay/zzg;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    const-string v2, "Error obtaining webview."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzg;

    const-string v2, "Could not obtain webview for the overlay."

    invoke-direct {v0, v2}, Lcom/google/android/gms/ads/internal/overlay/zzg;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:Lcom/google/android/gms/internal/zzanh;

    iput-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    iget-object v6, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-interface {v2, v6}, Lcom/google/android/gms/internal/zzanh;->a(Landroid/content/Context;)V

    :cond_13
    :goto_d
    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/zzanh;->a(Lcom/google/android/gms/ads/internal/overlay/zzd;)V

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzanh;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_15

    instance-of v6, v2, Landroid/view/ViewGroup;

    if-eqz v6, :cond_15

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v6, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    if-eqz v6, :cond_14

    check-cast v6, Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_e

    :cond_14
    throw v5

    :cond_15
    :goto_e
    iget-boolean v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcif:Z

    if-eqz v2, :cond_16

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzanh;->I()V

    :cond_16
    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcig:Lcom/google/android/gms/ads/internal/overlay/zzh;

    iget-object v6, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    if-eqz v6, :cond_19

    check-cast v6, Landroid/view/View;

    const/4 v5, -0x1

    invoke-virtual {v2, v6, v5, v5}, Lcom/google/android/gms/ads/internal/overlay/zzh;->addView(Landroid/view/View;II)V

    if-nez p1, :cond_17

    iget-boolean v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcih:Z

    if-nez v0, :cond_17

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzmz()V

    :cond_17
    invoke-direct {v1, v4}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzr(Z)V

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzanh;->v()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zza(ZZ)V

    :cond_18
    return-void

    :cond_19
    throw v5

    :cond_1a
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzg;

    const-string v2, "Invalid activity, no window available."

    invoke-direct {v0, v2}, Lcom/google/android/gms/ads/internal/overlay/zzg;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final close()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcii:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcii:I

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v2, "com.google.android.gms.ads.internal.overlay.hasResumed"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcie:Z

    const/4 v2, 0x3

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->a(Landroid/content/Intent;)Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->m:Lcom/google/android/gms/internal/zzakd;

    iget v3, v3, Lcom/google/android/gms/internal/zzakd;->d:I

    const v4, 0x7270e0

    if-le v3, v4, :cond_1

    iput v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcii:I

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "shouldCallOnOverlayOpened"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcip:Z

    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->o:Lcom/google/android/gms/ads/internal/zzao;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->o:Lcom/google/android/gms/ads/internal/zzao;

    iget-boolean v3, v3, Lcom/google/android/gms/ads/internal/zzao;->b:Z

    iput-boolean v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcif:Z

    goto :goto_1

    :cond_3
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcif:Z

    :goto_1
    sget-object v3, Lcom/google/android/gms/internal/zznh;->bE:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcif:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->o:Lcom/google/android/gms/ads/internal/zzao;

    iget v3, v3, Lcom/google/android/gms/ads/internal/zzao;->f:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    new-instance v3, Lcom/google/android/gms/ads/internal/overlay/zzj;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/google/android/gms/ads/internal/overlay/zzj;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzd;Lcom/google/android/gms/ads/internal/overlay/zze;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzagb;->h()Lcom/google/android/gms/internal/zzakv;

    :cond_4
    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->c:Lcom/google/android/gms/ads/internal/overlay/zzn;

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcip:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->c:Lcom/google/android/gms/ads/internal/overlay/zzn;

    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/overlay/zzn;->zzch()V

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->k:I

    if-eq p1, v1, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->b:Lcom/google/android/gms/internal/zzje;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->b:Lcom/google/android/gms/internal/zzje;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzje;->onAdClicked()V

    :cond_6
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzh;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->n:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->m:Lcom/google/android/gms/internal/zzakd;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzakd;->b:Ljava/lang/String;

    invoke-direct {p1, v3, v4, v5}, Lcom/google/android/gms/ads/internal/overlay/zzh;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcig:Lcom/google/android/gms/ads/internal/overlay/zzh;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcig:Lcom/google/android/gms/ads/internal/overlay/zzh;

    const/16 v3, 0x3e8

    invoke-virtual {p1, v3}, Lcom/google/android/gms/ads/internal/overlay/zzh;->setId(I)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->k:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzg;

    goto :goto_2

    :pswitch_0
    iget-boolean p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcie:Z

    if-eqz p1, :cond_7

    iput v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcii:I

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->b()Lcom/google/android/gms/ads/internal/overlay/zza;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->a:Lcom/google/android/gms/ads/internal/overlay/zzc;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->i:Lcom/google/android/gms/ads/internal/overlay/zzq;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zza;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/zzc;Lcom/google/android/gms/ads/internal/overlay/zzq;)Z

    move-result p1

    if-nez p1, :cond_8

    iput v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcii:I

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_8
    return-void

    :pswitch_1
    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzs(Z)V

    return-void

    :pswitch_2
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzi;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:Lcom/google/android/gms/internal/zzanh;

    invoke-direct {p1, v1}, Lcom/google/android/gms/ads/internal/overlay/zzi;-><init>(Lcom/google/android/gms/internal/zzanh;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchz:Lcom/google/android/gms/ads/internal/overlay/zzi;

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzs(Z)V

    return-void

    :pswitch_3
    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzs(Z)V

    return-void

    :goto_2
    const-string v0, "Could not determine ad overlay type."

    invoke-direct {p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzg;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzg;

    const-string v0, "Could not get info for ad overlay."

    invoke-direct {p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzg;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/google/android/gms/ads/internal/overlay/zzg; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/overlay/zzg;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    iput v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcii:I

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcig:Lcom/google/android/gms/ads/internal/overlay/zzh;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    if-eqz v1, :cond_0

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzh;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    throw v0

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzmw()V

    return-void
.end method

.method public final onPause()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzms()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->c:Lcom/google/android/gms/ads/internal/overlay/zzn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->c:Lcom/google/android/gms/ads/internal/overlay/zzn;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzn;->onPause()V

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zznh;->cH:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchz:Lcom/google/android/gms/ads/internal/overlay/zzi;

    if-nez v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->g()Lcom/google/android/gms/internal/zzaht;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaht;->a(Lcom/google/android/gms/internal/zzanh;)Z

    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzmw()V

    return-void
.end method

.method public final onRestart()V
    .locals 0

    return-void
.end method

.method public final onResume()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->k:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcie:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcii:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcie:Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->c:Lcom/google/android/gms/ads/internal/overlay/zzn;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->c:Lcom/google/android/gms/ads/internal/overlay/zzn;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzn;->onResume()V

    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/zznh;->cH:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzanh;->z()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->g()Lcom/google/android/gms/internal/zzaht;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaht;->b(Lcom/google/android/gms/internal/zzanh;)Z

    return-void

    :cond_3
    const-string v0, "The webview does not exist. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "com.google.android.gms.ads.internal.overlay.hasResumed"

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcie:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onStart()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zznh;->cH:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzanh;->z()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->g()Lcom/google/android/gms/internal/zzaht;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaht;->b(Lcom/google/android/gms/internal/zzanh;)Z

    return-void

    :cond_0
    const-string v0, "The webview does not exist. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onStop()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zznh;->cH:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchz:Lcom/google/android/gms/ads/internal/overlay/zzi;

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->g()Lcom/google/android/gms/internal/zzaht;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaht;->a(Lcom/google/android/gms/internal/zzanh;)Z

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzmw()V

    return-void
.end method

.method public final setRequestedOrientation(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public final zza(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcic:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcic:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcic:Landroid/widget/FrameLayout;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcic:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcim:Z

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcid:Landroid/webkit/WebChromeClient$CustomViewCallback;

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcib:Z

    return-void
.end method

.method public final zza(ZZ)V
    .locals 6

    sget-object v0, Lcom/google/android/gms/internal/zznh;->aE:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->o:Lcom/google/android/gms/ads/internal/zzao;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->o:Lcom/google/android/gms/ads/internal/zzao;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/zzao;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    new-instance v3, Lcom/google/android/gms/internal/zzxb;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    const-string v5, "useCustomClose"

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/internal/zzxb;-><init>(Lcom/google/android/gms/internal/zzanh;Ljava/lang/String;)V

    const-string v4, "Custom close has been disabled for interstitial ads in this ad slot."

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzxb;->a(Ljava/lang/String;)V

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcia:Lcom/google/android/gms/ads/internal/overlay/zzo;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcia:Lcom/google/android/gms/ads/internal/overlay/zzo;

    if-eqz p2, :cond_2

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v3, p1, v1}, Lcom/google/android/gms/ads/internal/overlay/zzo;->a(ZZ)V

    :cond_3
    return-void
.end method

.method public final zzbf()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcim:Z

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zznh;->cG:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/common/util/zzq;->isAtLeastN()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzn;->zzx(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/Configuration;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->e()Lcom/google/android/gms/internal/zzahn;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzahn;->a(Landroid/app/Activity;Landroid/content/res/Configuration;)Z

    move-result p1

    const/16 v0, 0x800

    const/16 v1, 0x400

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_1
    return-void
.end method

.method public final zzms()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcib:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->j:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->setRequestedOrientation(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcic:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcig:Lcom/google/android/gms/ads/internal/overlay/zzh;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcim:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcic:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcic:Landroid/widget/FrameLayout;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcid:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcid:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcid:Landroid/webkit/WebChromeClient$CustomViewCallback;

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcib:Z

    return-void
.end method

.method public final zzmt()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcii:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final zzmu()Z
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcii:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzanh;->B()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    const-string v2, "onbackblocked"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/zzanh;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return v0
.end method

.method public final zzmv()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcig:Lcom/google/android/gms/ads/internal/overlay/zzh;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcia:Lcom/google/android/gms/ads/internal/overlay/zzo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzh;->removeView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzr(Z)V

    return-void
.end method

.method final zzmx()V
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcio:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcio:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcig:Lcom/google/android/gms/ads/internal/overlay/zzh;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzh;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchz:Lcom/google/android/gms/ads/internal/overlay/zzi;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchz:Lcom/google/android/gms/ads/internal/overlay/zzi;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/zzi;->d:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzanh;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzanh;->b(Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchz:Lcom/google/android/gms/ads/internal/overlay/zzi;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/zzi;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    if-eqz v1, :cond_1

    check-cast v1, Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchz:Lcom/google/android/gms/ads/internal/overlay/zzi;

    iget v3, v3, Lcom/google/android/gms/ads/internal/overlay/zzi;->a:I

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchz:Lcom/google/android/gms/ads/internal/overlay/zzi;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/zzi;->b:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchz:Lcom/google/android/gms/ads/internal/overlay/zzi;

    goto :goto_0

    :cond_1
    throw v2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzanh;->a(Landroid/content/Context;)V

    :cond_3
    :goto_0
    iput-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    goto :goto_1

    :cond_4
    throw v2

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->c:Lcom/google/android/gms/ads/internal/overlay/zzn;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzchy:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->c:Lcom/google/android/gms/ads/internal/overlay/zzn;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzn;->zzcg()V

    :cond_6
    return-void
.end method

.method public final zzmy()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcih:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcih:Z

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzmz()V

    :cond_0
    return-void
.end method

.method public final zzna()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcig:Lcom/google/android/gms/ads/internal/overlay/zzh;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzh;->a:Z

    return-void
.end method

.method public final zznb()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcij:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcil:Z

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcik:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/zzahn;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcik:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v1, Lcom/google/android/gms/internal/zzahn;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzcik:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

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
