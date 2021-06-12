.class public Lcom/samsung/android/sdk/cover/ScoverManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;,
        Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;,
        Lcom/samsung/android/sdk/cover/ScoverManager$ScoverStateListener;,
        Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;,
        Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;
    }
.end annotation


# static fields
.field public static final COVER_MODE_HIDE_SVIEW_ONCE:I = 0x2

.field public static final COVER_MODE_NONE:I = 0x0

.field public static final COVER_MODE_SVIEW:I = 0x1

.field private static final FEATURE_COVER_FLIP:Ljava/lang/String; = "com.sec.feature.cover.flip"

.field private static final FEATURE_COVER_SVIEW:Ljava/lang/String; = "com.sec.feature.cover.sview"

.field static final SDK_VERSION:I = 0x1010000

.field private static final TAG:Ljava/lang/String; = "ScoverManager"

.field private static sIsFilpCoverSystemFeatureEnabled:Z = false

.field private static sIsSViewCoverSystemFeatureEnabled:Z = false

.field private static sIsSystemFeatureQueried:Z = false

.field private static sServiceVersion:I = 0x1000000


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/samsung/android/cover/ICoverManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 85
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 148
    iput-object p1, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    .line 149
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->initSystemFeature()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/cover/ScoverManager;)Landroid/content/Context;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private declared-synchronized getService()Lcom/samsung/android/cover/ICoverManager;
    .locals 2

    monitor-enter p0

    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mService:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    const-string v0, "cover"

    .line 265
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mService:Lcom/samsung/android/cover/ICoverManager;

    .line 266
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mService:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    const-string v0, "ScoverManager"

    const-string v1, "warning: no COVER_MANAGER_SERVICE"

    .line 267
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mService:Lcom/samsung/android/cover/ICoverManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 263
    monitor-exit p0

    throw v0
.end method

.method private initSystemFeature()V
    .locals 2

    .line 156
    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSystemFeatureQueried:Z

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.cover.flip"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsFilpCoverSystemFeatureEnabled:Z

    .line 159
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.cover.sview"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSViewCoverSystemFeatureEnabled:Z

    const/4 v0, 0x1

    .line 161
    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSystemFeatureQueried:Z

    .line 162
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverManagerVersion()I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sServiceVersion:I

    :cond_0
    return-void
.end method


# virtual methods
.method public checkValidPacakge(Ljava/lang/String;)Z
    .locals 4

    .line 597
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "ScoverManager"

    const-string v0, "checkValidPacakge : This device is not supported cover"

    .line 598
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "ScoverManager"

    const-string v0, "checkValidPacakge : pkg is null"

    .line 603
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 608
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 610
    invoke-interface {v0}, Lcom/samsung/android/cover/ICoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 611
    iget-boolean v2, v0, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-eqz v2, :cond_2

    .line 612
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSmartCoverAppUri()Ljava/lang/String;

    move-result-object v0

    .line 613
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 614
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v3

    :cond_2
    const-string p1, "ScoverManager"

    const-string v0, "checkValidPacakge : coverState is null or cover is detached"

    .line 619
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ScoverManager"

    const-string v2, "RemoteException in checkCoverAppUri: "

    .line 623
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    return v1
.end method

.method getCoverManagerVersion()I
    .locals 4

    .line 224
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    :try_start_0
    const-class v0, Lcom/samsung/android/cover/ICoverManager;

    const-string v1, "getVersion"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 227
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ScoverManager"

    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVersion failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/high16 v0, 0x1000000

    :goto_0
    const-string v1, "ScoverManager"

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serviceVersion : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;
    .locals 11

    .line 551
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "ScoverManager"

    const-string v2, "getCoverState : This device is not supported cover"

    .line 552
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 556
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 558
    invoke-interface {v0}, Lcom/samsung/android/cover/ICoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 560
    iget v2, v0, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v3, 0xff

    if-ne v2, v3, :cond_1

    iget-boolean v2, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez v2, :cond_1

    const-string v0, "ScoverManager"

    const-string v2, "getCoverState : type of cover is nfc smart cover and cover is closed"

    .line 561
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    const/high16 v2, 0x1020000

    .line 565
    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 566
    new-instance v2, Lcom/samsung/android/sdk/cover/ScoverState;

    iget-boolean v4, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget v5, v0, Lcom/samsung/android/cover/CoverState;->type:I

    iget v6, v0, Lcom/samsung/android/cover/CoverState;->color:I

    iget v7, v0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iget v8, v0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iget-boolean v9, v0, Lcom/samsung/android/cover/CoverState;->attached:Z

    iget v10, v0, Lcom/samsung/android/cover/CoverState;->model:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lcom/samsung/android/sdk/cover/ScoverState;-><init>(ZIIIIZI)V

    goto :goto_0

    :cond_2
    const/high16 v2, 0x1010000

    .line 570
    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 571
    new-instance v2, Lcom/samsung/android/sdk/cover/ScoverState;

    iget-boolean v4, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget v5, v0, Lcom/samsung/android/cover/CoverState;->type:I

    iget v6, v0, Lcom/samsung/android/cover/CoverState;->color:I

    iget v7, v0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iget v8, v0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iget-boolean v9, v0, Lcom/samsung/android/cover/CoverState;->attached:Z

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/sdk/cover/ScoverState;-><init>(ZIIIIZ)V

    goto :goto_0

    .line 575
    :cond_3
    new-instance v8, Lcom/samsung/android/sdk/cover/ScoverState;

    iget-boolean v3, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget v4, v0, Lcom/samsung/android/cover/CoverState;->type:I

    iget v5, v0, Lcom/samsung/android/cover/CoverState;->color:I

    iget v6, v0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iget v7, v0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/sdk/cover/ScoverState;-><init>(ZIIII)V

    move-object v2, v8

    :goto_0
    return-object v2

    :cond_4
    const-string v0, "ScoverManager"

    const-string v2, "getCoverState : coverState is null"

    .line 581
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "ScoverManager"

    const-string v3, "RemoteException in getCoverState: "

    .line 585
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_1
    return-object v1
.end method

.method public getServiceVersionName()Ljava/lang/String;
    .locals 6

    .line 237
    sget v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sServiceVersion:I

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    .line 238
    sget v1, Lcom/samsung/android/sdk/cover/ScoverManager;->sServiceVersion:I

    shr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    .line 239
    sget v2, Lcom/samsung/android/sdk/cover/ScoverManager;->sServiceVersion:I

    const v3, 0xffff

    and-int/2addr v2, v3

    const-string v3, "%d.%d.%d"

    const/4 v4, 0x3

    .line 241
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v4, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method isSmartCover()Z
    .locals 2

    .line 184
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 186
    iget v0, v0, Lcom/samsung/android/sdk/cover/ScoverState;->type:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isSupportCover()Z
    .locals 1

    .line 173
    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsFilpCoverSystemFeatureEnabled:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSViewCoverSystemFeatureEnabled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method isSupportSViewCover()Z
    .locals 1

    .line 200
    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSViewCoverSystemFeatureEnabled:Z

    return v0
.end method

.method isSupportTypeOfCover(I)Z
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 213
    :pswitch_0
    sget-boolean p1, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsFilpCoverSystemFeatureEnabled:Z

    return p1

    .line 216
    :cond_0
    :pswitch_1
    sget-boolean p1, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSViewCoverSystemFeatureEnabled:Z

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method isSupportableVersion(I)Z
    .locals 6

    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    const v2, 0xffff

    and-int/2addr p1, v2

    .line 248
    sget v3, Lcom/samsung/android/sdk/cover/ScoverManager;->sServiceVersion:I

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    .line 249
    sget v4, Lcom/samsung/android/sdk/cover/ScoverManager;->sServiceVersion:I

    shr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    .line 250
    sget v5, Lcom/samsung/android/sdk/cover/ScoverManager;->sServiceVersion:I

    and-int/2addr v2, v5

    if-lt v3, v0, :cond_0

    if-lt v4, v1, :cond_0

    if-lt v2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    const-string v0, "ScoverManager"

    const-string v1, "registerListener"

    .line 369
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "ScoverManager"

    const-string v0, "registerListener : This device is not supported cover"

    .line 371
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 375
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSmartCover()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "ScoverManager"

    const-string v0, "registerListener : If cover is smart cover, it does not need to register listener of intenal App"

    .line 376
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/high16 v0, 0x1010000

    .line 380
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_7

    if-nez p1, :cond_2

    const-string p1, "ScoverManager"

    const-string v0, "registerListener : listener is null"

    .line 387
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 393
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 394
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 395
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;

    .line 396
    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;->getListener()Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_4
    move-object v2, v3

    :goto_0
    if-nez v2, :cond_5

    .line 403
    new-instance v2, Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;

    invoke-direct {v2, p0, p1, v3}, Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;-><init>(Lcom/samsung/android/sdk/cover/ScoverManager;Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;Landroid/os/Handler;)V

    .line 404
    iget-object p1, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    :cond_5
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 410
    new-instance v0, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_6

    .line 413
    invoke-interface {p1, v2, v0, v1}, Lcom/samsung/android/cover/ICoverManager;->registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "ScoverManager"

    const-string v1, "RemoteException in registerListener: "

    .line 418
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_1
    return-void

    .line 381
    :cond_7
    new-instance p1, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const-string v0, "This device is not supported this function. Device is must higher then v1.1.0"

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$ScoverStateListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string p1, "ScoverManager"

    const-string v0, "registerListener : Use deprecated API!! Change ScoverStateListener to StateListener"

    .line 304
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V
    .locals 4

    const-string v0, "ScoverManager"

    const-string v1, "registerListener"

    .line 314
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "ScoverManager"

    const-string v0, "registerListener : This device is not supported cover"

    .line 316
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 320
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSmartCover()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "ScoverManager"

    const-string v0, "registerListener : If cover is smart cover, it does not need to register listener of intenal App"

    .line 321
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-nez p1, :cond_2

    const-string p1, "ScoverManager"

    const-string v0, "registerListener : listener is null"

    .line 326
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 332
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 333
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 334
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;

    .line 335
    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;->getListener()Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_4
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_5

    .line 342
    new-instance v1, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;-><init>(Lcom/samsung/android/sdk/cover/ScoverManager;Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;Landroid/os/Handler;)V

    .line 343
    iget-object p1, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    :cond_5
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 349
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_6

    .line 352
    invoke-interface {p1, v1, v0}, Lcom/samsung/android/cover/ICoverManager;->registerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "ScoverManager"

    const-string v1, "RemoteException in registerListener: "

    .line 356
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_1
    return-void
.end method

.method public sendDataToCover(I[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    .line 637
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "ScoverManager"

    const-string p2, "sendDataToCover : This device is not supported cover"

    .line 638
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 642
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSmartCover()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "ScoverManager"

    const-string p2, "sendDataToCover : If cover is smart cover, it does not need to send the data to cover"

    .line 643
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/high16 v0, 0x1020000

    .line 647
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 652
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 655
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/cover/ICoverManager;->sendDataToCover(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "ScoverManager"

    const-string v0, "RemoteException in sendData : "

    .line 657
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void

    .line 648
    :cond_3
    new-instance p1, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const/4 p2, 0x2

    const-string v0, "This device is not supported this function. Device is must higher then v1.2.0"

    invoke-direct {p1, v0, p2}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public setCoverModeToWindow(Landroid/view/Window;I)V
    .locals 1

    .line 284
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportSViewCover()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "ScoverManager"

    const-string p2, "setSViewCoverModeToWindow : This device is not supported s view cover"

    .line 285
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 288
    :cond_0
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 290
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    .line 291
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    const-string v0, "ScoverManager"

    const-string v1, "unregisterListener"

    .line 493
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "ScoverManager"

    const-string v0, "unregisterListener : This device is not supported cover"

    .line 495
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 499
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSmartCover()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "ScoverManager"

    const-string v0, "unregisterListener : If cover is smart cover, it does not need to unregister listener of intenal App"

    .line 500
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/high16 v0, 0x1010000

    .line 504
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez p1, :cond_2

    const-string p1, "ScoverManager"

    const-string v0, "unregisterListener : listener is null"

    .line 511
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 517
    iget-object v1, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 518
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 519
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;

    .line 520
    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;->getListener()Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v0, v2

    :cond_4
    if-nez v0, :cond_5

    return-void

    .line 531
    :cond_5
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 533
    invoke-interface {p1, v0}, Lcom/samsung/android/cover/ICoverManager;->unregisterCallback(Landroid/os/IBinder;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 534
    iget-object p1, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ScoverManager"

    const-string v1, "RemoteException in unregisterListener: "

    .line 538
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_0
    return-void

    .line 505
    :cond_7
    new-instance p1, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const/4 v0, 0x2

    const-string v1, "This device is not supported this function. Device is must higher then v1.1.0"

    invoke-direct {p1, v1, v0}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$ScoverStateListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string p1, "ScoverManager"

    const-string v0, "unregisterListener : Use deprecated API!! Change ScoverStateListener to StateListener"

    .line 431
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V
    .locals 4

    const-string v0, "ScoverManager"

    const-string v1, "unregisterListener"

    .line 441
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "ScoverManager"

    const-string v0, "unregisterListener : This device is not supported cover"

    .line 443
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 447
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSmartCover()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "ScoverManager"

    const-string v0, "unregisterListener : If cover is smart cover, it does not need to unregister listener of intenal App"

    .line 448
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-nez p1, :cond_2

    const-string p1, "ScoverManager"

    const-string v0, "unregisterListener : listener is null"

    .line 453
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 459
    iget-object v1, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 460
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 461
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;

    .line 462
    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;->getListener()Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v0, v2

    :cond_4
    if-nez v0, :cond_5

    return-void

    .line 473
    :cond_5
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 475
    invoke-interface {p1, v0}, Lcom/samsung/android/cover/ICoverManager;->unregisterCallback(Landroid/os/IBinder;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 476
    iget-object p1, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ScoverManager"

    const-string v1, "RemoteException in unregisterListener: "

    .line 480
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_0
    return-void
.end method
