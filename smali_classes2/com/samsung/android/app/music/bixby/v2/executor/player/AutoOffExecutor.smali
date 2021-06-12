.class public final Lcom/samsung/android/app/music/bixby/v2/executor/player/AutoOffExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v2/CommandExecutor;


# static fields
.field private static final a:Ljava/lang/String; = "AutoOffExecutor"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(I)I
    .locals 2

    .line 90
    new-instance v0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity$AutoOffSettingItems;

    invoke-direct {v0}, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity$AutoOffSettingItems;-><init>()V

    .line 91
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity$AutoOffSettingItems;->a(I)I

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    const/16 p1, -0x3e7

    .line 93
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity$AutoOffSettingItems;->a(I)I

    move-result v1

    :cond_0
    return v1
.end method

.method private a(Landroid/content/Context;I)V
    .locals 2

    .line 61
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/utils/AutoOffUtils;->invokeAutoOff(Landroid/content/Context;I)J

    move-result-wide v0

    const-string p2, "music_auto_off_target_time"

    .line 62
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/app/music/bixby/v2/executor/player/AutoOffExecutor;->a(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method private a(Landroid/content/Context;III)V
    .locals 1

    const-string v0, "music_auto_off_entry_position"

    .line 67
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/player/AutoOffExecutor;->a(Landroid/content/Context;Ljava/lang/String;I)V

    const-string p2, "music_auto_off_custom_hour"

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/bixby/v2/executor/player/AutoOffExecutor;->a(Landroid/content/Context;Ljava/lang/String;I)V

    const-string p2, "music_auto_off_custom_min"

    .line 70
    invoke-direct {p0, p1, p2, p4}, Lcom/samsung/android/app/music/bixby/v2/executor/player/AutoOffExecutor;->a(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    const-string v0, "music_player_pref"

    const/4 v1, 0x0

    .line 75
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 76
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 77
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 78
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2

    const-string v0, "music_player_pref"

    const/4 v1, 0x0

    .line 83
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 84
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 85
    invoke-interface {p1, p2, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 86
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public execute(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V
    .locals 5
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

    .line 34
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/player/AutoOffExecutor;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "viv.samsungMusicApp.SleeptimerOn"

    .line 39
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;->getActionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "duration"

    .line 42
    invoke-virtual {p2, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const v2, 0xea60

    mul-int v2, v2, p2

    .line 44
    div-int/lit8 v3, p2, 0x3c

    .line 45
    rem-int/lit8 p2, p2, 0x3c

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ltz v3, :cond_2

    const/16 v4, 0x17

    if-gt v3, v4, :cond_2

    if-ltz p2, :cond_2

    const/16 v4, 0x3b

    if-gt p2, v4, :cond_2

    .line 49
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/app/music/bixby/v2/executor/player/AutoOffExecutor;->a(Landroid/content/Context;I)V

    .line 50
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/bixby/v2/executor/player/AutoOffExecutor;->a(I)I

    move-result v2

    invoke-direct {p0, p1, v2, v3, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/player/AutoOffExecutor;->a(Landroid/content/Context;III)V

    .line 51
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    if-eqz v0, :cond_1

    const-string p2, "Music_19_2"

    goto :goto_1

    :cond_1
    const-string p2, "Music_20_2"

    :goto_1
    invoke-direct {p1, v1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    return-void

    :cond_2
    if-eqz v0, :cond_3

    .line 56
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const/4 p2, -0x1

    const-string v0, "Music_19_1"

    invoke-direct {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    :cond_3
    return-void
.end method
