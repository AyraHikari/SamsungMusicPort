.class public final Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/DefaultUncaughtExceptionHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/DefaultUncaughtExceptionHandler;

.field private static handlers:[Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/CustomUncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/DefaultUncaughtExceptionHandler;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/DefaultUncaughtExceptionHandler;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/DefaultUncaughtExceptionHandler;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/DefaultUncaughtExceptionHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getHandlers$p(Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/DefaultUncaughtExceptionHandler;)[Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/CustomUncaughtExceptionHandler;
    .locals 1

    .line 23
    sget-object p0, Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/DefaultUncaughtExceptionHandler;->handlers:[Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/CustomUncaughtExceptionHandler;

    if-nez p0, :cond_0

    const-string v0, "handlers"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$setHandlers$p(Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/DefaultUncaughtExceptionHandler;[Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/CustomUncaughtExceptionHandler;)V
    .locals 0

    .line 23
    sput-object p1, Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/DefaultUncaughtExceptionHandler;->handlers:[Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/CustomUncaughtExceptionHandler;

    return-void
.end method

.method public static final register(Landroid/app/Application;Ljava/lang/String;)V
    .locals 3

    const-string v0, "application"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "processName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 31
    new-array v0, v0, [Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/CustomUncaughtExceptionHandler;

    .line 32
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/OOMUncaughtExceptionHandler;

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v2, "application.applicationContext"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/OOMUncaughtExceptionHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/CustomUncaughtExceptionHandler;

    const/4 p0, 0x0

    aput-object v1, v0, p0

    .line 31
    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/DefaultUncaughtExceptionHandler;->handlers:[Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/CustomUncaughtExceptionHandler;

    .line 35
    sget-object p0, Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/DefaultUncaughtExceptionHandler$register$1;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/DefaultUncaughtExceptionHandler$register$1;

    check-cast p0, Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method
