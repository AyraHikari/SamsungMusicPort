.class Lorg/simpleframework/xml/core/Support;
.super Ljava/lang/Object;
.source "Support.java"

# interfaces
.implements Lorg/simpleframework/xml/filter/Filter;


# instance fields
.field private final defaults:Lorg/simpleframework/xml/core/DetailExtractor;

.field private final details:Lorg/simpleframework/xml/core/DetailExtractor;

.field private final filter:Lorg/simpleframework/xml/filter/Filter;

.field private final format:Lorg/simpleframework/xml/stream/Format;

.field private final instances:Lorg/simpleframework/xml/core/InstanceFactory;

.field private final labels:Lorg/simpleframework/xml/core/LabelExtractor;

.field private final matcher:Lorg/simpleframework/xml/transform/Matcher;

.field private final scanners:Lorg/simpleframework/xml/core/ScannerFactory;

.field private final transform:Lorg/simpleframework/xml/transform/Transformer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/simpleframework/xml/filter/PlatformFilter;

    invoke-direct {v0}, Lorg/simpleframework/xml/filter/PlatformFilter;-><init>()V

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/Support;-><init>(Lorg/simpleframework/xml/filter/Filter;)V

    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/filter/Filter;)V
    .locals 1

    .line 2
    new-instance v0, Lorg/simpleframework/xml/core/EmptyMatcher;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/EmptyMatcher;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/Support;-><init>(Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/transform/Matcher;)V

    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/transform/Matcher;)V
    .locals 1

    .line 3
    new-instance v0, Lorg/simpleframework/xml/stream/Format;

    invoke-direct {v0}, Lorg/simpleframework/xml/stream/Format;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Support;-><init>(Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/transform/Matcher;Lorg/simpleframework/xml/stream/Format;)V

    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/transform/Matcher;Lorg/simpleframework/xml/stream/Format;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lorg/simpleframework/xml/core/DetailExtractor;

    sget-object v1, Lorg/simpleframework/xml/DefaultType;->FIELD:Lorg/simpleframework/xml/DefaultType;

    invoke-direct {v0, p0, v1}, Lorg/simpleframework/xml/core/DetailExtractor;-><init>(Lorg/simpleframework/xml/core/Support;Lorg/simpleframework/xml/DefaultType;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Support;->defaults:Lorg/simpleframework/xml/core/DetailExtractor;

    .line 6
    new-instance v0, Lorg/simpleframework/xml/transform/Transformer;

    invoke-direct {v0, p2}, Lorg/simpleframework/xml/transform/Transformer;-><init>(Lorg/simpleframework/xml/transform/Matcher;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Support;->transform:Lorg/simpleframework/xml/transform/Transformer;

    .line 7
    new-instance v0, Lorg/simpleframework/xml/core/ScannerFactory;

    invoke-direct {v0, p0}, Lorg/simpleframework/xml/core/ScannerFactory;-><init>(Lorg/simpleframework/xml/core/Support;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Support;->scanners:Lorg/simpleframework/xml/core/ScannerFactory;

    .line 8
    new-instance v0, Lorg/simpleframework/xml/core/DetailExtractor;

    invoke-direct {v0, p0}, Lorg/simpleframework/xml/core/DetailExtractor;-><init>(Lorg/simpleframework/xml/core/Support;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Support;->details:Lorg/simpleframework/xml/core/DetailExtractor;

    .line 9
    new-instance v0, Lorg/simpleframework/xml/core/LabelExtractor;

    invoke-direct {v0, p3}, Lorg/simpleframework/xml/core/LabelExtractor;-><init>(Lorg/simpleframework/xml/stream/Format;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Support;->labels:Lorg/simpleframework/xml/core/LabelExtractor;

    .line 10
    new-instance v0, Lorg/simpleframework/xml/core/InstanceFactory;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/InstanceFactory;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Support;->instances:Lorg/simpleframework/xml/core/InstanceFactory;

    .line 11
    iput-object p2, p0, Lorg/simpleframework/xml/core/Support;->matcher:Lorg/simpleframework/xml/transform/Matcher;

    .line 12
    iput-object p1, p0, Lorg/simpleframework/xml/core/Support;->filter:Lorg/simpleframework/xml/filter/Filter;

    .line 13
    iput-object p3, p0, Lorg/simpleframework/xml/core/Support;->format:Lorg/simpleframework/xml/stream/Format;

    return-void
.end method

.method private getClassName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v0

    .line 5
    :cond_1
    invoke-static {v0}, Lorg/simpleframework/xml/core/Reflector;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getPrimitive(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    .line 2
    const-class p0, Ljava/lang/Double;

    return-object p0

    .line 3
    :cond_0
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    .line 4
    const-class p0, Ljava/lang/Float;

    return-object p0

    .line 5
    :cond_1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    .line 6
    const-class p0, Ljava/lang/Integer;

    return-object p0

    .line 7
    :cond_2
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    .line 8
    const-class p0, Ljava/lang/Long;

    return-object p0

    .line 9
    :cond_3
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    .line 10
    const-class p0, Ljava/lang/Boolean;

    return-object p0

    .line 11
    :cond_4
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    .line 12
    const-class p0, Ljava/lang/Character;

    return-object p0

    .line 13
    :cond_5
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    .line 14
    const-class p0, Ljava/lang/Short;

    return-object p0

    .line 15
    :cond_6
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    .line 16
    const-class p0, Ljava/lang/Byte;

    :cond_7
    return-object p0
.end method

.method public static isAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lorg/simpleframework/xml/core/Support;->getPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {p1}, Lorg/simpleframework/xml/core/Support;->getPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 5
    :cond_1
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public static isFloat(Ljava/lang/Class;)Z
    .locals 2

    .line 1
    const-class v0, Ljava/lang/Double;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    return v1

    .line 2
    :cond_0
    const-class v0, Ljava/lang/Float;

    if-ne p0, v0, :cond_1

    return v1

    .line 3
    :cond_1
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    return v1

    .line 4
    :cond_2
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getDetail(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Detail;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/core/Support;->getDetail(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;)Lorg/simpleframework/xml/core/Detail;

    move-result-object p1

    return-object p1
.end method

.method public getDetail(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;)Lorg/simpleframework/xml/core/Detail;
    .locals 0

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lorg/simpleframework/xml/core/Support;->defaults:Lorg/simpleframework/xml/core/DetailExtractor;

    invoke-virtual {p2, p1}, Lorg/simpleframework/xml/core/DetailExtractor;->getDetail(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Detail;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object p2, p0, Lorg/simpleframework/xml/core/Support;->details:Lorg/simpleframework/xml/core/DetailExtractor;

    invoke-virtual {p2, p1}, Lorg/simpleframework/xml/core/DetailExtractor;->getDetail(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Detail;

    move-result-object p1

    return-object p1
.end method

.method public getFields(Ljava/lang/Class;)Lorg/simpleframework/xml/core/ContactList;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/core/Support;->getFields(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;)Lorg/simpleframework/xml/core/ContactList;

    move-result-object p1

    return-object p1
.end method

.method public getFields(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;)Lorg/simpleframework/xml/core/ContactList;
    .locals 0

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lorg/simpleframework/xml/core/Support;->defaults:Lorg/simpleframework/xml/core/DetailExtractor;

    invoke-virtual {p2, p1}, Lorg/simpleframework/xml/core/DetailExtractor;->getFields(Ljava/lang/Class;)Lorg/simpleframework/xml/core/ContactList;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object p2, p0, Lorg/simpleframework/xml/core/Support;->details:Lorg/simpleframework/xml/core/DetailExtractor;

    invoke-virtual {p2, p1}, Lorg/simpleframework/xml/core/DetailExtractor;->getFields(Ljava/lang/Class;)Lorg/simpleframework/xml/core/ContactList;

    move-result-object p1

    return-object p1
.end method

.method public getFormat()Lorg/simpleframework/xml/stream/Format;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->format:Lorg/simpleframework/xml/stream/Format;

    return-object v0
.end method

.method public getInstance(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Instance;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->instances:Lorg/simpleframework/xml/core/InstanceFactory;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/InstanceFactory;->getInstance(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Instance;

    move-result-object p1

    return-object p1
.end method

.method public getInstance(Lorg/simpleframework/xml/strategy/Value;)Lorg/simpleframework/xml/core/Instance;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->instances:Lorg/simpleframework/xml/core/InstanceFactory;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/InstanceFactory;->getInstance(Lorg/simpleframework/xml/strategy/Value;)Lorg/simpleframework/xml/core/Instance;

    move-result-object p1

    return-object p1
.end method

.method public getLabel(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/Label;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->labels:Lorg/simpleframework/xml/core/LabelExtractor;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/core/LabelExtractor;->getLabel(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/Label;

    move-result-object p1

    return-object p1
.end method

.method public getLabels(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/core/Contact;",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Ljava/util/List<",
            "Lorg/simpleframework/xml/core/Label;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->labels:Lorg/simpleframework/xml/core/LabelExtractor;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/core/LabelExtractor;->getList(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getMethods(Ljava/lang/Class;)Lorg/simpleframework/xml/core/ContactList;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/core/Support;->getMethods(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;)Lorg/simpleframework/xml/core/ContactList;

    move-result-object p1

    return-object p1
.end method

.method public getMethods(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;)Lorg/simpleframework/xml/core/ContactList;
    .locals 0

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lorg/simpleframework/xml/core/Support;->defaults:Lorg/simpleframework/xml/core/DetailExtractor;

    invoke-virtual {p2, p1}, Lorg/simpleframework/xml/core/DetailExtractor;->getMethods(Ljava/lang/Class;)Lorg/simpleframework/xml/core/ContactList;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object p2, p0, Lorg/simpleframework/xml/core/Support;->details:Lorg/simpleframework/xml/core/DetailExtractor;

    invoke-virtual {p2, p1}, Lorg/simpleframework/xml/core/DetailExtractor;->getMethods(Ljava/lang/Class;)Lorg/simpleframework/xml/core/ContactList;

    move-result-object p1

    return-object p1
.end method

.method public getName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/Support;->getScanner(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Scanner;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Scanner;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/Support;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getScanner(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Scanner;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->scanners:Lorg/simpleframework/xml/core/ScannerFactory;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/ScannerFactory;->getInstance(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Scanner;

    move-result-object p1

    return-object p1
.end method

.method public getStyle()Lorg/simpleframework/xml/stream/Style;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->format:Lorg/simpleframework/xml/stream/Format;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/Format;->getStyle()Lorg/simpleframework/xml/stream/Style;

    move-result-object v0

    return-object v0
.end method

.method public getTransform(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->matcher:Lorg/simpleframework/xml/transform/Matcher;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/transform/Matcher;->match(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;

    move-result-object p1

    return-object p1
.end method

.method public isContainer(Ljava/lang/Class;)Z
    .locals 2

    .line 1
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result p1

    return p1
.end method

.method public isPrimitive(Ljava/lang/Class;)Z
    .locals 2

    .line 1
    const-class v0, Ljava/lang/String;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    .line 2
    :cond_0
    const-class v0, Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    return v1

    .line 3
    :cond_1
    const-class v0, Ljava/lang/Double;

    if-ne p1, v0, :cond_2

    return v1

    .line 4
    :cond_2
    const-class v0, Ljava/lang/Long;

    if-ne p1, v0, :cond_3

    return v1

    .line 5
    :cond_3
    const-class v0, Ljava/lang/Integer;

    if-ne p1, v0, :cond_4

    return v1

    .line 6
    :cond_4
    const-class v0, Ljava/lang/Boolean;

    if-ne p1, v0, :cond_5

    return v1

    .line 7
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    .line 8
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    .line 9
    :cond_7
    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->transform:Lorg/simpleframework/xml/transform/Transformer;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/transform/Transformer;->valid(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public read(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->transform:Lorg/simpleframework/xml/transform/Transformer;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/transform/Transformer;->read(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public replace(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->filter:Lorg/simpleframework/xml/filter/Filter;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/filter/Filter;->replace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public valid(Ljava/lang/Class;)Z
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->transform:Lorg/simpleframework/xml/transform/Transformer;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/transform/Transformer;->valid(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public write(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->transform:Lorg/simpleframework/xml/transform/Transformer;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/transform/Transformer;->write(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
