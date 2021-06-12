.class final Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/OOMUncaughtExceptionHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/CustomUncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/OOMUncaughtExceptionHandler$DumpLock;,
        Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/OOMUncaughtExceptionHandler$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/OOMUncaughtExceptionHandler$Companion;

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-OOM"

.field private static final SUB_TAG:Ljava/lang/String; = "OOMUncaughtExceptionHandler"

.field private static final TAG:Ljava/lang/String; = "OOM"


# instance fields
.field private final destFilename:Ljava/lang/String;

.field private final destFolder:Ljava/io/File;

.field private volatile inDump:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/OOMUncaughtExceptionHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/OOMUncaughtExceptionHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/OOMUncaughtExceptionHandler;->Companion:Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/OOMUncaughtExceptionHandler$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "processName"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    sget-object p1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {p1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const-string v0, "Environment.getExternalS\u2026ment.DIRECTORY_DOWNLOADS)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/OOMUncaughtExceptionHandler;->destFolder:Ljava/io/File;

    .line 62
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyyMMdd_HHmmss"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p1, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-string v1, "Calendar.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 63
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/OOMUncaughtExceptionHandler;->destFolder:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x2d

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".hprof"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string p2, "File(destFolder, \"$proce\u2026time.hprof\").absolutePath"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/OOMUncaughtExceptionHandler;->destFilename:Ljava/lang/String;

    return-void
.end method

.method private final dumpHeap()V
    .locals 4

    .line 95
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/OOMUncaughtExceptionHandler;->Companion:Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/OOMUncaughtExceptionHandler$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumping heap to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/OOMUncaughtExceptionHandler;->destFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/OOMUncaughtExceptionHandler$Companion;->printLog$musicLibrary_release(Ljava/lang/String;)I

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/OOMUncaughtExceptionHandler;->destFolder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/OOMUncaughtExceptionHandler;->destFilename:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 100
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/OOMUncaughtExceptionHandler;->Companion:Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/OOMUncaughtExceptionHandler$Companion;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to dumpstate because of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/OOMUncaughtExceptionHandler$Companion;->printLog$musicLibrary_release(Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public canHandle(Ljava/lang/Thread;Ljava/lang/Throwable;)Z
    .locals 1

    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    instance-of p1, p2, Ljava/lang/OutOfMemoryError;

    return p1
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 74
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/OOMUncaughtExceptionHandler;->Companion:Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/OOMUncaughtExceptionHandler$Companion;

    const-string p2, "OOM Exception handler"

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/OOMUncaughtExceptionHandler$Companion;->printLog$musicLibrary_release(Ljava/lang/String;)I

    .line 75
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/OOMUncaughtExceptionHandler;->inDump:Z

    if-eqz p1, :cond_0

    .line 76
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/OOMUncaughtExceptionHandler;->Companion:Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/OOMUncaughtExceptionHandler$Companion;

    const-string p2, "recursive exception ignored"

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/OOMUncaughtExceptionHandler$Companion;->printErrorLog$musicLibrary_release(Ljava/lang/String;)I

    return-void

    .line 79
    :cond_0
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/OOMUncaughtExceptionHandler$DumpLock;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/OOMUncaughtExceptionHandler$DumpLock;

    monitor-enter p1

    .line 80
    :try_start_0
    iget-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/OOMUncaughtExceptionHandler;->inDump:Z

    if-eqz p2, :cond_1

    .line 81
    sget-object p2, Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/OOMUncaughtExceptionHandler;->Companion:Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/OOMUncaughtExceptionHandler$Companion;

    const-string v0, "recursive exception ignored"

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/OOMUncaughtExceptionHandler$Companion;->printErrorLog$musicLibrary_release(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 82
    monitor-exit p1

    return-void

    :cond_1
    const/4 p2, 0x1

    .line 84
    :try_start_1
    iput-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/OOMUncaughtExceptionHandler;->inDump:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 p2, 0x0

    .line 86
    :try_start_2
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/OOMUncaughtExceptionHandler;->dumpHeap()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    :try_start_3
    iput-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/OOMUncaughtExceptionHandler;->inDump:Z

    .line 90
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 79
    monitor-exit p1

    .line 91
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/OOMUncaughtExceptionHandler;->Companion:Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/OOMUncaughtExceptionHandler$Companion;

    const-string p2, "OOM Exception handler completed"

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/OOMUncaughtExceptionHandler$Companion;->printLog$musicLibrary_release(Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    .line 88
    :try_start_4
    iput-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/OOMUncaughtExceptionHandler;->inDump:Z

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p2

    .line 79
    monitor-exit p1

    throw p2
.end method
