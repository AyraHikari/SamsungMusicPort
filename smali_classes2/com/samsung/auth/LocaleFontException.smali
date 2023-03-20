.class public Lcom/samsung/auth/LocaleFontException;
.super Ljava/lang/Exception;
.source "LocaleFontException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/auth/LocaleFontException$ErrCode;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x27a0fe9ade67b1f5L


# instance fields
.field public errCause:Ljava/lang/String;

.field public errCode:Lcom/samsung/auth/LocaleFontException$ErrCode;

.field public errStr:Ljava/lang/String;

.field public nativeErrCode:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/auth/LocaleFontException$ErrCode;->E_ENUM_MIN:Lcom/samsung/auth/LocaleFontException$ErrCode;

    invoke-virtual {v0}, Lcom/samsung/auth/LocaleFontException$ErrCode;->getIntegerErrCode()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v2, "exception is uninitialized"

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/auth/LocaleFontException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, p1, v0, v0}, Lcom/samsung/auth/LocaleFontException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/auth/LocaleFontException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 3
    iput p1, p0, Lcom/samsung/auth/LocaleFontException;->nativeErrCode:I

    .line 4
    invoke-static {p1}, Lcom/samsung/auth/LocaleFontException$ErrCode;->getErrCodeFromInt(I)Lcom/samsung/auth/LocaleFontException$ErrCode;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/auth/LocaleFontException;->errCode:Lcom/samsung/auth/LocaleFontException$ErrCode;

    if-nez p2, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    .line 6
    :cond_0
    iput-object p2, p0, Lcom/samsung/auth/LocaleFontException;->errStr:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/samsung/auth/LocaleFontException;->errCause:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 10
    sget-object v0, Lcom/samsung/auth/LocaleFontException$ErrCode;->E_ENUM_MIN:Lcom/samsung/auth/LocaleFontException$ErrCode;

    invoke-virtual {v0}, Lcom/samsung/auth/LocaleFontException$ErrCode;->getIntegerErrCode()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/auth/LocaleFontException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDetailedMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/auth/LocaleFontException;->errCause:Ljava/lang/String;

    return-object v0
.end method

.method public getErrCode()I
    .locals 1

    iget v0, p0, Lcom/samsung/auth/LocaleFontException;->nativeErrCode:I

    return v0
.end method

.method public getErrStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/auth/LocaleFontException;->errStr:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/auth/LocaleFontException;->errStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " occured\nError detail msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/auth/LocaleFontException;->errCause:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDetailedMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/auth/LocaleFontException;->errCause:Ljava/lang/String;

    return-void
.end method

.method public setErrCode(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/auth/LocaleFontException;->nativeErrCode:I

    return-void
.end method

.method public setErrStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/auth/LocaleFontException;->errStr:Ljava/lang/String;

    return-void
.end method
