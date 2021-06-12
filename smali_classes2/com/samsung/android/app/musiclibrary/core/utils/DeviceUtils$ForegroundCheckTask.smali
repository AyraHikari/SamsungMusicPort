.class Lcom/samsung/android/app/musiclibrary/core/utils/DeviceUtils$ForegroundCheckTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/utils/DeviceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ForegroundCheckTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private isAppOnForeground(Landroid/content/Context;)Z
    .locals 5

    const-string v0, "activity"

    .line 101
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 103
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 107
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 108
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 109
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_1

    iget-object v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 111
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method static isTop(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    .line 84
    :try_start_0
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/utils/DeviceUtils$ForegroundCheckTask;

    invoke-direct {v1}, Lcom/samsung/android/app/musiclibrary/core/utils/DeviceUtils$ForegroundCheckTask;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/Context;

    aput-object p0, v2, v0

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/DeviceUtils$ForegroundCheckTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p0

    :catch_0
    return v0
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 95
    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 96
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/utils/DeviceUtils$ForegroundCheckTask;->isAppOnForeground(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 79
    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/utils/DeviceUtils$ForegroundCheckTask;->doInBackground([Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
