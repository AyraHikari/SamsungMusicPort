.class public Lcom/samsung/android/sdk/ppmt/common/Slog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Z

.field private static c:Z

.field private static d:I

.field private static e:Ljava/io/File;

.field private static f:Ljava/io/FileOutputStream;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/ppmt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/ppmt/common/Slog;->g:Ljava/lang/String;

    const/4 v0, 0x0

    .line 36
    sput-object v0, Lcom/samsung/android/sdk/ppmt/common/Slog;->h:Ljava/lang/String;

    return-void
.end method

.method private static a()V
    .locals 5

    .line 43
    sget-boolean v0, Lcom/samsung/android/sdk/ppmt/common/Slog;->c:Z

    if-nez v0, :cond_1

    .line 44
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/ppmt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ppmt.cfg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    .line 47
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    const-string v2, "Sppmt"

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Test mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", canWrite:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", v:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "1.3.1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    .line 51
    invoke-static {v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Z)V

    :cond_0
    const/4 v0, 0x1

    .line 53
    sput-boolean v0, Lcom/samsung/android/sdk/ppmt/common/Slog;->c:Z

    :cond_1
    return-void
.end method

.method private static a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p0, "Sppmt"

    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    const-string p0, "Sppmt"

    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    const-string p0, "Sppmt"

    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    const-string p0, "Sppmt"

    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_4
    const-string p0, "Sppmt"

    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 94
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a()V

    const-string v0, "true"

    .line 95
    sget-object v1, Lcom/samsung/android/sdk/ppmt/common/Slog;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 96
    invoke-static {v1, p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_0
    sget-boolean v0, Lcom/samsung/android/sdk/ppmt/common/Slog;->b:Z

    if-eqz v0, :cond_1

    .line 99
    invoke-static {v1, p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static a(Z)V
    .locals 1

    const-string v0, "true"

    .line 75
    sput-object v0, Lcom/samsung/android/sdk/ppmt/common/Slog;->a:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 79
    sput-boolean p0, Lcom/samsung/android/sdk/ppmt/common/Slog;->b:Z

    .line 81
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d()V

    :cond_0
    return-void
.end method

.method public static a([B)V
    .locals 5

    .line 221
    sget-object v0, Lcom/samsung/android/sdk/ppmt/common/Slog;->e:Ljava/io/File;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/ppmt/common/Slog;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 222
    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d()V

    :cond_1
    const/4 v0, 0x0

    .line 226
    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/ppmt/common/Slog;->f:Ljava/io/FileOutputStream;

    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 227
    sget-object p0, Lcom/samsung/android/sdk/ppmt/common/Slog;->f:Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->flush()V

    .line 229
    sget-object p0, Lcom/samsung/android/sdk/ppmt/common/Slog;->e:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x500000

    cmp-long p0, v1, v3

    if-lez p0, :cond_2

    const-string p0, "Sppmt"

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current log file size is max. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/sdk/ppmt/common/Slog;->e:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    sget-object p0, Lcom/samsung/android/sdk/ppmt/common/Slog;->f:Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    .line 232
    sput-object v0, Lcom/samsung/android/sdk/ppmt/common/Slog;->f:Ljava/io/FileOutputStream;

    .line 233
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 236
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 238
    :try_start_1
    sget-object p0, Lcom/samsung/android/sdk/ppmt/common/Slog;->f:Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    .line 239
    sput-object v0, Lcom/samsung/android/sdk/ppmt/common/Slog;->e:Ljava/io/File;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 241
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method private static b()Ljava/lang/String;
    .locals 2

    .line 86
    sget-object v0, Lcom/samsung/android/sdk/ppmt/common/Slog;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sppmtlog_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/sdk/ppmt/common/Slog;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/samsung/android/sdk/ppmt/common/Slog;->d:I

    rem-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sppmtlog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/samsung/android/sdk/ppmt/common/Slog;->d:I

    rem-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MM/dd/yy HH:mm:ss"

    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0x56

    goto :goto_0

    :pswitch_0
    const/16 p0, 0x44

    goto :goto_0

    :pswitch_1
    const/16 p0, 0x49

    goto :goto_0

    :pswitch_2
    const/16 p0, 0x57

    goto :goto_0

    :pswitch_3
    const/16 p0, 0x45

    :goto_0
    const/16 v1, 0x20

    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "["

    .line 194
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] "

    .line 196
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0xa

    .line 198
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a([B)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 104
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a()V

    const-string v0, "true"

    .line 105
    sget-object v1, Lcom/samsung/android/sdk/ppmt/common/Slog;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 106
    invoke-static {v1, p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_0
    sget-boolean v0, Lcom/samsung/android/sdk/ppmt/common/Slog;->b:Z

    if-eqz v0, :cond_1

    .line 109
    invoke-static {v1, p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 114
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a()V

    const-string v0, "true"

    .line 115
    sget-object v1, Lcom/samsung/android/sdk/ppmt/common/Slog;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 116
    invoke-static {v1, p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_0
    sget-boolean v0, Lcom/samsung/android/sdk/ppmt/common/Slog;->b:Z

    if-eqz v0, :cond_1

    .line 119
    invoke-static {v1, p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static c()Z
    .locals 2

    const-string v0, "com.samsung.android.test.ppmt"

    .line 141
    sget-object v1, Lcom/samsung/android/sdk/ppmt/common/Slog;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static d()V
    .locals 3

    .line 205
    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/ppmt/common/Slog;->f:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    .line 206
    sget-object v0, Lcom/samsung/android/sdk/ppmt/common/Slog;->f:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    const/4 v0, 0x0

    .line 207
    sput-object v0, Lcom/samsung/android/sdk/ppmt/common/Slog;->f:Ljava/io/FileOutputStream;

    .line 209
    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/samsung/android/sdk/ppmt/common/Slog;->g:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 211
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 213
    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/sdk/ppmt/common/Slog;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/common/Slog;->e:Ljava/io/File;

    .line 214
    new-instance v0, Ljava/io/FileOutputStream;

    sget-object v1, Lcom/samsung/android/sdk/ppmt/common/Slog;->e:Ljava/io/File;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/common/Slog;->f:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 216
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 124
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a()V

    const-string v0, "true"

    .line 125
    sget-object v1, Lcom/samsung/android/sdk/ppmt/common/Slog;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 126
    invoke-static {v1, p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_0
    sget-boolean v0, Lcom/samsung/android/sdk/ppmt/common/Slog;->b:Z

    if-eqz v0, :cond_1

    .line 129
    invoke-static {v1, p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 134
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a()V

    const-string v0, "true"

    .line 135
    sget-object v1, Lcom/samsung/android/sdk/ppmt/common/Slog;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/ppmt/common/Slog;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    .line 136
    invoke-static {v0, p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static e()Z
    .locals 6

    .line 247
    sget-object v0, Lcom/samsung/android/sdk/ppmt/common/Slog;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/32 v4, 0x500000

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 249
    sget v1, Lcom/samsung/android/sdk/ppmt/common/Slog;->d:I

    add-int/2addr v1, v3

    sput v1, Lcom/samsung/android/sdk/ppmt/common/Slog;->d:I

    .line 251
    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/samsung/android/sdk/ppmt/common/Slog;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 253
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    xor-int/2addr v0, v3

    invoke-direct {v4, v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sput-object v4, Lcom/samsung/android/sdk/ppmt/common/Slog;->f:Ljava/io/FileOutputStream;

    .line 254
    sput-object v1, Lcom/samsung/android/sdk/ppmt/common/Slog;->e:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v0

    .line 256
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v2
.end method
