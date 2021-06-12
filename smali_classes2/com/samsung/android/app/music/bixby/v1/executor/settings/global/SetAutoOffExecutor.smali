.class public final Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;


# static fields
.field private static final a:Ljava/lang/String; = "SetAutoOffExecutor"


# instance fields
.field private final b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lcom/samsung/android/app/music/settings/AutoOffControllable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Lcom/samsung/android/app/music/settings/AutoOffControllable;)V
    .locals 0
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/music/settings/AutoOffControllable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    .line 37
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor;->c:Lcom/samsung/android/app/music/settings/AutoOffControllable;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor;)Lcom/samsung/android/app/music/settings/AutoOffControllable;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor;->c:Lcom/samsung/android/app/music/settings/AutoOffControllable;

    return-object p0
.end method

.method private a()Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;
    .locals 4

    .line 126
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    const-string v1, "Settings"

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    const-string v1, "Time"

    const-string v2, "Valid"

    const-string v3, "yes"

    .line 127
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    return-object p0
.end method

.method private b()Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;
    .locals 4

    .line 133
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    const-string v1, "Settings"

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    const-string v1, "Time"

    const-string v2, "Valid"

    const-string v3, "no"

    .line 134
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor;->a()Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)Z
    .locals 9
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "SET_AUTO_OFF"

    .line 42
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 43
    sget-object v0, Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "execute() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SleepTimerOff"

    .line 47
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v2, 0x1f4

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    .line 49
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor$1;-><init>(Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor;)V

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v4

    :cond_0
    const-string v0, "AUTO_OFF_TIME"

    .line 62
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 65
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    sget-object p1, Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor;->a:Ljava/lang/String;

    const-string v0, "execute() - Empty parameter."

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    const-string v0, "Settings"

    invoke-direct {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    const-string v0, "Time"

    const-string v1, "Exist"

    const-string v2, "no"

    .line 68
    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    invoke-direct {v1, v4, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    return v4

    :cond_1
    :try_start_0
    const-string v0, ","

    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 76
    array-length v0, p1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_2

    .line 78
    aget-object v6, p1, v5

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aput-object v6, p1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 81
    :cond_2
    aget-object v0, p1, v1

    const-string v1, "[^\\d]"

    const-string v5, ""

    .line 82
    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 83
    aget-object v1, p1, v4

    const-string v5, "[^\\d]"

    const-string v6, ""

    .line 84
    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v5, 0x2

    .line 85
    aget-object v5, p1, v5

    const-string v6, "[^\\d]"

    const-string v7, ""

    .line 86
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 85
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x5

    .line 87
    aget-object v6, p1, v6

    const-string v7, "[^\\d]"

    const-string v8, ""

    .line 88
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 87
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-nez v0, :cond_5

    if-nez v1, :cond_5

    if-nez v5, :cond_5

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x3

    .line 95
    aget-object v0, p1, v0

    const-string v1, "[^\\d]"

    const-string v5, ""

    .line 96
    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    .line 97
    aget-object p1, p1, v1

    const-string v1, "[^\\d]"

    const-string v5, ""

    .line 98
    invoke-virtual {p1, v1, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 97
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-ltz v0, :cond_4

    const/16 v1, 0x17

    if-gt v0, v1, :cond_4

    if-ltz p1, :cond_4

    const/16 v1, 0x3b

    if-gt p1, v1, :cond_4

    .line 103
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor$2;

    invoke-direct {v5, p0, v0, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor$2;-><init>(Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor;II)V

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    .line 118
    :cond_4
    sget-object p1, Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor;->a:Ljava/lang/String;

    const-string v0, "execute() - Invalid parameter."

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor;->b()Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    return v4

    .line 90
    :cond_5
    :goto_1
    :try_start_1
    sget-object p1, Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor;->a:Ljava/lang/String;

    const-string v0, "execute() - Wrong value is bigger than zero."

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor;->b()Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v4

    :catch_0
    move-exception p1

    .line 113
    sget-object v0, Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/SetAutoOffExecutor;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute() - Occur error while set auto off. - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_6
    return v1
.end method
