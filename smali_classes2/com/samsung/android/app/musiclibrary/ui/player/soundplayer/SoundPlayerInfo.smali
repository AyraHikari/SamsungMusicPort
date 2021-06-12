.class public final Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;,
        Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SoundPlayerFileInfo;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "SoundPlayerInfo"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;
    .locals 12

    .line 80
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;-><init>()V

    .line 82
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 83
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SoundPlayerFileInfo;->a:Landroid/net/Uri;

    .line 84
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "content://mms/part/"

    .line 85
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    const-string v3, "content://spammms/spampart/"

    .line 86
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "content://security_mms/part/"

    .line 87
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const-string v5, "_id"

    const-string v6, "_display_name"

    const-string v7, "artist"

    const-string v8, "_data"

    const-string v9, "is_music"

    .line 91
    filled-new-array {v5, v6, v7, v8, v9}, [Ljava/lang/String;

    move-result-object v5

    move-object v8, v5

    goto :goto_2

    :cond_2
    move-object v8, v3

    :goto_2
    if-eqz p1, :cond_3

    .line 99
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p1

    and-int/2addr p1, v4

    if-eqz p1, :cond_3

    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, p2

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object p1, v3

    goto/16 :goto_b

    :catch_0
    move-exception p0

    move-object p1, v3

    goto/16 :goto_7

    :catch_1
    move-exception p0

    move-object p1, v3

    goto/16 :goto_8

    :catch_2
    move-exception p0

    move-object p1, v3

    goto/16 :goto_9

    :catch_3
    move-exception p0

    move-object p1, v3

    goto/16 :goto_a

    :cond_3
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    move-object v7, p2

    .line 102
    invoke-static/range {v6 .. v11}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    if-eqz p1, :cond_7

    .line 104
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_7

    if-eqz v1, :cond_4

    const-string p2, "cl"

    .line 107
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    goto :goto_4

    :cond_4
    const-string p2, "_display_name"

    .line 109
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    :goto_4
    if-ltz p2, :cond_6

    .line 111
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 112
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;->c:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 113
    iget-object p2, v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;->c:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p2, :cond_5

    .line 116
    :try_start_2
    new-instance p2, Ljava/lang/String;

    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;->c:Ljava/lang/String;

    const-string v4, "ISO-8859-1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/lang/String;-><init>([B)V

    iput-object p2, v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;->c:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catch_4
    move-exception p2

    .line 118
    :try_start_3
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSongInfo() - UnsupportedEncodingException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {p2}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 118
    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iput-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;->c:Ljava/lang/String;

    .line 123
    :cond_5
    :goto_5
    iget-object p2, v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;->c:Ljava/lang/String;

    invoke-static {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;->c:Ljava/lang/String;

    :cond_6
    if-eqz v2, :cond_7

    const-string p2, "_id"

    .line 126
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;->a:J

    const-string p2, "artist"

    .line 128
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 127
    invoke-static {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;->d:Ljava/lang/String;

    const-string p0, "_data"

    .line 129
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;->b:Ljava/lang/String;

    const-string p0, "is_music"

    .line 130
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    iput p0, v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;->e:I
    :try_end_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_6

    :catch_5
    move-exception p0

    goto :goto_7

    :catch_6
    move-exception p0

    goto :goto_8

    :catch_7
    move-exception p0

    goto :goto_9

    :catch_8
    move-exception p0

    goto :goto_a

    :cond_7
    :goto_6
    if-eqz p1, :cond_8

    .line 152
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_8
    return-object v0

    .line 148
    :goto_7
    :try_start_4
    sget-object p2, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSongInfo() - IllegalArgumentException : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz p1, :cond_9

    .line 152
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_9
    return-object v3

    .line 142
    :goto_8
    :try_start_5
    sget-object p2, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSongInfo() - NullPointerException : if it is from provider, conforming the request is necessary : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 142
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz p1, :cond_a

    .line 152
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_a
    return-object v3

    .line 139
    :goto_9
    :try_start_6
    sget-object p2, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSongInfo() - SecurityException : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz p1, :cond_b

    .line 152
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_b
    return-object v3

    .line 135
    :goto_a
    :try_start_7
    sget-object p2, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSongInfo() - UnsupportedOperationException : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz p1, :cond_c

    .line 152
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_c
    return-object v3

    :catchall_1
    move-exception p0

    :goto_b
    if-eqz p1, :cond_d

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_d
    throw p0
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-static {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    move-result-object p0

    return-object p0
.end method
