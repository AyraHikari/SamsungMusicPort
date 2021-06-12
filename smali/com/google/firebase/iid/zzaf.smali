.class final synthetic Lcom/google/firebase/iid/zzaf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/firebase/iid/zzad;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/zzad;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzaf;->a:Lcom/google/firebase/iid/zzad;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/iid/zzaf;->a:Lcom/google/firebase/iid/zzad;

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzad;->b()V

    return-void
.end method
