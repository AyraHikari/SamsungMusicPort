.class public final Lcom/samsung/android/sdk/multiwindow/SMultiWindow;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FREE_STYLE:I = 0x2

.field public static final MULTIWINDOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SMultiWindow"

.field private static enableQueried:Z = false

.field private static isFreeStyleEnabled:Z = false

.field private static isMultiWindowEnabled:Z = false

.field private static mVersionCode:I = 0x7

.field private static mVersionName:Ljava/lang/String; = "1.3.2"


# instance fields
.field private mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    invoke-direct {v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    :try_start_0
    const-string v0, "android.app.ActivityThread"

    .line 70
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 71
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    .line 73
    iget-object v2, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v3, "getApplication"

    const/4 v4, 0x0

    move-object v5, v4

    check-cast v5, [Ljava/lang/Class;

    invoke-virtual {v2, v0, v1, v3, v5}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 74
    iget-object v2, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v3, "getSystemContext"

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :catch_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->initMultiWindowFeature()V

    return-void
.end method

.method private initMultiWindowFeature()V
    .locals 4

    .line 144
    :try_start_0
    sget-boolean v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->enableQueried:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 145
    sput-boolean v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->enableQueried:Z

    .line 149
    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v1, "getApplication"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->checkMethod(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v2, "getApplication"

    move-object v3, v1

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 152
    iget-object v2, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v3, "getSystemContext"

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->checkMethod(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 153
    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v2, "getSystemContext"

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    :cond_1
    if-eqz v0, :cond_2

    .line 157
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 160
    sget-object v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$PackageManager;->FEATURE_MULTIWINDOW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isMultiWindowEnabled:Z

    .line 161
    sget-object v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$PackageManager;->FEATURE_MULTIWINDOW_FREESTYLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isFreeStyleEnabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method


# virtual methods
.method public getVersionCode()I
    .locals 1

    .line 127
    sget v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->mVersionCode:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .line 138
    sget-object v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->mVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    .line 88
    invoke-static {}, Lcom/samsung/android/sdk/SsdkVendorCheck;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 92
    sget-boolean p1, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isMultiWindowEnabled:Z

    if-eqz p1, :cond_0

    return-void

    .line 93
    :cond_0
    new-instance p1, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const/4 v0, 0x1

    const-string v1, "The device is not supported."

    invoke-direct {p1, v1, v0}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 89
    :cond_1
    new-instance p1, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not supported."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public isFeatureEnabled(I)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 112
    :pswitch_0
    sget-boolean p1, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isFreeStyleEnabled:Z

    return p1

    .line 109
    :pswitch_1
    sget-boolean p1, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isMultiWindowEnabled:Z

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
