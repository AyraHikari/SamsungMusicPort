.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player$Empty$getPlayControl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player$Empty;->getPlayControl()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buffering()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public next()V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 0

    return-void
.end method

.method public play()V
    .locals 0

    return-void
.end method

.method public position()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public prev(Z)V
    .locals 0

    return-void
.end method

.method public seek(J)V
    .locals 0

    return-void
.end method

.method public togglePlay()V
    .locals 0

    return-void
.end method
