.class final enum Lorg/apache/commons/lang3/time/StopWatch$State$1;
.super Lorg/apache/commons/lang3/time/StopWatch$State;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/StopWatch$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/lang3/time/StopWatch$State;-><init>(Ljava/lang/String;ILorg/apache/commons/lang3/time/StopWatch$1;)V

    return-void
.end method


# virtual methods
.method isStarted()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method isStopped()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method isSuspended()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
