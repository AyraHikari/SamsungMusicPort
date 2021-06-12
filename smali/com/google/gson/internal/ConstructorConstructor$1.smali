.class Lcom/google/gson/internal/ConstructorConstructor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/internal/ObjectConstructor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/internal/ConstructorConstructor;->a(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/internal/ObjectConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/internal/ObjectConstructor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/gson/InstanceCreator;

.field final synthetic b:Ljava/lang/reflect/Type;

.field final synthetic c:Lcom/google/gson/internal/ConstructorConstructor;


# direct methods
.method constructor <init>(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/InstanceCreator;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/google/gson/internal/ConstructorConstructor$1;->c:Lcom/google/gson/internal/ConstructorConstructor;

    iput-object p2, p0, Lcom/google/gson/internal/ConstructorConstructor$1;->a:Lcom/google/gson/InstanceCreator;

    iput-object p3, p0, Lcom/google/gson/internal/ConstructorConstructor$1;->b:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/google/gson/internal/ConstructorConstructor$1;->a:Lcom/google/gson/InstanceCreator;

    iget-object v1, p0, Lcom/google/gson/internal/ConstructorConstructor$1;->b:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Lcom/google/gson/InstanceCreator;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
