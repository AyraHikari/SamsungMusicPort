.class interface abstract Lorg/simpleframework/xml/core/Context;
.super Ljava/lang/Object;
.source "Context.java"


# virtual methods
.method public abstract getAttribute(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract getCaller(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Caller;
.end method

.method public abstract getDecorator(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Decorator;
.end method

.method public abstract getInstance(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Instance;
.end method

.method public abstract getInstance(Lorg/simpleframework/xml/strategy/Value;)Lorg/simpleframework/xml/core/Instance;
.end method

.method public abstract getName(Ljava/lang/Class;)Ljava/lang/String;
.end method

.method public abstract getOverride(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/strategy/Value;
.end method

.method public abstract getProperty(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSchema(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Schema;
.end method

.method public abstract getSession()Lorg/simpleframework/xml/core/Session;
.end method

.method public abstract getStyle()Lorg/simpleframework/xml/stream/Style;
.end method

.method public abstract getSupport()Lorg/simpleframework/xml/core/Support;
.end method

.method public abstract getType(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;)Ljava/lang/Class;
.end method

.method public abstract getVersion(Ljava/lang/Class;)Lorg/simpleframework/xml/Version;
.end method

.method public abstract isFloat(Ljava/lang/Class;)Z
.end method

.method public abstract isFloat(Lorg/simpleframework/xml/strategy/Type;)Z
.end method

.method public abstract isPrimitive(Ljava/lang/Class;)Z
.end method

.method public abstract isPrimitive(Lorg/simpleframework/xml/strategy/Type;)Z
.end method

.method public abstract isStrict()Z
.end method

.method public abstract setOverride(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;Lorg/simpleframework/xml/stream/OutputNode;)Z
.end method
