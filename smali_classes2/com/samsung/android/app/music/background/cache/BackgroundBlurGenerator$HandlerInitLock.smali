.class final Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator$HandlerInitLock;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HandlerInitLock"
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator$HandlerInitLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 104
    new-instance v0, Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator$HandlerInitLock;

    invoke-direct {v0}, Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator$HandlerInitLock;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator$HandlerInitLock;->a:Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator$HandlerInitLock;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
