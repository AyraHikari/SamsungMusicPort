.class public Lorg/apache/commons/lang3/text/translate/LookupTranslator;
.super Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;
.source "SourceFile"


# instance fields
.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private final d:I

.field private final e:I


# direct methods
.method public varargs constructor <init>([[Ljava/lang/CharSequence;)V
    .locals 9

    .line 46
    invoke-direct {p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;->b:Ljava/util/HashMap;

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;->c:Ljava/util/HashSet;

    const/4 v0, 0x0

    const v1, 0x7fffffff

    if-eqz p1, :cond_3

    .line 52
    array-length v2, p1

    const/4 v1, 0x0

    const v3, 0x7fffffff

    const/4 v4, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v5, p1, v1

    .line 53
    iget-object v6, p0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;->b:Ljava/util/HashMap;

    aget-object v7, v5, v0

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v6, p0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;->c:Ljava/util/HashSet;

    aget-object v7, v5, v0

    invoke-interface {v7, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 55
    aget-object v5, v5, v0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v5, v3, :cond_0

    move v3, v5

    :cond_0
    if-le v5, v4, :cond_1

    move v4, v5

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v3

    move v0, v4

    .line 64
    :cond_3
    iput v1, p0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;->d:I

    .line 65
    iput v0, p0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;->e:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;ILjava/io/Writer;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;->c:Ljava/util/HashSet;

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    iget v0, p0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;->e:I

    .line 76
    iget v1, p0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;->e:I

    add-int/2addr v1, p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 77
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, p2

    .line 80
    :cond_0
    :goto_0
    iget v1, p0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;->d:I

    if-lt v0, v1, :cond_2

    add-int v1, p2, v0

    .line 81
    invoke-interface {p1, p2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 82
    iget-object v2, p0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;->b:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 85
    invoke-virtual {p3, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
