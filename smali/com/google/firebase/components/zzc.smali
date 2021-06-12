.class final synthetic Lcom/google/firebase/components/zzc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentFactory;


# instance fields
.field private final a:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/components/zzc;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lcom/google/firebase/components/ComponentFactory;
    .locals 1

    new-instance v0, Lcom/google/firebase/components/zzc;

    invoke-direct {v0, p0}, Lcom/google/firebase/components/zzc;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;
    .locals 0

    iget-object p1, p0, Lcom/google/firebase/components/zzc;->a:Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/firebase/components/Component;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
