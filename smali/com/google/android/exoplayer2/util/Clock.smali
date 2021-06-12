.class public interface abstract Lcom/google/android/exoplayer2/util/Clock;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/exoplayer2/util/Clock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/google/android/exoplayer2/util/SystemClock;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/SystemClock;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/util/Clock;->a:Lcom/google/android/exoplayer2/util/Clock;

    return-void
.end method


# virtual methods
.method public abstract a()J
.end method

.method public abstract a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/exoplayer2/util/HandlerWrapper;
    .param p2    # Landroid/os/Handler$Callback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract b()J
.end method
