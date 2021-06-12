.class public Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor$GetRadioCountException;
.super Ljava/lang/Throwable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetRadioCountException"
.end annotation


# instance fields
.field resultCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 146
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    const/4 v0, -0x1

    .line 144
    iput v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor$GetRadioCountException;->resultCode:I

    .line 147
    iput p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor$GetRadioCountException;->resultCode:I

    return-void
.end method


# virtual methods
.method public getErrorMsg()Ljava/lang/String;
    .locals 2

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail to get radio count : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor$GetRadioCountException;->resultCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
