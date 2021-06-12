.class public Lcom/samsung/auth/LocaleFontException;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/auth/LocaleFontException$ErrCode;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x27a0fe9ade67b1f5L


# instance fields
.field errCause:Ljava/lang/String;

.field errCode:Lcom/samsung/auth/LocaleFontException$ErrCode;

.field errStr:Ljava/lang/String;

.field nativeErrCode:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 133
    sget-object v0, Lcom/samsung/auth/LocaleFontException$ErrCode;->E_ENUM_MIN:Lcom/samsung/auth/LocaleFontException$ErrCode;

    invoke-virtual {v0}, Lcom/samsung/auth/LocaleFontException$ErrCode;->getIntegerErrCode()I

    move-result v0

    sget-object v1, Lcom/samsung/auth/LocaleFontException$ErrCode;->E_ENUM_MIN:Lcom/samsung/auth/LocaleFontException$ErrCode;

    invoke-virtual {v1}, Lcom/samsung/auth/LocaleFontException$ErrCode;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "exception is uninitialized"

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/auth/LocaleFontException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 159
    invoke-direct {p0, p1, v0, v0}, Lcom/samsung/auth/LocaleFontException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 153
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/auth/LocaleFontException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 138
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 141
    iput p1, p0, Lcom/samsung/auth/LocaleFontException;->nativeErrCode:I

    .line 142
    invoke-static {p1}, Lcom/samsung/auth/LocaleFontException$ErrCode;->getErrCodeFromInt(I)Lcom/samsung/auth/LocaleFontException$ErrCode;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/auth/LocaleFontException;->errCode:Lcom/samsung/auth/LocaleFontException$ErrCode;

    if-nez p2, :cond_0

    .line 145
    iget-object p1, p0, Lcom/samsung/auth/LocaleFontException;->errCode:Lcom/samsung/auth/LocaleFontException$ErrCode;

    invoke-virtual {p1}, Lcom/samsung/auth/LocaleFontException$ErrCode;->name()Ljava/lang/String;

    move-result-object p2

    .line 147
    :cond_0
    iput-object p2, p0, Lcom/samsung/auth/LocaleFontException;->errStr:Ljava/lang/String;

    .line 148
    iput-object p3, p0, Lcom/samsung/auth/LocaleFontException;->errCause:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 163
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

    .line 183
    iget-object v0, p0, Lcom/samsung/auth/LocaleFontException;->errCause:Ljava/lang/String;

    return-object v0
.end method

.method public getErrCode()I
    .locals 1

    .line 167
    iget v0, p0, Lcom/samsung/auth/LocaleFontException;->nativeErrCode:I

    return v0
.end method

.method public getErrStr()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/samsung/auth/LocaleFontException;->errStr:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 125
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

    .line 187
    iput-object p1, p0, Lcom/samsung/auth/LocaleFontException;->errCause:Ljava/lang/String;

    return-void
.end method

.method public setErrCode(I)V
    .locals 0

    .line 171
    iput p1, p0, Lcom/samsung/auth/LocaleFontException;->nativeErrCode:I

    return-void
.end method

.method public setErrStr(Ljava/lang/String;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/samsung/auth/LocaleFontException;->errStr:Ljava/lang/String;

    return-void
.end method
