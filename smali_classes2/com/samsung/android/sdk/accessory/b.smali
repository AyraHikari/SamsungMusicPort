.class public abstract Lcom/samsung/android/sdk/accessory/b;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/samsung/android/sdk/accessory/b;

.field private static synthetic b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/accessory/b;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/samsung/android/sdk/accessory/b;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/samsung/android/sdk/accessory/b;
    .locals 4

    const-class v0, Lcom/samsung/android/sdk/accessory/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/accessory/b;->a:Lcom/samsung/android/sdk/accessory/b;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/accessory/b;->a:Lcom/samsung/android/sdk/accessory/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    const-string v1, "com.samsung.accessory.a.a.b"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "com.samsung.accessory.a.a.b"

    const/4 v3, 0x1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v2, v3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    sget-boolean v2, Lcom/samsung/android/sdk/accessory/b;->b:Z

    if-eqz v2, :cond_4

    :cond_1
    :goto_0
    sget-boolean v1, Lcom/samsung/android/sdk/accessory/b;->b:Z

    if-nez v1, :cond_3

    sget-object v1, Lcom/samsung/android/sdk/accessory/b;->a:Lcom/samsung/android/sdk/accessory/b;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "The DEFAULT field must be initialized"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_3
    :goto_1
    sget-object v1, Lcom/samsung/android/sdk/accessory/b;->a:Lcom/samsung/android/sdk/accessory/b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_4
    :try_start_3
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method protected abstract a(I)V
.end method

.method protected abstract a(Landroid/content/Context;)V
.end method

.method protected abstract b(I)Lcom/samsung/accessory/a/a/a;
.end method
