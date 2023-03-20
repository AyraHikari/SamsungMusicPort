.class public Lcom/samsung/android/sdk/multiwindow/SMultiWindowManager;
.super Ljava/lang/Object;
.source "SMultiWindowManager.java"


# static fields
.field public static final GET_TASK_ALLSTATE:I = 0x0

.field public static final GET_TASK_CURRENT_USER_ONLY:I = 0x2

.field public static final GET_TASK_RESUMED_ONLY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SMultiWindowManager"

.field private static sInstance:Lcom/samsung/android/sdk/multiwindow/SMultiWindowManager;


# instance fields
.field private mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowManager;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    :try_start_0
    const-string v0, "multiwindow_facade"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iput-object p1, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowManager;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowManager;->sInstance:Lcom/samsung/android/sdk/multiwindow/SMultiWindowManager;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowManager;->sInstance:Lcom/samsung/android/sdk/multiwindow/SMultiWindowManager;

    .line 3
    :cond_0
    sget-object p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowManager;->sInstance:Lcom/samsung/android/sdk/multiwindow/SMultiWindowManager;

    return-object p0
.end method


# virtual methods
.method public getRunningScaleWindows()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowManager;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getRunningScaleWindows()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getRunningTasks(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowManager;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getRunningTasks(II)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "SMultiWindowManager"

    const-string p2, "The mMultiWindowFacade is null"

    .line 3
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public minimizeTask(ILandroid/graphics/Point;Z)Z
    .locals 3

    const-string v0, "SMultiWindowManager"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowManager;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {v2, p1, p2, p3}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->minimizeTask(ILandroid/graphics/Point;Z)Z

    move-result p1

    move v1, p1

    goto :goto_0

    :cond_0
    const-string p1, "The mMultiWindowFacade is null"

    .line 3
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "There is no method minimizeTask()"

    .line 4
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method
