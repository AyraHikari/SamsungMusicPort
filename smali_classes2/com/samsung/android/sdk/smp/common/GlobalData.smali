.class public Lcom/samsung/android/sdk/smp/common/GlobalData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "GlobalData"

.field private static b:Lcom/samsung/android/sdk/smp/common/GlobalData;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/samsung/android/sdk/smp/common/GlobalData;
    .locals 2

    .line 27
    sget-object v0, Lcom/samsung/android/sdk/smp/common/GlobalData;->b:Lcom/samsung/android/sdk/smp/common/GlobalData;

    if-nez v0, :cond_1

    .line 28
    const-class v0, Lcom/samsung/android/sdk/smp/common/GlobalData;

    monitor-enter v0

    .line 29
    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/smp/common/GlobalData;->b:Lcom/samsung/android/sdk/smp/common/GlobalData;

    if-nez v1, :cond_0

    .line 30
    new-instance v1, Lcom/samsung/android/sdk/smp/common/GlobalData;

    invoke-direct {v1}, Lcom/samsung/android/sdk/smp/common/GlobalData;-><init>()V

    sput-object v1, Lcom/samsung/android/sdk/smp/common/GlobalData;->b:Lcom/samsung/android/sdk/smp/common/GlobalData;

    .line 32
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 34
    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/sdk/smp/common/GlobalData;->b:Lcom/samsung/android/sdk/smp/common/GlobalData;

    return-object v0
.end method


# virtual methods
.method a(Landroid/content/Context;)V
    .locals 2

    .line 65
    new-instance v0, Lcom/samsung/android/sdk/smp/storage/PrefManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;-><init>(Landroid/content/Context;)V

    .line 66
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/common/GlobalData;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/common/GlobalData;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->a(Ljava/lang/String;)V

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/common/GlobalData;->d:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 70
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/common/GlobalData;->c(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->b(Z)V

    .line 72
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/common/GlobalData;->f:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 73
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/common/GlobalData;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->b(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 107
    new-instance v0, Lcom/samsung/android/sdk/smp/storage/PrefManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->d(Ljava/lang/String;)V

    return-void
.end method

.method a(Lcom/samsung/android/sdk/smp/SmpInitOptions;)V
    .locals 3

    .line 42
    sget-object v0, Lcom/samsung/android/sdk/smp/common/GlobalData;->a:Ljava/lang/String;

    const-string v1, "===== init options ====="

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 44
    sget-object v0, Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;->ENABLE_DEBUG_MODE:Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/smp/SmpInitOptions;->b(Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    sget-object v0, Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;->ENABLE_DEBUG_MODE:Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/smp/SmpInitOptions;->a(Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/smp/common/GlobalData;->e:Ljava/lang/String;

    const-string v0, "true"

    .line 46
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/common/GlobalData;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Z)V

    .line 47
    sget-object v0, Lcom/samsung/android/sdk/smp/common/GlobalData;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DEBUG : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/common/GlobalData;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;->ENABLE_USER_BASED_OPT_IN:Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/smp/SmpInitOptions;->b(Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    sget-object v0, Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;->ENABLE_USER_BASED_OPT_IN:Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/smp/SmpInitOptions;->a(Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/smp/common/GlobalData;->d:Ljava/lang/String;

    .line 51
    sget-object v0, Lcom/samsung/android/sdk/smp/common/GlobalData;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USER_OPT_IN : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/common/GlobalData;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;->SPP_APPID:Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/smp/SmpInitOptions;->b(Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    sget-object v0, Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;->SPP_APPID:Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/smp/SmpInitOptions;->a(Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/smp/common/GlobalData;->f:Ljava/lang/String;

    .line 55
    sget-object v0, Lcom/samsung/android/sdk/smp/common/GlobalData;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SPP_AID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/common/GlobalData;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_2
    sget-object v0, Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;->MULTI_PROCESS_MODE:Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/smp/SmpInitOptions;->b(Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 58
    sget-object v0, Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;->MULTI_PROCESS_MODE:Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/smp/SmpInitOptions;->a(Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/common/GlobalData;->g:Ljava/lang/String;

    .line 59
    sget-object p1, Lcom/samsung/android/sdk/smp/common/GlobalData;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MULTI_PROCESS : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/common/GlobalData;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/samsung/android/sdk/smp/common/GlobalData;->c:Ljava/lang/String;

    return-void
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/common/GlobalData;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/samsung/android/sdk/smp/storage/PrefManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/common/GlobalData;->c:Ljava/lang/String;

    .line 81
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/smp/common/GlobalData;->c:Ljava/lang/String;

    return-object p1
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 115
    iput-object p2, p0, Lcom/samsung/android/sdk/smp/common/GlobalData;->h:Ljava/lang/String;

    .line 116
    new-instance v0, Lcom/samsung/android/sdk/smp/storage/PrefManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->e(Ljava/lang/String;)V

    return-void
.end method

.method b()Z
    .locals 2

    const-string v0, "true"

    .line 99
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/common/GlobalData;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 2

    const-string v0, "true"

    .line 103
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/common/GlobalData;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method c(Landroid/content/Context;)Z
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/common/GlobalData;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 86
    new-instance v0, Lcom/samsung/android/sdk/smp/storage/PrefManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->k()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "true"

    goto :goto_0

    :cond_0
    const-string p1, "false"

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/sdk/smp/common/GlobalData;->d:Ljava/lang/String;

    :cond_1
    const-string p1, "true"

    .line 88
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/common/GlobalData;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public d(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/common/GlobalData;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcom/samsung/android/sdk/smp/storage/PrefManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/common/GlobalData;->f:Ljava/lang/String;

    .line 95
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/smp/common/GlobalData;->f:Ljava/lang/String;

    return-object p1
.end method

.method public e(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 111
    new-instance v0, Lcom/samsung/android/sdk/smp/storage/PrefManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->d()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public f(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/common/GlobalData;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Lcom/samsung/android/sdk/smp/storage/PrefManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->e()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/common/GlobalData;->h:Ljava/lang/String;

    .line 123
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/smp/common/GlobalData;->h:Ljava/lang/String;

    return-object p1
.end method
