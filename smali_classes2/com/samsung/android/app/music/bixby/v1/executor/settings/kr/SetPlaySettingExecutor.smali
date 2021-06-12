.class public Lcom/samsung/android/app/music/bixby/v1/executor/settings/kr/SetPlaySettingExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/bixby/v1/executor/settings/kr/SetPlaySettingExecutor$PlaySetting;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "SetPlaySettingExecutor"


# instance fields
.field private final b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lcom/samsung/android/app/music/settings/SettingsFragment;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Lcom/samsung/android/app/music/settings/SettingsFragment;)V
    .locals 0
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/music/settings/SettingsFragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/settings/kr/SetPlaySettingExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    .line 62
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/settings/kr/SetPlaySettingExecutor;->c:Lcom/samsung/android/app/music/settings/SettingsFragment;

    return-void
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)Z
    .locals 4
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "SET_PLAY_SETTING"

    .line 67
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 68
    sget-object v0, Lcom/samsung/android/app/music/bixby/v1/executor/settings/kr/SetPlaySettingExecutor;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PLAY_SETTING"

    .line 70
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 73
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    sget-object p1, Lcom/samsung/android/app/music/bixby/v1/executor/settings/kr/SetPlaySettingExecutor;->a:Ljava/lang/String;

    const-string v0, "execute() - Empty Parameter"

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "PlaySetting"

    const-string v0, "Exist"

    const-string v1, "no"

    goto :goto_0

    .line 79
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v1/executor/settings/kr/SetPlaySettingExecutor$PlaySetting;->getPosition(Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/v1/executor/settings/kr/SetPlaySettingExecutor$PlaySetting;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 82
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->a()I

    move-result v1

    .line 84
    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v1/executor/settings/kr/SetPlaySettingExecutor$PlaySetting;->getPrefValue()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 85
    sget-object v1, Lcom/samsung/android/app/music/bixby/v1/executor/settings/kr/SetPlaySettingExecutor;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "execute() - Valid Parameter : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v1/executor/settings/kr/SetPlaySettingExecutor$PlaySetting;->getPrefValue()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/app/music/settings/MilkSettings;->a(I)V

    .line 87
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/settings/kr/SetPlaySettingExecutor;->c:Lcom/samsung/android/app/music/settings/SettingsFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/settings/SettingsFragment;->c()V

    const-string p1, "PlaySetting"

    const-string v0, "AlreadySet"

    const-string v1, "no"

    goto :goto_0

    .line 93
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/bixby/v1/executor/settings/kr/SetPlaySettingExecutor;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute() - Valid Parameter(already set) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "PlaySetting"

    const-string v0, "AlreadySet"

    const-string v1, "yes"

    goto :goto_0

    .line 99
    :cond_2
    sget-object v0, Lcom/samsung/android/app/music/bixby/v1/executor/settings/kr/SetPlaySettingExecutor;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute() - Invalid Parameter : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "PlaySetting"

    const-string v0, "Valid"

    const-string v1, "no"

    .line 106
    :goto_0
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    const-string v3, "Settings"

    invoke-direct {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v2, p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/settings/kr/SetPlaySettingExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method
