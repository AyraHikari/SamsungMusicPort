.class final Lcom/google/firebase/iid/zzu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/Continuation<",
        "Landroid/os/Bundle;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/firebase/iid/zzr;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/zzr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/iid/zzu;->a:Lcom/google/firebase/iid/zzr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lcom/google/android/gms/tasks/Task;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3
    const-class v0, Ljava/io/IOException;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 4
    iget-object v0, p0, Lcom/google/firebase/iid/zzu;->a:Lcom/google/firebase/iid/zzr;

    invoke-static {v0, p1}, Lcom/google/firebase/iid/zzr;->a(Lcom/google/firebase/iid/zzr;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
