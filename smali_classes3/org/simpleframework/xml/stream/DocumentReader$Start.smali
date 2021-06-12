.class Lorg/simpleframework/xml/stream/DocumentReader$Start;
.super Lorg/simpleframework/xml/stream/EventElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/xml/stream/DocumentReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Start"
.end annotation


# instance fields
.field private final element:Lorg/w3c/dom/Element;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 0

    .line 393
    invoke-direct {p0}, Lorg/simpleframework/xml/stream/EventElement;-><init>()V

    .line 394
    check-cast p1, Lorg/w3c/dom/Element;

    iput-object p1, p0, Lorg/simpleframework/xml/stream/DocumentReader$Start;->element:Lorg/w3c/dom/Element;

    return-void
.end method


# virtual methods
.method public getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .locals 1

    .line 440
    iget-object v0, p0, Lorg/simpleframework/xml/stream/DocumentReader$Start;->element:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 405
    iget-object v0, p0, Lorg/simpleframework/xml/stream/DocumentReader$Start;->element:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 417
    iget-object v0, p0, Lorg/simpleframework/xml/stream/DocumentReader$Start;->element:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReference()Ljava/lang/String;
    .locals 1

    .line 429
    iget-object v0, p0, Lorg/simpleframework/xml/stream/DocumentReader$Start;->element:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Ljava/lang/Object;
    .locals 1

    .line 451
    iget-object v0, p0, Lorg/simpleframework/xml/stream/DocumentReader$Start;->element:Lorg/w3c/dom/Element;

    return-object v0
.end method
