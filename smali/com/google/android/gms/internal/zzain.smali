.class final Lcom/google/android/gms/internal/zzain;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Z

.field private synthetic d:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaim;Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzain;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzain;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzain;->c:Z

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzain;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzain;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzain;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzain;->c:Z

    if-eqz v1, :cond_0

    const-string v1, "Error"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :cond_0
    const-string v1, "Info"

    goto :goto_0

    :goto_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzain;->d:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v1, "Dismiss"

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    :cond_1
    const-string v1, "Learn More"

    new-instance v3, Lcom/google/android/gms/internal/zzaio;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/zzaio;-><init>(Lcom/google/android/gms/internal/zzain;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Dismiss"

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_2
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
