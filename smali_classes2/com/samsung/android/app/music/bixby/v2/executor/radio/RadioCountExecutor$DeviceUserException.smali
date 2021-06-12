.class public Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor$DeviceUserException;
.super Ljava/lang/Throwable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceUserException"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    const-string v0, "device user of not signed"

    return-object v0
.end method
