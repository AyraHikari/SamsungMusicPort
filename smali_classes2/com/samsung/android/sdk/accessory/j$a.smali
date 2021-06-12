.class final Lcom/samsung/android/sdk/accessory/j$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/samsung/android/sdk/accessory/j;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/accessory/j;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/j$a;->a:Lcom/samsung/android/sdk/accessory/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/accessory/j;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/j$a;-><init>(Lcom/samsung/android/sdk/accessory/j;)V

    return-void
.end method

.method private a()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/j$a;->a:Lcom/samsung/android/sdk/accessory/j;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/j;->a(Lcom/samsung/android/sdk/accessory/j;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a()V
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/d; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/j$a;->a:Lcom/samsung/android/sdk/accessory/j;

    invoke-static {v1}, Lcom/samsung/android/sdk/accessory/j;->a(Lcom/samsung/android/sdk/accessory/j;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/sdk/accessory/n;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/accessory/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/n;->a()[B

    move-result-object v1

    :try_start_1
    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a([B)V

    const-string v0, "[SA_SDK]SARegistrationTask"

    const-string v1, "Services Registered successfully!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/samsung/android/sdk/accessory/d; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/j$a;->a:Lcom/samsung/android/sdk/accessory/j;

    monitor-enter v0

    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/j$a;->a:Lcom/samsung/android/sdk/accessory/j;

    invoke-static {v1}, Lcom/samsung/android/sdk/accessory/j;->b(Lcom/samsung/android/sdk/accessory/j;)Z

    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "[SA_SDK]SARegistrationTask"

    const-string v2, "Registration failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/j$a;->a:Lcom/samsung/android/sdk/accessory/j;

    monitor-enter v1

    :try_start_4
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/j$a;->a:Lcom/samsung/android/sdk/accessory/j;

    invoke-static {v2}, Lcom/samsung/android/sdk/accessory/j;->b(Lcom/samsung/android/sdk/accessory/j;)Z

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :catch_1
    move-exception v0

    const-string v1, "[SA_SDK]SARegistrationTask"

    const-string v2, "Registration failed.Unable to connect to Accessory framework!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/j$a;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
