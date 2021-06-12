.class public Lcom/dawin/http/parser/TrackingInfoParser;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dawin/http/parser/TrackingInfoParser$a;
    }
.end annotation


# instance fields
.field private a:Z

.field public mChargeTag:Ljava/lang/String;

.field public mChargeTime:I

.field public mEndTag:Ljava/lang/String;

.field public mHalfTag:Ljava/lang/String;

.field public mHalfTime:I

.field public mQuarter3Tag:Ljava/lang/String;

.field public mQuarter3Time:I

.field public mQuarterTag:Ljava/lang/String;

.field public mQuarterTime:I

.field public mSkipTag:Ljava/lang/String;

.field public mStartTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/NodeList;Ljava/lang/String;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/dawin/http/parser/TrackingInfoParser;->mStartTag:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/dawin/http/parser/TrackingInfoParser;->mQuarterTag:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/dawin/http/parser/TrackingInfoParser;->mHalfTag:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/dawin/http/parser/TrackingInfoParser;->mQuarter3Tag:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/dawin/http/parser/TrackingInfoParser;->mEndTag:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/dawin/http/parser/TrackingInfoParser;->mSkipTag:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/dawin/http/parser/TrackingInfoParser;->mChargeTag:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/dawin/http/parser/TrackingInfoParser;->mQuarterTime:I

    iput v0, p0, Lcom/dawin/http/parser/TrackingInfoParser;->mHalfTime:I

    iput v0, p0, Lcom/dawin/http/parser/TrackingInfoParser;->mQuarter3Time:I

    iput v0, p0, Lcom/dawin/http/parser/TrackingInfoParser;->mChargeTime:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dawin/http/parser/TrackingInfoParser;->a:Z

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/dawin/http/parser/TrackingInfoParser;->mQuarterTime:I

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/dawin/http/parser/TrackingInfoParser;->mHalfTime:I

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    mul-int/lit8 p2, p2, 0x3

    div-int/lit8 p2, p2, 0x4

    iput p2, p0, Lcom/dawin/http/parser/TrackingInfoParser;->mQuarter3Time:I

    const/4 p2, 0x1

    if-eqz p1, :cond_c

    :try_start_0
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_d

    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Tracking"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/dawin/http/parser/TrackingInfoParser$a;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/dawin/http/parser/TrackingInfoParser$a;-><init>(Lcom/dawin/http/parser/TrackingInfoParser;Lcom/dawin/http/parser/TrackingInfoParser$1;)V

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v6

    if-ge v5, v6, :cond_3

    invoke-interface {v2, v5}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "rt"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    :goto_2
    invoke-virtual {v4, v6}, Lcom/dawin/http/parser/TrackingInfoParser$a;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_0
    const-string v8, "event"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v4, v6}, Lcom/dawin/http/parser/TrackingInfoParser$a;->b(Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    const-string v8, "offset"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Lcom/dawin/http/parser/TrackingInfoParser$a;->b()Ljava/lang/String;

    move-result-object v2

    const-string v5, "start"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iput-object v3, p0, Lcom/dawin/http/parser/TrackingInfoParser;->mStartTag:Ljava/lang/String;

    goto/16 :goto_4

    :cond_4
    invoke-virtual {v4}, Lcom/dawin/http/parser/TrackingInfoParser$a;->b()Ljava/lang/String;

    move-result-object v2

    const-string v5, "skip"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iput-object v3, p0, Lcom/dawin/http/parser/TrackingInfoParser;->mSkipTag:Ljava/lang/String;

    goto/16 :goto_4

    :cond_5
    invoke-virtual {v4}, Lcom/dawin/http/parser/TrackingInfoParser$a;->b()Ljava/lang/String;

    move-result-object v2

    const-string v5, "complete"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iput-object v3, p0, Lcom/dawin/http/parser/TrackingInfoParser;->mEndTag:Ljava/lang/String;

    goto/16 :goto_4

    :cond_6
    invoke-virtual {v4}, Lcom/dawin/http/parser/TrackingInfoParser$a;->b()Ljava/lang/String;

    move-result-object v2

    const-string v5, "firstQuartile"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iput-object v3, p0, Lcom/dawin/http/parser/TrackingInfoParser;->mQuarterTag:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/dawin/http/parser/TrackingInfoParser$a;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v4}, Lcom/dawin/http/parser/TrackingInfoParser$a;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {v4}, Lcom/dawin/http/parser/TrackingInfoParser$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    iput v2, p0, Lcom/dawin/http/parser/TrackingInfoParser;->mQuarterTime:I

    goto/16 :goto_4

    :cond_7
    invoke-virtual {v4}, Lcom/dawin/http/parser/TrackingInfoParser$a;->b()Ljava/lang/String;

    move-result-object v2

    const-string v5, "midpoint"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iput-object v3, p0, Lcom/dawin/http/parser/TrackingInfoParser;->mHalfTag:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/dawin/http/parser/TrackingInfoParser$a;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v4}, Lcom/dawin/http/parser/TrackingInfoParser$a;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {v4}, Lcom/dawin/http/parser/TrackingInfoParser$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    iput v2, p0, Lcom/dawin/http/parser/TrackingInfoParser;->mHalfTime:I

    goto :goto_4

    :cond_8
    invoke-virtual {v4}, Lcom/dawin/http/parser/TrackingInfoParser$a;->b()Ljava/lang/String;

    move-result-object v2

    const-string v5, "thirdQuartile"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iput-object v3, p0, Lcom/dawin/http/parser/TrackingInfoParser;->mQuarter3Tag:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/dawin/http/parser/TrackingInfoParser$a;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v4}, Lcom/dawin/http/parser/TrackingInfoParser$a;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {v4}, Lcom/dawin/http/parser/TrackingInfoParser$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    iput v2, p0, Lcom/dawin/http/parser/TrackingInfoParser;->mQuarter3Time:I

    goto :goto_4

    :cond_9
    invoke-virtual {v4}, Lcom/dawin/http/parser/TrackingInfoParser$a;->b()Ljava/lang/String;

    move-result-object v2

    const-string v5, "paytime"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iput-object v3, p0, Lcom/dawin/http/parser/TrackingInfoParser;->mChargeTag:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/dawin/http/parser/TrackingInfoParser$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    iput v2, p0, Lcom/dawin/http/parser/TrackingInfoParser;->mChargeTime:I

    goto :goto_4

    :cond_a
    invoke-virtual {v4}, Lcom/dawin/http/parser/TrackingInfoParser$a;->b()Ljava/lang/String;

    move-result-object v2

    const-string v5, "progress"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iput-object v3, p0, Lcom/dawin/http/parser/TrackingInfoParser;->mChargeTag:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/dawin/http/parser/TrackingInfoParser$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dawin/util/CommonUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/dawin/http/parser/TrackingInfoParser;->mChargeTime:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_b
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c
    iput-boolean p2, p0, Lcom/dawin/http/parser/TrackingInfoParser;->a:Z

    :cond_d
    return-void
.end method


# virtual methods
.method public isParsingProblemOccured()Z
    .locals 1

    iget-boolean v0, p0, Lcom/dawin/http/parser/TrackingInfoParser;->a:Z

    return v0
.end method
