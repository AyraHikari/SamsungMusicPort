.class abstract Lcom/google/firebase/components/zza;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentContainer;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 22
    invoke-virtual {p0, p1}, Lcom/google/firebase/components/zza;->b(Ljava/lang/Class;)Lcom/google/firebase/inject/Provider;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 26
    :cond_0
    invoke-interface {p1}, Lcom/google/firebase/inject/Provider;->a()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
