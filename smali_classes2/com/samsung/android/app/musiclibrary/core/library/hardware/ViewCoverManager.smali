.class public final Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$OnCoverStateChangeListener;,
        Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$Error;,
        Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$ViewCoverType;,
        Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$ViewCoverMode;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static volatile sInstance:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

.field private static sIsSupportCoverSView:Ljava/lang/Boolean;


# instance fields
.field private mCoverAttached:Z

.field private final mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field private mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

.field private mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;

.field private mIsCoverListenerRegistered:Z

.field private final mOnCoverStateChangeListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$OnCoverStateChangeListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->mOnCoverStateChangeListeners:Ljava/util/Set;

    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->mCoverAttached:Z

    .line 130
    new-instance v1, Lcom/samsung/android/sdk/cover/Scover;

    invoke-direct {v1}, Lcom/samsung/android/sdk/cover/Scover;-><init>()V

    .line 132
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/cover/Scover;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 134
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ViewCoverManager initialize failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :goto_0
    new-instance v1, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {v1, p1}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 138
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    .line 139
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    if-nez p1, :cond_0

    .line 140
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->mCoverAttached:Z

    goto :goto_1

    .line 142
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    iget-boolean p1, p1, Lcom/samsung/android/sdk/cover/ScoverState;->attached:Z

    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->mCoverAttached:Z

    .line 144
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->registerCoverListener()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;Lcom/samsung/android/sdk/cover/ScoverState;)Lcom/samsung/android/sdk/cover/ScoverState;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;)Lcom/samsung/android/sdk/cover/ScoverManager;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;Z)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->notifyCoverStateChanged(Z)V

    return-void
.end method

.method static synthetic access$402(Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->mCoverAttached:Z

    return p1
.end method

.method public static createInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;
    .locals 2

    .line 119
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->sInstance:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    if-nez v0, :cond_1

    .line 120
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    monitor-enter v0

    .line 121
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->sInstance:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    if-nez v1, :cond_0

    .line 122
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->sInstance:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    .line 124
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 126
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->sInstance:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    return-object p0
.end method

.method private hasItem(Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$OnCoverStateChangeListener;)Z
    .locals 2
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$OnCoverStateChangeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 202
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->mOnCoverStateChangeListeners:Ljava/util/Set;

    .line 203
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 204
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 205
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 206
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$OnCoverStateChangeListener;

    if-nez v1, :cond_1

    .line 208
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 209
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private isEmpty()Z
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->mOnCoverStateChangeListeners:Ljava/util/Set;

    .line 218
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 219
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 220
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 221
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$OnCoverStateChangeListener;

    if-nez v1, :cond_0

    .line 223
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->mOnCoverStateChangeListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public static isSupportCoverSView(Landroid/content/Context;)Z
    .locals 2

    .line 299
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->sIsSupportCoverSView:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 300
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/music/support/android/content/pm/PackageManagerCompat;->FEATURE_COVER_SVIEW:Ljava/lang/String;

    .line 301
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    .line 300
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->sIsSupportCoverSView:Ljava/lang/Boolean;

    .line 303
    :cond_0
    sget-object p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSupportCoverSView() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->sIsSupportCoverSView:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    sget-object p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->sIsSupportCoverSView:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private notifyCoverStateChanged(Z)V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->mOnCoverStateChangeListeners:Ljava/util/Set;

    .line 231
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 232
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 234
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$OnCoverStateChangeListener;

    if-nez v1, :cond_0

    .line 236
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 238
    :cond_0
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$OnCoverStateChangeListener;->onCoverStateChanged(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private registerCoverListener()V
    .locals 2

    .line 148
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->mIsCoverListenerRegistered:Z

    if-eqz v0, :cond_0

    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;

    if-nez v0, :cond_1

    .line 152
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;

    :cond_1
    const/4 v0, 0x1

    .line 169
    :try_start_0
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->mIsCoverListenerRegistered:Z

    .line 170
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 172
    invoke-virtual {v0}, Lcom/samsung/android/sdk/SsdkUnsupportedException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public addOnCoverStateChangeListener(Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$OnCoverStateChangeListener;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 180
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->hasItem(Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$OnCoverStateChangeListener;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->mOnCoverStateChangeListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 184
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->registerCoverListener()V

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->mOnCoverStateChangeListeners:Ljava/util/Set;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCoverHeight()I
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getWindowHeight()I

    move-result v0

    return v0
.end method

.method public getCoverType()I
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    return v0

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v0

    return v0
.end method

.method public getCoverWidth()I
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getWindowWidth()I

    move-result v0

    return v0
.end method

.method public isAttached()Z
    .locals 1

    .line 274
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->mCoverAttached:Z

    return v0
.end method

.method public isCoverOpened()Z
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 2

    .line 244
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->mIsCoverListenerRegistered:Z

    if-nez v0, :cond_0

    return-void

    .line 248
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 253
    :cond_1
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "ViewCoverManager released"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 254
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->mIsCoverListenerRegistered:Z

    .line 255
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 257
    invoke-virtual {v0}, Lcom/samsung/android/sdk/SsdkUnsupportedException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    .line 259
    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->sInstance:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    return-void
.end method

.method public removeOnCoverStateChangeListener(Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$OnCoverStateChangeListener;)V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->mOnCoverStateChangeListeners:Ljava/util/Set;

    .line 191
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 192
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 193
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 194
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$OnCoverStateChangeListener;

    if-eqz v1, :cond_1

    .line 195
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setCoverMode(Landroid/view/Window;I)V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/cover/ScoverManager;->setCoverModeToWindow(Landroid/view/Window;I)V

    return-void
.end method
