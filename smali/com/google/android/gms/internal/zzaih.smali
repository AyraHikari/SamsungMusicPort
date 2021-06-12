.class final Lcom/google/android/gms/internal/zzaih;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:I

.field private synthetic b:I

.field private synthetic c:I

.field private synthetic d:Lcom/google/android/gms/internal/zzaig;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaig;III)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaih;->d:Lcom/google/android/gms/internal/zzaig;

    iput p2, p0, Lcom/google/android/gms/internal/zzaih;->a:I

    iput p3, p0, Lcom/google/android/gms/internal/zzaih;->b:I

    iput p4, p0, Lcom/google/android/gms/internal/zzaih;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget p1, p0, Lcom/google/android/gms/internal/zzaih;->a:I

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzaih;->d:Lcom/google/android/gms/internal/zzaig;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaig;->a(Lcom/google/android/gms/internal/zzaig;)V

    return-void

    :cond_0
    iget p1, p0, Lcom/google/android/gms/internal/zzaih;->b:I

    if-ne p2, p1, :cond_1

    sget-object p1, Lcom/google/android/gms/internal/zznh;->cy:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzaih;->d:Lcom/google/android/gms/internal/zzaig;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaig;->b(Lcom/google/android/gms/internal/zzaig;)V

    return-void

    :cond_1
    iget p1, p0, Lcom/google/android/gms/internal/zzaih;->c:I

    if-ne p2, p1, :cond_2

    sget-object p1, Lcom/google/android/gms/internal/zznh;->cz:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/zzaih;->d:Lcom/google/android/gms/internal/zzaig;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaig;->c(Lcom/google/android/gms/internal/zzaig;)V

    :cond_2
    return-void
.end method
