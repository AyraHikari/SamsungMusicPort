.class public Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;
.super Ljava/lang/Object;
.source "CocktailBarManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat$CocktailBarStateChangedListener;
    }
.end annotation


# static fields
.field private static volatile sInstance:Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mParent:Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

.field private mStateChangedListener:Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;->mContext:Landroid/content/Context;

    return-void
.end method

.method private ensureParent()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;->mParent:Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;->mParent:Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;->sInstance:Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;->sInstance:Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;->sInstance:Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;->sInstance:Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;

    return-object p0
.end method


# virtual methods
.method public registerStateListener(Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat$CocktailBarStateChangedListener;)Z
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat$1;-><init>(Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat$CocktailBarStateChangedListener;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;->mStateChangedListener:Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;->ensureParent()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;->mParent:Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

    iget-object v0, p0, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;->mStateChangedListener:Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->registerStateListener(Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public unregisterStateListener(Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat$CocktailBarStateChangedListener;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;->mParent:Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;->mStateChangedListener:Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->unregisterStateListener(Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;)V

    :cond_0
    return-void
.end method
