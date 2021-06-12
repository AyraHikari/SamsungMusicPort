.class public Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/CallStateChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "CallStateChecker"

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/CallStateChecker;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/CallStateChecker;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Z
    .locals 1

    .line 83
    invoke-static {}, Lcom/samsung/android/app/music/support/samsung/voip/IVoIPInterfaceCompat;->isVoIPIdle()Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 8

    .line 57
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->k_:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 58
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/CallStateChecker;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/CallStateChecker;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v1

    .line 65
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/CallStateChecker;->a()Z

    move-result v0

    .line 66
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/CallStateChecker;->b(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_4

    .line 70
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/CallStateChecker;->c(Landroid/content/Context;)Z

    move-result p0

    .line 71
    sget-object v5, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/CallStateChecker;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isCallIdle() isVoipIdle : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " isCommIdle(Such like google talk..) : "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " isCallStateIdle : "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_3

    if-eqz p0, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 76
    :cond_4
    sget-object p0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/CallStateChecker;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCallIdle() isVoipIdle : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " isCommIdle(Such like google talk..) : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v4
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "audio"

    .line 92
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 95
    invoke-virtual {p0}, Landroid/media/AudioManager;->getMode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static c(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "phone"

    .line 108
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 112
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result p0

    .line 113
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/CallStateChecker;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDuringCall() call state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static d(Landroid/content/Context;)Z
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "content://com.lguplus.rms/service"

    .line 128
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 130
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "connected"

    .line 131
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p0, :cond_2

    .line 137
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v1

    goto :goto_4

    :catch_1
    move-exception p0

    move-object v9, v1

    move-object v1, p0

    move-object p0, v9

    :goto_1
    :try_start_2
    const-string v2, "RMS"

    .line 134
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p0, :cond_1

    .line 137
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_2
    const/4 p0, 0x1

    if-ne v1, p0, :cond_3

    goto :goto_3

    :cond_3
    const/4 p0, 0x0

    :goto_3
    return p0

    :catchall_1
    move-exception v0

    :goto_4
    if-eqz p0, :cond_4

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private static e(Landroid/content/Context;)Z
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "content://com.uplus.ipagent.SettingsProvider/system"

    .line 155
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v1, "value"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "name=?"

    const-string v1, "setting_pluscall_active"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v2, p0

    .line 154
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_1

    .line 159
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    const-string v1, "value"

    .line 161
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_1

    :cond_0
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v8, v0

    move-object v0, p0

    move-object p0, v8

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v8, v0

    move-object v0, p0

    move-object p0, v8

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v8, v0

    move-object v0, p0

    move-object p0, v1

    move-object v1, v8

    goto :goto_2

    :cond_1
    :goto_1
    if-eqz p0, :cond_3

    .line 168
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    move-object v1, v0

    :goto_2
    :try_start_3
    const-string v2, "UWA CALL Exception"

    .line 165
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_2

    .line 168
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v1

    :cond_3
    :goto_3
    const-string p0, "1"

    .line 172
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :goto_4
    if-eqz v0, :cond_4

    .line 168
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p0
.end method
