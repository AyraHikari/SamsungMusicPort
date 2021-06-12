.class Lorg/simpleframework/xml/core/FieldDetail;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[Ljava/lang/annotation/Annotation;

.field private final b:Ljava/lang/reflect/Field;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/FieldDetail;->a:[Ljava/lang/annotation/Annotation;

    .line 58
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/FieldDetail;->c:Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lorg/simpleframework/xml/core/FieldDetail;->b:Ljava/lang/reflect/Field;

    return-void
.end method


# virtual methods
.method public a()[Ljava/lang/annotation/Annotation;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/simpleframework/xml/core/FieldDetail;->a:[Ljava/lang/annotation/Annotation;

    return-object v0
.end method

.method public b()Ljava/lang/reflect/Field;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/simpleframework/xml/core/FieldDetail;->b:Ljava/lang/reflect/Field;

    return-object v0
.end method
