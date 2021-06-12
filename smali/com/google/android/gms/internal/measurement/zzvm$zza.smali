.class public Lcom/google/android/gms/internal/measurement/zzvm$zza;
.super Lcom/google/android/gms/internal/measurement/zztx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzvm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/measurement/zzvm<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/measurement/zzvm$zza<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/measurement/zztx<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/measurement/zzvm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field private b:Lcom/google/android/gms/internal/measurement/zzvm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/measurement/zzvm;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zztx;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvm$zza;->a:Lcom/google/android/gms/internal/measurement/zzvm;

    .line 3
    sget v0, Lcom/google/android/gms/internal/measurement/zzvm$zze;->d:I

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/zzvm;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzvm;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvm$zza;->b:Lcom/google/android/gms/internal/measurement/zzvm;

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzvm$zza;->c:Z

    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/measurement/zzvm;Lcom/google/android/gms/internal/measurement/zzvm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    .line 50
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzxf;->a()Lcom/google/android/gms/internal/measurement/zzxf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/zzxf;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzxj;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzxj;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final synthetic a()Lcom/google/android/gms/internal/measurement/zztx;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zztx;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzvm$zza;

    return-object v0
.end method

.method protected final synthetic a(Lcom/google/android/gms/internal/measurement/zztw;)Lcom/google/android/gms/internal/measurement/zztx;
    .locals 0

    .line 52
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzvm;

    .line 53
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzvm$zza;->a(Lcom/google/android/gms/internal/measurement/zzvm;)Lcom/google/android/gms/internal/measurement/zzvm$zza;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/android/gms/internal/measurement/zzvm;)Lcom/google/android/gms/internal/measurement/zzvm$zza;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 40
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzvm$zza;->c:Z

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvm$zza;->b:Lcom/google/android/gms/internal/measurement/zzvm;

    sget v1, Lcom/google/android/gms/internal/measurement/zzvm$zze;->d:I

    const/4 v2, 0x0

    .line 43
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/measurement/zzvm;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 44
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzvm;

    .line 45
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvm$zza;->b:Lcom/google/android/gms/internal/measurement/zzvm;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzvm$zza;->a(Lcom/google/android/gms/internal/measurement/zzvm;Lcom/google/android/gms/internal/measurement/zzvm;)V

    .line 46
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvm$zza;->b:Lcom/google/android/gms/internal/measurement/zzvm;

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzvm$zza;->c:Z

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvm$zza;->b:Lcom/google/android/gms/internal/measurement/zzvm;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzvm$zza;->a(Lcom/google/android/gms/internal/measurement/zzvm;Lcom/google/android/gms/internal/measurement/zzvm;)V

    return-object p0
.end method

.method public b()Lcom/google/android/gms/internal/measurement/zzvm;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 10
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzvm$zza;->c:Z

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvm$zza;->b:Lcom/google/android/gms/internal/measurement/zzvm;

    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvm$zza;->b:Lcom/google/android/gms/internal/measurement/zzvm;

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzxf;->a()Lcom/google/android/gms/internal/measurement/zzxf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzxf;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzxj;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/measurement/zzxj;->c(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzvm$zza;->c:Z

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvm$zza;->b:Lcom/google/android/gms/internal/measurement/zzvm;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/measurement/zzvm;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzvm$zza;->d()Lcom/google/android/gms/internal/measurement/zzwt;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzvm;

    .line 18
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 19
    sget v2, Lcom/google/android/gms/internal/measurement/zzvm$zze;->a:I

    const/4 v3, 0x0

    .line 21
    invoke-virtual {v0, v2, v3, v3}, Lcom/google/android/gms/internal/measurement/zzvm;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 22
    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    .line 27
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzxf;->a()Lcom/google/android/gms/internal/measurement/zzxf;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/measurement/zzxf;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzxj;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/measurement/zzxj;->d(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v1, :cond_3

    .line 29
    sget v1, Lcom/google/android/gms/internal/measurement/zzvm$zze;->b:I

    if-eqz v4, :cond_2

    move-object v2, v0

    goto :goto_0

    :cond_2
    move-object v2, v3

    .line 32
    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzvm;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    if-eqz v4, :cond_4

    return-object v0

    .line 36
    :cond_4
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzya;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/zzya;-><init>(Lcom/google/android/gms/internal/measurement/zzwt;)V

    .line 37
    throw v1
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvm$zza;->a:Lcom/google/android/gms/internal/measurement/zzvm;

    .line 64
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzvm;

    .line 65
    sget v1, Lcom/google/android/gms/internal/measurement/zzvm$zze;->e:I

    const/4 v2, 0x0

    .line 66
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/measurement/zzvm;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 67
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzvm$zza;

    .line 69
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzvm$zza;->d()Lcom/google/android/gms/internal/measurement/zzwt;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzvm;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzvm$zza;->a(Lcom/google/android/gms/internal/measurement/zzvm;)Lcom/google/android/gms/internal/measurement/zzvm$zza;

    return-object v0
.end method

.method public synthetic d()Lcom/google/android/gms/internal/measurement/zzwt;
    .locals 1

    .line 56
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzvm$zza;->b()Lcom/google/android/gms/internal/measurement/zzvm;

    move-result-object v0

    return-object v0
.end method

.method public final e()Z
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvm$zza;->b:Lcom/google/android/gms/internal/measurement/zzvm;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzvm;->a(Lcom/google/android/gms/internal/measurement/zzvm;Z)Z

    move-result v0

    return v0
.end method

.method public synthetic f()Lcom/google/android/gms/internal/measurement/zzwt;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzvm$zza;->c()Lcom/google/android/gms/internal/measurement/zzvm;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic j()Lcom/google/android/gms/internal/measurement/zzwt;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvm$zza;->a:Lcom/google/android/gms/internal/measurement/zzvm;

    return-object v0
.end method
