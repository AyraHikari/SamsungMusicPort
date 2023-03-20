.class Lorg/simpleframework/xml/core/MethodName;
.super Ljava/lang/Object;
.source "MethodName.java"


# instance fields
.field private method:Ljava/lang/reflect/Method;

.field private name:Ljava/lang/String;

.field private type:Lorg/simpleframework/xml/core/MethodType;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Lorg/simpleframework/xml/core/MethodType;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/simpleframework/xml/core/MethodName;->method:Ljava/lang/reflect/Method;

    .line 3
    iput-object p2, p0, Lorg/simpleframework/xml/core/MethodName;->type:Lorg/simpleframework/xml/core/MethodType;

    .line 4
    iput-object p3, p0, Lorg/simpleframework/xml/core/MethodName;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/reflect/Method;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodName;->method:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodName;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lorg/simpleframework/xml/core/MethodType;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodName;->type:Lorg/simpleframework/xml/core/MethodType;

    return-object v0
.end method
