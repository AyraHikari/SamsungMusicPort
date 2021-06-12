.class public final Lcom/google/android/gms/internal/zzgp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# static fields
.field private static final a:J


# instance fields
.field private final b:Landroid/content/Context;

.field private c:Landroid/app/Application;

.field private final d:Landroid/view/WindowManager;

.field private final e:Landroid/os/PowerManager;

.field private final f:Landroid/app/KeyguardManager;

.field private g:Landroid/content/BroadcastReceiver;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewTreeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/google/android/gms/internal/zzgu;

.field private k:Lcom/google/android/gms/internal/zzaji;

.field private l:Z

.field private m:I

.field private n:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/google/android/gms/internal/zzgt;",
            ">;"
        }
    .end annotation
.end field

.field private o:Landroid/util/DisplayMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zznh;->aZ:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/zzgp;->a:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzaji;

    sget-wide v1, Lcom/google/android/gms/internal/zzgp;->a:J

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzaji;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgp;->k:Lcom/google/android/gms/internal/zzaji;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzgp;->l:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzgp;->m:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgp;->n:Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgp;->b:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgp;->d:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgp;->b:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgp;->e:Landroid/os/PowerManager;

    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgp;->f:Landroid/app/KeyguardManager;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgp;->b:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgp;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgp;->c:Landroid/app/Application;

    new-instance v0, Lcom/google/android/gms/internal/zzgu;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgp;->b:Landroid/content/Context;

    check-cast v1, Landroid/app/Application;

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/zzgu;-><init>(Landroid/app/Application;Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgp;->j:Lcom/google/android/gms/internal/zzgu;

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgp;->o:Landroid/util/DisplayMetrics;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzgp;->i:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzgp;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzgp;->b(Landroid/view/View;)V

    :cond_2
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgp;->i:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->g()Lcom/google/android/gms/internal/zzaht;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzaht;->a(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzgp;->a(Landroid/view/View;)V

    :cond_3
    invoke-virtual {p2, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_4
    return-void
.end method

.method private final a(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzgp;->b(I)I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzgp;->b(I)I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/zzgp;->b(I)I

    move-result v3

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzgp;->b(I)I

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private final a(I)V
    .locals 31

    move-object/from16 v1, p0

    move/from16 v2, p1

    iget-object v0, v1, Lcom/google/android/gms/internal/zzgp;->n:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/internal/zzgp;->i:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, v1, Lcom/google/android/gms/internal/zzgp;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/View;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v4, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_0
    if-nez v3, :cond_3

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :goto_1
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, v1, Lcom/google/android/gms/internal/zzgp;->d:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, v12, Landroid/graphics/Rect;->right:I

    iget-object v0, v1, Lcom/google/android/gms/internal/zzgp;->d:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, v12, Landroid/graphics/Rect;->bottom:I

    const/4 v0, 0x2

    new-array v13, v0, [I

    new-array v0, v0, [I

    if-eqz v3, :cond_4

    invoke-virtual {v3, v9}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v14

    invoke-virtual {v3, v10}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v15

    invoke-virtual {v3, v11}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    :try_start_0
    invoke-virtual {v3, v13}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationInWindow([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v4, "Failure getting view location."

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    aget v0, v13, v5

    iput v0, v8, Landroid/graphics/Rect;->left:I

    const/4 v4, 0x1

    aget v0, v13, v4

    iput v0, v8, Landroid/graphics/Rect;->top:I

    iget v0, v8, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v0, v4

    iput v0, v8, Landroid/graphics/Rect;->right:I

    iget v0, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v14

    move/from16 v27, v15

    goto :goto_3

    :cond_4
    const/16 v25, 0x0

    const/16 v27, 0x0

    :goto_3
    const/16 v0, 0x8

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->getWindowVisibility()I

    move-result v4

    goto :goto_4

    :cond_5
    const/16 v4, 0x8

    :goto_4
    iget v13, v1, Lcom/google/android/gms/internal/zzgp;->m:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_6

    iget v4, v1, Lcom/google/android/gms/internal/zzgp;->m:I

    :cond_6
    if-nez v7, :cond_7

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->e()Lcom/google/android/gms/internal/zzahn;

    move-result-object v7

    iget-object v13, v1, Lcom/google/android/gms/internal/zzgp;->e:Landroid/os/PowerManager;

    iget-object v14, v1, Lcom/google/android/gms/internal/zzgp;->f:Landroid/app/KeyguardManager;

    invoke-virtual {v7, v3, v13, v14}, Lcom/google/android/gms/internal/zzahn;->a(Landroid/view/View;Landroid/os/PowerManager;Landroid/app/KeyguardManager;)Z

    move-result v7

    if-eqz v7, :cond_7

    if-eqz v25, :cond_7

    if-eqz v27, :cond_7

    if-nez v4, :cond_7

    const/4 v4, 0x1

    goto :goto_5

    :cond_7
    const/4 v4, 0x0

    :goto_5
    if-eqz v6, :cond_8

    iget-object v6, v1, Lcom/google/android/gms/internal/zzgp;->k:Lcom/google/android/gms/internal/zzaji;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzaji;->a()Z

    move-result v6

    if-nez v6, :cond_8

    iget-boolean v6, v1, Lcom/google/android/gms/internal/zzgp;->l:Z

    if-ne v4, v6, :cond_8

    return-void

    :cond_8
    if-nez v4, :cond_9

    iget-boolean v6, v1, Lcom/google/android/gms/internal/zzgp;->l:Z

    if-nez v6, :cond_9

    const/4 v6, 0x1

    if-ne v2, v6, :cond_9

    return-void

    :cond_9
    new-instance v2, Lcom/google/android/gms/internal/zzgs;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->k()Lcom/google/android/gms/common/util/zzd;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v17

    iget-object v6, v1, Lcom/google/android/gms/internal/zzgp;->e:Landroid/os/PowerManager;

    invoke-virtual {v6}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v19

    if-eqz v3, :cond_a

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->g()Lcom/google/android/gms/internal/zzaht;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/zzaht;->a(Landroid/view/View;)Z

    move-result v5

    move/from16 v20, v5

    goto :goto_6

    :cond_a
    const/16 v20, 0x0

    :goto_6
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    move/from16 v21, v0

    goto :goto_7

    :cond_b
    const/16 v21, 0x8

    :goto_7
    invoke-direct {v1, v12}, Lcom/google/android/gms/internal/zzgp;->a(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v22

    invoke-direct {v1, v8}, Lcom/google/android/gms/internal/zzgp;->a(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v23

    invoke-direct {v1, v9}, Lcom/google/android/gms/internal/zzgp;->a(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v24

    invoke-direct {v1, v10}, Lcom/google/android/gms/internal/zzgp;->a(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v26

    invoke-direct {v1, v11}, Lcom/google/android/gms/internal/zzgp;->a(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v28

    iget-object v0, v1, Lcom/google/android/gms/internal/zzgp;->o:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move-object/from16 v16, v2

    move/from16 v29, v0

    move/from16 v30, v4

    invoke-direct/range {v16 .. v30}, Lcom/google/android/gms/internal/zzgs;-><init>(JZZILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/graphics/Rect;ZLandroid/graphics/Rect;FZ)V

    iget-object v0, v1, Lcom/google/android/gms/internal/zzgp;->n:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzgt;

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/zzgt;->a(Lcom/google/android/gms/internal/zzgs;)V

    goto :goto_8

    :cond_c
    iput-boolean v4, v1, Lcom/google/android/gms/internal/zzgp;->l:Z

    return-void
.end method

.method private final a(Landroid/app/Activity;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgp;->i:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgp;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    if-ne v0, p1, :cond_2

    iput p2, p0, Lcom/google/android/gms/internal/zzgp;->m:I

    :cond_2
    return-void
.end method

.method private final a(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgp;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzgp;->g:Landroid/content/BroadcastReceiver;

    if-nez p1, :cond_1

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzgr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzgr;-><init>(Lcom/google/android/gms/internal/zzgp;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgp;->g:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->C()Lcom/google/android/gms/internal/zzajn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgp;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgp;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/zzajn;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/zzgp;->c:Landroid/app/Application;

    if-eqz p1, :cond_2

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzgp;->c:Landroid/app/Application;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgp;->j:Lcom/google/android/gms/internal/zzgu;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Error registering activity lifecycle callbacks."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzgp;I)V
    .locals 0

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzgp;->a(I)V

    return-void
.end method

.method private final b(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgp;->o:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    div-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private final b()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->e()Lcom/google/android/gms/internal/zzahn;

    sget-object v0, Lcom/google/android/gms/internal/zzahn;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzgq;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzgq;-><init>(Lcom/google/android/gms/internal/zzgp;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final b(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzgp;->h:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgp;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewTreeObserver;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzgp;->h:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Error while unregistering listeners from the last ViewTreeObserver."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string v1, "Error while unregistering listeners from the ViewTreeObserver."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/zzgp;->g:Landroid/content/BroadcastReceiver;

    if-eqz p1, :cond_3

    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->C()Lcom/google/android/gms/internal/zzajn;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgp;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgp;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/zzajn;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->i()Lcom/google/android/gms/internal/zzaft;

    move-result-object v1

    const-string v2, "ActiveViewUnit.stopScreenStatusMonitoring"

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/zzaft;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_2

    :catch_3
    move-exception p1

    const-string v1, "Failed trying to unregister the receiver"

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    iput-object v0, p0, Lcom/google/android/gms/internal/zzgp;->g:Landroid/content/BroadcastReceiver;

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/zzgp;->c:Landroid/app/Application;

    if-eqz p1, :cond_4

    :try_start_3
    iget-object p1, p0, Lcom/google/android/gms/internal/zzgp;->c:Landroid/app/Application;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgp;->j:Lcom/google/android/gms/internal/zzgu;

    invoke-virtual {p1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p1

    const-string v0, "Error registering activity lifecycle callbacks."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzgp;->a(I)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/zzgt;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgp;->n:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzgp;->a(I)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/zzgt;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgp;->n:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzgp;->a(Landroid/app/Activity;I)V

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzgp;->a(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzgp;->b()V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzgp;->a(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzgp;->b()V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzgp;->a(Landroid/app/Activity;I)V

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzgp;->a(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzgp;->b()V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzgp;->a(Landroid/app/Activity;I)V

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzgp;->a(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzgp;->b()V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzgp;->a(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzgp;->b()V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzgp;->a(Landroid/app/Activity;I)V

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzgp;->a(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzgp;->b()V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzgp;->a(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzgp;->b()V

    return-void
.end method

.method public final onGlobalLayout()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzgp;->a(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzgp;->b()V

    return-void
.end method

.method public final onScrollChanged()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzgp;->a(I)V

    return-void
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzgp;->m:I

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzgp;->a(Landroid/view/View;)V

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzgp;->a(I)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzgp;->m:I

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzgp;->a(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzgp;->b()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzgp;->b(Landroid/view/View;)V

    return-void
.end method
