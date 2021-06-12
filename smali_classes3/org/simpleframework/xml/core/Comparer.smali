.class Lorg/simpleframework/xml/core/Comparer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "name"

    .line 51
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/Comparer;-><init>([Ljava/lang/String;)V

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/simpleframework/xml/core/Comparer;->a:[Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/reflect/Method;)Z
    .locals 5

    .line 106
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    .line 108
    iget-object v0, p0, Lorg/simpleframework/xml/core/Comparer;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lorg/simpleframework/xml/core/Comparer;->a:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 110
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public a(Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 76
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    .line 77
    invoke-interface {p2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    .line 78
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 81
    array-length v0, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v4, v2, v3

    .line 82
    invoke-direct {p0, v4}, Lorg/simpleframework/xml/core/Comparer;->a(Ljava/lang/reflect/Method;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 83
    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 84
    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v4, p2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 86
    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method
