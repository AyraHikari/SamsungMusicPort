.class public final Lcom/google/android/gms/internal/measurement/zzfq$zzb;
.super Lcom/google/android/gms/internal/measurement/zzvm;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzwv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzfq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzfq$zzb$zza;,
        Lcom/google/android/gms/internal/measurement/zzfq$zzb$zzb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzvm<",
        "Lcom/google/android/gms/internal/measurement/zzfq$zzb;",
        "Lcom/google/android/gms/internal/measurement/zzfq$zzb$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzwv;"
    }
.end annotation


# static fields
.field private static final zzaut:Lcom/google/android/gms/internal/measurement/zzfq$zzb;

.field private static volatile zznw:Lcom/google/android/gms/internal/measurement/zzxd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzxd<",
            "Lcom/google/android/gms/internal/measurement/zzfq$zzb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzaur:I

.field private zzaus:Lcom/google/android/gms/internal/measurement/zzvs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzvs<",
            "Lcom/google/android/gms/internal/measurement/zzfq$zza;",
            ">;"
        }
    .end annotation
.end field

.field private zznr:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfq$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzfq$zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfq$zzb;->zzaut:Lcom/google/android/gms/internal/measurement/zzfq$zzb;

    .line 32
    const-class v0, Lcom/google/android/gms/internal/measurement/zzfq$zzb;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzfq$zzb;->zzaut:Lcom/google/android/gms/internal/measurement/zzfq$zzb;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzvm;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzvm;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzvm;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfq$zzb;->zzaur:I

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfq$zzb;->g()Lcom/google/android/gms/internal/measurement/zzvs;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfq$zzb;->zzaus:Lcom/google/android/gms/internal/measurement/zzvs;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/measurement/zzxd;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/measurement/zzxd<",
            "Lcom/google/android/gms/internal/measurement/zzfq$zzb;",
            ">;"
        }
    .end annotation

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfq$zzb;->zzaut:Lcom/google/android/gms/internal/measurement/zzfq$zzb;

    .line 26
    sget v1, Lcom/google/android/gms/internal/measurement/zzvm$zze;->g:I

    const/4 v2, 0x0

    .line 27
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/measurement/zzvm;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 28
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzxd;

    return-object v0
.end method

.method static synthetic b()Lcom/google/android/gms/internal/measurement/zzfq$zzb;
    .locals 1

    .line 30
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfq$zzb;->zzaut:Lcom/google/android/gms/internal/measurement/zzfq$zzb;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 5
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzfr;->a:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 24
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 22
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzfq$zzb;->zznw:Lcom/google/android/gms/internal/measurement/zzxd;

    if-nez p1, :cond_1

    .line 15
    const-class p2, Lcom/google/android/gms/internal/measurement/zzfq$zzb;

    monitor-enter p2

    .line 16
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzfq$zzb;->zznw:Lcom/google/android/gms/internal/measurement/zzxd;

    if-nez p1, :cond_0

    .line 18
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzvm$zzb;

    sget-object p3, Lcom/google/android/gms/internal/measurement/zzfq$zzb;->zzaut:Lcom/google/android/gms/internal/measurement/zzfq$zzb;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzvm$zzb;-><init>(Lcom/google/android/gms/internal/measurement/zzvm;)V

    .line 19
    sput-object p1, Lcom/google/android/gms/internal/measurement/zzfq$zzb;->zznw:Lcom/google/android/gms/internal/measurement/zzxd;

    .line 20
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 12
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzfq$zzb;->zzaut:Lcom/google/android/gms/internal/measurement/zzfq$zzb;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    .line 8
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zznr"

    aput-object v0, p1, p2

    const-string p2, "zzaur"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfq$zzb$zzb;->zzd()Lcom/google/android/gms/internal/measurement/zzvr;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzaus"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-class p3, Lcom/google/android/gms/internal/measurement/zzfq$zza;

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000c\u0000\u0002\u001b"

    .line 11
    sget-object p3, Lcom/google/android/gms/internal/measurement/zzfq$zzb;->zzaut:Lcom/google/android/gms/internal/measurement/zzfq$zzb;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/measurement/zzfq$zzb;->a(Lcom/google/android/gms/internal/measurement/zzwt;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfq$zzb$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzfq$zzb$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzfr;)V

    return-object p1

    .line 6
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfq$zzb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzfq$zzb;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
