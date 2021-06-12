.class final Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/DefaultUncaughtExceptionHandler$register$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/DefaultUncaughtExceptionHandler;->register(Landroid/app/Application;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/DefaultUncaughtExceptionHandler$register$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/DefaultUncaughtExceptionHandler$register$1;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/DefaultUncaughtExceptionHandler$register$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/DefaultUncaughtExceptionHandler$register$1;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/DefaultUncaughtExceptionHandler$register$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 5

    .line 36
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/DefaultUncaughtExceptionHandler;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/DefaultUncaughtExceptionHandler;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/DefaultUncaughtExceptionHandler;->access$getHandlers$p(Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/DefaultUncaughtExceptionHandler;)[Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/CustomUncaughtExceptionHandler;

    move-result-object v0

    .line 138
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    const-string v4, "t"

    .line 37
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "e"

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/CustomUncaughtExceptionHandler;->canHandle(Ljava/lang/Thread;Ljava/lang/Throwable;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 38
    invoke-interface {v3, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/CustomUncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 42
    :cond_1
    instance-of p1, p2, Ljava/lang/Error;

    if-nez p1, :cond_2

    return-void

    .line 43
    :cond_2
    throw p2
.end method
