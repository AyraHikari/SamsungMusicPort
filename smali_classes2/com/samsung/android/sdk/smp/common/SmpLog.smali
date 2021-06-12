.class public Lcom/samsung/android/sdk/smp/common/SmpLog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "SmpLog"

.field private static b:Z

.field private static c:Z

.field private static d:Z

.field private static e:Z

.field private static f:I

.field private static g:Ljava/io/File;

.field private static h:Ljava/io/FileOutputStream;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
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

    sput-object v0, Lcom/samsung/android/sdk/smp/common/SmpLog;->i:Ljava/lang/String;

    const/4 v0, 0x0

    .line 37
    sput-object v0, Lcom/samsung/android/sdk/smp/common/SmpLog;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 165
    :pswitch_0
    sget-object p0, Lcom/samsung/android/sdk/smp/common/SmpLog;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 156
    :pswitch_1
    sget-object p0, Lcom/samsung/android/sdk/smp/common/SmpLog;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 159
    :pswitch_2
    sget-object p0, Lcom/samsung/android/sdk/smp/common/SmpLog;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 162
    :pswitch_3
    sget-object p0, Lcom/samsung/android/sdk/smp/common/SmpLog;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 153
    :pswitch_4
    sget-object p0, Lcom/samsung/android/sdk/smp/common/SmpLog;->a:Ljava/lang/String;

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

.method public static a(Landroid/content/Context;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/smp/common/SmpLog;->j:Ljava/lang/String;

    .line 46
    invoke-static {}, Lcom/samsung/android/sdk/smp/common/GlobalData;->a()Lcom/samsung/android/sdk/smp/common/GlobalData;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/smp/common/GlobalData;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 48
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/sdk/smp/common/SmpLog;->b:Z

    if-nez v0, :cond_0

    .line 50
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/TestModeUtil;->a(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 73
    :pswitch_0
    sput-boolean v0, Lcom/samsung/android/sdk/smp/common/SmpLog;->c:Z

    .line 74
    sget-object p0, Lcom/samsung/android/sdk/smp/common/SmpLog;->a:Ljava/lang/String;

    const-string v0, "Test mode: false, invalid cfg, v:2.0.4"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :pswitch_1
    sput-boolean v0, Lcom/samsung/android/sdk/smp/common/SmpLog;->c:Z

    .line 58
    sget-object p0, Lcom/samsung/android/sdk/smp/common/SmpLog;->a:Ljava/lang/String;

    const-string v0, "Test mode: false, canRead: false, v:2.0.4"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :pswitch_2
    sput-boolean v1, Lcom/samsung/android/sdk/smp/common/SmpLog;->c:Z

    .line 67
    sput-boolean v1, Lcom/samsung/android/sdk/smp/common/SmpLog;->d:Z

    .line 68
    sput-boolean v1, Lcom/samsung/android/sdk/smp/common/SmpLog;->e:Z

    .line 69
    invoke-static {}, Lcom/samsung/android/sdk/smp/common/SmpLog;->c()V

    .line 70
    sget-object p0, Lcom/samsung/android/sdk/smp/common/SmpLog;->a:Ljava/lang/String;

    const-string v0, "Test mode: true, canWrite: true, v:2.0.4"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :pswitch_3
    sput-boolean v1, Lcom/samsung/android/sdk/smp/common/SmpLog;->c:Z

    .line 62
    sput-boolean v1, Lcom/samsung/android/sdk/smp/common/SmpLog;->d:Z

    .line 63
    sget-object p0, Lcom/samsung/android/sdk/smp/common/SmpLog;->a:Ljava/lang/String;

    const-string v0, "Test mode: true, canWrite: false, v:2.0.4"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :pswitch_4
    sput-boolean v0, Lcom/samsung/android/sdk/smp/common/SmpLog;->c:Z

    .line 54
    sget-object p0, Lcom/samsung/android/sdk/smp/common/SmpLog;->a:Ljava/lang/String;

    const-string v0, "Test mode: false, v:2.0.4"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :goto_0
    sput-boolean v1, Lcom/samsung/android/sdk/smp/common/SmpLog;->b:Z

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 87
    sget-boolean v0, Lcom/samsung/android/sdk/smp/common/SmpLog;->d:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 88
    invoke-static {v1, p0, p1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_0
    sget-boolean v0, Lcom/samsung/android/sdk/smp/common/SmpLog;->e:Z

    if-eqz v0, :cond_1

    .line 91
    invoke-static {v1, p0, p1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->b(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Z)V
    .locals 1

    .line 40
    sget-boolean v0, Lcom/samsung/android/sdk/smp/common/SmpLog;->c:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    sput-boolean p0, Lcom/samsung/android/sdk/smp/common/SmpLog;->d:Z

    return-void
.end method

.method private static a([B)V
    .locals 5

    .line 241
    sget-object v0, Lcom/samsung/android/sdk/smp/common/SmpLog;->g:Ljava/io/File;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/smp/common/SmpLog;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 242
    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/smp/common/SmpLog;->c()V

    :cond_1
    const/4 v0, 0x0

    .line 246
    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/smp/common/SmpLog;->h:Ljava/io/FileOutputStream;

    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 247
    sget-object p0, Lcom/samsung/android/sdk/smp/common/SmpLog;->h:Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->flush()V

    .line 249
    sget-object p0, Lcom/samsung/android/sdk/smp/common/SmpLog;->g:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x500000

    cmp-long p0, v1, v3

    if-lez p0, :cond_2

    .line 250
    sget-object p0, Lcom/samsung/android/sdk/smp/common/SmpLog;->h:Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    .line 251
    sput-object v0, Lcom/samsung/android/sdk/smp/common/SmpLog;->h:Ljava/io/FileOutputStream;

    .line 252
    invoke-static {}, Lcom/samsung/android/sdk/smp/common/SmpLog;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 255
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 257
    :try_start_1
    sget-object p0, Lcom/samsung/android/sdk/smp/common/SmpLog;->h:Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    .line 258
    sput-object v0, Lcom/samsung/android/sdk/smp/common/SmpLog;->g:Ljava/io/File;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 260
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method private static a()Z
    .locals 2

    const-string v0, "com.samsung.android.test.smp"

    .line 212
    sget-object v1, Lcom/samsung/android/sdk/smp/common/SmpLog;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static b()Ljava/lang/String;
    .locals 2

    .line 216
    sget-object v0, Lcom/samsung/android/sdk/smp/common/SmpLog;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Smplog_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/sdk/smp/common/SmpLog;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/samsung/android/sdk/smp/common/SmpLog;->f:I

    rem-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 219
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Smplog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/samsung/android/sdk/smp/common/SmpLog;->f:I

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

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MM/dd/yy HH:mm:ss"

    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v1, 0x6

    if-eq p0, v1, :cond_0

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

    goto :goto_0

    :cond_0
    const/16 p0, 0x48

    :goto_0
    const/16 v1, 0x20

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 200
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "["

    .line 202
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] "

    .line 204
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0xa

    .line 206
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a([B)V

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

    .line 100
    sget-boolean v0, Lcom/samsung/android/sdk/smp/common/SmpLog;->d:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 101
    invoke-static {v1, p0, p1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    sget-boolean v0, Lcom/samsung/android/sdk/smp/common/SmpLog;->e:Z

    if-eqz v0, :cond_1

    .line 104
    invoke-static {v1, p0, p1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->b(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static c()V
    .locals 3

    .line 225
    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/smp/common/SmpLog;->h:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    .line 226
    sget-object v0, Lcom/samsung/android/sdk/smp/common/SmpLog;->h:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    const/4 v0, 0x0

    .line 227
    sput-object v0, Lcom/samsung/android/sdk/smp/common/SmpLog;->h:Ljava/io/FileOutputStream;

    .line 229
    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/samsung/android/sdk/smp/common/SmpLog;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 231
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 233
    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/sdk/smp/common/SmpLog;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/smp/common/SmpLog;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/smp/common/SmpLog;->g:Ljava/io/File;

    .line 234
    new-instance v0, Ljava/io/FileOutputStream;

    sget-object v1, Lcom/samsung/android/sdk/smp/common/SmpLog;->g:Ljava/io/File;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sput-object v0, Lcom/samsung/android/sdk/smp/common/SmpLog;->h:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 236
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 113
    sget-boolean v0, Lcom/samsung/android/sdk/smp/common/SmpLog;->d:Z

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 114
    invoke-static {v1, p0, p1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_0
    sget-boolean v0, Lcom/samsung/android/sdk/smp/common/SmpLog;->e:Z

    if-eqz v0, :cond_1

    .line 117
    invoke-static {v1, p0, p1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->b(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static d()V
    .locals 5

    .line 266
    sget-object v0, Lcom/samsung/android/sdk/smp/common/SmpLog;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const/4 v2, 0x1

    const-wide/32 v3, 0x500000

    cmp-long v0, v0, v3

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 268
    sget v1, Lcom/samsung/android/sdk/smp/common/SmpLog;->f:I

    add-int/2addr v1, v2

    sput v1, Lcom/samsung/android/sdk/smp/common/SmpLog;->f:I

    .line 270
    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/samsung/android/sdk/smp/common/SmpLog;->i:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/smp/common/SmpLog;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 272
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    xor-int/2addr v0, v2

    invoke-direct {v3, v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sput-object v3, Lcom/samsung/android/sdk/smp/common/SmpLog;->h:Ljava/io/FileOutputStream;

    .line 273
    sput-object v1, Lcom/samsung/android/sdk/smp/common/SmpLog;->g:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 275
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 126
    sget-boolean v0, Lcom/samsung/android/sdk/smp/common/SmpLog;->d:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 127
    invoke-static {v1, p0, p1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_0
    sget-boolean v0, Lcom/samsung/android/sdk/smp/common/SmpLog;->e:Z

    if-eqz v0, :cond_1

    .line 130
    invoke-static {v1, p0, p1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->b(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 135
    sget-boolean v0, Lcom/samsung/android/sdk/smp/common/SmpLog;->d:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    .line 136
    invoke-static {v0, p0, p1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 141
    sget-object v0, Lcom/samsung/android/sdk/smp/common/SmpLog;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    sget-boolean v0, Lcom/samsung/android/sdk/smp/common/SmpLog;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    .line 143
    invoke-static {v0, p0, p1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->b(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
