.class public final Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v2/CommandExecutor;


# static fields
.field private static final a:Ljava/lang/String; = "PreconditionExecutor"


# instance fields
.field private b:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

.field private c:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

.field private d:I

.field private e:I

.field private final f:Lcom/samsung/android/app/music/update/SamsungAppsManager$ResultListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor$1;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor;->f:Lcom/samsung/android/app/music/update/SamsungAppsManager$ResultListener;

    return-void
.end method

.method private a(Landroid/content/Context;)I
    .locals 3

    const-string v0, "music_player_pref"

    const/4 v1, 0x0

    .line 69
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "com.sec.android.app.music.KEP_CHECKED_DEPLOYED_VERSION"

    .line 70
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 71
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppUpdateVersionCode() | updateVersion - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor;)Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor;->c:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 133
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    const-string p1, "appVersionCode"

    .line 134
    iget v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "appUpdateVersionCode"

    .line 135
    iget v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    return-void
.end method

.method private b(Landroid/content/Context;)Z
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 77
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_0

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "android.permission.GET_ACCOUNTS"

    .line 78
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 81
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 83
    :goto_0
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private c(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 87
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->e(Landroid/content/Context;)I

    move-result v0

    .line 88
    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needAppUpdateCheck() | forceVersion - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", currentVersion "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor;->d:I

    if-gez v1, :cond_0

    const-string p1, "Music_0_2"

    .line 92
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor;->a(Ljava/lang/String;)V

    return-void

    .line 95
    :cond_0
    iget v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor;->d:I

    if-le v0, v1, :cond_1

    .line 96
    invoke-static {}, Lcom/samsung/android/app/music/update/SamsungAppsManager;->a()Lcom/samsung/android/app/music/update/SamsungAppsManager;

    move-result-object v0

    const-string v1, "com.sec.android.app.music"

    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor;->f:Lcom/samsung/android/app/music/update/SamsungAppsManager$ResultListener;

    .line 97
    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/android/app/music/update/SamsungAppsManager;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/music/update/SamsungAppsManager$ResultListener;)V

    goto :goto_0

    .line 100
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor;->d(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 120
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    new-instance v1, Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor$2;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor;)V

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor;->c:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    .line 129
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor;->c:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->a()V

    return-void
.end method


# virtual methods
.method public execute(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 43
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor;->d:I

    .line 46
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor;->a(Landroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor;->e:I

    .line 48
    invoke-static {}, Lcom/samsung/android/app/music/legal/LegalUiManager;->a()Z

    move-result p2

    if-nez p2, :cond_0

    .line 49
    sget-object p1, Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor;->a:Ljava/lang/String;

    const-string p2, "isLegalAgreed() - false"

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Music_0_6"

    .line 50
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor;->a(Ljava/lang/String;)V

    return-void

    .line 54
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor;->b(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 55
    sget-object p1, Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor;->a:Ljava/lang/String;

    const-string p2, "isPermissionGranted() - false"

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Music_0_3"

    .line 56
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor;->a(Ljava/lang/String;)V

    return-void

    .line 60
    :cond_1
    sget-boolean p2, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz p2, :cond_2

    .line 61
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor;->c(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const-string p1, "Music_0_0"

    .line 63
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
