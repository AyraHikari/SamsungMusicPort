.class final Lcom/google/firebase/components/zzj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/firebase/inject/Provider<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private volatile b:Ljava/lang/Object;

.field private volatile c:Lcom/google/firebase/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inject/Provider<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/firebase/components/zzj;->a:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/components/ComponentFactory;Lcom/google/firebase/components/ComponentContainer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/components/ComponentFactory<",
            "TT;>;",
            "Lcom/google/firebase/components/ComponentContainer;",
            ")V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Lcom/google/firebase/components/zzj;->a:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/firebase/components/zzj;->b:Ljava/lang/Object;

    .line 43
    invoke-static {p1, p2}, Lcom/google/firebase/components/zzk;->a(Lcom/google/firebase/components/ComponentFactory;Lcom/google/firebase/components/ComponentContainer;)Lcom/google/firebase/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/components/zzj;->c:Lcom/google/firebase/inject/Provider;

    return-void
.end method

.method static synthetic a(Lcom/google/firebase/components/ComponentFactory;Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-interface {p0, p1}, Lcom/google/firebase/components/ComponentFactory;->a(Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/google/firebase/components/zzj;->b:Ljava/lang/Object;

    .line 50
    sget-object v1, Lcom/google/firebase/components/zzj;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 51
    monitor-enter p0

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/components/zzj;->b:Ljava/lang/Object;

    .line 53
    sget-object v1, Lcom/google/firebase/components/zzj;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/google/firebase/components/zzj;->c:Lcom/google/firebase/inject/Provider;

    invoke-interface {v0}, Lcom/google/firebase/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    .line 55
    iput-object v0, p0, Lcom/google/firebase/components/zzj;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 58
    iput-object v1, p0, Lcom/google/firebase/components/zzj;->c:Lcom/google/firebase/inject/Provider;

    .line 60
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method
