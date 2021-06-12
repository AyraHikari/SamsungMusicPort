.class public Lcom/samsung/android/sdk/bixby2/Sbixby;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/samsung/android/sdk/bixby2/Sbixby;

.field private static c:Landroid/content/Context;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/bixby2/AppMetaInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/android/sdk/bixby2/Sbixby;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "1.0.9"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/bixby2/Sbixby;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sput-object p1, Lcom/samsung/android/sdk/bixby2/Sbixby;->c:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized a()Lcom/samsung/android/sdk/bixby2/Sbixby;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-class v0, Lcom/samsung/android/sdk/bixby2/Sbixby;

    monitor-enter v0

    .line 104
    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/bixby2/Sbixby;->b:Lcom/samsung/android/sdk/bixby2/Sbixby;

    if-eqz v1, :cond_0

    .line 108
    sget-object v1, Lcom/samsung/android/sdk/bixby2/Sbixby;->a:Ljava/lang/String;

    const-string v2, " getInstance()"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/bixby2/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    sget-object v1, Lcom/samsung/android/sdk/bixby2/Sbixby;->b:Lcom/samsung/android/sdk/bixby2/Sbixby;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 105
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The Sbixby instance is NULL. do initialize Sbixby before accessing instance."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    .line 103
    monitor-exit v0

    throw v1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 85
    sget-object v0, Lcom/samsung/android/sdk/bixby2/Sbixby;->b:Lcom/samsung/android/sdk/bixby2/Sbixby;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/samsung/android/sdk/bixby2/Sbixby;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/bixby2/Sbixby;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/sdk/bixby2/Sbixby;->b:Lcom/samsung/android/sdk/bixby2/Sbixby;

    .line 88
    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/bixby2/Sbixby;->b:Lcom/samsung/android/sdk/bixby2/Sbixby;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/bixby2/Sbixby;->a(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 90
    invoke-static {p0}, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->a(Z)V

    .line 92
    sget-object p0, Lcom/samsung/android/sdk/bixby2/Sbixby;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initialized in package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/sdk/bixby2/Sbixby;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/bixby2/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 83
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "App Context is NULL. pass valid context."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 208
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    sput-object p1, Lcom/samsung/android/sdk/bixby2/Sbixby;->d:Ljava/lang/String;

    return-void

    .line 209
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "package name is null or empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static b()Lcom/samsung/android/sdk/bixby2/state/StateHandler;
    .locals 2

    .line 121
    sget-object v0, Lcom/samsung/android/sdk/bixby2/Sbixby;->a:Ljava/lang/String;

    const-string v1, " getStateHandler()"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/bixby2/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lcom/samsung/android/sdk/bixby2/state/StateHandler;->a()Lcom/samsung/android/sdk/bixby2/state/StateHandler;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 138
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.samsung.android.bixby.agent"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 140
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 142
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 143
    aget-object v1, p0, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "1"

    aget-object p0, p0, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 148
    sget-object v1, Lcom/samsung/android/sdk/bixby2/Sbixby;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NameNotFoundException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/sdk/bixby2/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/samsung/android/sdk/bixby2/action/ActionHandler;)V
    .locals 3
    .param p2    # Lcom/samsung/android/sdk/bixby2/action/ActionHandler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 172
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 176
    sget-object v0, Lcom/samsung/android/sdk/bixby2/Sbixby;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " addActionHandler: action Id --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/bixby2/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-static {p1, p2}, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->a(Ljava/lang/String;Lcom/samsung/android/sdk/bixby2/action/ActionHandler;)V

    return-void

    .line 173
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Action handler is NULL. pass valid app action handler implementation."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()V
    .locals 2

    .line 203
    sget-object v0, Lcom/samsung/android/sdk/bixby2/Sbixby;->a:Ljava/lang/String;

    const-string v1, "Removing all action handlers"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/bixby2/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-static {}, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->a()V

    return-void
.end method

.method public d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/bixby2/AppMetaInfo;",
            ">;"
        }
    .end annotation

    .line 219
    sget-object v0, Lcom/samsung/android/sdk/bixby2/Sbixby;->e:Ljava/util/Map;

    return-object v0
.end method
