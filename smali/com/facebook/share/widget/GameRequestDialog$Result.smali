.class public final Lcom/facebook/share/widget/GameRequestDialog$Result;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/widget/GameRequestDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field requestId:Ljava/lang/String;

.field to:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 5

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "request"

    .line 59
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/widget/GameRequestDialog$Result;->requestId:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/share/widget/GameRequestDialog$Result;->to:Ljava/util/List;

    :goto_0
    const-string v0, "to[%d]"

    const/4 v1, 0x1

    .line 61
    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/facebook/share/widget/GameRequestDialog$Result;->to:Ljava/util/List;

    .line 62
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 61
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/facebook/share/widget/GameRequestDialog$Result;->to:Ljava/util/List;

    const-string v2, "to[%d]"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/facebook/share/widget/GameRequestDialog$Result;->to:Ljava/util/List;

    .line 64
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    .line 63
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Bundle;Lcom/facebook/share/widget/GameRequestDialog$1;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/GameRequestDialog$Result;-><init>(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public getRequestId()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/facebook/share/widget/GameRequestDialog$Result;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestRecipients()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/facebook/share/widget/GameRequestDialog$Result;->to:Ljava/util/List;

    return-object v0
.end method
