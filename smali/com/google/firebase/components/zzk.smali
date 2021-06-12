.class final synthetic Lcom/google/firebase/components/zzk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inject/Provider;


# instance fields
.field private final a:Lcom/google/firebase/components/ComponentFactory;

.field private final b:Lcom/google/firebase/components/ComponentContainer;


# direct methods
.method private constructor <init>(Lcom/google/firebase/components/ComponentFactory;Lcom/google/firebase/components/ComponentContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/components/zzk;->a:Lcom/google/firebase/components/ComponentFactory;

    iput-object p2, p0, Lcom/google/firebase/components/zzk;->b:Lcom/google/firebase/components/ComponentContainer;

    return-void
.end method

.method public static a(Lcom/google/firebase/components/ComponentFactory;Lcom/google/firebase/components/ComponentContainer;)Lcom/google/firebase/inject/Provider;
    .locals 1

    new-instance v0, Lcom/google/firebase/components/zzk;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/components/zzk;-><init>(Lcom/google/firebase/components/ComponentFactory;Lcom/google/firebase/components/ComponentContainer;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/components/zzk;->a:Lcom/google/firebase/components/ComponentFactory;

    iget-object v1, p0, Lcom/google/firebase/components/zzk;->b:Lcom/google/firebase/components/ComponentContainer;

    invoke-static {v0, v1}, Lcom/google/firebase/components/zzj;->a(Lcom/google/firebase/components/ComponentFactory;Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
