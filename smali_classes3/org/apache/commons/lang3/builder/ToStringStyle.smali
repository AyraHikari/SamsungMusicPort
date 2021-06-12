.class public abstract Lorg/apache/commons/lang3/builder/ToStringStyle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/builder/ToStringStyle$JsonToStringStyle;,
        Lorg/apache/commons/lang3/builder/ToStringStyle$NoClassNameToStringStyle;,
        Lorg/apache/commons/lang3/builder/ToStringStyle$MultiLineToStringStyle;,
        Lorg/apache/commons/lang3/builder/ToStringStyle$SimpleToStringStyle;,
        Lorg/apache/commons/lang3/builder/ToStringStyle$ShortPrefixToStringStyle;,
        Lorg/apache/commons/lang3/builder/ToStringStyle$NoFieldNameToStringStyle;,
        Lorg/apache/commons/lang3/builder/ToStringStyle$DefaultToStringStyle;
    }
.end annotation


# static fields
.field public static final DEFAULT_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

.field public static final JSON_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

.field public static final MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

.field public static final NO_CLASS_NAME_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

.field public static final NO_FIELD_NAMES_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

.field private static final REGISTRY:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final SHORT_PREFIX_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

.field public static final SIMPLE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

.field private static final serialVersionUID:J = -0x23ea08d00c05296cL


# instance fields
.field private arrayContentDetail:Z

.field private arrayEnd:Ljava/lang/String;

.field private arraySeparator:Ljava/lang/String;

.field private arrayStart:Ljava/lang/String;

.field private contentEnd:Ljava/lang/String;

.field private contentStart:Ljava/lang/String;

.field private defaultFullDetail:Z

.field private fieldNameValueSeparator:Ljava/lang/String;

.field private fieldSeparator:Ljava/lang/String;

.field private fieldSeparatorAtEnd:Z

.field private fieldSeparatorAtStart:Z

.field private nullText:Ljava/lang/String;

.field private sizeEndText:Ljava/lang/String;

.field private sizeStartText:Ljava/lang/String;

.field private summaryObjectEndText:Ljava/lang/String;

.field private summaryObjectStartText:Ljava/lang/String;

.field private useClassName:Z

.field private useFieldNames:Z

.field private useIdentityHashCode:Z

.field private useShortClassName:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    new-instance v0, Lorg/apache/commons/lang3/builder/ToStringStyle$DefaultToStringStyle;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/ToStringStyle$DefaultToStringStyle;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->DEFAULT_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    .line 95
    new-instance v0, Lorg/apache/commons/lang3/builder/ToStringStyle$MultiLineToStringStyle;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/ToStringStyle$MultiLineToStringStyle;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    .line 106
    new-instance v0, Lorg/apache/commons/lang3/builder/ToStringStyle$NoFieldNameToStringStyle;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/ToStringStyle$NoFieldNameToStringStyle;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->NO_FIELD_NAMES_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    .line 118
    new-instance v0, Lorg/apache/commons/lang3/builder/ToStringStyle$ShortPrefixToStringStyle;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/ToStringStyle$ShortPrefixToStringStyle;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->SHORT_PREFIX_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    .line 128
    new-instance v0, Lorg/apache/commons/lang3/builder/ToStringStyle$SimpleToStringStyle;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/ToStringStyle$SimpleToStringStyle;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->SIMPLE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    .line 140
    new-instance v0, Lorg/apache/commons/lang3/builder/ToStringStyle$NoClassNameToStringStyle;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/ToStringStyle$NoClassNameToStringStyle;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->NO_CLASS_NAME_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    .line 159
    new-instance v0, Lorg/apache/commons/lang3/builder/ToStringStyle$JsonToStringStyle;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/ToStringStyle$JsonToStringStyle;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->JSON_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    .line 167
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->REGISTRY:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 253
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->useFieldNames:Z

    .line 258
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->useClassName:Z

    const/4 v1, 0x0

    .line 263
    iput-boolean v1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->useShortClassName:Z

    .line 268
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->useIdentityHashCode:Z

    const-string v2, "["

    .line 273
    iput-object v2, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->contentStart:Ljava/lang/String;

    const-string v2, "]"

    .line 278
    iput-object v2, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->contentEnd:Ljava/lang/String;

    const-string v2, "="

    .line 283
    iput-object v2, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->fieldNameValueSeparator:Ljava/lang/String;

    .line 288
    iput-boolean v1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->fieldSeparatorAtStart:Z

    .line 293
    iput-boolean v1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->fieldSeparatorAtEnd:Z

    const-string v1, ","

    .line 298
    iput-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    const-string v1, "{"

    .line 303
    iput-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    const-string v1, ","

    .line 308
    iput-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    .line 313
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayContentDetail:Z

    const-string v1, "}"

    .line 318
    iput-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    .line 324
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->defaultFullDetail:Z

    const-string v0, "<null>"

    .line 329
    iput-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->nullText:Ljava/lang/String;

    const-string v0, "<size="

    .line 334
    iput-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->sizeStartText:Ljava/lang/String;

    const-string v0, ">"

    .line 339
    iput-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->sizeEndText:Ljava/lang/String;

    const-string v0, "<"

    .line 344
    iput-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->summaryObjectStartText:Ljava/lang/String;

    const-string v0, ">"

    .line 349
    iput-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->summaryObjectEndText:Ljava/lang/String;

    return-void
.end method

.method static getRegistry()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 188
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method static isRegistered(Ljava/lang/Object;)Z
    .locals 1

    .line 203
    invoke-static {}, Lorg/apache/commons/lang3/builder/ToStringStyle;->getRegistry()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static register(Ljava/lang/Object;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 218
    invoke-static {}, Lorg/apache/commons/lang3/builder/ToStringStyle;->getRegistry()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    .line 220
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->REGISTRY:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 222
    :cond_0
    invoke-static {}, Lorg/apache/commons/lang3/builder/ToStringStyle;->getRegistry()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method static unregister(Ljava/lang/Object;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 240
    invoke-static {}, Lorg/apache/commons/lang3/builder/ToStringStyle;->getRegistry()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 244
    sget-object p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    :cond_0
    return-void
.end method


# virtual methods
.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;B)V
    .locals 0

    .line 763
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 764
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;B)V

    .line 765
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;C)V
    .locals 0

    .line 791
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 792
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;C)V

    .line 793
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;D)V
    .locals 0

    .line 819
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 820
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;D)V

    .line 821
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;F)V
    .locals 0

    .line 847
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 848
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;F)V

    .line 849
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .locals 0

    .line 707
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 708
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 709
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;J)V
    .locals 0

    .line 679
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 680
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;J)V

    .line 681
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V
    .locals 0

    .line 470
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 473
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0

    .line 476
    :cond_0
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendInternal(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 479
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;S)V
    .locals 0

    .line 735
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 736
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;S)V

    .line 737
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V
    .locals 0

    .line 875
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 876
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    .line 877
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[BLjava/lang/Boolean;)V
    .locals 0

    .line 1182
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 1185
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0

    .line 1187
    :cond_0
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 1188
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V

    goto :goto_0

    .line 1191
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V

    .line 1194
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[CLjava/lang/Boolean;)V
    .locals 0

    .line 1243
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 1246
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0

    .line 1248
    :cond_0
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 1249
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V

    goto :goto_0

    .line 1252
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V

    .line 1255
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[DLjava/lang/Boolean;)V
    .locals 0

    .line 1304
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 1307
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0

    .line 1309
    :cond_0
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 1310
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V

    goto :goto_0

    .line 1313
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V

    .line 1316
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[FLjava/lang/Boolean;)V
    .locals 0

    .line 1365
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 1368
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0

    .line 1370
    :cond_0
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 1371
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V

    goto :goto_0

    .line 1374
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V

    .line 1377
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[ILjava/lang/Boolean;)V
    .locals 0

    .line 1060
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 1063
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0

    .line 1065
    :cond_0
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 1066
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V

    goto :goto_0

    .line 1069
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V

    .line 1072
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[JLjava/lang/Boolean;)V
    .locals 0

    .line 999
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 1002
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0

    .line 1004
    :cond_0
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 1005
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V

    goto :goto_0

    .line 1008
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V

    .line 1011
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V
    .locals 0

    .line 903
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 906
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0

    .line 908
    :cond_0
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 909
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 912
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 915
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[SLjava/lang/Boolean;)V
    .locals 0

    .line 1121
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 1124
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0

    .line 1126
    :cond_0
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 1127
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V

    goto :goto_0

    .line 1130
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V

    .line 1133
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[ZLjava/lang/Boolean;)V
    .locals 0

    .line 1426
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 1429
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0

    .line 1431
    :cond_0
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 1432
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V

    goto :goto_0

    .line 1435
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V

    .line 1438
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method protected appendClassName(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 1

    .line 1483
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->useClassName:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 1484
    invoke-static {p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->register(Ljava/lang/Object;)V

    .line 1485
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->useShortClassName:Z

    if-eqz v0, :cond_0

    .line 1486
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->getShortClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1488
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    :goto_0
    return-void
.end method

.method protected appendContentEnd(Ljava/lang/StringBuffer;)V
    .locals 1

    .line 1522
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->contentEnd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendContentStart(Ljava/lang/StringBuffer;)V
    .locals 1

    .line 1513
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->contentStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendCyclicObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 613
    invoke-static {p1, p3}, Lorg/apache/commons/lang3/ObjectUtils;->a(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;B)V
    .locals 0

    .line 777
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;C)V
    .locals 0

    .line 805
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;D)V
    .locals 0

    .line 833
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;F)V
    .locals 0

    .line 861
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .locals 0

    .line 721
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;J)V
    .locals 0

    .line 693
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 626
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "*>;)V"
        }
    .end annotation

    .line 638
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .line 650
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;S)V
    .locals 0

    .line 749
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V
    .locals 0

    .line 889
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V
    .locals 2

    .line 1207
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 1208
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    .line 1210
    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1212
    :cond_0
    aget-byte v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1214
    :cond_1
    iget-object p2, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V
    .locals 2

    .line 1268
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 1269
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    .line 1271
    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1273
    :cond_0
    aget-char v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1275
    :cond_1
    iget-object p2, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V
    .locals 3

    .line 1329
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 1330
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    .line 1332
    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1334
    :cond_0
    aget-wide v1, p3, v0

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1336
    :cond_1
    iget-object p2, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V
    .locals 2

    .line 1390
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 1391
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    .line 1393
    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1395
    :cond_0
    aget v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1397
    :cond_1
    iget-object p2, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V
    .locals 2

    .line 1085
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 1086
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    .line 1088
    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1090
    :cond_0
    aget v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1092
    :cond_1
    iget-object p2, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V
    .locals 3

    .line 1024
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 1025
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    .line 1027
    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1029
    :cond_0
    aget-wide v1, p3, v0

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1031
    :cond_1
    iget-object p2, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 930
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 931
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_2

    .line 932
    aget-object v1, p3, v0

    if-lez v0, :cond_0

    .line 934
    iget-object v2, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    if-nez v1, :cond_1

    .line 937
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_1

    .line 940
    :cond_1
    iget-boolean v2, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayContentDetail:Z

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendInternal(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 943
    :cond_2
    iget-object p2, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V
    .locals 2

    .line 1146
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 1147
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    .line 1149
    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1151
    :cond_0
    aget-short v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1153
    :cond_1
    iget-object p2, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V
    .locals 2

    .line 1451
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 1452
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    .line 1454
    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1456
    :cond_0
    aget-boolean v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1458
    :cond_1
    iget-object p2, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public appendEnd(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 1

    .line 426
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->fieldSeparatorAtEnd:Z

    if-nez v0, :cond_0

    .line 427
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->removeLastFieldSeparator(Ljava/lang/StringBuffer;)V

    .line 429
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendContentEnd(Ljava/lang/StringBuffer;)V

    .line 430
    invoke-static {p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method protected appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 0

    .line 1566
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldSeparator(Ljava/lang/StringBuffer;)V

    return-void
.end method

.method protected appendFieldSeparator(Ljava/lang/StringBuffer;)V
    .locals 1

    .line 1543
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 1

    .line 1553
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->useFieldNames:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 1554
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1555
    iget-object p2, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->fieldNameValueSeparator:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method

.method protected appendIdentityHashCode(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 1

    .line 1500
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->isUseIdentityHashCode()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 1501
    invoke-static {p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->register(Ljava/lang/Object;)V

    const/16 v0, 0x40

    .line 1502
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1503
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method

.method protected appendInternal(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 1

    .line 502
    invoke-static {p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p3, Ljava/lang/Number;

    if-nez v0, :cond_0

    instance-of v0, p3, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    instance-of v0, p3, Ljava/lang/Character;

    if-nez v0, :cond_0

    .line 504
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendCyclicObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 508
    :cond_0
    invoke-static {p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->register(Ljava/lang/Object;)V

    .line 511
    :try_start_0
    instance-of v0, p3, Ljava/util/Collection;

    if-eqz v0, :cond_2

    if-eqz p4, :cond_1

    .line 513
    move-object p4, p3

    check-cast p4, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 515
    :cond_1
    move-object p4, p3

    check-cast p4, Ljava/util/Collection;

    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result p4

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 518
    :cond_2
    instance-of v0, p3, Ljava/util/Map;

    if-eqz v0, :cond_4

    if-eqz p4, :cond_3

    .line 520
    move-object p4, p3

    check-cast p4, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 522
    :cond_3
    move-object p4, p3

    check-cast p4, Ljava/util/Map;

    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result p4

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 525
    :cond_4
    instance-of v0, p3, [J

    if-eqz v0, :cond_6

    if-eqz p4, :cond_5

    .line 527
    move-object p4, p3

    check-cast p4, [J

    check-cast p4, [J

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V

    goto/16 :goto_0

    .line 529
    :cond_5
    move-object p4, p3

    check-cast p4, [J

    check-cast p4, [J

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V

    goto/16 :goto_0

    .line 532
    :cond_6
    instance-of v0, p3, [I

    if-eqz v0, :cond_8

    if-eqz p4, :cond_7

    .line 534
    move-object p4, p3

    check-cast p4, [I

    check-cast p4, [I

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 536
    :cond_7
    move-object p4, p3

    check-cast p4, [I

    check-cast p4, [I

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 539
    :cond_8
    instance-of v0, p3, [S

    if-eqz v0, :cond_a

    if-eqz p4, :cond_9

    .line 541
    move-object p4, p3

    check-cast p4, [S

    check-cast p4, [S

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V

    goto/16 :goto_0

    .line 543
    :cond_9
    move-object p4, p3

    check-cast p4, [S

    check-cast p4, [S

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V

    goto/16 :goto_0

    .line 546
    :cond_a
    instance-of v0, p3, [B

    if-eqz v0, :cond_c

    if-eqz p4, :cond_b

    .line 548
    move-object p4, p3

    check-cast p4, [B

    check-cast p4, [B

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V

    goto/16 :goto_0

    .line 550
    :cond_b
    move-object p4, p3

    check-cast p4, [B

    check-cast p4, [B

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V

    goto/16 :goto_0

    .line 553
    :cond_c
    instance-of v0, p3, [C

    if-eqz v0, :cond_e

    if-eqz p4, :cond_d

    .line 555
    move-object p4, p3

    check-cast p4, [C

    check-cast p4, [C

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V

    goto/16 :goto_0

    .line 557
    :cond_d
    move-object p4, p3

    check-cast p4, [C

    check-cast p4, [C

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V

    goto/16 :goto_0

    .line 560
    :cond_e
    instance-of v0, p3, [D

    if-eqz v0, :cond_10

    if-eqz p4, :cond_f

    .line 562
    move-object p4, p3

    check-cast p4, [D

    check-cast p4, [D

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V

    goto :goto_0

    .line 564
    :cond_f
    move-object p4, p3

    check-cast p4, [D

    check-cast p4, [D

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V

    goto :goto_0

    .line 567
    :cond_10
    instance-of v0, p3, [F

    if-eqz v0, :cond_12

    if-eqz p4, :cond_11

    .line 569
    move-object p4, p3

    check-cast p4, [F

    check-cast p4, [F

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V

    goto :goto_0

    .line 571
    :cond_11
    move-object p4, p3

    check-cast p4, [F

    check-cast p4, [F

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V

    goto :goto_0

    .line 574
    :cond_12
    instance-of v0, p3, [Z

    if-eqz v0, :cond_14

    if-eqz p4, :cond_13

    .line 576
    move-object p4, p3

    check-cast p4, [Z

    check-cast p4, [Z

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V

    goto :goto_0

    .line 578
    :cond_13
    move-object p4, p3

    check-cast p4, [Z

    check-cast p4, [Z

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V

    goto :goto_0

    .line 581
    :cond_14
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_16

    if-eqz p4, :cond_15

    .line 583
    move-object p4, p3

    check-cast p4, [Ljava/lang/Object;

    check-cast p4, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 585
    :cond_15
    move-object p4, p3

    check-cast p4, [Ljava/lang/Object;

    check-cast p4, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_16
    if-eqz p4, :cond_17

    .line 590
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 592
    :cond_17
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    :goto_0
    invoke-static {p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->unregister(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->unregister(Ljava/lang/Object;)V

    throw p1
.end method

.method protected appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 0

    .line 1534
    iget-object p2, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->nullText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public appendStart(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 409
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendClassName(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 410
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendIdentityHashCode(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 411
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendContentStart(Ljava/lang/StringBuffer;)V

    .line 412
    iget-boolean p2, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->fieldSeparatorAtStart:Z

    if-eqz p2, :cond_0

    .line 413
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldSeparator(Ljava/lang/StringBuffer;)V

    :cond_0
    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 663
    iget-object p2, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->summaryObjectStartText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 664
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->getShortClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 665
    iget-object p2, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->summaryObjectEndText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V
    .locals 0

    .line 1227
    array-length p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V
    .locals 0

    .line 1288
    array-length p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V
    .locals 0

    .line 1349
    array-length p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V
    .locals 0

    .line 1410
    array-length p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V
    .locals 0

    .line 1105
    array-length p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V
    .locals 0

    .line 1044
    array-length p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 983
    array-length p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V
    .locals 0

    .line 1166
    array-length p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V
    .locals 0

    .line 1471
    array-length p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .locals 0

    .line 1585
    iget-object p2, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->sizeStartText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1586
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1587
    iget-object p2, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->sizeEndText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public appendSuper(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 0

    .line 373
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendToString(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public appendToString(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 388
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->contentStart:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->contentStart:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 389
    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->contentEnd:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_1

    if-ltz v0, :cond_1

    if-ltz v1, :cond_1

    .line 391
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 392
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->fieldSeparatorAtStart:Z

    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->removeLastFieldSeparator(Ljava/lang/StringBuffer;)V

    .line 395
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 396
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldSeparator(Ljava/lang/StringBuffer;)V

    :cond_1
    return-void
.end method

.method protected getArrayEnd()Ljava/lang/String;
    .locals 1

    .line 1785
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    return-object v0
.end method

.method protected getArraySeparator()Ljava/lang/String;
    .locals 1

    .line 1811
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    return-object v0
.end method

.method protected getArrayStart()Ljava/lang/String;
    .locals 1

    .line 1759
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    return-object v0
.end method

.method protected getContentEnd()Ljava/lang/String;
    .locals 1

    .line 1863
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->contentEnd:Ljava/lang/String;

    return-object v0
.end method

.method protected getContentStart()Ljava/lang/String;
    .locals 1

    .line 1837
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->contentStart:Ljava/lang/String;

    return-object v0
.end method

.method protected getFieldNameValueSeparator()Ljava/lang/String;
    .locals 1

    .line 1889
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->fieldNameValueSeparator:Ljava/lang/String;

    return-object v0
.end method

.method protected getFieldSeparator()Ljava/lang/String;
    .locals 1

    .line 1915
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    return-object v0
.end method

.method protected getNullText()Ljava/lang/String;
    .locals 1

    .line 1989
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->nullText:Ljava/lang/String;

    return-object v0
.end method

.method protected getShortClassName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1621
    invoke-static {p1}, Lorg/apache/commons/lang3/ClassUtils;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getSizeEndText()Ljava/lang/String;
    .locals 1

    .line 2050
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->sizeEndText:Ljava/lang/String;

    return-object v0
.end method

.method protected getSizeStartText()Ljava/lang/String;
    .locals 1

    .line 2018
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->sizeStartText:Ljava/lang/String;

    return-object v0
.end method

.method protected getSummaryObjectEndText()Ljava/lang/String;
    .locals 1

    .line 2114
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->summaryObjectEndText:Ljava/lang/String;

    return-object v0
.end method

.method protected getSummaryObjectStartText()Ljava/lang/String;
    .locals 1

    .line 2082
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->summaryObjectStartText:Ljava/lang/String;

    return-object v0
.end method

.method protected isArrayContentDetail()Z
    .locals 1

    .line 1739
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayContentDetail:Z

    return v0
.end method

.method protected isDefaultFullDetail()Z
    .locals 1

    .line 1718
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->defaultFullDetail:Z

    return v0
.end method

.method protected isFieldSeparatorAtEnd()Z
    .locals 1

    .line 1967
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->fieldSeparatorAtEnd:Z

    return v0
.end method

.method protected isFieldSeparatorAtStart()Z
    .locals 1

    .line 1943
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->fieldSeparatorAtStart:Z

    return v0
.end method

.method protected isFullDetail(Ljava/lang/Boolean;)Z
    .locals 0

    if-nez p1, :cond_0

    .line 1606
    iget-boolean p1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->defaultFullDetail:Z

    return p1

    .line 1608
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method protected isUseClassName()Z
    .locals 1

    .line 1635
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->useClassName:Z

    return v0
.end method

.method protected isUseFieldNames()Z
    .locals 1

    .line 1697
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->useFieldNames:Z

    return v0
.end method

.method protected isUseIdentityHashCode()Z
    .locals 1

    .line 1677
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->useIdentityHashCode:Z

    return v0
.end method

.method protected isUseShortClassName()Z
    .locals 1

    .line 1656
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->useShortClassName:Z

    return v0
.end method

.method protected reflectionAppendArrayDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .line 956
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 957
    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 959
    invoke-static {p3, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    if-lez v1, :cond_0

    .line 961
    iget-object v3, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    if-nez v2, :cond_1

    .line 964
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_1

    .line 967
    :cond_1
    iget-boolean v3, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayContentDetail:Z

    invoke-virtual {p0, p1, p2, v2, v3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendInternal(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 970
    :cond_2
    iget-object p2, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected removeLastFieldSeparator(Ljava/lang/StringBuffer;)V
    .locals 7

    .line 440
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 441
    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v0, :cond_2

    if-lez v1, :cond_2

    if-lt v0, v1, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    add-int/lit8 v4, v0, -0x1

    sub-int/2addr v4, v3

    .line 445
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    iget-object v5, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    add-int/lit8 v6, v1, -0x1

    sub-int/2addr v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    sub-int/2addr v0, v1

    .line 451
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_2
    return-void
.end method

.method protected setArrayContentDetail(Z)V
    .locals 0

    .line 1748
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayContentDetail:Z

    return-void
.end method

.method protected setArrayEnd(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 1800
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    return-void
.end method

.method protected setArraySeparator(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 1826
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    return-void
.end method

.method protected setArrayStart(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 1774
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    return-void
.end method

.method protected setContentEnd(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 1878
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->contentEnd:Ljava/lang/String;

    return-void
.end method

.method protected setContentStart(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 1852
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->contentStart:Ljava/lang/String;

    return-void
.end method

.method protected setDefaultFullDetail(Z)V
    .locals 0

    .line 1728
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->defaultFullDetail:Z

    return-void
.end method

.method protected setFieldNameValueSeparator(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 1904
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->fieldNameValueSeparator:Ljava/lang/String;

    return-void
.end method

.method protected setFieldSeparator(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 1930
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    return-void
.end method

.method protected setFieldSeparatorAtEnd(Z)V
    .locals 0

    .line 1978
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->fieldSeparatorAtEnd:Z

    return-void
.end method

.method protected setFieldSeparatorAtStart(Z)V
    .locals 0

    .line 1954
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->fieldSeparatorAtStart:Z

    return-void
.end method

.method protected setNullText(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 2004
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->nullText:Ljava/lang/String;

    return-void
.end method

.method protected setSizeEndText(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 2068
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->sizeEndText:Ljava/lang/String;

    return-void
.end method

.method protected setSizeStartText(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 2036
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->sizeStartText:Ljava/lang/String;

    return-void
.end method

.method protected setSummaryObjectEndText(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 2132
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->summaryObjectEndText:Ljava/lang/String;

    return-void
.end method

.method protected setSummaryObjectStartText(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 2100
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->summaryObjectStartText:Ljava/lang/String;

    return-void
.end method

.method protected setUseClassName(Z)V
    .locals 0

    .line 1644
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->useClassName:Z

    return-void
.end method

.method protected setUseFieldNames(Z)V
    .locals 0

    .line 1706
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->useFieldNames:Z

    return-void
.end method

.method protected setUseIdentityHashCode(Z)V
    .locals 0

    .line 1686
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->useIdentityHashCode:Z

    return-void
.end method

.method protected setUseShortClassName(Z)V
    .locals 0

    .line 1666
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->useShortClassName:Z

    return-void
.end method
