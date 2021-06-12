.class public Lcom/samsung/android/app/musiclibrary/core/utils/DebugTracer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final COMMAND:[Ljava/lang/String;

.field private static final OPEN_FILE_COMMAND_FORMAT:Ljava/lang/String; = "ls -l /proc/%d/fd | grep %s"


# instance fields
.field private final mLogTag:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;

.field private final mTraceRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x3

    .line 19
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/system/bin/sh"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "-c"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "ls -l /proc/%d/fd | grep %s"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    .line 23
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    const-string v2, "/storage/emulated/0"

    aput-object v2, v6, v3

    .line 22
    invoke-static {v1, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/DebugTracer;->COMMAND:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/utils/DebugTracer$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/utils/DebugTracer$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/utils/DebugTracer;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/DebugTracer;->mTraceRunnable:Ljava/lang/Runnable;

    .line 31
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/DebugTracer;->mLogTag:Ljava/lang/String;

    .line 32
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/DebugTracer;->getPackageNameInternal()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/DebugTracer;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/utils/DebugTracer;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/DebugTracer;->traceFileTable()V

    return-void
.end method

.method private getPackageNameInternal()Ljava/lang/String;
    .locals 4

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/proc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/cmdline"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v0, "iso-8859-1"

    invoke-direct {v2, v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v0, 0x0

    .line 58
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v2

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v0

    .line 56
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    if-eqz v0, :cond_0

    .line 59
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_5
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :goto_1
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    const-string v0, "Unknown"

    return-object v0
.end method

.method private traceFileTable()V
    .locals 7

    const/16 v0, 0x2000

    .line 67
    :try_start_0
    new-array v0, v0, [B

    .line 68
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/utils/DebugTracer;->COMMAND:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 69
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 70
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v3, 0x0

    .line 72
    :goto_0
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_0

    const/4 v5, 0x0

    .line 73
    invoke-virtual {v2, v0, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 76
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/DebugTracer;->mLogTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/samsung/android/app/musiclibrary/core/utils/DebugTracer;->COMMAND:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Result > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/DebugTracer;->mLogTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  { "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " }"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    .line 78
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 70
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    if-eqz v1, :cond_2

    if-eqz v3, :cond_1

    .line 78
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_5
    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_2
    :goto_2
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    :cond_3
    :goto_3
    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/DebugTracer;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public trace()V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/DebugTracer;->mTraceRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public trace(Landroid/os/Handler;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/DebugTracer;->mTraceRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
