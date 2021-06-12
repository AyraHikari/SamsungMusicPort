.class final Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/OOMUncaughtExceptionHandler$DumpLock;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/OOMUncaughtExceptionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DumpLock"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/OOMUncaughtExceptionHandler$DumpLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/OOMUncaughtExceptionHandler$DumpLock;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/OOMUncaughtExceptionHandler$DumpLock;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/OOMUncaughtExceptionHandler$DumpLock;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/uncaughtexception/OOMUncaughtExceptionHandler$DumpLock;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
