.class final synthetic Lcom/google/firebase/iid/zzah;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/firebase/iid/zzad;

.field private final b:Lcom/google/firebase/iid/zzak;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/zzad;Lcom/google/firebase/iid/zzak;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzah;->a:Lcom/google/firebase/iid/zzad;

    iput-object p2, p0, Lcom/google/firebase/iid/zzah;->b:Lcom/google/firebase/iid/zzak;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/iid/zzah;->a:Lcom/google/firebase/iid/zzad;

    iget-object v1, p0, Lcom/google/firebase/iid/zzah;->b:Lcom/google/firebase/iid/zzak;

    .line 2
    iget v1, v1, Lcom/google/firebase/iid/zzak;->a:I

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzad;->a(I)V

    return-void
.end method
