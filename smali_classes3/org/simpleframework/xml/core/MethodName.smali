.class Lorg/simpleframework/xml/core/MethodName;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lorg/simpleframework/xml/core/MethodType;

.field private b:Ljava/lang/reflect/Method;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Lorg/simpleframework/xml/core/MethodType;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/simpleframework/xml/core/MethodName;->b:Ljava/lang/reflect/Method;

    .line 59
    iput-object p2, p0, Lorg/simpleframework/xml/core/MethodName;->a:Lorg/simpleframework/xml/core/MethodType;

    .line 60
    iput-object p3, p0, Lorg/simpleframework/xml/core/MethodName;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodName;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lorg/simpleframework/xml/core/MethodType;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodName;->a:Lorg/simpleframework/xml/core/MethodType;

    return-object v0
.end method

.method public c()Ljava/lang/reflect/Method;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodName;->b:Ljava/lang/reflect/Method;

    return-object v0
.end method
