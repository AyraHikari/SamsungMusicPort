.class Lorg/simpleframework/xml/util/Resolver$Stack;
.super Ljava/util/LinkedList;
.source "Resolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/xml/util/Resolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Stack"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/xml/util/Resolver$Stack$Sequence;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList<",
        "TM;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/simpleframework/xml/util/Resolver;


# direct methods
.method private constructor <init>(Lorg/simpleframework/xml/util/Resolver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/simpleframework/xml/util/Resolver$Stack;->this$0:Lorg/simpleframework/xml/util/Resolver;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/simpleframework/xml/util/Resolver;Lorg/simpleframework/xml/util/Resolver$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/util/Resolver$Stack;-><init>(Lorg/simpleframework/xml/util/Resolver;)V

    return-void
.end method


# virtual methods
.method public purge(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/simpleframework/xml/util/Resolver$Stack;->this$0:Lorg/simpleframework/xml/util/Resolver;

    iget-object v0, v0, Lorg/simpleframework/xml/util/Resolver;->cache:Lorg/simpleframework/xml/util/Resolver$Cache;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic push(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/simpleframework/xml/util/Match;

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/util/Resolver$Stack;->push(Lorg/simpleframework/xml/util/Match;)V

    return-void
.end method

.method public push(Lorg/simpleframework/xml/util/Match;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/simpleframework/xml/util/Resolver$Stack;->this$0:Lorg/simpleframework/xml/util/Resolver;

    iget-object v0, v0, Lorg/simpleframework/xml/util/Resolver;->cache:Lorg/simpleframework/xml/util/Resolver$Cache;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 3
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    return-void
.end method

.method public sequence()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TM;>;"
        }
    .end annotation

    new-instance v0, Lorg/simpleframework/xml/util/Resolver$Stack$Sequence;

    invoke-direct {v0, p0}, Lorg/simpleframework/xml/util/Resolver$Stack$Sequence;-><init>(Lorg/simpleframework/xml/util/Resolver$Stack;)V

    return-object v0
.end method
