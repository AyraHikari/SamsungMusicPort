.class public Lcom/facebook/share/internal/GameRequestValidation;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static validate(Lcom/facebook/share/model/GameRequestContent;)V
    .locals 5

    .line 36
    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "message"

    invoke-static {v0, v1}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent;->getObjectId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 38
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent;->getActionType()Lcom/facebook/share/model/GameRequestContent$ActionType;

    move-result-object v3

    sget-object v4, Lcom/facebook/share/model/GameRequestContent$ActionType;->ASKFOR:Lcom/facebook/share/model/GameRequestContent$ActionType;

    if-eq v3, v4, :cond_2

    .line 39
    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent;->getActionType()Lcom/facebook/share/model/GameRequestContent$ActionType;

    move-result-object v3

    sget-object v4, Lcom/facebook/share/model/GameRequestContent$ActionType;->SEND:Lcom/facebook/share/model/GameRequestContent$ActionType;

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x1

    :goto_2
    xor-int/2addr v0, v3

    if-nez v0, :cond_7

    .line 46
    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent;->getRecipients()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    .line 49
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent;->getSuggestions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    add-int/lit8 v1, v1, 0x1

    .line 52
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent;->getFilters()Lcom/facebook/share/model/GameRequestContent$Filters;

    move-result-object p0

    if-eqz p0, :cond_5

    add-int/lit8 v1, v1, 0x1

    :cond_5
    if-gt v1, v2, :cond_6

    return-void

    .line 56
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Parameters to, filters and suggestions are mutually exclusive"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 40
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Object id should be provided if and only if action type is send or askfor"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
