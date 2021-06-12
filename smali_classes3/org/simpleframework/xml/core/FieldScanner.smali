.class Lorg/simpleframework/xml/core/FieldScanner;
.super Lorg/simpleframework/xml/core/ContactList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/xml/core/FieldScanner$FieldKey;
    }
.end annotation


# instance fields
.field private final done:Lorg/simpleframework/xml/core/ContactMap;

.field private final factory:Lorg/simpleframework/xml/core/AnnotationFactory;

.field private final support:Lorg/simpleframework/xml/core/Support;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Detail;Lorg/simpleframework/xml/core/Support;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Lorg/simpleframework/xml/core/ContactList;-><init>()V

    .line 77
    new-instance v0, Lorg/simpleframework/xml/core/AnnotationFactory;

    invoke-direct {v0, p1, p2}, Lorg/simpleframework/xml/core/AnnotationFactory;-><init>(Lorg/simpleframework/xml/core/Detail;Lorg/simpleframework/xml/core/Support;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/FieldScanner;->factory:Lorg/simpleframework/xml/core/AnnotationFactory;

    .line 78
    new-instance v0, Lorg/simpleframework/xml/core/ContactMap;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/ContactMap;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/FieldScanner;->done:Lorg/simpleframework/xml/core/ContactMap;

    .line 79
    iput-object p2, p0, Lorg/simpleframework/xml/core/FieldScanner;->support:Lorg/simpleframework/xml/core/Support;

    .line 80
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/FieldScanner;->scan(Lorg/simpleframework/xml/core/Detail;)V

    return-void
.end method

.method private build()V
    .locals 2

    .line 310
    iget-object v0, p0, Lorg/simpleframework/xml/core/FieldScanner;->done:Lorg/simpleframework/xml/core/ContactMap;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/ContactMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/core/Contact;

    .line 311
    invoke-virtual {p0, v1}, Lorg/simpleframework/xml/core/FieldScanner;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private extend(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lorg/simpleframework/xml/core/FieldScanner;->support:Lorg/simpleframework/xml/core/Support;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/core/Support;->a(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;)Lorg/simpleframework/xml/core/ContactList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 117
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/FieldScanner;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method private extract(Lorg/simpleframework/xml/core/Detail;)V
    .locals 5

    .line 130
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Detail;->f()Ljava/util/List;

    move-result-object p1

    .line 132
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/FieldDetail;

    .line 133
    invoke-virtual {v0}, Lorg/simpleframework/xml/core/FieldDetail;->a()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 134
    invoke-virtual {v0}, Lorg/simpleframework/xml/core/FieldDetail;->b()Ljava/lang/reflect/Field;

    move-result-object v0

    .line 136
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 137
    invoke-direct {p0, v0, v4, v1}, Lorg/simpleframework/xml/core/FieldScanner;->scan(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private extract(Lorg/simpleframework/xml/core/Detail;Lorg/simpleframework/xml/DefaultType;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 152
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Detail;->f()Ljava/util/List;

    move-result-object p1

    .line 154
    sget-object v0, Lorg/simpleframework/xml/DefaultType;->FIELD:Lorg/simpleframework/xml/DefaultType;

    if-ne p2, v0, :cond_1

    .line 155
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/simpleframework/xml/core/FieldDetail;

    .line 156
    invoke-virtual {p2}, Lorg/simpleframework/xml/core/FieldDetail;->a()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 157
    invoke-virtual {p2}, Lorg/simpleframework/xml/core/FieldDetail;->b()Ljava/lang/reflect/Field;

    move-result-object p2

    .line 158
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 160
    invoke-direct {p0, p2}, Lorg/simpleframework/xml/core/FieldScanner;->isStatic(Ljava/lang/reflect/Field;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p2}, Lorg/simpleframework/xml/core/FieldScanner;->isTransient(Ljava/lang/reflect/Field;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 161
    invoke-direct {p0, p2, v1, v0}, Lorg/simpleframework/xml/core/FieldScanner;->process(Ljava/lang/reflect/Field;Ljava/lang/Class;[Ljava/lang/annotation/Annotation;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private insert(Ljava/lang/Object;Lorg/simpleframework/xml/core/Contact;)V
    .locals 2

    .line 262
    iget-object v0, p0, Lorg/simpleframework/xml/core/FieldScanner;->done:Lorg/simpleframework/xml/core/ContactMap;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/ContactMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Contact;

    if-eqz v0, :cond_0

    .line 265
    invoke-direct {p0, p2}, Lorg/simpleframework/xml/core/FieldScanner;->isText(Lorg/simpleframework/xml/core/Contact;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p2, v0

    .line 269
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/FieldScanner;->done:Lorg/simpleframework/xml/core/ContactMap;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/core/ContactMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private isStatic(Ljava/lang/reflect/Field;)Z
    .locals 0

    .line 325
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p1

    .line 327
    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isText(Lorg/simpleframework/xml/core/Contact;)Z
    .locals 0

    .line 282
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Contact;->a()Ljava/lang/annotation/Annotation;

    move-result-object p1

    .line 284
    instance-of p1, p1, Lorg/simpleframework/xml/Text;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isTransient(Ljava/lang/reflect/Field;)Z
    .locals 0

    .line 344
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p1

    .line 346
    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private process(Ljava/lang/reflect/Field;Ljava/lang/Class;[Ljava/lang/annotation/Annotation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 224
    invoke-static {p1}, Lorg/simpleframework/xml/core/Reflector;->a(Ljava/lang/reflect/Field;)[Ljava/lang/Class;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lorg/simpleframework/xml/core/FieldScanner;->factory:Lorg/simpleframework/xml/core/AnnotationFactory;

    invoke-virtual {v1, p2, v0}, Lorg/simpleframework/xml/core/AnnotationFactory;->a(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 228
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/FieldScanner;->process(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    :cond_0
    return-void
.end method

.method private process(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V
    .locals 1

    .line 243
    new-instance v0, Lorg/simpleframework/xml/core/FieldContact;

    invoke-direct {v0, p1, p2, p3}, Lorg/simpleframework/xml/core/FieldContact;-><init>(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    .line 244
    new-instance p2, Lorg/simpleframework/xml/core/FieldScanner$FieldKey;

    invoke-direct {p2, p1}, Lorg/simpleframework/xml/core/FieldScanner$FieldKey;-><init>(Ljava/lang/reflect/Field;)V

    .line 246
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p3, 0x1

    .line 247
    invoke-virtual {p1, p3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 249
    :cond_0
    invoke-direct {p0, p2, v0}, Lorg/simpleframework/xml/core/FieldScanner;->insert(Ljava/lang/Object;Lorg/simpleframework/xml/core/Contact;)V

    return-void
.end method

.method private remove(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;)V
    .locals 1

    .line 300
    iget-object p2, p0, Lorg/simpleframework/xml/core/FieldScanner;->done:Lorg/simpleframework/xml/core/ContactMap;

    new-instance v0, Lorg/simpleframework/xml/core/FieldScanner$FieldKey;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/core/FieldScanner$FieldKey;-><init>(Ljava/lang/reflect/Field;)V

    invoke-virtual {p2, v0}, Lorg/simpleframework/xml/core/ContactMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private scan(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V
    .locals 1

    .line 178
    instance-of v0, p2, Lorg/simpleframework/xml/Attribute;

    if-eqz v0, :cond_0

    .line 179
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/FieldScanner;->process(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    .line 181
    :cond_0
    instance-of v0, p2, Lorg/simpleframework/xml/ElementUnion;

    if-eqz v0, :cond_1

    .line 182
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/FieldScanner;->process(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    .line 184
    :cond_1
    instance-of v0, p2, Lorg/simpleframework/xml/ElementListUnion;

    if-eqz v0, :cond_2

    .line 185
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/FieldScanner;->process(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    .line 187
    :cond_2
    instance-of v0, p2, Lorg/simpleframework/xml/ElementMapUnion;

    if-eqz v0, :cond_3

    .line 188
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/FieldScanner;->process(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    .line 190
    :cond_3
    instance-of v0, p2, Lorg/simpleframework/xml/ElementList;

    if-eqz v0, :cond_4

    .line 191
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/FieldScanner;->process(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    .line 193
    :cond_4
    instance-of v0, p2, Lorg/simpleframework/xml/ElementArray;

    if-eqz v0, :cond_5

    .line 194
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/FieldScanner;->process(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    .line 196
    :cond_5
    instance-of v0, p2, Lorg/simpleframework/xml/ElementMap;

    if-eqz v0, :cond_6

    .line 197
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/FieldScanner;->process(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    .line 199
    :cond_6
    instance-of v0, p2, Lorg/simpleframework/xml/Element;

    if-eqz v0, :cond_7

    .line 200
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/FieldScanner;->process(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    .line 202
    :cond_7
    instance-of v0, p2, Lorg/simpleframework/xml/Version;

    if-eqz v0, :cond_8

    .line 203
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/FieldScanner;->process(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    .line 205
    :cond_8
    instance-of v0, p2, Lorg/simpleframework/xml/Text;

    if-eqz v0, :cond_9

    .line 206
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/FieldScanner;->process(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    .line 208
    :cond_9
    instance-of p3, p2, Lorg/simpleframework/xml/Transient;

    if-eqz p3, :cond_a

    .line 209
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/FieldScanner;->remove(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;)V

    :cond_a
    return-void
.end method

.method private scan(Lorg/simpleframework/xml/core/Detail;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 92
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Detail;->d()Lorg/simpleframework/xml/DefaultType;

    move-result-object v0

    .line 93
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Detail;->c()Lorg/simpleframework/xml/DefaultType;

    move-result-object v1

    .line 94
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Detail;->b()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 97
    invoke-direct {p0, v2, v0}, Lorg/simpleframework/xml/core/FieldScanner;->extend(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;)V

    .line 99
    :cond_0
    invoke-direct {p0, p1, v1}, Lorg/simpleframework/xml/core/FieldScanner;->extract(Lorg/simpleframework/xml/core/Detail;Lorg/simpleframework/xml/DefaultType;)V

    .line 100
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/FieldScanner;->extract(Lorg/simpleframework/xml/core/Detail;)V

    .line 101
    invoke-direct {p0}, Lorg/simpleframework/xml/core/FieldScanner;->build()V

    return-void
.end method
