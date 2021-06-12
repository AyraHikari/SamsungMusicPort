.class final synthetic Lcom/google/firebase/iid/zzap;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/components/ComponentFactory;


# static fields
.field static final a:Lcom/google/firebase/components/ComponentFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/iid/zzap;

    invoke-direct {v0}, Lcom/google/firebase/iid/zzap;-><init>()V

    sput-object v0, Lcom/google/firebase/iid/zzap;->a:Lcom/google/firebase/components/ComponentFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;
    .locals 2

    .line 2
    new-instance v0, Lcom/google/firebase/iid/Registrar$zza;

    const-class v1, Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-interface {p1, v1}, Lcom/google/firebase/components/ComponentContainer;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-direct {v0, p1}, Lcom/google/firebase/iid/Registrar$zza;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;)V

    return-object v0
.end method
