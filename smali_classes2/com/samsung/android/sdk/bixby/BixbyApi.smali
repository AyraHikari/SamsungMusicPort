.class public Lcom/samsung/android/sdk/bixby/BixbyApi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/bixby/BixbyApi$OnResponseCallback;,
        Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;,
        Lcom/samsung/android/sdk/bixby/BixbyApi$AbstractEventMonitor;,
        Lcom/samsung/android/sdk/bixby/BixbyApi$OnNlgEndListener;,
        Lcom/samsung/android/sdk/bixby/BixbyApi$OnTtsResultListener;,
        Lcom/samsung/android/sdk/bixby/BixbyApi$OnConfirmResultListener;,
        Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResultListener;,
        Lcom/samsung/android/sdk/bixby/BixbyApi$TestListener;,
        Lcom/samsung/android/sdk/bixby/BixbyApi$MultiPathRuleListener;,
        Lcom/samsung/android/sdk/bixby/BixbyApi$ChattyModeListener;,
        Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;,
        Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;,
        Lcom/samsung/android/sdk/bixby/BixbyApi$CommonStateListener;,
        Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;,
        Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;,
        Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;,
        Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;,
        Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;

.field private static final e:Z

.field private static r:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field private static final s:Ljava/lang/Object;


# instance fields
.field private A:Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;

.field private B:Z

.field private C:Ljava/lang/Runnable;

.field private D:I

.field a:Ljava/lang/String;

.field b:Landroid/os/Handler;

.field final c:Ljava/lang/String;

.field private f:Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;

.field private g:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

.field private h:Lcom/samsung/android/sdk/bixby/BixbyApi$ChattyModeListener;

.field private i:Lcom/samsung/android/sdk/bixby/BixbyApi$MultiPathRuleListener;

.field private j:Lcom/samsung/android/sdk/bixby/BixbyApi$AbstractEventMonitor;

.field private k:Lcom/samsung/android/sdk/bixby/BixbyApi$TestListener;

.field private l:Lcom/samsung/android/sdk/bixby/BixbyApi$OnResponseCallback;

.field private m:Lcom/samsung/android/sdk/bixby/BixbyApi$OnTtsResultListener;

.field private n:Lcom/samsung/android/sdk/bixby/BixbyApi$OnNlgEndListener;

.field private o:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResultListener;

.field private p:Lcom/samsung/android/sdk/bixby/BixbyApi$OnConfirmResultListener;

.field private q:Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

.field private t:Landroid/content/Context;

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Lcom/samsung/android/sdk/bixby/data/State;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_0.2.7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi;->d:Ljava/lang/String;

    const-string v0, "user"

    .line 65
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/samsung/android/sdk/bixby/BixbyApi;->e:Z

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi;->s:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .line 710
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    sget-object v0, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;->a:Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->q:Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->b:Landroid/os/Handler;

    const-string v0, "testInformations"

    .line 108
    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->c:Ljava/lang/String;

    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->u:Z

    .line 111
    iput-boolean v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->v:Z

    .line 112
    iput-boolean v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->w:Z

    const/4 v1, 0x0

    .line 115
    iput-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->z:Lcom/samsung/android/sdk/bixby/data/State;

    .line 117
    iput-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->A:Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;

    .line 118
    iput-boolean v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->B:Z

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/sdk/bixby/BixbyApi;)Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->g:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    return-object p0
.end method

.method public static a()Lcom/samsung/android/sdk/bixby/BixbyApi;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 788
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi;->s:Ljava/lang/Object;

    monitor-enter v0

    .line 789
    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi;->r:Lcom/samsung/android/sdk/bixby/BixbyApi;

    if-eqz v1, :cond_0

    .line 793
    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi;->r:Lcom/samsung/android/sdk/bixby/BixbyApi;

    monitor-exit v0

    return-object v1

    .line 790
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Instance is null. please call createInstance() for the first time."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 794
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/BixbyApi;
    .locals 5

    if-eqz p0, :cond_2

    .line 725
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi;->s:Ljava/lang/Object;

    monitor-enter v0

    .line 726
    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi;->r:Lcom/samsung/android/sdk/bixby/BixbyApi;

    if-nez v1, :cond_0

    .line 727
    new-instance v1, Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-direct {v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;-><init>()V

    sput-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi;->r:Lcom/samsung/android/sdk/bixby/BixbyApi;

    .line 729
    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi;->r:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->a(Landroid/content/Context;)V

    .line 730
    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi;->r:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->a(Ljava/lang/String;)V

    .line 732
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 735
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 736
    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi;->r:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/bixby/BixbyApi;->d(Ljava/lang/String;)V

    .line 737
    sget-boolean v2, Lcom/samsung/android/sdk/bixby/BixbyApi;->e:Z

    if-eqz v2, :cond_1

    .line 738
    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createInstance: Version Name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 742
    :catch_0
    :try_start_2
    sget-object p1, Lcom/samsung/android/sdk/bixby/BixbyApi;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createInstance: cannot get versionName from package = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 742
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    sget-object p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->r:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string p1, ""

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->d(Ljava/lang/String;)V

    .line 747
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->r:Lcom/samsung/android/sdk/bixby/BixbyApi;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 748
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 723
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Context cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/samsung/android/sdk/bixby/BixbyApi;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->C:Ljava/lang/Runnable;

    return-object p1
.end method

.method private a(Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;Lcom/samsung/android/sdk/bixby/BixbyApi$OnNlgEndListener;)Ljava/lang/String;
    .locals 5

    const-string v0, "NONE"

    .line 998
    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->MULTIPLE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    if-ne p2, v1, :cond_0

    .line 999
    invoke-direct {p0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->k()Ljava/lang/String;

    move-result-object v0

    .line 1001
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\"currentStateIds\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_1

    const-string p3, "\"needResultCallback\":true"

    goto :goto_0

    :cond_1
    const-string p3, "\"needResultCallback\":false"

    :goto_0
    const-string v1, "\"requestedAppName\":\"%s\",%s,%s,%s,%s"

    const/4 v2, 0x5

    .line 1009
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->x:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 1010
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x2

    aput-object v0, v2, p1

    const/4 p1, 0x3

    invoke-virtual {p2}, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x4

    aput-object p3, v2, p1

    .line 1009
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 0

    .line 752
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->t:Landroid/content/Context;

    return-void
.end method

.method private a(Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResultListener;)V
    .locals 0

    .line 1872
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->o:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResultListener;

    return-void
.end method

.method private a(Lcom/samsung/android/sdk/bixby/BixbyApi$OnConfirmResultListener;)V
    .locals 3

    .line 1883
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOnConfirmResultListener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->p:Lcom/samsung/android/sdk/bixby/BixbyApi$OnConfirmResultListener;

    return-void
.end method

.method private a(Lcom/samsung/android/sdk/bixby/BixbyApi$OnNlgEndListener;)V
    .locals 0

    .line 1905
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->n:Lcom/samsung/android/sdk/bixby/BixbyApi$OnNlgEndListener;

    return-void
.end method

.method private a(Lcom/samsung/android/sdk/bixby/BixbyApi$OnTtsResultListener;)V
    .locals 0

    .line 1895
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->m:Lcom/samsung/android/sdk/bixby/BixbyApi$OnTtsResultListener;

    return-void
.end method

.method private a(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 1

    .line 932
    invoke-virtual {p2}, Lcom/samsung/android/sdk/bixby/data/State;->e()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 933
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->b(Z)V

    .line 934
    invoke-virtual {p0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->g()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 935
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->c(Z)V

    goto :goto_0

    .line 937
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/sdk/bixby/data/State;->a()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-nez p2, :cond_1

    sget-object p2, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_SETUP_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    .line 939
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->c(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 3

    .line 1364
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->C:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1365
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi;->d:Ljava/lang/String;

    const-string v1, "sendState: Remove pending state."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    .line 1369
    iput v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->D:I

    .line 1370
    new-instance v1, Lcom/samsung/android/sdk/bixby/BixbyApi$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sdk/bixby/BixbyApi$1;-><init>(Lcom/samsung/android/sdk/bixby/BixbyApi;Lcom/samsung/android/sdk/bixby/data/State;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->C:Ljava/lang/Runnable;

    .line 1391
    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->C:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1393
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->e()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1394
    iput-boolean v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->u:Z

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/samsung/android/sdk/bixby/BixbyApi;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->D:I

    return p0
.end method

.method private b(Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 1

    .line 1399
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->f:Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;

    if-eqz v0, :cond_0

    .line 1400
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->f:Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;->onStateReceived(Lcom/samsung/android/sdk/bixby/data/State;)V

    goto :goto_0

    .line 1402
    :cond_0
    sget-object p1, Lcom/samsung/android/sdk/bixby/BixbyApi;->d:Ljava/lang/String;

    const-string v0, "sendState: The first state arrived but StartListener has not been set."

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "state_command_result"

    .line 1405
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .line 1406
    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1405
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1814
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->l:Lcom/samsung/android/sdk/bixby/BixbyApi$OnResponseCallback;

    if-eqz v0, :cond_0

    .line 1815
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->l:Lcom/samsung/android/sdk/bixby/BixbyApi$OnResponseCallback;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/bixby/BixbyApi$OnResponseCallback;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p2, "esem_state_log"

    .line 1818
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "esem_cancel_chatty_mode"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1819
    sget-object p1, Lcom/samsung/android/sdk/bixby/BixbyApi;->d:Ljava/lang/String;

    const-string p2, "sendCommandToBa: Bixby Agent is not connected."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private b(Z)V
    .locals 0

    .line 1660
    iput-boolean p1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->w:Z

    return-void
.end method

.method static synthetic c(Lcom/samsung/android/sdk/bixby/BixbyApi;)I
    .locals 2

    .line 62
    iget v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->D:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->D:I

    return v0
.end method

.method private c(Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 2

    const/4 v0, 0x0

    .line 1411
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->b(Z)V

    .line 1413
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->p:Lcom/samsung/android/sdk/bixby/BixbyApi$OnConfirmResultListener;

    if-eqz v0, :cond_0

    .line 1414
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->p:Lcom/samsung/android/sdk/bixby/BixbyApi$OnConfirmResultListener;

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;->CANCEL:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi$OnConfirmResultListener;->onConfirmResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;)V

    goto :goto_0

    .line 1417
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->o:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResultListener;

    if-eqz v0, :cond_1

    .line 1418
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->o:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResultListener;

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;->CANCEL:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResultListener;->a(Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;)V

    .line 1421
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->g:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->f:Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;

    if-nez v0, :cond_2

    .line 1422
    sget-object p1, Lcom/samsung/android/sdk/bixby/BixbyApi;->d:Ljava/lang/String;

    const-string v0, "sendState: No listener is set."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1426
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->g:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    if-eqz v0, :cond_3

    .line 1427
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->g:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;->onRuleCanceled(Ljava/lang/String;)V

    .line 1430
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->f:Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;

    if-eqz v0, :cond_4

    .line 1431
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->f:Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->f()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;->onRuleCanceled(Ljava/lang/String;)V

    .line 1435
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->l()V

    return-void
.end method

.method private c(Z)V
    .locals 0

    .line 1673
    iput-boolean p1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->v:Z

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 0

    .line 756
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->y:Ljava/lang/String;

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    .line 1282
    iput-boolean v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->u:Z

    .line 1283
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi;->d:Ljava/lang/String;

    const-string v1, "handleTestState: SeqNo 0 found. isTestMode true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "testInformations"

    .line 1287
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1289
    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->k:Lcom/samsung/android/sdk/bixby/BixbyApi$TestListener;

    if-nez v1, :cond_0

    .line 1290
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_SETUP_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->a(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_0
    const-string v1, "testInformations"

    .line 1295
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1297
    invoke-static {v0}, Lcom/samsung/android/sdk/bixby/TestInformationReader;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1299
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_3

    .line 1305
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/bixby/TestInformationReader$TestInformation;

    const-string v2, "setup"

    .line 1306
    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/TestInformationReader$TestInformation;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1307
    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/TestInformationReader$TestInformation;->b()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1308
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_SETUP_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->a(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_1

    .line 1310
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->k:Lcom/samsung/android/sdk/bixby/BixbyApi$TestListener;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/TestInformationReader$TestInformation;->b()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi$TestListener;->a(Ljava/util/Map;)V

    :goto_1
    return-void

    :cond_3
    const-string v2, "teardown"

    .line 1313
    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/TestInformationReader$TestInformation;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1314
    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/TestInformationReader$TestInformation;->b()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1315
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_SETUP_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->a(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_2

    .line 1317
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->k:Lcom/samsung/android/sdk/bixby/BixbyApi$TestListener;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/TestInformationReader$TestInformation;->b()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi$TestListener;->b(Ljava/util/Map;)V

    :goto_2
    return-void

    .line 1322
    :cond_5
    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported Item:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/TestInformationReader$TestInformation;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1326
    :cond_6
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_SETUP_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->a(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_4

    .line 1300
    :cond_7
    :goto_3
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_SETUP_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->a(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    .line 1329
    :cond_8
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_SETUP_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->a(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 1332
    :catch_0
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleTestState: Invalid JSON:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    sget-object p1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_SETUP_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->a(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_4
    return-void
.end method

.method static synthetic j()Ljava/lang/String;
    .locals 1

    .line 62
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi;->d:Ljava/lang/String;

    return-object v0
.end method

.method private k()Ljava/lang/String;
    .locals 3

    .line 1621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1623
    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->g:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    if-eqz v1, :cond_2

    .line 1629
    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->g:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    invoke-interface {v1}, Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;->onScreenStatesRequested()Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    move-result-object v1

    .line 1630
    sget-object v2, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;->a:Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    if-eq v1, v2, :cond_1

    .line 1635
    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;->a()Ljava/util/LinkedHashSet;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1637
    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1638
    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1639
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1641
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1631
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Partial Landing handler requires the current state ID. onScreenStatesRequested() is not allowed to return null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string v1, ""

    .line 1644
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1647
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private l()V
    .locals 1

    const/4 v0, 0x0

    .line 1942
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->a(Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResultListener;)V

    .line 1943
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->a(Lcom/samsung/android/sdk/bixby/BixbyApi$OnConfirmResultListener;)V

    .line 1944
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->a(Lcom/samsung/android/sdk/bixby/BixbyApi$OnTtsResultListener;)V

    .line 1945
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->a(Lcom/samsung/android/sdk/bixby/BixbyApi$OnNlgEndListener;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 1766
    invoke-virtual {p0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1767
    sget-object p1, Lcom/samsung/android/sdk/bixby/BixbyApi;->d:Ljava/lang/String;

    const-string v0, "extendTimeout: Path Rule is not running."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    .line 1772
    sget-object p1, Lcom/samsung/android/sdk/bixby/BixbyApi;->d:Ljava/lang/String;

    const-string v0, "extendTimeout: Timeout value is not in the valid range. "

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1776
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\"pathRuleTimeout\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "esem_client_control"

    .line 1778
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method a(Landroid/content/Intent;)V
    .locals 1

    .line 1573
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->j:Lcom/samsung/android/sdk/bixby/BixbyApi$AbstractEventMonitor;

    if-nez v0, :cond_0

    return-void

    .line 1574
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->j:Lcom/samsung/android/sdk/bixby/BixbyApi$AbstractEventMonitor;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/bixby/BixbyApi$AbstractEventMonitor;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;)V
    .locals 0

    .line 814
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->g:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    return-void
.end method

.method a(Lcom/samsung/android/sdk/bixby/BixbyApi$OnResponseCallback;)V
    .locals 0

    .line 1500
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->l:Lcom/samsung/android/sdk/bixby/BixbyApi$OnResponseCallback;

    return-void
.end method

.method public a(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    .locals 2

    .line 894
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_ALL_STATES_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    if-eq p1, v0, :cond_6

    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_ALL_STATES_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 901
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->z:Lcom/samsung/android/sdk/bixby/data/State;

    if-nez v0, :cond_1

    .line 902
    sget-object p1, Lcom/samsung/android/sdk/bixby/BixbyApi;->d:Ljava/lang/String;

    const-string v0, "Invalid sendResponse call."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 907
    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    if-ne p1, v0, :cond_2

    .line 908
    sget-object p1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    goto :goto_0

    .line 909
    :cond_2
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    if-ne p1, v0, :cond_3

    .line 910
    sget-object p1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    :cond_3
    :goto_0
    const-string v0, "state_command_result"

    .line 913
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->z:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->a(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Lcom/samsung/android/sdk/bixby/data/State;)V

    .line 921
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->z:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/State;->e()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    if-eq p1, v0, :cond_4

    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_SETUP_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    if-ne p1, v0, :cond_5

    .line 923
    :cond_4
    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->b(Z)V

    .line 924
    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->c(Z)V

    .line 926
    :cond_5
    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->a(Z)V

    const/4 p1, 0x0

    .line 927
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->z:Lcom/samsung/android/sdk/bixby/data/State;

    return-void

    :cond_6
    :goto_1
    const-string v0, "esem_all_states_result"

    .line 896
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;)V
    .locals 0

    .line 804
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->f:Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;

    return-void
.end method

.method public a(Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;Lcom/samsung/android/sdk/bixby/BixbyApi$OnConfirmResultListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1068
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/samsung/android/sdk/bixby/BixbyApi;->a(Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$OnConfirmResultListener;)V

    return-void
.end method

.method public a(Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$OnConfirmResultListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    const-string p3, ""

    goto :goto_0

    .line 1101
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ",\"nextRuleId\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\""

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1104
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\"currentStateIds\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\"requestedAppName\":\"%s\",%s,%s,%s,%s%s"

    const/4 v2, 0x6

    .line 1106
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->x:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 1107
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x2

    aput-object v0, v2, p1

    const/4 p1, 0x3

    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->CONFIRM:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, p1

    const/4 p1, 0x4

    invoke-virtual {p2}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x5

    aput-object p3, v2, p1

    .line 1106
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1110
    invoke-direct {p0, p4}, Lcom/samsung/android/sdk/bixby/BixbyApi;->a(Lcom/samsung/android/sdk/bixby/BixbyApi$OnConfirmResultListener;)V

    const-string p2, "esem_request_nlg"

    .line 1112
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1094
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ConfirmResultListener cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1090
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "NlgRequestInfo cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 957
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->a(Lcom/samsung/android/sdk/bixby/BixbyApi$OnNlgEndListener;)V

    .line 958
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->a(Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResultListener;)V

    .line 959
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->a(Lcom/samsung/android/sdk/bixby/BixbyApi$OnConfirmResultListener;)V

    .line 961
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->a(Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;Lcom/samsung/android/sdk/bixby/BixbyApi$OnNlgEndListener;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "esem_request_nlg"

    .line 962
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 954
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "NlgRequestInfo cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)V
    .locals 2

    .line 1558
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1560
    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->g:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    if-eqz v1, :cond_0

    .line 1561
    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->g:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    invoke-interface {v1, p1}, Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;->onParamFillingReceived(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1562
    sget-object p1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1565
    :cond_0
    sget-object p1, Lcom/samsung/android/sdk/bixby/BixbyApi;->d:Ljava/lang/String;

    const-string v1, "ParamFilling: InterimListener is null."

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const-string p1, "esem_param_filling_result"

    .line 1568
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method a(Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;)V
    .locals 1

    .line 1611
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->A:Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;

    .line 1614
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->j:Lcom/samsung/android/sdk/bixby/BixbyApi$AbstractEventMonitor;

    if-eqz v0, :cond_0

    .line 1615
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->j:Lcom/samsung/android/sdk/bixby/BixbyApi$AbstractEventMonitor;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/bixby/BixbyApi$AbstractEventMonitor;->a(Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 768
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 771
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->x:Ljava/lang/String;

    return-void

    .line 769
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "appName should not be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1827
    invoke-static {p2}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;->toEnum(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

    move-result-object v0

    .line 1829
    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOnConfirmResultListener:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->p:Lcom/samsung/android/sdk/bixby/BixbyApi$OnConfirmResultListener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mConfirmResultListener:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->o:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResultListener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->p:Lcom/samsung/android/sdk/bixby/BixbyApi$OnConfirmResultListener;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->o:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResultListener;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1839
    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi;->d:Ljava/lang/String;

    const-string v4, "Confirm Result Listener null. Ignored."

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1833
    :cond_1
    :goto_0
    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;->UNKNOWN:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

    if-eq v0, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    .line 1836
    :cond_2
    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid Confirmation Result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ". Ignored"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v1, 0x0

    :goto_2
    const-string v4, "\"appName\":\"%s\",\"result\":\"%s\""

    const/4 v5, 0x2

    .line 1842
    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v3

    if-eqz v1, :cond_3

    const-string p1, "success"

    goto :goto_3

    :cond_3
    const-string p1, "failure"

    :goto_3
    aput-object p1, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "esem_user_confirm_result"

    .line 1844
    invoke-direct {p0, v2, p1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_6

    .line 1847
    iget-object p1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->p:Lcom/samsung/android/sdk/bixby/BixbyApi$OnConfirmResultListener;

    if-eqz p1, :cond_4

    .line 1848
    iget-object p1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->p:Lcom/samsung/android/sdk/bixby/BixbyApi$OnConfirmResultListener;

    invoke-interface {p1, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi$OnConfirmResultListener;->onConfirmResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;)V

    goto :goto_4

    .line 1851
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->o:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResultListener;

    if-eqz p1, :cond_5

    .line 1852
    iget-object p1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->o:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResultListener;

    invoke-interface {p1, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResultListener;->a(Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;)V

    .line 1855
    :cond_5
    :goto_4
    sget-object p1, Lcom/samsung/android/sdk/bixby/BixbyApi;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Confirmation Result called: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 1858
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->a(Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResultListener;)V

    .line 1859
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->a(Lcom/samsung/android/sdk/bixby/BixbyApi$OnConfirmResultListener;)V

    :cond_6
    return-void
.end method

.method a(Ljava/lang/String;Z)V
    .locals 2

    .line 1440
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1442
    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->h:Lcom/samsung/android/sdk/bixby/BixbyApi$ChattyModeListener;

    if-nez v1, :cond_0

    .line 1443
    sget-object p1, Lcom/samsung/android/sdk/bixby/BixbyApi;->d:Ljava/lang/String;

    const-string p2, "sendChatText: ChattyModeListener is null."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1445
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->h:Lcom/samsung/android/sdk/bixby/BixbyApi$ChattyModeListener;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/sdk/bixby/BixbyApi$ChattyModeListener;->a(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1446
    sget-object p1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    const-string p1, "esem_chatty_mode_result"

    .line 1449
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method a(Lorg/json/JSONArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1454
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 1456
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 1458
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 1463
    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->i:Lcom/samsung/android/sdk/bixby/BixbyApi$MultiPathRuleListener;

    if-nez v1, :cond_1

    .line 1464
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi;->d:Ljava/lang/String;

    const-string v1, "sendMultiStates: MultiPathRuleListener is null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1466
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->i:Lcom/samsung/android/sdk/bixby/BixbyApi$MultiPathRuleListener;

    invoke-interface {p1, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi$MultiPathRuleListener;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, ""

    :cond_2
    :goto_1
    const-string v0, "esem_split_state_result"

    .line 1469
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method a(Z)V
    .locals 0

    .line 1810
    iput-boolean p1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->B:Z

    return-void
.end method

.method public b()V
    .locals 1

    .line 824
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->g:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    if-nez v0, :cond_0

    return-void

    .line 827
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->g:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    invoke-interface {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;->onScreenStatesRequested()Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->q:Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    const/4 v0, 0x0

    .line 828
    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->g:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    return-void
.end method

.method b(Landroid/content/Intent;)V
    .locals 1

    .line 1579
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->j:Lcom/samsung/android/sdk/bixby/BixbyApi$AbstractEventMonitor;

    if-nez v0, :cond_0

    return-void

    .line 1580
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->j:Lcom/samsung/android/sdk/bixby/BixbyApi$AbstractEventMonitor;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/bixby/BixbyApi$AbstractEventMonitor;->b(Landroid/content/Intent;)V

    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    .line 1339
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->b(Z)V

    .line 1341
    invoke-static {p1}, Lcom/samsung/android/sdk/bixby/StateReader;->a(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/State;

    move-result-object v1

    .line 1342
    iput-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->z:Lcom/samsung/android/sdk/bixby/data/State;

    .line 1345
    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/data/State;->a()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 1346
    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->c(Lcom/samsung/android/sdk/bixby/data/State;)V

    return-void

    .line 1351
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->l()V

    .line 1353
    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/data/State;->a()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    .line 1354
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 1355
    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/data/State;->a()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_2

    .line 1356
    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->b(Lcom/samsung/android/sdk/bixby/data/State;)V

    goto :goto_0

    .line 1358
    :cond_2
    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->a(Lcom/samsung/android/sdk/bixby/data/State;)V

    :goto_0
    return-void
.end method

.method b(Lorg/json/JSONArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1474
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 1476
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 1478
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1479
    invoke-static {v3}, Lcom/samsung/android/sdk/bixby/StateReader;->a(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/State;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1483
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->k:Lcom/samsung/android/sdk/bixby/BixbyApi$TestListener;

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 1488
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->k:Lcom/samsung/android/sdk/bixby/BixbyApi$TestListener;

    invoke-interface {p1, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi$TestListener;->a(Ljava/util/ArrayList;)V

    goto :goto_2

    .line 1484
    :cond_2
    :goto_1
    sget-object p1, Lcom/samsung/android/sdk/bixby/BixbyApi;->d:Ljava/lang/String;

    const-string v0, "sendAllStates: mTestListener is null."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "esem_all_states_result"

    .line 1485
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_ALL_STATES_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .line 1486
    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1485
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method c()V
    .locals 5

    .line 1506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1508
    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->g:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 1509
    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->g:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    invoke-interface {v1}, Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;->onScreenStatesRequested()Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    move-result-object v1

    const-string v4, "{"

    .line 1510
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\"appName\":\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->x:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1511
    sget-object v4, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;->a:Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    if-eq v1, v4, :cond_1

    .line 1512
    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, ","

    .line 1514
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1517
    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi;->d:Ljava/lang/String;

    const-string v2, "requestContext: No state ids."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1520
    :cond_1
    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi;->d:Ljava/lang/String;

    const-string v2, "requestContext: STATE_NOT_APPLICABLE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v1, "{"

    .line 1523
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"appName\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1524
    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi;->d:Ljava/lang/String;

    const-string v4, "requestContext: InterimListener is not set. "

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->q:Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    sget-object v4, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;->a:Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    if-eq v1, v4, :cond_4

    .line 1526
    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi;->d:Ljava/lang/String;

    const-string v4, "requestContext: Lastly backed up Screen State info used."

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->q:Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v3, ","

    .line 1529
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\"isBackedUpState\":true"

    .line 1530
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1533
    :cond_3
    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi;->d:Ljava/lang/String;

    const-string v2, "requestContext: No state ids."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    const/4 v2, 0x0

    .line 1539
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->h:Lcom/samsung/android/sdk/bixby/BixbyApi$ChattyModeListener;

    if-eqz v1, :cond_5

    const-string v1, ",\"isChattyModeSupported\":true"

    .line 1540
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v1, "}"

    .line 1543
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_6

    .line 1547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\"result\": \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 1549
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\"result\": \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1551
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\"appContext\":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "esem_context_result"

    .line 1553
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method c(Ljava/lang/String;)V
    .locals 1

    .line 1910
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->m:Lcom/samsung/android/sdk/bixby/BixbyApi$OnTtsResultListener;

    if-nez v0, :cond_0

    .line 1911
    sget-object p1, Lcom/samsung/android/sdk/bixby/BixbyApi;->d:Ljava/lang/String;

    const-string v0, "unexpected TTS result. Ignored."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1915
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->m:Lcom/samsung/android/sdk/bixby/BixbyApi$OnTtsResultListener;

    invoke-static {p1}, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;->toEnum(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/bixby/BixbyApi$OnTtsResultListener;->a(Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;)V

    const/4 p1, 0x0

    .line 1917
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->a(Lcom/samsung/android/sdk/bixby/BixbyApi$OnTtsResultListener;)V

    return-void
.end method

.method d()V
    .locals 1

    .line 1585
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->j:Lcom/samsung/android/sdk/bixby/BixbyApi$AbstractEventMonitor;

    if-nez v0, :cond_0

    return-void

    .line 1586
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->j:Lcom/samsung/android/sdk/bixby/BixbyApi$AbstractEventMonitor;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi$AbstractEventMonitor;->a()V

    return-void
.end method

.method e()V
    .locals 1

    .line 1591
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->j:Lcom/samsung/android/sdk/bixby/BixbyApi$AbstractEventMonitor;

    if-nez v0, :cond_0

    return-void

    .line 1592
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->j:Lcom/samsung/android/sdk/bixby/BixbyApi$AbstractEventMonitor;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi$AbstractEventMonitor;->b()V

    return-void
.end method

.method public f()Z
    .locals 1

    .line 1656
    iget-boolean v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->w:Z

    return v0
.end method

.method public g()Z
    .locals 1

    .line 1669
    iget-boolean v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->v:Z

    return v0
.end method

.method h()V
    .locals 2

    .line 1922
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi;->d:Ljava/lang/String;

    const-string v1, "sendNlgEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->n:Lcom/samsung/android/sdk/bixby/BixbyApi$OnNlgEndListener;

    if-nez v0, :cond_0

    .line 1924
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi;->d:Ljava/lang/String;

    const-string v1, "unexpected NLG End result. Ignored."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1928
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->n:Lcom/samsung/android/sdk/bixby/BixbyApi$OnNlgEndListener;

    invoke-interface {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi$OnNlgEndListener;->a()V

    const/4 v0, 0x0

    .line 1929
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->a(Lcom/samsung/android/sdk/bixby/BixbyApi$OnNlgEndListener;)V

    return-void
.end method

.method i()V
    .locals 2

    const/4 v0, 0x0

    .line 1934
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->b(Z)V

    .line 1935
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->c(Z)V

    const/4 v1, 0x0

    .line 1936
    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->a(Lcom/samsung/android/sdk/bixby/BixbyApi$OnResponseCallback;)V

    .line 1937
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->a(Z)V

    .line 1938
    invoke-direct {p0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->l()V

    return-void
.end method
