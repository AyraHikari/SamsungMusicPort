.class Lorg/simpleframework/xml/stream/PullReader$Start;
.super Lorg/simpleframework/xml/stream/EventElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/xml/stream/PullReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Start"
.end annotation


# instance fields
.field private final line:I

.field private final name:Ljava/lang/String;

.field private final prefix:Ljava/lang/String;

.field private final reference:Ljava/lang/String;

.field private final source:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    .line 370
    invoke-direct {p0}, Lorg/simpleframework/xml/stream/EventElement;-><init>()V

    .line 371
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/PullReader$Start;->reference:Ljava/lang/String;

    .line 372
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v0

    iput v0, p0, Lorg/simpleframework/xml/stream/PullReader$Start;->line:I

    .line 373
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/PullReader$Start;->prefix:Ljava/lang/String;

    .line 374
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/PullReader$Start;->name:Ljava/lang/String;

    .line 375
    iput-object p1, p0, Lorg/simpleframework/xml/stream/PullReader$Start;->source:Lorg/xmlpull/v1/XmlPullParser;

    return-void
.end method


# virtual methods
.method public getLine()I
    .locals 1

    .line 386
    iget v0, p0, Lorg/simpleframework/xml/stream/PullReader$Start;->line:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 397
    iget-object v0, p0, Lorg/simpleframework/xml/stream/PullReader$Start;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 421
    iget-object v0, p0, Lorg/simpleframework/xml/stream/PullReader$Start;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getReference()Ljava/lang/String;
    .locals 1

    .line 409
    iget-object v0, p0, Lorg/simpleframework/xml/stream/PullReader$Start;->reference:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/Object;
    .locals 1

    .line 432
    iget-object v0, p0, Lorg/simpleframework/xml/stream/PullReader$Start;->source:Lorg/xmlpull/v1/XmlPullParser;

    return-object v0
.end method
