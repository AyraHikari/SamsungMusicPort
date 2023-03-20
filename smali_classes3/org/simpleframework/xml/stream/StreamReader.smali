.class Lorg/simpleframework/xml/stream/StreamReader;
.super Ljava/lang/Object;
.source "StreamReader.java"

# interfaces
.implements Lorg/simpleframework/xml/stream/EventReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/xml/stream/StreamReader$End;,
        Lorg/simpleframework/xml/stream/StreamReader$Text;,
        Lorg/simpleframework/xml/stream/StreamReader$Start;,
        Lorg/simpleframework/xml/stream/StreamReader$Entry;
    }
.end annotation


# instance fields
.field private peek:Lorg/simpleframework/xml/stream/EventNode;

.field private reader:Ljavax/xml/stream/XMLEventReader;


# direct methods
.method public constructor <init>(Ljavax/xml/stream/XMLEventReader;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/simpleframework/xml/stream/StreamReader;->reader:Ljavax/xml/stream/XMLEventReader;

    return-void
.end method

.method private attribute(Ljavax/xml/stream/events/Attribute;)Lorg/simpleframework/xml/stream/StreamReader$Entry;
    .locals 1

    new-instance v0, Lorg/simpleframework/xml/stream/StreamReader$Entry;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/stream/StreamReader$Entry;-><init>(Ljavax/xml/stream/events/Attribute;)V

    return-object v0
.end method

.method private build(Lorg/simpleframework/xml/stream/StreamReader$Start;)Lorg/simpleframework/xml/stream/StreamReader$Start;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lorg/simpleframework/xml/stream/StreamReader$Start;->getAttributes()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/xml/stream/events/Attribute;

    .line 4
    invoke-direct {p0, v1}, Lorg/simpleframework/xml/stream/StreamReader;->attribute(Ljavax/xml/stream/events/Attribute;)Lorg/simpleframework/xml/stream/StreamReader$Entry;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lorg/simpleframework/xml/stream/StreamReader$Entry;->isReserved()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private end()Lorg/simpleframework/xml/stream/StreamReader$End;
    .locals 2

    new-instance v0, Lorg/simpleframework/xml/stream/StreamReader$End;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/stream/StreamReader$End;-><init>(Lorg/simpleframework/xml/stream/StreamReader$1;)V

    return-object v0
.end method

.method private read()Lorg/simpleframework/xml/stream/EventNode;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/simpleframework/xml/stream/StreamReader;->reader:Ljavax/xml/stream/XMLEventReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLEventReader;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->isEndDocument()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3
    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->isStartElement()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/StreamReader;->start(Ljavax/xml/stream/events/XMLEvent;)Lorg/simpleframework/xml/stream/StreamReader$Start;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->isCharacters()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/StreamReader;->text(Ljavax/xml/stream/events/XMLEvent;)Lorg/simpleframework/xml/stream/StreamReader$Text;

    move-result-object v0

    return-object v0

    .line 7
    :cond_1
    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->isEndElement()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-direct {p0}, Lorg/simpleframework/xml/stream/StreamReader;->end()Lorg/simpleframework/xml/stream/StreamReader$End;

    move-result-object v0

    return-object v0

    .line 9
    :cond_2
    invoke-direct {p0}, Lorg/simpleframework/xml/stream/StreamReader;->read()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private start(Ljavax/xml/stream/events/XMLEvent;)Lorg/simpleframework/xml/stream/StreamReader$Start;
    .locals 1

    .line 1
    new-instance v0, Lorg/simpleframework/xml/stream/StreamReader$Start;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/stream/StreamReader$Start;-><init>(Ljavax/xml/stream/events/XMLEvent;)V

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/StreamReader;->build(Lorg/simpleframework/xml/stream/StreamReader$Start;)Lorg/simpleframework/xml/stream/StreamReader$Start;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method private text(Ljavax/xml/stream/events/XMLEvent;)Lorg/simpleframework/xml/stream/StreamReader$Text;
    .locals 1

    new-instance v0, Lorg/simpleframework/xml/stream/StreamReader$Text;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/stream/StreamReader$Text;-><init>(Ljavax/xml/stream/events/XMLEvent;)V

    return-object v0
.end method


# virtual methods
.method public next()Lorg/simpleframework/xml/stream/EventNode;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/simpleframework/xml/stream/StreamReader;->peek:Lorg/simpleframework/xml/stream/EventNode;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lorg/simpleframework/xml/stream/StreamReader;->read()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lorg/simpleframework/xml/stream/StreamReader;->peek:Lorg/simpleframework/xml/stream/EventNode;

    :goto_0
    return-object v0
.end method

.method public peek()Lorg/simpleframework/xml/stream/EventNode;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/simpleframework/xml/stream/StreamReader;->peek:Lorg/simpleframework/xml/stream/EventNode;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/StreamReader;->next()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/StreamReader;->peek:Lorg/simpleframework/xml/stream/EventNode;

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/stream/StreamReader;->peek:Lorg/simpleframework/xml/stream/EventNode;

    return-object v0
.end method
